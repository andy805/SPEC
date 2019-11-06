; ModuleID = 'crazy.c'
source_filename = "crazy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@holding = common global [2 x [16 x i32]] zeroinitializer, align 16
@hold_hash = common global i32 0, align 4
@white_hand_eval = common global i32 0, align 4
@black_hand_eval = common global i32 0, align 4
@num_holding = common global [2 x i32] zeroinitializer, align 4
@zobrist = external global [14 x [144 x i32]], align 16
@Variant = external global i32, align 4
@userealholdings = common global i32 0, align 4
@realholdings = common global [255 x i8] zeroinitializer, align 16
@comp_color = external global i32, align 4
@SwitchColor.t = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 1, i32 4, i32 3, i32 0, i32 0, i32 8, i32 7, i32 10, i32 9, i32 12, i32 11], align 16
@SwitchPromoted.t = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 2, i32 1], align 16
@hand_value = external global [0 x i32], align 4
@material = external global [14 x i32], align 16
@Material = external global i32, align 4
@.str = private unnamed_addr constant [36 x i8] c"WP: %d WR: %d WB: %d WN: %d WQ: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"BP: %d BR: %d BB: %d BN: %d BQ: %d\0A\00", align 1
@drop_piece = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define void @ProcessHoldings(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false)
  store i32 -1056969216, i32* @hold_hash, align 4
  store i32 0, i32* @white_hand_eval, align 4
  store i32 0, i32* @black_hand_eval, align 4
  call void @reset_ecache()
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %238, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 1
  br i1 %7, label %8, label %241

; <label>:8:                                      ; preds = %5
  br label %9

; <label>:9:                                      ; preds = %27, %8
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 91
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %18
  br label %395

; <label>:27:                                     ; preds = %18
  br label %9

; <label>:28:                                     ; preds = %9
  br label %29

; <label>:29:                                     ; preds = %236, %28
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 93
  br i1 %36, label %37, label %237

; <label>:37:                                     ; preds = %29
  %38 = load i8*, i8** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %235 [
    i32 112, label %45
    i32 80, label %45
    i32 113, label %83
    i32 81, label %83
    i32 114, label %121
    i32 82, label %121
    i32 98, label %159
    i32 66, label %159
    i32 110, label %197
    i32 78, label %197
  ]

; <label>:45:                                     ; preds = %37, %37
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %47
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %48, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %66
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %69
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %70, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [144 x i32], [144 x i32]* %67, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @hold_hash, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* @hold_hash, align 4
  br label %236

; <label>:83:                                     ; preds = %37, %37
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %85
  %87 = load i32, i32* %3, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 9, i32 10
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %86, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 9, i32 10
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %104
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %107
  %109 = load i32, i32* %3, align 4
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 9, i32 10
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %108, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [144 x i32], [144 x i32]* %105, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @hold_hash, align 4
  %120 = xor i32 %119, %118
  store i32 %120, i32* @hold_hash, align 4
  br label %236

; <label>:121:                                    ; preds = %37, %37
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %123
  %125 = load i32, i32* %3, align 4
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 7, i32 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %124, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* %3, align 4
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 7, i32 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %142
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %145
  %147 = load i32, i32* %3, align 4
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 7, i32 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* %146, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [144 x i32], [144 x i32]* %143, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @hold_hash, align 4
  %158 = xor i32 %157, %156
  store i32 %158, i32* @hold_hash, align 4
  br label %236

; <label>:159:                                    ; preds = %37, %37
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %161
  %163 = load i32, i32* %3, align 4
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 11, i32 12
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %162, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* %3, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %3, align 4
  %177 = icmp eq i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 11, i32 12
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %180
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %183
  %185 = load i32, i32* %3, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 11, i32 12
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* %184, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [144 x i32], [144 x i32]* %181, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @hold_hash, align 4
  %196 = xor i32 %195, %194
  store i32 %196, i32* @hold_hash, align 4
  br label %236

; <label>:197:                                    ; preds = %37, %37
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %199
  %201 = load i32, i32* %3, align 4
  %202 = icmp eq i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 3, i32 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %200, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %3, align 4
  %215 = icmp eq i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 3, i32 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %218
  %220 = load i32, i32* %3, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %221
  %223 = load i32, i32* %3, align 4
  %224 = icmp eq i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i32 3, i32 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [16 x i32], [16 x i32]* %222, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [144 x i32], [144 x i32]* %219, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @hold_hash, align 4
  %234 = xor i32 %233, %232
  store i32 %234, i32* @hold_hash, align 4
  br label %236

; <label>:235:                                    ; preds = %37
  br label %395

; <label>:236:                                    ; preds = %197, %159, %121, %83, %45
  br label %29

; <label>:237:                                    ; preds = %29
  br label %238

; <label>:238:                                    ; preds = %237
  %239 = load i32, i32* %3, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %3, align 4
  br label %5

; <label>:241:                                    ; preds = %5
  %242 = load i32, i32* @Variant, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %395

; <label>:244:                                    ; preds = %241
  %245 = load i32, i32* @userealholdings, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %395, label %247

; <label>:247:                                    ; preds = %244
  %248 = load i8*, i8** %2, align 8
  %249 = call i8* @strncpy(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @realholdings, i32 0, i32 0), i8* %248, i64 200) #4
  %250 = load i32, i32* @comp_color, align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %323

; <label>:252:                                    ; preds = %247
  %253 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %266

; <label>:255:                                    ; preds = %252
  %256 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8
  %258 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %260 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @hold_hash, align 4
  %265 = xor i32 %264, %263
  store i32 %265, i32* @hold_hash, align 4
  br label %266

; <label>:266:                                    ; preds = %255, %252
  %267 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %280

; <label>:269:                                    ; preds = %266
  %270 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16
  %272 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %274 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @hold_hash, align 4
  %279 = xor i32 %278, %277
  store i32 %279, i32* @hold_hash, align 4
  br label %280

; <label>:280:                                    ; preds = %269, %266
  %281 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %294

; <label>:283:                                    ; preds = %280
  %284 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16
  %286 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %288 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 4), i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @hold_hash, align 4
  %293 = xor i32 %292, %291
  store i32 %293, i32* @hold_hash, align 4
  br label %294

; <label>:294:                                    ; preds = %283, %280
  %295 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %308

; <label>:297:                                    ; preds = %294
  %298 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16
  %300 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %302 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 4), i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @hold_hash, align 4
  %307 = xor i32 %306, %305
  store i32 %307, i32* @hold_hash, align 4
  br label %308

; <label>:308:                                    ; preds = %297, %294
  %309 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %322

; <label>:311:                                    ; preds = %308
  %312 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8
  %314 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 1), align 4
  %316 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 4), i64 0, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @hold_hash, align 4
  %321 = xor i32 %320, %319
  store i32 %321, i32* @hold_hash, align 4
  br label %322

; <label>:322:                                    ; preds = %311, %308
  br label %394

; <label>:323:                                    ; preds = %247
  %324 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %337

; <label>:326:                                    ; preds = %323
  %327 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4
  %329 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %331 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 9), i64 0, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @hold_hash, align 4
  %336 = xor i32 %335, %334
  store i32 %336, i32* @hold_hash, align 4
  br label %337

; <label>:337:                                    ; preds = %326, %323
  %338 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %351

; <label>:340:                                    ; preds = %337
  %341 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4
  %343 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %345 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 9), i64 0, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @hold_hash, align 4
  %350 = xor i32 %349, %348
  store i32 %350, i32* @hold_hash, align 4
  br label %351

; <label>:351:                                    ; preds = %340, %337
  %352 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %365

; <label>:354:                                    ; preds = %351
  %355 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4
  %357 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %359 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 9), i64 0, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @hold_hash, align 4
  %364 = xor i32 %363, %362
  store i32 %364, i32* @hold_hash, align 4
  br label %365

; <label>:365:                                    ; preds = %354, %351
  %366 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %379

; <label>:368:                                    ; preds = %365
  %369 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4
  %371 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %373 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 9), i64 0, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @hold_hash, align 4
  %378 = xor i32 %377, %376
  store i32 %378, i32* @hold_hash, align 4
  br label %379

; <label>:379:                                    ; preds = %368, %365
  %380 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %393

; <label>:382:                                    ; preds = %379
  %383 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4
  %385 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i64 0, i64 0), align 4
  %387 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 9), i64 0, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @hold_hash, align 4
  %392 = xor i32 %391, %390
  store i32 %392, i32* @hold_hash, align 4
  br label %393

; <label>:393:                                    ; preds = %382, %379
  br label %394

; <label>:394:                                    ; preds = %393, %322
  br label %395

; <label>:395:                                    ; preds = %26, %235, %394, %244, %241
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

declare void @reset_ecache() #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @text_to_piece(i8 signext, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %33 [
    i32 112, label %8
    i32 80, label %8
    i32 98, label %13
    i32 66, label %13
    i32 110, label %18
    i32 78, label %18
    i32 114, label %23
    i32 82, label %23
    i32 113, label %28
    i32 81, label %28
  ]

; <label>:8:                                      ; preds = %2, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 2
  store i32 %12, i32* %3, align 4
  br label %34

; <label>:13:                                     ; preds = %2, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 11, i32 12
  store i32 %17, i32* %3, align 4
  br label %34

; <label>:18:                                     ; preds = %2, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 3, i32 4
  store i32 %22, i32* %3, align 4
  br label %34

; <label>:23:                                     ; preds = %2, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 7, i32 8
  store i32 %27, i32* %3, align 4
  br label %34

; <label>:28:                                     ; preds = %2, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 9, i32 10
  store i32 %32, i32* %3, align 4
  br label %34

; <label>:33:                                     ; preds = %2
  store i32 13, i32* %3, align 4
  br label %34

; <label>:34:                                     ; preds = %33, %28, %23, %18, %13, %8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SwitchColor(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [13 x i32], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [13 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([13 x i32]* @SwitchColor.t to i8*), i64 52, i32 16, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SwitchPromoted(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [13 x i32], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [13 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([13 x i32]* @SwitchPromoted.t to i8*), i64 52, i32 16, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define void @addHolding(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @Variant, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %9
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %22
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %25
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [144 x i32], [144 x i32]* %23, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @hold_hash, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* @hold_hash, align 4
  br label %36

; <label>:36:                                     ; preds = %7, %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @white_hand_eval, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* @white_hand_eval, align 4
  br label %53

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @black_hand_eval, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* @black_hand_eval, align 4
  br label %53

; <label>:53:                                     ; preds = %46, %39
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @Material, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* @Material, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @removeHolding(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @Variant, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %9
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %12
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [144 x i32], [144 x i32]* %10, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @hold_hash, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* @hold_hash, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %24
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  br label %36

; <label>:36:                                     ; preds = %7, %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @white_hand_eval, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* @white_hand_eval, align 4
  br label %53

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @black_hand_eval, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* @black_hand_eval, align 4
  br label %53

; <label>:53:                                     ; preds = %46, %39
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @Material, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* @Material, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @DropaddHolding(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %6
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %19
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %22
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [144 x i32], [144 x i32]* %20, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @hold_hash, align 4
  %32 = xor i32 %31, %30
  store i32 %32, i32* @hold_hash, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

; <label>:35:                                     ; preds = %2
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @white_hand_eval, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* @white_hand_eval, align 4
  br label %49

; <label>:42:                                     ; preds = %2
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @black_hand_eval, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* @black_hand_eval, align 4
  br label %49

; <label>:49:                                     ; preds = %42, %35
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @Material, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* @Material, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @DropremoveHolding(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %6
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %9
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [144 x i32], [144 x i32]* %7, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @hold_hash, align 4
  %19 = xor i32 %18, %17
  store i32 %19, i32* @hold_hash, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %21
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

; <label>:35:                                     ; preds = %2
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @white_hand_eval, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* @white_hand_eval, align 4
  br label %49

; <label>:42:                                     ; preds = %2
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @black_hand_eval, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* @black_hand_eval, align 4
  br label %49

; <label>:49:                                     ; preds = %42, %35
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @Material, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* @Material, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @printHolding() #0 {
  %1 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4
  %2 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4
  %3 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4
  %4 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4
  %5 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8
  %8 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16
  %9 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16
  %10 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16
  %11 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  ret void
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
