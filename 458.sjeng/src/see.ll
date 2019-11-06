; ModuleID = 'see.c'
source_filename = "see.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.see_data = type { i32, i32 }

@setup_attackers.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@setup_attackers.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@setup_attackers.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@see_num_attackers = common global [2 x i32] zeroinitializer, align 4
@board = external global [144 x i32], align 16
@see_attackers = common global [2 x [16 x %struct.see_data]] zeroinitializer, align 16
@material = external global [14 x i32], align 16

; Function Attrs: noinline nounwind optnone uwtable
define void @setup_attackers(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 0), align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 1), align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %117, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %120

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* @setup_attackers.rook_o, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %14, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %39

; <label>:26:                                     ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %29
  %31 = getelementptr inbounds %struct.see_data, %struct.see_data* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %34
  %36 = getelementptr inbounds %struct.see_data, %struct.see_data* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %120

; <label>:39:                                     ; preds = %13
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %55

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %45
  %47 = getelementptr inbounds %struct.see_data, %struct.see_data* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %50
  %52 = getelementptr inbounds %struct.see_data, %struct.see_data* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %120

; <label>:55:                                     ; preds = %39
  br label %56

; <label>:56:                                     ; preds = %103, %55
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %114

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 7
  br i1 %61, label %65, label %62

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %65, label %78

; <label>:65:                                     ; preds = %62, %59
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %68
  %70 = getelementptr inbounds %struct.see_data, %struct.see_data* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %73
  %75 = getelementptr inbounds %struct.see_data, %struct.see_data* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %114

; <label>:78:                                     ; preds = %62
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 8
  br i1 %80, label %84, label %81

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %84, label %97

; <label>:84:                                     ; preds = %81, %78
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %87
  %89 = getelementptr inbounds %struct.see_data, %struct.see_data* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %92
  %94 = getelementptr inbounds %struct.see_data, %struct.see_data* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %114

; <label>:97:                                     ; preds = %81
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 13
  br i1 %99, label %100, label %101

; <label>:100:                                    ; preds = %97
  br label %114

; <label>:101:                                    ; preds = %97
  br label %102

; <label>:102:                                    ; preds = %101
  br label %103

; <label>:103:                                    ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* @setup_attackers.rook_o, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %4, align 4
  br label %56

; <label>:114:                                    ; preds = %100, %84, %65, %56
  br label %115

; <label>:115:                                    ; preds = %114
  br label %116

; <label>:116:                                    ; preds = %115
  br label %117

; <label>:117:                                    ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %10

; <label>:120:                                    ; preds = %42, %26, %10
  store i32 0, i32* %5, align 4
  br label %121

; <label>:121:                                    ; preds = %270, %120
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %273

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* @setup_attackers.bishop_o, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %125, %129
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %154

; <label>:137:                                    ; preds = %124
  %138 = load i32, i32* %5, align 4
  %139 = srem i32 %138, 2
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

; <label>:141:                                    ; preds = %137
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %144
  %146 = getelementptr inbounds %struct.see_data, %struct.see_data* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 8
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %149
  %151 = getelementptr inbounds %struct.see_data, %struct.see_data* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %273

; <label>:154:                                    ; preds = %137, %124
  %155 = load i32, i32* %4, align 4
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %174

; <label>:157:                                    ; preds = %154
  %158 = load i32, i32* %5, align 4
  %159 = srem i32 %158, 2
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %174, label %161

; <label>:161:                                    ; preds = %157
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %164
  %166 = getelementptr inbounds %struct.see_data, %struct.see_data* %165, i32 0, i32 0
  store i32 %162, i32* %166, align 8
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %169
  %171 = getelementptr inbounds %struct.see_data, %struct.see_data* %170, i32 0, i32 1
  store i32 %167, i32* %171, align 4
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %273

; <label>:174:                                    ; preds = %157, %154
  %175 = load i32, i32* %4, align 4
  %176 = icmp eq i32 %175, 5
  br i1 %176, label %177, label %190

; <label>:177:                                    ; preds = %174
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %180
  %182 = getelementptr inbounds %struct.see_data, %struct.see_data* %181, i32 0, i32 0
  store i32 %178, i32* %182, align 8
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %185
  %187 = getelementptr inbounds %struct.see_data, %struct.see_data* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %273

; <label>:190:                                    ; preds = %174
  %191 = load i32, i32* %4, align 4
  %192 = icmp eq i32 %191, 6
  br i1 %192, label %193, label %206

; <label>:193:                                    ; preds = %190
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %196
  %198 = getelementptr inbounds %struct.see_data, %struct.see_data* %197, i32 0, i32 0
  store i32 %194, i32* %198, align 8
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %201
  %203 = getelementptr inbounds %struct.see_data, %struct.see_data* %202, i32 0, i32 1
  store i32 %199, i32* %203, align 4
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %273

; <label>:206:                                    ; preds = %190
  br label %207

; <label>:207:                                    ; preds = %254, %206
  %208 = load i32, i32* %4, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %265

; <label>:210:                                    ; preds = %207
  %211 = load i32, i32* %4, align 4
  %212 = icmp eq i32 %211, 11
  br i1 %212, label %216, label %213

; <label>:213:                                    ; preds = %210
  %214 = load i32, i32* %4, align 4
  %215 = icmp eq i32 %214, 9
  br i1 %215, label %216, label %229

; <label>:216:                                    ; preds = %213, %210
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %219
  %221 = getelementptr inbounds %struct.see_data, %struct.see_data* %220, i32 0, i32 0
  store i32 %217, i32* %221, align 8
  %222 = load i32, i32* %3, align 4
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %224
  %226 = getelementptr inbounds %struct.see_data, %struct.see_data* %225, i32 0, i32 1
  store i32 %222, i32* %226, align 4
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %6, align 4
  br label %265

; <label>:229:                                    ; preds = %213
  %230 = load i32, i32* %4, align 4
  %231 = icmp eq i32 %230, 12
  br i1 %231, label %235, label %232

; <label>:232:                                    ; preds = %229
  %233 = load i32, i32* %4, align 4
  %234 = icmp eq i32 %233, 10
  br i1 %234, label %235, label %248

; <label>:235:                                    ; preds = %232, %229
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %238
  %240 = getelementptr inbounds %struct.see_data, %struct.see_data* %239, i32 0, i32 0
  store i32 %236, i32* %240, align 8
  %241 = load i32, i32* %3, align 4
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %243
  %245 = getelementptr inbounds %struct.see_data, %struct.see_data* %244, i32 0, i32 1
  store i32 %241, i32* %245, align 4
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %265

; <label>:248:                                    ; preds = %232
  %249 = load i32, i32* %4, align 4
  %250 = icmp ne i32 %249, 13
  br i1 %250, label %251, label %252

; <label>:251:                                    ; preds = %248
  br label %265

; <label>:252:                                    ; preds = %248
  br label %253

; <label>:253:                                    ; preds = %252
  br label %254

; <label>:254:                                    ; preds = %253
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* @setup_attackers.bishop_o, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %3, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %3, align 4
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %4, align 4
  br label %207

; <label>:265:                                    ; preds = %251, %235, %216, %207
  br label %266

; <label>:266:                                    ; preds = %265
  br label %267

; <label>:267:                                    ; preds = %266
  br label %268

; <label>:268:                                    ; preds = %267
  br label %269

; <label>:269:                                    ; preds = %268
  br label %270

; <label>:270:                                    ; preds = %269
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %5, align 4
  br label %121

; <label>:273:                                    ; preds = %193, %177, %161, %141, %121
  store i32 0, i32* %5, align 4
  br label %274

; <label>:274:                                    ; preds = %321, %273
  %275 = load i32, i32* %5, align 4
  %276 = icmp slt i32 %275, 8
  br i1 %276, label %277, label %324

; <label>:277:                                    ; preds = %274
  %278 = load i32, i32* %2, align 4
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [8 x i32], [8 x i32]* @setup_attackers.knight_o, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %278, %282
  store i32 %283, i32* %3, align 4
  %284 = load i32, i32* %3, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %4, align 4
  %288 = load i32, i32* %4, align 4
  %289 = icmp eq i32 %288, 3
  br i1 %289, label %290, label %303

; <label>:290:                                    ; preds = %277
  %291 = load i32, i32* %4, align 4
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %293
  %295 = getelementptr inbounds %struct.see_data, %struct.see_data* %294, i32 0, i32 0
  store i32 %291, i32* %295, align 8
  %296 = load i32, i32* %3, align 4
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0), i64 0, i64 %298
  %300 = getelementptr inbounds %struct.see_data, %struct.see_data* %299, i32 0, i32 1
  store i32 %296, i32* %300, align 4
  %301 = load i32, i32* %6, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %6, align 4
  br label %320

; <label>:303:                                    ; preds = %277
  %304 = load i32, i32* %4, align 4
  %305 = icmp eq i32 %304, 4
  br i1 %305, label %306, label %319

; <label>:306:                                    ; preds = %303
  %307 = load i32, i32* %4, align 4
  %308 = load i32, i32* %7, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %309
  %311 = getelementptr inbounds %struct.see_data, %struct.see_data* %310, i32 0, i32 0
  store i32 %307, i32* %311, align 8
  %312 = load i32, i32* %3, align 4
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1), i64 0, i64 %314
  %316 = getelementptr inbounds %struct.see_data, %struct.see_data* %315, i32 0, i32 1
  store i32 %312, i32* %316, align 4
  %317 = load i32, i32* %7, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %7, align 4
  br label %319

; <label>:319:                                    ; preds = %306, %303
  br label %320

; <label>:320:                                    ; preds = %319, %290
  br label %321

; <label>:321:                                    ; preds = %320
  %322 = load i32, i32* %5, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %5, align 4
  br label %274

; <label>:324:                                    ; preds = %274
  %325 = load i32, i32* %6, align 4
  store i32 %325, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 0), align 4
  %326 = load i32, i32* %7, align 4
  store i32 %326, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 1), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @findlowest(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.see_data, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %11
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %12, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.see_data, %struct.see_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @abs(i32 %20) #3
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %8, align 4
  br label %23

; <label>:23:                                     ; preds = %60, %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %63

; <label>:30:                                     ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %32
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %33, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.see_data, %struct.see_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @abs(i32 %41) #3
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

; <label>:45:                                     ; preds = %30
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %49, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.see_data, %struct.see_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @abs(i32 %57) #3
  store i32 %58, i32* %6, align 4
  br label %59

; <label>:59:                                     ; preds = %45, %30
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %23

; <label>:63:                                     ; preds = %23
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %65
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %66, i64 0, i64 %68
  %70 = bitcast %struct.see_data* %7 to i8*
  %71 = bitcast %struct.see_data* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 8, i32 4, i1 false)
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %73
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %74, i64 0, i64 %76
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %79
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %80, i64 0, i64 %82
  %84 = bitcast %struct.see_data* %77 to i8*
  %85 = bitcast %struct.see_data* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 8, i32 8, i1 false)
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %87
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %88, i64 0, i64 %90
  %92 = bitcast %struct.see_data* %91 to i8*
  %93 = bitcast %struct.see_data* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @see(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 0), align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 1), align 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %19
  store i32 13, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %28
  %30 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %29, i64 0, i64 0
  %31 = getelementptr inbounds %struct.see_data, %struct.see_data* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 16
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %34
  %36 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %35, i64 0, i64 0
  %37 = getelementptr inbounds %struct.see_data, %struct.see_data* %36, i32 0, i32 1
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  call void @setup_attackers(i32 %38)
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @abs(i32 %45) #3
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

; <label>:55:                                     ; preds = %3
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %58
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %224

; <label>:61:                                     ; preds = %3
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %13, align 4
  store i32 -1000000, i32* %12, align 4
  br label %63

; <label>:63:                                     ; preds = %61
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %65
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %71
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %8, align 4
  br label %77

; <label>:77:                                     ; preds = %202, %63
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %210

; <label>:87:                                     ; preds = %77
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  call void @findlowest(i32 %88, i32 %92)
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %149

; <label>:96:                                     ; preds = %87
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %101
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %102, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.see_data, %struct.see_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @abs(i32 %117) #3
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp sle i32 %127, %134
  br i1 %135, label %136, label %142

; <label>:136:                                    ; preds = %96
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

; <label>:140:                                    ; preds = %136
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %12, align 4
  br label %142

; <label>:142:                                    ; preds = %140, %136, %96
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %148

; <label>:146:                                    ; preds = %142
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %13, align 4
  br label %148

; <label>:148:                                    ; preds = %146, %142
  br label %202

; <label>:149:                                    ; preds = %87
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %154
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %155, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.see_data, %struct.see_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @abs(i32 %170) #3
  %172 = load i32, i32* %10, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %179

; <label>:177:                                    ; preds = %149
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %12, align 4
  br label %179

; <label>:179:                                    ; preds = %177, %149
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp sle i32 %186, %193
  br i1 %194, label %195, label %201

; <label>:195:                                    ; preds = %179
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %201

; <label>:199:                                    ; preds = %195
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %13, align 4
  br label %201

; <label>:201:                                    ; preds = %199, %195, %179
  br label %202

; <label>:202:                                    ; preds = %201, %148
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* %8, align 4
  %209 = xor i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %77

; <label>:210:                                    ; preds = %77
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %213
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %220

; <label>:218:                                    ; preds = %210
  %219 = load i32, i32* %13, align 4
  br label %222

; <label>:220:                                    ; preds = %210
  %221 = load i32, i32* %12, align 4
  br label %222

; <label>:222:                                    ; preds = %220, %218
  %223 = phi i32 [ %219, %218 ], [ %221, %220 ]
  store i32 %223, i32* %4, align 4
  br label %224

; <label>:224:                                    ; preds = %222, %55
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
