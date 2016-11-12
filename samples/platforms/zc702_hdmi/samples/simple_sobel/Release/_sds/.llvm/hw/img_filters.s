; ModuleID = '/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@line_buffer = common global [3 x [2048 x i8]] zeroinitializer, align 1

; Function Attrs: nounwind
define zeroext i8 @rgb2y(i8 zeroext %R, i8 zeroext %G, i8 zeroext %B) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %y = alloca i8, align 1
  store i8 %R, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !32), !dbg !33
  store i8 %G, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !34), !dbg !35
  store i8 %B, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !36), !dbg !37
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !38), !dbg !39
  %4 = load i8* %1, align 1, !dbg !40
  %5 = zext i8 %4 to i32, !dbg !40
  %6 = mul nsw i32 66, %5, !dbg !40
  %7 = load i8* %2, align 1, !dbg !40
  %8 = zext i8 %7 to i32, !dbg !40
  %9 = mul nsw i32 129, %8, !dbg !40
  %10 = add nsw i32 %6, %9, !dbg !40
  %11 = load i8* %3, align 1, !dbg !40
  %12 = zext i8 %11 to i32, !dbg !40
  %13 = mul nsw i32 25, %12, !dbg !40
  %14 = add nsw i32 %10, %13, !dbg !40
  %15 = add nsw i32 %14, 128, !dbg !40
  %16 = ashr i32 %15, 8, !dbg !40
  %17 = add nsw i32 %16, 16, !dbg !40
  %18 = trunc i32 %17 to i8, !dbg !40
  store i8 %18, i8* %y, align 1, !dbg !40
  %19 = load i8* %y, align 1, !dbg !41
  ret i8 %19, !dbg !41
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define void @img_process(i32* %rgb_data_in, i32* %rgb_data_out, i32 %isobelInvert, i32 %iminsobelSensitivity, i32 %imaxsobelSensitivity) #0 {
  %1 = alloca i32*, align 4
  %2 = alloca i32*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %stride = alloca i32, align 4
  %x_weight = alloca i16, align 2
  %y_weight = alloca i16, align 2
  %edge_weight = alloca i16, align 2
  %edge_val = alloca i8, align 1
  %in_R = alloca i8, align 1
  %in_G = alloca i8, align 1
  %in_B = alloca i8, align 1
  %pix_i = alloca i32, align 4
  %pix_j = alloca i32, align 4
  %pixel = alloca i32, align 4
  store i32* %rgb_data_in, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !42), !dbg !43
  store i32* %rgb_data_out, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !44), !dbg !45
  store i32 %isobelInvert, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !46), !dbg !47
  store i32 %iminsobelSensitivity, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !48), !dbg !49
  store i32 %imaxsobelSensitivity, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !50), !dbg !51
  call void @llvm.dbg.declare(metadata !{i32* %height}, metadata !52), !dbg !53
  store i32 1080, i32* %height, align 4, !dbg !54
  call void @llvm.dbg.declare(metadata !{i32* %width}, metadata !55), !dbg !56
  store i32 1920, i32* %width, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata !{i32* %stride}, metadata !58), !dbg !59
  store i32 2048, i32* %stride, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata !{i16* %x_weight}, metadata !61), !dbg !63
  call void @llvm.dbg.declare(metadata !{i16* %y_weight}, metadata !64), !dbg !65
  call void @llvm.dbg.declare(metadata !{i16* %edge_weight}, metadata !66), !dbg !67
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !68), !dbg !69
  call void @llvm.dbg.declare(metadata !{i8* %in_R}, metadata !70), !dbg !71
  call void @llvm.dbg.declare(metadata !{i8* %in_G}, metadata !72), !dbg !73
  call void @llvm.dbg.declare(metadata !{i8* %in_B}, metadata !74), !dbg !75
  call void @llvm.dbg.declare(metadata !{i32* %pix_i}, metadata !76), !dbg !77
  store i32 0, i32* %pix_i, align 4, !dbg !78
  call void @llvm.dbg.declare(metadata !{i32* %pix_j}, metadata !79), !dbg !80
  store i32 0, i32* %pix_j, align 4, !dbg !78
  call void @llvm.dbg.declare(metadata !{i32* %pixel}, metadata !81), !dbg !84
  store i32 0, i32* %pix_j, align 4, !dbg !85
  br label %6, !dbg !85

; <label>:6                                       ; preds = %32, %0
  %7 = load i32* %pix_j, align 4, !dbg !87
  %8 = load i32* %stride, align 4, !dbg !87
  %9 = icmp slt i32 %7, %8, !dbg !87
  br i1 %9, label %10, label %35, !dbg !87

; <label>:10                                      ; preds = %6
  %11 = load i32** %1, align 4, !dbg !90
  %12 = load i32* %11, align 4, !dbg !90
  store volatile i32 %12, i32* %pixel, align 4, !dbg !90
  %13 = load volatile i32* %pixel, align 4, !dbg !92
  %14 = and i32 %13, 255, !dbg !92
  %15 = trunc i32 %14 to i8, !dbg !92
  store i8 %15, i8* %in_B, align 1, !dbg !92
  %16 = load volatile i32* %pixel, align 4, !dbg !93
  %17 = lshr i32 %16, 8, !dbg !93
  %18 = and i32 %17, 255, !dbg !93
  %19 = trunc i32 %18 to i8, !dbg !93
  store i8 %19, i8* %in_G, align 1, !dbg !93
  %20 = load volatile i32* %pixel, align 4, !dbg !94
  %21 = lshr i32 %20, 16, !dbg !94
  %22 = and i32 %21, 255, !dbg !94
  %23 = trunc i32 %22 to i8, !dbg !94
  store i8 %23, i8* %in_R, align 1, !dbg !94
  %24 = load i8* %in_R, align 1, !dbg !95
  %25 = load i8* %in_G, align 1, !dbg !95
  %26 = load i8* %in_B, align 1, !dbg !95
  %27 = call zeroext i8 @rgb2y(i8 zeroext %24, i8 zeroext %25, i8 zeroext %26), !dbg !95
  %28 = load i32* %pix_j, align 4, !dbg !95
  %29 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 0), i32 0, i32 %28, !dbg !95
  store i8 %27, i8* %29, align 1, !dbg !95
  %30 = load i32** %1, align 4, !dbg !96
  %31 = getelementptr inbounds i32* %30, i32 1, !dbg !96
  store i32* %31, i32** %1, align 4, !dbg !96
  br label %32, !dbg !97

; <label>:32                                      ; preds = %10
  %33 = load i32* %pix_j, align 4, !dbg !98
  %34 = add nsw i32 %33, 1, !dbg !98
  store i32 %34, i32* %pix_j, align 4, !dbg !98
  br label %6, !dbg !98

; <label>:35                                      ; preds = %6
  store i32 0, i32* %pix_j, align 4, !dbg !99
  br label %36, !dbg !99

; <label>:36                                      ; preds = %62, %35
  %37 = load i32* %pix_j, align 4, !dbg !101
  %38 = load i32* %stride, align 4, !dbg !101
  %39 = icmp slt i32 %37, %38, !dbg !101
  br i1 %39, label %40, label %65, !dbg !101

; <label>:40                                      ; preds = %36
  %41 = load i32** %1, align 4, !dbg !104
  %42 = load i32* %41, align 4, !dbg !104
  store volatile i32 %42, i32* %pixel, align 4, !dbg !104
  %43 = load volatile i32* %pixel, align 4, !dbg !106
  %44 = and i32 %43, 255, !dbg !106
  %45 = trunc i32 %44 to i8, !dbg !106
  store i8 %45, i8* %in_B, align 1, !dbg !106
  %46 = load volatile i32* %pixel, align 4, !dbg !107
  %47 = lshr i32 %46, 8, !dbg !107
  %48 = and i32 %47, 255, !dbg !107
  %49 = trunc i32 %48 to i8, !dbg !107
  store i8 %49, i8* %in_G, align 1, !dbg !107
  %50 = load volatile i32* %pixel, align 4, !dbg !108
  %51 = lshr i32 %50, 16, !dbg !108
  %52 = and i32 %51, 255, !dbg !108
  %53 = trunc i32 %52 to i8, !dbg !108
  store i8 %53, i8* %in_R, align 1, !dbg !108
  %54 = load i8* %in_R, align 1, !dbg !109
  %55 = load i8* %in_G, align 1, !dbg !109
  %56 = load i8* %in_B, align 1, !dbg !109
  %57 = call zeroext i8 @rgb2y(i8 zeroext %54, i8 zeroext %55, i8 zeroext %56), !dbg !109
  %58 = load i32* %pix_j, align 4, !dbg !109
  %59 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 1), i32 0, i32 %58, !dbg !109
  store i8 %57, i8* %59, align 1, !dbg !109
  %60 = load i32** %1, align 4, !dbg !110
  %61 = getelementptr inbounds i32* %60, i32 1, !dbg !110
  store i32* %61, i32** %1, align 4, !dbg !110
  br label %62, !dbg !111

; <label>:62                                      ; preds = %40
  %63 = load i32* %pix_j, align 4, !dbg !112
  %64 = add nsw i32 %63, 1, !dbg !112
  store i32 %64, i32* %pix_j, align 4, !dbg !112
  br label %36, !dbg !112

; <label>:65                                      ; preds = %36
  store i32 0, i32* %pix_j, align 4, !dbg !113
  br label %66, !dbg !113

; <label>:66                                      ; preds = %74, %65
  %67 = load i32* %pix_j, align 4, !dbg !115
  %68 = load i32* %stride, align 4, !dbg !115
  %69 = icmp slt i32 %67, %68, !dbg !115
  br i1 %69, label %70, label %77, !dbg !115

; <label>:70                                      ; preds = %66
  %71 = load i32** %2, align 4, !dbg !118
  store i32 0, i32* %71, align 4, !dbg !118
  %72 = load i32** %2, align 4, !dbg !120
  %73 = getelementptr inbounds i32* %72, i32 1, !dbg !120
  store i32* %73, i32** %2, align 4, !dbg !120
  br label %74, !dbg !121

; <label>:74                                      ; preds = %70
  %75 = load i32* %pix_j, align 4, !dbg !122
  %76 = add nsw i32 %75, 1, !dbg !122
  store i32 %76, i32* %pix_j, align 4, !dbg !122
  br label %66, !dbg !122

; <label>:77                                      ; preds = %66
  store i32 2, i32* %pix_i, align 4, !dbg !123
  br label %78, !dbg !123

; <label>:78                                      ; preds = %298, %77
  %79 = load i32* %pix_i, align 4, !dbg !125
  %80 = load i32* %height, align 4, !dbg !125
  %81 = icmp slt i32 %79, %80, !dbg !125
  br i1 %81, label %82, label %301, !dbg !125

; <label>:82                                      ; preds = %78
  store i32 0, i32* %pix_j, align 4, !dbg !128
  br label %83, !dbg !128

; <label>:83                                      ; preds = %109, %82
  %84 = load i32* %pix_j, align 4, !dbg !131
  %85 = load i32* %stride, align 4, !dbg !131
  %86 = icmp slt i32 %84, %85, !dbg !131
  br i1 %86, label %87, label %112, !dbg !131

; <label>:87                                      ; preds = %83
  %88 = load i32** %1, align 4, !dbg !134
  %89 = load i32* %88, align 4, !dbg !134
  store volatile i32 %89, i32* %pixel, align 4, !dbg !134
  %90 = load volatile i32* %pixel, align 4, !dbg !136
  %91 = and i32 %90, 255, !dbg !136
  %92 = trunc i32 %91 to i8, !dbg !136
  store i8 %92, i8* %in_B, align 1, !dbg !136
  %93 = load volatile i32* %pixel, align 4, !dbg !137
  %94 = lshr i32 %93, 8, !dbg !137
  %95 = and i32 %94, 255, !dbg !137
  %96 = trunc i32 %95 to i8, !dbg !137
  store i8 %96, i8* %in_G, align 1, !dbg !137
  %97 = load volatile i32* %pixel, align 4, !dbg !138
  %98 = lshr i32 %97, 16, !dbg !138
  %99 = and i32 %98, 255, !dbg !138
  %100 = trunc i32 %99 to i8, !dbg !138
  store i8 %100, i8* %in_R, align 1, !dbg !138
  %101 = load i8* %in_R, align 1, !dbg !139
  %102 = load i8* %in_G, align 1, !dbg !139
  %103 = load i8* %in_B, align 1, !dbg !139
  %104 = call zeroext i8 @rgb2y(i8 zeroext %101, i8 zeroext %102, i8 zeroext %103), !dbg !139
  %105 = load i32* %pix_j, align 4, !dbg !139
  %106 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 2), i32 0, i32 %105, !dbg !139
  store i8 %104, i8* %106, align 1, !dbg !139
  %107 = load i32** %1, align 4, !dbg !140
  %108 = getelementptr inbounds i32* %107, i32 1, !dbg !140
  store i32* %108, i32** %1, align 4, !dbg !140
  br label %109, !dbg !141

; <label>:109                                     ; preds = %87
  %110 = load i32* %pix_j, align 4, !dbg !142
  %111 = add nsw i32 %110, 1, !dbg !142
  store i32 %111, i32* %pix_j, align 4, !dbg !142
  br label %83, !dbg !142

; <label>:112                                     ; preds = %83
  %113 = load i32** %2, align 4, !dbg !143
  store i32 0, i32* %113, align 4, !dbg !143
  %114 = load i32** %2, align 4, !dbg !144
  %115 = getelementptr inbounds i32* %114, i32 1, !dbg !144
  store i32* %115, i32** %2, align 4, !dbg !144
  store i32 1, i32* %pix_j, align 4, !dbg !145
  br label %116, !dbg !145

; <label>:116                                     ; preds = %272, %112
  %117 = load i32* %pix_j, align 4, !dbg !147
  %118 = load i32* %stride, align 4, !dbg !147
  %119 = sub nsw i32 %118, 1, !dbg !147
  %120 = icmp slt i32 %117, %119, !dbg !147
  br i1 %120, label %121, label %275, !dbg !147

; <label>:121                                     ; preds = %116
  %122 = load i32* %pix_j, align 4, !dbg !150
  %123 = sub nsw i32 %122, 1, !dbg !150
  %124 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 0), i32 0, i32 %123, !dbg !150
  %125 = load i8* %124, align 1, !dbg !150
  %126 = zext i8 %125 to i32, !dbg !150
  %127 = mul nsw i32 %126, -1, !dbg !150
  %128 = load i32* %pix_j, align 4, !dbg !150
  %129 = add nsw i32 %128, 1, !dbg !150
  %130 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 0), i32 0, i32 %129, !dbg !150
  %131 = load i8* %130, align 1, !dbg !150
  %132 = zext i8 %131 to i32, !dbg !150
  %133 = add nsw i32 %127, %132, !dbg !150
  %134 = load i32* %pix_j, align 4, !dbg !150
  %135 = sub nsw i32 %134, 1, !dbg !150
  %136 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 1), i32 0, i32 %135, !dbg !150
  %137 = load i8* %136, align 1, !dbg !150
  %138 = zext i8 %137 to i32, !dbg !150
  %139 = mul nsw i32 %138, -2, !dbg !150
  %140 = add nsw i32 %133, %139, !dbg !150
  %141 = load i32* %pix_j, align 4, !dbg !150
  %142 = add nsw i32 %141, 1, !dbg !150
  %143 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 1), i32 0, i32 %142, !dbg !150
  %144 = load i8* %143, align 1, !dbg !150
  %145 = zext i8 %144 to i32, !dbg !150
  %146 = mul nsw i32 %145, 2, !dbg !150
  %147 = add nsw i32 %140, %146, !dbg !150
  %148 = load i32* %pix_j, align 4, !dbg !150
  %149 = sub nsw i32 %148, 1, !dbg !150
  %150 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 2), i32 0, i32 %149, !dbg !150
  %151 = load i8* %150, align 1, !dbg !150
  %152 = zext i8 %151 to i32, !dbg !150
  %153 = mul nsw i32 %152, -1, !dbg !150
  %154 = add nsw i32 %147, %153, !dbg !150
  %155 = load i32* %pix_j, align 4, !dbg !150
  %156 = add nsw i32 %155, 1, !dbg !150
  %157 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 2), i32 0, i32 %156, !dbg !150
  %158 = load i8* %157, align 1, !dbg !150
  %159 = zext i8 %158 to i32, !dbg !150
  %160 = add nsw i32 %154, %159, !dbg !150
  %161 = trunc i32 %160 to i16, !dbg !150
  store i16 %161, i16* %x_weight, align 2, !dbg !150
  %162 = load i32* %pix_j, align 4, !dbg !152
  %163 = sub nsw i32 %162, 1, !dbg !152
  %164 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 0), i32 0, i32 %163, !dbg !152
  %165 = load i8* %164, align 1, !dbg !152
  %166 = zext i8 %165 to i32, !dbg !152
  %167 = load i32* %pix_j, align 4, !dbg !152
  %168 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 0), i32 0, i32 %167, !dbg !152
  %169 = load i8* %168, align 1, !dbg !152
  %170 = zext i8 %169 to i32, !dbg !152
  %171 = mul nsw i32 %170, 2, !dbg !152
  %172 = add nsw i32 %166, %171, !dbg !152
  %173 = load i32* %pix_j, align 4, !dbg !152
  %174 = add nsw i32 %173, 1, !dbg !152
  %175 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 0), i32 0, i32 %174, !dbg !152
  %176 = load i8* %175, align 1, !dbg !152
  %177 = zext i8 %176 to i32, !dbg !152
  %178 = add nsw i32 %172, %177, !dbg !152
  %179 = load i32* %pix_j, align 4, !dbg !152
  %180 = sub nsw i32 %179, 1, !dbg !152
  %181 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 2), i32 0, i32 %180, !dbg !152
  %182 = load i8* %181, align 1, !dbg !152
  %183 = zext i8 %182 to i32, !dbg !152
  %184 = mul nsw i32 %183, -1, !dbg !152
  %185 = add nsw i32 %178, %184, !dbg !152
  %186 = load i32* %pix_j, align 4, !dbg !152
  %187 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 2), i32 0, i32 %186, !dbg !152
  %188 = load i8* %187, align 1, !dbg !152
  %189 = zext i8 %188 to i32, !dbg !152
  %190 = mul nsw i32 %189, -2, !dbg !152
  %191 = add nsw i32 %185, %190, !dbg !152
  %192 = load i32* %pix_j, align 4, !dbg !152
  %193 = add nsw i32 %192, 1, !dbg !152
  %194 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 2), i32 0, i32 %193, !dbg !152
  %195 = load i8* %194, align 1, !dbg !152
  %196 = zext i8 %195 to i32, !dbg !152
  %197 = mul nsw i32 %196, -1, !dbg !152
  %198 = add nsw i32 %191, %197, !dbg !152
  %199 = trunc i32 %198 to i16, !dbg !152
  store i16 %199, i16* %y_weight, align 2, !dbg !152
  %200 = load i16* %x_weight, align 2, !dbg !153
  %201 = sext i16 %200 to i32, !dbg !153
  %202 = icmp sgt i32 %201, 0, !dbg !153
  br i1 %202, label %203, label %206, !dbg !153

; <label>:203                                     ; preds = %121
  %204 = load i16* %x_weight, align 2, !dbg !154
  %205 = sext i16 %204 to i32, !dbg !154
  br label %210, !dbg !154

; <label>:206                                     ; preds = %121
  %207 = load i16* %x_weight, align 2, !dbg !156
  %208 = sext i16 %207 to i32, !dbg !156
  %209 = sub nsw i32 0, %208, !dbg !156
  br label %210, !dbg !156

; <label>:210                                     ; preds = %206, %203
  %211 = phi i32 [ %205, %203 ], [ %209, %206 ], !dbg !153
  %212 = load i16* %y_weight, align 2, !dbg !158
  %213 = sext i16 %212 to i32, !dbg !158
  %214 = icmp sgt i32 %213, 0, !dbg !158
  br i1 %214, label %215, label %218, !dbg !158

; <label>:215                                     ; preds = %210
  %216 = load i16* %y_weight, align 2, !dbg !161
  %217 = sext i16 %216 to i32, !dbg !161
  br label %222, !dbg !161

; <label>:218                                     ; preds = %210
  %219 = load i16* %y_weight, align 2, !dbg !163
  %220 = sext i16 %219 to i32, !dbg !163
  %221 = sub nsw i32 0, %220, !dbg !163
  br label %222, !dbg !163

; <label>:222                                     ; preds = %218, %215
  %223 = phi i32 [ %217, %215 ], [ %221, %218 ], !dbg !153
  %224 = add nsw i32 %211, %223, !dbg !165
  %225 = trunc i32 %224 to i16, !dbg !165
  store i16 %225, i16* %edge_weight, align 2, !dbg !165
  %226 = load i16* %edge_weight, align 2, !dbg !168
  %227 = sext i16 %226 to i32, !dbg !168
  %228 = icmp slt i32 %227, 255, !dbg !168
  br i1 %228, label %229, label %235, !dbg !168

; <label>:229                                     ; preds = %222
  %230 = load i16* %edge_weight, align 2, !dbg !170
  %231 = trunc i16 %230 to i8, !dbg !170
  %232 = zext i8 %231 to i32, !dbg !170
  %233 = sub nsw i32 255, %232, !dbg !170
  %234 = trunc i32 %233 to i8, !dbg !170
  store i8 %234, i8* %edge_val, align 1, !dbg !170
  br label %236, !dbg !170

; <label>:235                                     ; preds = %222
  store i8 0, i8* %edge_val, align 1, !dbg !171
  br label %236

; <label>:236                                     ; preds = %235, %229
  %237 = load i8* %edge_val, align 1, !dbg !172
  %238 = zext i8 %237 to i32, !dbg !172
  %239 = load i32* %5, align 4, !dbg !172
  %240 = icmp sgt i32 %238, %239, !dbg !172
  br i1 %240, label %241, label %242, !dbg !172

; <label>:241                                     ; preds = %236
  store i8 -1, i8* %edge_val, align 1, !dbg !174
  br label %249, !dbg !174

; <label>:242                                     ; preds = %236
  %243 = load i8* %edge_val, align 1, !dbg !175
  %244 = zext i8 %243 to i32, !dbg !175
  %245 = load i32* %4, align 4, !dbg !175
  %246 = icmp slt i32 %244, %245, !dbg !175
  br i1 %246, label %247, label %248, !dbg !175

; <label>:247                                     ; preds = %242
  store i8 0, i8* %edge_val, align 1, !dbg !177
  br label %248, !dbg !177

; <label>:248                                     ; preds = %247, %242
  br label %249

; <label>:249                                     ; preds = %248, %241
  %250 = load i32* %3, align 4, !dbg !178
  %251 = icmp ne i32 %250, 0, !dbg !178
  br i1 %251, label %252, label %257, !dbg !178

; <label>:252                                     ; preds = %249
  %253 = load i8* %edge_val, align 1, !dbg !180
  %254 = zext i8 %253 to i32, !dbg !180
  %255 = sub nsw i32 255, %254, !dbg !180
  %256 = trunc i32 %255 to i8, !dbg !180
  store i8 %256, i8* %edge_val, align 1, !dbg !180
  br label %257, !dbg !180

; <label>:257                                     ; preds = %252, %249
  %258 = load i8* %edge_val, align 1, !dbg !181
  %259 = zext i8 %258 to i32, !dbg !181
  %260 = load i8* %edge_val, align 1, !dbg !181
  %261 = zext i8 %260 to i32, !dbg !181
  %262 = shl i32 %261, 8, !dbg !181
  %263 = or i32 %259, %262, !dbg !181
  %264 = load i8* %edge_val, align 1, !dbg !181
  %265 = zext i8 %264 to i32, !dbg !181
  %266 = shl i32 %265, 16, !dbg !181
  %267 = or i32 %263, %266, !dbg !181
  %268 = or i32 %267, -16777216, !dbg !181
  %269 = load i32** %2, align 4, !dbg !181
  store i32 %268, i32* %269, align 4, !dbg !181
  %270 = load i32** %2, align 4, !dbg !182
  %271 = getelementptr inbounds i32* %270, i32 1, !dbg !182
  store i32* %271, i32** %2, align 4, !dbg !182
  br label %272, !dbg !183

; <label>:272                                     ; preds = %257
  %273 = load i32* %pix_j, align 4, !dbg !184
  %274 = add nsw i32 %273, 1, !dbg !184
  store i32 %274, i32* %pix_j, align 4, !dbg !184
  br label %116, !dbg !184

; <label>:275                                     ; preds = %116
  %276 = load i32** %2, align 4, !dbg !185
  store i32 0, i32* %276, align 4, !dbg !185
  %277 = load i32** %2, align 4, !dbg !186
  %278 = getelementptr inbounds i32* %277, i32 1, !dbg !186
  store i32* %278, i32** %2, align 4, !dbg !186
  store i32 0, i32* %pix_j, align 4, !dbg !187
  br label %279, !dbg !187

; <label>:279                                     ; preds = %294, %275
  %280 = load i32* %pix_j, align 4, !dbg !189
  %281 = load i32* %width, align 4, !dbg !189
  %282 = icmp slt i32 %280, %281, !dbg !189
  br i1 %282, label %283, label %297, !dbg !189

; <label>:283                                     ; preds = %279
  %284 = load i32* %pix_j, align 4, !dbg !192
  %285 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 1), i32 0, i32 %284, !dbg !192
  %286 = load i8* %285, align 1, !dbg !192
  %287 = load i32* %pix_j, align 4, !dbg !192
  %288 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 0), i32 0, i32 %287, !dbg !192
  store i8 %286, i8* %288, align 1, !dbg !192
  %289 = load i32* %pix_j, align 4, !dbg !194
  %290 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 2), i32 0, i32 %289, !dbg !194
  %291 = load i8* %290, align 1, !dbg !194
  %292 = load i32* %pix_j, align 4, !dbg !194
  %293 = getelementptr inbounds [2048 x i8]* getelementptr inbounds ([3 x [2048 x i8]]* @line_buffer, i32 0, i32 1), i32 0, i32 %292, !dbg !194
  store i8 %291, i8* %293, align 1, !dbg !194
  br label %294, !dbg !195

; <label>:294                                     ; preds = %283
  %295 = load i32* %pix_j, align 4, !dbg !196
  %296 = add nsw i32 %295, 1, !dbg !196
  store i32 %296, i32* %pix_j, align 4, !dbg !196
  br label %279, !dbg !196

; <label>:297                                     ; preds = %279
  br label %298, !dbg !197

; <label>:298                                     ; preds = %297
  %299 = load i32* %pix_i, align 4, !dbg !198
  %300 = add nsw i32 %299, 1, !dbg !198
  store i32 %300, i32* %pix_i, align 4, !dbg !198
  br label %78, !dbg !198

; <label>:301                                     ; preds = %78
  store i32 0, i32* %pix_j, align 4, !dbg !199
  br label %302, !dbg !199

; <label>:302                                     ; preds = %310, %301
  %303 = load i32* %pix_j, align 4, !dbg !201
  %304 = load i32* %stride, align 4, !dbg !201
  %305 = icmp slt i32 %303, %304, !dbg !201
  br i1 %305, label %306, label %313, !dbg !201

; <label>:306                                     ; preds = %302
  %307 = load i32** %2, align 4, !dbg !204
  store i32 0, i32* %307, align 4, !dbg !204
  %308 = load i32** %2, align 4, !dbg !206
  %309 = getelementptr inbounds i32* %308, i32 1, !dbg !206
  store i32* %309, i32** %2, align 4, !dbg !206
  br label %310, !dbg !207

; <label>:310                                     ; preds = %306
  %311 = load i32* %pix_j, align 4, !dbg !208
  %312 = add nsw i32 %311, 1, !dbg !208
  store i32 %312, i32* %pix_j, align 4, !dbg !208
  br label %302, !dbg !208

; <label>:313                                     ; preds = %302
  ret void, !dbg !209
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!20, !21, !22, !23}
!xidane.function_declaration_filename = !{!20, !24, !22, !25}
!xidane.ExternC = !{!20, !22}
!xidane.function_argument_annotation = !{!22, !26}
!llvm.module.flags = !{!27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !14, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rgb2y", metadata !"rgb2y", metadata !"", i32 45, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8, i8, i8)* @rgb2y, null, null, metadata !2, i32 46} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 46] [rgb2y]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"img_process", metadata !"img_process", metadata !"", i32 52, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32, i32, i32)* @img_process, null, null, metadata !2, i32 53} ; [ DW_TAG_subprogram ] [line 52] [def] [scope 53] [img_process]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{null, metadata !12, metadata !12, metadata !13, metadata !13, metadata !13}
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786484, i32 0, null, metadata !"line_buffer", metadata !"line_buffer", metadata !"", metadata !5, i32 43, metadata !16, i32 0, i32 1, [3 x [2048 x i8]]* @line_buffer, null} ; [ DW_TAG_variable ] [line_buffer] [line 43] [def]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 49152, i64 8, i32 0, i32 0, metadata !8, metadata !17, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 49152, align 8, offset 0] [from unsigned char]
!17 = metadata !{metadata !18, metadata !19}
!18 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!19 = metadata !{i32 786465, i64 0, i64 2048}     ; [ DW_TAG_subrange_type ] [0, 2047]
!20 = metadata !{i8 (i8, i8, i8)* @rgb2y}
!21 = metadata !{metadata !"unsigned char.unsigned char.0.unsigned char.0.unsigned char.0"}
!22 = metadata !{void (i32*, i32*, i32, i32, i32)* @img_process}
!23 = metadata !{metadata !"void.int [2211840].1.int [2211840].1.int.0.int.0.int.0"}
!24 = metadata !{metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c"}
!25 = metadata !{metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.h"}
!26 = metadata !{metadata !"rgb_data_in,,,CACHEABLE.PHYSICAL_CONTIGUOUS,,,,, rgb_data_out,,,CACHEABLE.PHYSICAL_CONTIGUOUS,,,,, "}
!27 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!28 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!29 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!30 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!31 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!32 = metadata !{i32 786689, metadata !4, metadata !"R", metadata !5, i32 16777261, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [R] [line 45]
!33 = metadata !{i32 45, i32 35, metadata !4, null}
!34 = metadata !{i32 786689, metadata !4, metadata !"G", metadata !5, i32 33554477, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [G] [line 45]
!35 = metadata !{i32 45, i32 52, metadata !4, null}
!36 = metadata !{i32 786689, metadata !4, metadata !"B", metadata !5, i32 50331693, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 45]
!37 = metadata !{i32 45, i32 69, metadata !4, null}
!38 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 47]
!39 = metadata !{i32 47, i32 17, metadata !4, null}
!40 = metadata !{i32 48, i32 3, metadata !4, null}
!41 = metadata !{i32 49, i32 3, metadata !4, null}
!42 = metadata !{i32 786689, metadata !9, metadata !"rgb_data_in", metadata !5, i32 16777268, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_data_in] [line 52]
!43 = metadata !{i32 52, i32 22, metadata !9, null}
!44 = metadata !{i32 786689, metadata !9, metadata !"rgb_data_out", metadata !5, i32 33554484, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_data_out] [line 52]
!45 = metadata !{i32 52, i32 48, metadata !9, null}
!46 = metadata !{i32 786689, metadata !9, metadata !"isobelInvert", metadata !5, i32 50331700, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isobelInvert] [line 52]
!47 = metadata !{i32 52, i32 75, metadata !9, null}
!48 = metadata !{i32 786689, metadata !9, metadata !"iminsobelSensitivity", metadata !5, i32 67108916, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iminsobelSensitivity] [line 52]
!49 = metadata !{i32 52, i32 93, metadata !9, null}
!50 = metadata !{i32 786689, metadata !9, metadata !"imaxsobelSensitivity", metadata !5, i32 83886132, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imaxsobelSensitivity] [line 52]
!51 = metadata !{i32 52, i32 119, metadata !9, null}
!52 = metadata !{i32 786688, metadata !9, metadata !"height", metadata !5, i32 54, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [height] [line 54]
!53 = metadata !{i32 54, i32 7, metadata !9, null}
!54 = metadata !{i32 54, i32 3, metadata !9, null}
!55 = metadata !{i32 786688, metadata !9, metadata !"width", metadata !5, i32 55, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [width] [line 55]
!56 = metadata !{i32 55, i32 7, metadata !9, null}
!57 = metadata !{i32 55, i32 3, metadata !9, null}
!58 = metadata !{i32 786688, metadata !9, metadata !"stride", metadata !5, i32 56, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 56]
!59 = metadata !{i32 56, i32 7, metadata !9, null}
!60 = metadata !{i32 56, i32 3, metadata !9, null}
!61 = metadata !{i32 786688, metadata !9, metadata !"x_weight", metadata !5, i32 57, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_weight] [line 57]
!62 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!63 = metadata !{i32 57, i32 9, metadata !9, null}
!64 = metadata !{i32 786688, metadata !9, metadata !"y_weight", metadata !5, i32 58, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_weight] [line 58]
!65 = metadata !{i32 58, i32 9, metadata !9, null} ; [ DW_TAG_imported_module ]
!66 = metadata !{i32 786688, metadata !9, metadata !"edge_weight", metadata !5, i32 59, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_weight] [line 59]
!67 = metadata !{i32 59, i32 9, metadata !9, null}
!68 = metadata !{i32 786688, metadata !9, metadata !"edge_val", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_val] [line 60]
!69 = metadata !{i32 60, i32 17, metadata !9, null}
!70 = metadata !{i32 786688, metadata !9, metadata !"in_R", metadata !5, i32 62, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_R] [line 62]
!71 = metadata !{i32 62, i32 17, metadata !9, null}
!72 = metadata !{i32 786688, metadata !9, metadata !"in_G", metadata !5, i32 62, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_G] [line 62]
!73 = metadata !{i32 62, i32 23, metadata !9, null}
!74 = metadata !{i32 786688, metadata !9, metadata !"in_B", metadata !5, i32 62, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_B] [line 62]
!75 = metadata !{i32 62, i32 29, metadata !9, null}
!76 = metadata !{i32 786688, metadata !9, metadata !"pix_i", metadata !5, i32 64, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_i] [line 64]
!77 = metadata !{i32 64, i32 7, metadata !9, null}
!78 = metadata !{i32 64, i32 3, metadata !9, null}
!79 = metadata !{i32 786688, metadata !9, metadata !"pix_j", metadata !5, i32 64, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_j] [line 64]
!80 = metadata !{i32 64, i32 18, metadata !9, null}
!81 = metadata !{i32 786688, metadata !9, metadata !"pixel", metadata !5, i32 65, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel] [line 65]
!82 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from unsigned int]
!83 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!84 = metadata !{i32 65, i32 25, metadata !9, null}
!85 = metadata !{i32 68, i32 8, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !9, i32 68, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!87 = metadata !{i32 68, i32 8, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !89, i32 68, i32 8, i32 2, i32 21} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!89 = metadata !{i32 786443, metadata !1, metadata !86, i32 68, i32 8, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!90 = metadata !{i32 70, i32 5, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !86, i32 68, i32 44, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!92 = metadata !{i32 71, i32 5, metadata !91, null}
!93 = metadata !{i32 72, i32 5, metadata !91, null}
!94 = metadata !{i32 73, i32 5, metadata !91, null}
!95 = metadata !{i32 74, i32 29, metadata !91, null}
!96 = metadata !{i32 75, i32 5, metadata !91, null}
!97 = metadata !{i32 76, i32 3, metadata !91, null}
!98 = metadata !{i32 68, i32 35, metadata !86, null}
!99 = metadata !{i32 77, i32 8, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !9, i32 77, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!101 = metadata !{i32 77, i32 8, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !103, i32 77, i32 8, i32 2, i32 23} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!103 = metadata !{i32 786443, metadata !1, metadata !100, i32 77, i32 8, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!104 = metadata !{i32 79, i32 5, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !100, i32 77, i32 44, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!106 = metadata !{i32 80, i32 5, metadata !105, null}
!107 = metadata !{i32 81, i32 5, metadata !105, null}
!108 = metadata !{i32 82, i32 5, metadata !105, null}
!109 = metadata !{i32 83, i32 29, metadata !105, null}
!110 = metadata !{i32 84, i32 5, metadata !105, null}
!111 = metadata !{i32 85, i32 3, metadata !105, null}
!112 = metadata !{i32 77, i32 35, metadata !100, null}
!113 = metadata !{i32 88, i32 8, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !9, i32 88, i32 3, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!115 = metadata !{i32 88, i32 8, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !117, i32 88, i32 8, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!117 = metadata !{i32 786443, metadata !1, metadata !114, i32 88, i32 8, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!118 = metadata !{i32 90, i32 5, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !114, i32 88, i32 44, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!120 = metadata !{i32 91, i32 5, metadata !119, null}
!121 = metadata !{i32 92, i32 3, metadata !119, null}
!122 = metadata !{i32 88, i32 35, metadata !114, null}
!123 = metadata !{i32 94, i32 8, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !9, i32 94, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!125 = metadata !{i32 94, i32 8, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !127, i32 94, i32 8, i32 2, i32 41} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!127 = metadata !{i32 786443, metadata !1, metadata !124, i32 94, i32 8, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!128 = metadata !{i32 97, i32 10, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !130, i32 97, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!130 = metadata !{i32 786443, metadata !1, metadata !124, i32 94, i32 44, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!131 = metadata !{i32 97, i32 10, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !133, i32 97, i32 10, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!133 = metadata !{i32 786443, metadata !1, metadata !129, i32 97, i32 10, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!134 = metadata !{i32 99, i32 7, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !129, i32 97, i32 46, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!136 = metadata !{i32 100, i32 7, metadata !135, null}
!137 = metadata !{i32 101, i32 7, metadata !135, null}
!138 = metadata !{i32 102, i32 7, metadata !135, null}
!139 = metadata !{i32 103, i32 31, metadata !135, null}
!140 = metadata !{i32 104, i32 7, metadata !135, null}
!141 = metadata !{i32 105, i32 5, metadata !135, null}
!142 = metadata !{i32 97, i32 37, metadata !129, null}
!143 = metadata !{i32 108, i32 5, metadata !130, null}
!144 = metadata !{i32 109, i32 5, metadata !130, null}
!145 = metadata !{i32 111, i32 10, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !130, i32 111, i32 5, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!147 = metadata !{i32 111, i32 10, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !149, i32 111, i32 10, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!149 = metadata !{i32 786443, metadata !1, metadata !146, i32 111, i32 10, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!150 = metadata !{i32 117, i32 7, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !146, i32 111, i32 50, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!152 = metadata !{i32 118, i32 7, metadata !151, null}
!153 = metadata !{i32 120, i32 7, metadata !151, null}
!154 = metadata !{i32 120, i32 7, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !151, i32 120, i32 7, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!156 = metadata !{i32 120, i32 7, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !151, i32 120, i32 7, i32 2, i32 31} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!158 = metadata !{i32 120, i32 7, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !160, i32 120, i32 7, i32 4, i32 33} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!160 = metadata !{i32 786443, metadata !1, metadata !151, i32 120, i32 7, i32 3, i32 32} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!161 = metadata !{i32 120, i32 7, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !151, i32 120, i32 7, i32 5, i32 34} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!163 = metadata !{i32 120, i32 7, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !151, i32 120, i32 7, i32 6, i32 35} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!165 = metadata !{i32 120, i32 7, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !167, i32 120, i32 7, i32 8, i32 37} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!167 = metadata !{i32 786443, metadata !1, metadata !151, i32 120, i32 7, i32 7, i32 36} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!168 = metadata !{i32 122, i32 10, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !151, i32 122, i32 10, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!170 = metadata !{i32 123, i32 9, metadata !169, null}
!171 = metadata !{i32 125, i32 9, metadata !169, null}
!172 = metadata !{i32 127, i32 10, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !151, i32 127, i32 10, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!174 = metadata !{i32 128, i32 9, metadata !173, null}
!175 = metadata !{i32 129, i32 15, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !173, i32 129, i32 15, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!177 = metadata !{i32 130, i32 9, metadata !176, null}
!178 = metadata !{i32 132, i32 10, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !151, i32 132, i32 10, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!180 = metadata !{i32 133, i32 9, metadata !179, null}
!181 = metadata !{i32 135, i32 7, metadata !151, null}
!182 = metadata !{i32 136, i32 7, metadata !151, null}
!183 = metadata !{i32 137, i32 5, metadata !151, null}
!184 = metadata !{i32 111, i32 41, metadata !146, null}
!185 = metadata !{i32 140, i32 5, metadata !130, null}
!186 = metadata !{i32 141, i32 5, metadata !130, null}
!187 = metadata !{i32 143, i32 10, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !130, i32 143, i32 5, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!189 = metadata !{i32 143, i32 10, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !191, i32 143, i32 10, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!191 = metadata !{i32 786443, metadata !1, metadata !188, i32 143, i32 10, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!192 = metadata !{i32 144, i32 7, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !188, i32 143, i32 45, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!194 = metadata !{i32 145, i32 7, metadata !193, null}
!195 = metadata !{i32 146, i32 5, metadata !193, null}
!196 = metadata !{i32 143, i32 36, metadata !188, null}
!197 = metadata !{i32 147, i32 3, metadata !130, null}
!198 = metadata !{i32 94, i32 35, metadata !124, null}
!199 = metadata !{i32 150, i32 8, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !9, i32 150, i32 3, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!201 = metadata !{i32 150, i32 8, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !203, i32 150, i32 8, i32 2, i32 43} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!203 = metadata !{i32 786443, metadata !1, metadata !200, i32 150, i32 8, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!204 = metadata !{i32 152, i32 5, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !200, i32 150, i32 44, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c]
!206 = metadata !{i32 153, i32 5, metadata !205, null}
!207 = metadata !{i32 154, i32 3, metadata !205, null}
!208 = metadata !{i32 150, i32 35, metadata !200, null}
!209 = metadata !{i32 156, i32 1, metadata !9, null}
