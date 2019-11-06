; ModuleID = 'fast_algorithms.c'
source_filename = "fast_algorithms.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.plan7_s*, align 8
  %9 = alloca %struct.dpmatrix_s*, align 8
  %10 = alloca %struct.p7trace_s**, align 8
  %11 = alloca %struct.p7trace_s*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.plan7_s* %2, %struct.plan7_s** %8, align 8
  store %struct.dpmatrix_s* %3, %struct.dpmatrix_s** %9, align 8
  store %struct.p7trace_s** %4, %struct.p7trace_s*** %10, align 8
  %40 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %43 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %42, i32 0, i32 20
  %44 = load i32, i32* %43, align 8
  call void @ResizePlan7Matrix(%struct.dpmatrix_s* %40, i32 %41, i32 %44, i32*** %12, i32*** %13, i32*** %14, i32*** %15)
  %45 = load i32**, i32*** %12, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 0, i32* %48, align 4
  %49 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %50 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 33
  %51 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %50, i64 0, i64 0
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 0, i64 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32**, i32*** %12, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load i32**, i32*** %12, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 -987654321, i32* %61, align 4
  %62 = load i32**, i32*** %12, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 -987654321, i32* %65, align 4
  %66 = load i32**, i32*** %12, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 -987654321, i32* %69, align 4
  store i32 0, i32* %17, align 4
  br label %70

; <label>:70:                                     ; preds = %95, %5
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 20
  %74 = load i32, i32* %73, align 8
  %75 = icmp sle i32 %71, %74
  br i1 %75, label %76, label %98

; <label>:76:                                     ; preds = %70
  %77 = load i32**, i32*** %15, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 -987654321, i32* %82, align 4
  %83 = load i32**, i32*** %14, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 -987654321, i32* %88, align 4
  %89 = load i32**, i32*** %13, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 -987654321, i32* %94, align 4
  br label %95

; <label>:95:                                     ; preds = %76
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %70

; <label>:98:                                     ; preds = %70
  %99 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %100 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %99, i32 0, i32 20
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %39, align 4
  %102 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %102, i32 0, i32 30
  %104 = load i32**, i32*** %103, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %32, align 8
  %107 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %108 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 30
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 3
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %35, align 8
  %112 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %112, i32 0, i32 30
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 5
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %37, align 8
  %117 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %118 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %117, i32 0, i32 30
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 2
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %34, align 8
  %122 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %123 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %122, i32 0, i32 30
  %124 = load i32**, i32*** %123, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 6
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %38, align 8
  %127 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %128 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 30
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 1
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %33, align 8
  %132 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %133 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %132, i32 0, i32 30
  %134 = load i32**, i32*** %133, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 4
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %36, align 8
  %137 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %138 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %137, i32 0, i32 34
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %27, align 8
  store i32 1, i32* %16, align 4
  br label %140

; <label>:140:                                    ; preds = %710, %98
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %713

; <label>:144:                                    ; preds = %140
  %145 = load i32**, i32*** %13, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %19, align 8
  %150 = load i32**, i32*** %15, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %20, align 8
  %155 = load i32**, i32*** %14, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  store i32* %159, i32** %21, align 8
  %160 = load i32**, i32*** %13, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %160, i64 %163
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %24, align 8
  %166 = load i32**, i32*** %15, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %166, i64 %169
  %171 = load i32*, i32** %170, align 8
  store i32* %171, i32** %31, align 8
  %172 = load i32**, i32*** %14, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %172, i64 %175
  %177 = load i32*, i32** %176, align 8
  store i32* %177, i32** %26, align 8
  %178 = load i32**, i32*** %12, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %178, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %29, align 4
  %186 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %187 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %186, i32 0, i32 31
  %188 = load i32**, i32*** %187, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32*, i32** %188, i64 %195
  %197 = load i32*, i32** %196, align 8
  store i32* %197, i32** %22, align 8
  %198 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %199 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %198, i32 0, i32 32
  %200 = load i32**, i32*** %199, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %200, i64 %207
  %209 = load i32*, i32** %208, align 8
  store i32* %209, i32** %23, align 8
  %210 = load i32*, i32** %19, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  store i32 -987654321, i32* %211, align 4
  %212 = load i32*, i32** %20, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 -987654321, i32* %213, align 4
  %214 = load i32*, i32** %21, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 -987654321, i32* %215, align 4
  store i32 1, i32* %17, align 4
  br label %216

; <label>:216:                                    ; preds = %455, %144
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %39, align 4
  %219 = icmp sle i32 %217, %218
  br i1 %219, label %220, label %458

; <label>:220:                                    ; preds = %216
  %221 = load i32*, i32** %24, align 8
  %222 = load i32, i32* %17, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %32, align 8
  %228 = load i32, i32* %17, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %226, %232
  %234 = load i32*, i32** %19, align 8
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %233, i32* %237, align 4
  %238 = load i32*, i32** %26, align 8
  %239 = load i32, i32* %17, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %35, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %243, %249
  store i32 %250, i32* %18, align 4
  %251 = load i32*, i32** %19, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %250, %255
  br i1 %256, label %257, label %263

; <label>:257:                                    ; preds = %220
  %258 = load i32, i32* %18, align 4
  %259 = load i32*, i32** %19, align 8
  %260 = load i32, i32* %17, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %258, i32* %262, align 4
  br label %263

; <label>:263:                                    ; preds = %257, %220
  %264 = load i32*, i32** %31, align 8
  %265 = load i32, i32* %17, align 4
  %266 = sub nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %37, align 8
  %271 = load i32, i32* %17, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %269, %275
  store i32 %276, i32* %18, align 4
  %277 = load i32*, i32** %19, align 8
  %278 = load i32, i32* %17, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = icmp sgt i32 %276, %281
  br i1 %282, label %283, label %289

; <label>:283:                                    ; preds = %263
  %284 = load i32, i32* %18, align 4
  %285 = load i32*, i32** %19, align 8
  %286 = load i32, i32* %17, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %284, i32* %288, align 4
  br label %289

; <label>:289:                                    ; preds = %283, %263
  %290 = load i32, i32* %29, align 4
  %291 = load i32*, i32** %27, align 8
  %292 = load i32, i32* %17, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %290, %295
  store i32 %296, i32* %18, align 4
  %297 = load i32*, i32** %19, align 8
  %298 = load i32, i32* %17, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp sgt i32 %296, %301
  br i1 %302, label %303, label %309

; <label>:303:                                    ; preds = %289
  %304 = load i32, i32* %18, align 4
  %305 = load i32*, i32** %19, align 8
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %304, i32* %308, align 4
  br label %309

; <label>:309:                                    ; preds = %303, %289
  %310 = load i32*, i32** %22, align 8
  %311 = load i32, i32* %17, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32*, i32** %19, align 8
  %316 = load i32, i32* %17, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, %314
  store i32 %320, i32* %318, align 4
  %321 = load i32*, i32** %19, align 8
  %322 = load i32, i32* %17, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp slt i32 %325, -987654321
  br i1 %326, label %327, label %332

; <label>:327:                                    ; preds = %309
  %328 = load i32*, i32** %19, align 8
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 -987654321, i32* %331, align 4
  br label %332

; <label>:332:                                    ; preds = %327, %309
  %333 = load i32*, i32** %20, align 8
  %334 = load i32, i32* %17, align 4
  %335 = sub nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load i32*, i32** %38, align 8
  %340 = load i32, i32* %17, align 4
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %339, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %338, %344
  %346 = load i32*, i32** %20, align 8
  %347 = load i32, i32* %17, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  store i32 %345, i32* %349, align 4
  %350 = load i32*, i32** %19, align 8
  %351 = load i32, i32* %17, align 4
  %352 = sub nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %350, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %34, align 8
  %357 = load i32, i32* %17, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %355, %361
  store i32 %362, i32* %18, align 4
  %363 = load i32*, i32** %20, align 8
  %364 = load i32, i32* %17, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = icmp sgt i32 %362, %367
  br i1 %368, label %369, label %375

; <label>:369:                                    ; preds = %332
  %370 = load i32, i32* %18, align 4
  %371 = load i32*, i32** %20, align 8
  %372 = load i32, i32* %17, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  store i32 %370, i32* %374, align 4
  br label %375

; <label>:375:                                    ; preds = %369, %332
  %376 = load i32*, i32** %20, align 8
  %377 = load i32, i32* %17, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = icmp slt i32 %380, -987654321
  br i1 %381, label %382, label %387

; <label>:382:                                    ; preds = %375
  %383 = load i32*, i32** %20, align 8
  %384 = load i32, i32* %17, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  store i32 -987654321, i32* %386, align 4
  br label %387

; <label>:387:                                    ; preds = %382, %375
  %388 = load i32, i32* %17, align 4
  %389 = load i32, i32* %39, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %454

; <label>:391:                                    ; preds = %387
  %392 = load i32*, i32** %24, align 8
  %393 = load i32, i32* %17, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = load i32*, i32** %33, align 8
  %398 = load i32, i32* %17, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %396, %401
  %403 = load i32*, i32** %21, align 8
  %404 = load i32, i32* %17, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  store i32 %402, i32* %406, align 4
  %407 = load i32*, i32** %26, align 8
  %408 = load i32, i32* %17, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load i32*, i32** %36, align 8
  %413 = load i32, i32* %17, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %411, %416
  store i32 %417, i32* %18, align 4
  %418 = load i32*, i32** %21, align 8
  %419 = load i32, i32* %17, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = icmp sgt i32 %417, %422
  br i1 %423, label %424, label %430

; <label>:424:                                    ; preds = %391
  %425 = load i32, i32* %18, align 4
  %426 = load i32*, i32** %21, align 8
  %427 = load i32, i32* %17, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  store i32 %425, i32* %429, align 4
  br label %430

; <label>:430:                                    ; preds = %424, %391
  %431 = load i32*, i32** %23, align 8
  %432 = load i32, i32* %17, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = load i32*, i32** %21, align 8
  %437 = load i32, i32* %17, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = add nsw i32 %440, %435
  store i32 %441, i32* %439, align 4
  %442 = load i32*, i32** %21, align 8
  %443 = load i32, i32* %17, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = icmp slt i32 %446, -987654321
  br i1 %447, label %448, label %453

; <label>:448:                                    ; preds = %430
  %449 = load i32*, i32** %21, align 8
  %450 = load i32, i32* %17, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  store i32 -987654321, i32* %452, align 4
  br label %453

; <label>:453:                                    ; preds = %448, %430
  br label %454

; <label>:454:                                    ; preds = %453, %387
  br label %455

; <label>:455:                                    ; preds = %454
  %456 = load i32, i32* %17, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %17, align 4
  br label %216

; <label>:458:                                    ; preds = %216
  %459 = load i32**, i32*** %12, align 8
  %460 = load i32, i32* %16, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32*, i32** %459, i64 %461
  %463 = load i32*, i32** %462, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 4
  store i32 -987654321, i32* %464, align 4
  %465 = load i32**, i32*** %12, align 8
  %466 = load i32, i32* %16, align 4
  %467 = sub nsw i32 %466, 1
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32*, i32** %465, i64 %468
  %470 = load i32*, i32** %469, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 4
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %474 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %473, i32 0, i32 33
  %475 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %474, i64 0, i64 0
  %476 = getelementptr inbounds [2 x i32], [2 x i32]* %475, i64 0, i64 1
  %477 = load i32, i32* %476, align 4
  %478 = add nsw i32 %472, %477
  store i32 %478, i32* %18, align 4
  %479 = icmp sgt i32 %478, -987654321
  br i1 %479, label %480, label %488

; <label>:480:                                    ; preds = %458
  %481 = load i32, i32* %18, align 4
  %482 = load i32**, i32*** %12, align 8
  %483 = load i32, i32* %16, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32*, i32** %482, i64 %484
  %486 = load i32*, i32** %485, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 4
  store i32 %481, i32* %487, align 4
  br label %488

; <label>:488:                                    ; preds = %480, %458
  store i32 -987654321, i32* %30, align 4
  %489 = load i32**, i32*** %13, align 8
  %490 = load i32, i32* %16, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32*, i32** %489, i64 %491
  %493 = load i32*, i32** %492, align 8
  store i32* %493, i32** %25, align 8
  %494 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %495 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %494, i32 0, i32 35
  %496 = load i32*, i32** %495, align 8
  store i32* %496, i32** %28, align 8
  store i32 1, i32* %17, align 4
  br label %497

; <label>:497:                                    ; preds = %520, %488
  %498 = load i32, i32* %17, align 4
  %499 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %500 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %499, i32 0, i32 20
  %501 = load i32, i32* %500, align 8
  %502 = icmp sle i32 %498, %501
  br i1 %502, label %503, label %523

; <label>:503:                                    ; preds = %497
  %504 = load i32*, i32** %25, align 8
  %505 = load i32, i32* %17, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load i32*, i32** %28, align 8
  %510 = load i32, i32* %17, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %509, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = add nsw i32 %508, %513
  store i32 %514, i32* %18, align 4
  %515 = load i32, i32* %30, align 4
  %516 = icmp sgt i32 %514, %515
  br i1 %516, label %517, label %519

; <label>:517:                                    ; preds = %503
  %518 = load i32, i32* %18, align 4
  store i32 %518, i32* %30, align 4
  br label %519

; <label>:519:                                    ; preds = %517, %503
  br label %520

; <label>:520:                                    ; preds = %519
  %521 = load i32, i32* %17, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %17, align 4
  br label %497

; <label>:523:                                    ; preds = %497
  %524 = load i32, i32* %30, align 4
  %525 = load i32**, i32*** %12, align 8
  %526 = load i32, i32* %16, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32*, i32** %525, i64 %527
  %529 = load i32*, i32** %528, align 8
  %530 = getelementptr inbounds i32, i32* %529, i64 1
  store i32 %524, i32* %530, align 4
  %531 = load i32**, i32*** %12, align 8
  %532 = load i32, i32* %16, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32*, i32** %531, i64 %533
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 3
  store i32 -987654321, i32* %536, align 4
  %537 = load i32**, i32*** %12, align 8
  %538 = load i32, i32* %16, align 4
  %539 = sub nsw i32 %538, 1
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i32*, i32** %537, i64 %540
  %542 = load i32*, i32** %541, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 3
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %546 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %545, i32 0, i32 33
  %547 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %546, i64 0, i64 3
  %548 = getelementptr inbounds [2 x i32], [2 x i32]* %547, i64 0, i64 1
  %549 = load i32, i32* %548, align 4
  %550 = add nsw i32 %544, %549
  store i32 %550, i32* %18, align 4
  %551 = icmp sgt i32 %550, -987654321
  br i1 %551, label %552, label %560

; <label>:552:                                    ; preds = %523
  %553 = load i32, i32* %18, align 4
  %554 = load i32**, i32*** %12, align 8
  %555 = load i32, i32* %16, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32*, i32** %554, i64 %556
  %558 = load i32*, i32** %557, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 3
  store i32 %553, i32* %559, align 4
  br label %560

; <label>:560:                                    ; preds = %552, %523
  %561 = load i32**, i32*** %12, align 8
  %562 = load i32, i32* %16, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32*, i32** %561, i64 %563
  %565 = load i32*, i32** %564, align 8
  %566 = getelementptr inbounds i32, i32* %565, i64 1
  %567 = load i32, i32* %566, align 4
  %568 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %569 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %568, i32 0, i32 33
  %570 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %569, i64 0, i64 1
  %571 = getelementptr inbounds [2 x i32], [2 x i32]* %570, i64 0, i64 1
  %572 = load i32, i32* %571, align 4
  %573 = add nsw i32 %567, %572
  store i32 %573, i32* %18, align 4
  %574 = load i32**, i32*** %12, align 8
  %575 = load i32, i32* %16, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32*, i32** %574, i64 %576
  %578 = load i32*, i32** %577, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 3
  %580 = load i32, i32* %579, align 4
  %581 = icmp sgt i32 %573, %580
  br i1 %581, label %582, label %590

; <label>:582:                                    ; preds = %560
  %583 = load i32, i32* %18, align 4
  %584 = load i32**, i32*** %12, align 8
  %585 = load i32, i32* %16, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32*, i32** %584, i64 %586
  %588 = load i32*, i32** %587, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 3
  store i32 %583, i32* %589, align 4
  br label %590

; <label>:590:                                    ; preds = %582, %560
  %591 = load i32**, i32*** %12, align 8
  %592 = load i32, i32* %16, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i32*, i32** %591, i64 %593
  %595 = load i32*, i32** %594, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 0
  store i32 -987654321, i32* %596, align 4
  %597 = load i32**, i32*** %12, align 8
  %598 = load i32, i32* %16, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32*, i32** %597, i64 %599
  %601 = load i32*, i32** %600, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 4
  %603 = load i32, i32* %602, align 4
  %604 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %605 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %604, i32 0, i32 33
  %606 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %605, i64 0, i64 0
  %607 = getelementptr inbounds [2 x i32], [2 x i32]* %606, i64 0, i64 0
  %608 = load i32, i32* %607, align 8
  %609 = add nsw i32 %603, %608
  store i32 %609, i32* %18, align 4
  %610 = icmp sgt i32 %609, -987654321
  br i1 %610, label %611, label %619

; <label>:611:                                    ; preds = %590
  %612 = load i32, i32* %18, align 4
  %613 = load i32**, i32*** %12, align 8
  %614 = load i32, i32* %16, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i32*, i32** %613, i64 %615
  %617 = load i32*, i32** %616, align 8
  %618 = getelementptr inbounds i32, i32* %617, i64 0
  store i32 %612, i32* %618, align 4
  br label %619

; <label>:619:                                    ; preds = %611, %590
  %620 = load i32**, i32*** %12, align 8
  %621 = load i32, i32* %16, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32*, i32** %620, i64 %622
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 3
  %626 = load i32, i32* %625, align 4
  %627 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %628 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %627, i32 0, i32 33
  %629 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %628, i64 0, i64 3
  %630 = getelementptr inbounds [2 x i32], [2 x i32]* %629, i64 0, i64 0
  %631 = load i32, i32* %630, align 8
  %632 = add nsw i32 %626, %631
  store i32 %632, i32* %18, align 4
  %633 = load i32**, i32*** %12, align 8
  %634 = load i32, i32* %16, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i32*, i32** %633, i64 %635
  %637 = load i32*, i32** %636, align 8
  %638 = getelementptr inbounds i32, i32* %637, i64 0
  %639 = load i32, i32* %638, align 4
  %640 = icmp sgt i32 %632, %639
  br i1 %640, label %641, label %649

; <label>:641:                                    ; preds = %619
  %642 = load i32, i32* %18, align 4
  %643 = load i32**, i32*** %12, align 8
  %644 = load i32, i32* %16, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i32*, i32** %643, i64 %645
  %647 = load i32*, i32** %646, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 0
  store i32 %642, i32* %648, align 4
  br label %649

; <label>:649:                                    ; preds = %641, %619
  %650 = load i32**, i32*** %12, align 8
  %651 = load i32, i32* %16, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i32*, i32** %650, i64 %652
  %654 = load i32*, i32** %653, align 8
  %655 = getelementptr inbounds i32, i32* %654, i64 2
  store i32 -987654321, i32* %655, align 4
  %656 = load i32**, i32*** %12, align 8
  %657 = load i32, i32* %16, align 4
  %658 = sub nsw i32 %657, 1
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i32*, i32** %656, i64 %659
  %661 = load i32*, i32** %660, align 8
  %662 = getelementptr inbounds i32, i32* %661, i64 2
  %663 = load i32, i32* %662, align 4
  %664 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %665 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %664, i32 0, i32 33
  %666 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %665, i64 0, i64 2
  %667 = getelementptr inbounds [2 x i32], [2 x i32]* %666, i64 0, i64 1
  %668 = load i32, i32* %667, align 4
  %669 = add nsw i32 %663, %668
  store i32 %669, i32* %18, align 4
  %670 = icmp sgt i32 %669, -987654321
  br i1 %670, label %671, label %679

; <label>:671:                                    ; preds = %649
  %672 = load i32, i32* %18, align 4
  %673 = load i32**, i32*** %12, align 8
  %674 = load i32, i32* %16, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i32*, i32** %673, i64 %675
  %677 = load i32*, i32** %676, align 8
  %678 = getelementptr inbounds i32, i32* %677, i64 2
  store i32 %672, i32* %678, align 4
  br label %679

; <label>:679:                                    ; preds = %671, %649
  %680 = load i32**, i32*** %12, align 8
  %681 = load i32, i32* %16, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32*, i32** %680, i64 %682
  %684 = load i32*, i32** %683, align 8
  %685 = getelementptr inbounds i32, i32* %684, i64 1
  %686 = load i32, i32* %685, align 4
  %687 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %688 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %687, i32 0, i32 33
  %689 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %688, i64 0, i64 1
  %690 = getelementptr inbounds [2 x i32], [2 x i32]* %689, i64 0, i64 0
  %691 = load i32, i32* %690, align 8
  %692 = add nsw i32 %686, %691
  store i32 %692, i32* %18, align 4
  %693 = load i32**, i32*** %12, align 8
  %694 = load i32, i32* %16, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i32*, i32** %693, i64 %695
  %697 = load i32*, i32** %696, align 8
  %698 = getelementptr inbounds i32, i32* %697, i64 2
  %699 = load i32, i32* %698, align 4
  %700 = icmp sgt i32 %692, %699
  br i1 %700, label %701, label %709

; <label>:701:                                    ; preds = %679
  %702 = load i32, i32* %18, align 4
  %703 = load i32**, i32*** %12, align 8
  %704 = load i32, i32* %16, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds i32*, i32** %703, i64 %705
  %707 = load i32*, i32** %706, align 8
  %708 = getelementptr inbounds i32, i32* %707, i64 2
  store i32 %702, i32* %708, align 4
  br label %709

; <label>:709:                                    ; preds = %701, %679
  br label %710

; <label>:710:                                    ; preds = %709
  %711 = load i32, i32* %16, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %16, align 4
  br label %140

; <label>:713:                                    ; preds = %140
  %714 = load i32**, i32*** %12, align 8
  %715 = load i32, i32* %7, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds i32*, i32** %714, i64 %716
  %718 = load i32*, i32** %717, align 8
  %719 = getelementptr inbounds i32, i32* %718, i64 2
  %720 = load i32, i32* %719, align 4
  %721 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %722 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %721, i32 0, i32 33
  %723 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %722, i64 0, i64 2
  %724 = getelementptr inbounds [2 x i32], [2 x i32]* %723, i64 0, i64 0
  %725 = load i32, i32* %724, align 8
  %726 = add nsw i32 %720, %725
  store i32 %726, i32* %18, align 4
  %727 = load %struct.p7trace_s**, %struct.p7trace_s*** %10, align 8
  %728 = icmp ne %struct.p7trace_s** %727, null
  br i1 %728, label %729, label %736

; <label>:729:                                    ; preds = %713
  %730 = load %struct.plan7_s*, %struct.plan7_s** %8, align 8
  %731 = load i8*, i8** %6, align 8
  %732 = load i32, i32* %7, align 4
  %733 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  call void @P7ViterbiTrace(%struct.plan7_s* %730, i8* %731, i32 %732, %struct.dpmatrix_s* %733, %struct.p7trace_s** %11)
  %734 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %735 = load %struct.p7trace_s**, %struct.p7trace_s*** %10, align 8
  store %struct.p7trace_s* %734, %struct.p7trace_s** %735, align 8
  br label %736

; <label>:736:                                    ; preds = %729, %713
  %737 = load i32, i32* %18, align 4
  %738 = call float @Scorify(i32 %737)
  ret float %738
}

declare void @ResizePlan7Matrix(%struct.dpmatrix_s*, i32, i32, i32***, i32***, i32***, i32***) #1

declare void @P7ViterbiTrace(%struct.plan7_s*, i8*, i32, %struct.dpmatrix_s*, %struct.p7trace_s**) #1

declare float @Scorify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
