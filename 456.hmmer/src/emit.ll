; ModuleID = 'emit.c'
source_filename = "emit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"emit.c\00", align 1
@Alphabet_iupac = external global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"never happens\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"can't happen.\00", align 1
@Alphabet_size = external global i32, align 4
@Alphabet_type = external global i32, align 4
@Alphabet = external global [25 x i8], align 16

; Function Attrs: noinline nounwind optnone uwtable
define void @EmitSequence(%struct.plan7_s*, i8**, i32*, %struct.p7trace_s**) #0 {
  %5 = alloca %struct.plan7_s*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.p7trace_s**, align 8
  %9 = alloca %struct.p7trace_s*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x float], align 16
  store %struct.plan7_s* %0, %struct.plan7_s** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.p7trace_s** %3, %struct.p7trace_s*** %8, align 8
  call void @P7AllocTrace(i32 64, %struct.p7trace_s** %9)
  store i32 64, i32* %14, align 4
  %19 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 59, i64 64)
  store i8* %19, i8** %12, align 8
  store i32 64, i32* %15, align 4
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  call void @TraceSet(%struct.p7trace_s* %20, i32 0, i8 signext 4, i32 0, i32 0)
  %21 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  call void @TraceSet(%struct.p7trace_s* %21, i32 1, i8 signext 5, i32 0, i32 0)
  %22 = load i32, i32* @Alphabet_iupac, align 4
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %23, i8* %25, align 1
  store i32 1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  store i8 5, i8* %10, align 1
  store i32 2, i32* %16, align 4
  br label %26

; <label>:26:                                     ; preds = %306, %4
  %27 = load i8, i8* %10, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 9
  br i1 %29, label %30, label %307

; <label>:30:                                     ; preds = %26
  %31 = load i8, i8* %10, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %177 [
    i32 6, label %33
    i32 3, label %54
    i32 5, label %75
    i32 7, label %85
    i32 8, label %95
    i32 10, label %105
    i32 2, label %115
    i32 1, label %139
    i32 9, label %176
    i32 0, label %176
  ]

; <label>:33:                                     ; preds = %30
  %34 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %35 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 24
  %36 = load float, float* %35, align 8
  %37 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %38 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 26
  %39 = load float*, float** %38, align 8
  %40 = getelementptr inbounds float, float* %39, i64 0
  store float %36, float* %40, align 4
  %41 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %42 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 26
  %43 = load float*, float** %42, align 8
  %44 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %44, i32 0, i32 20
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = call i32 @FChoose(float* %43, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %33
  store i8 2, i8* %10, align 1
  store i32 1, i32* %11, align 4
  br label %53

; <label>:52:                                     ; preds = %33
  store i8 1, i8* %10, align 1
  br label %53

; <label>:53:                                     ; preds = %52, %51
  br label %178

; <label>:54:                                     ; preds = %30
  %55 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %56 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %55, i32 0, i32 21
  %57 = load float**, float*** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float*, float** %57, i64 %59
  %61 = load float*, float** %60, align 8
  %62 = getelementptr inbounds float, float* %61, i64 3
  %63 = call i32 @FChoose(float* %62, i32 2)
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 3
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %10, align 1
  %68 = load i8, i8* %10, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

; <label>:71:                                     ; preds = %54
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %74

; <label>:74:                                     ; preds = %71, %54
  br label %178

; <label>:75:                                     ; preds = %30
  %76 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %77 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 25
  %78 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %77, i64 0, i64 0
  %79 = getelementptr inbounds [2 x float], [2 x float]* %78, i32 0, i32 0
  %80 = call i32 @FChoose(float* %79, i32 2)
  %81 = icmp eq i32 %80, 1
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 5, i32 6
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %178

; <label>:85:                                     ; preds = %30
  %86 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %87 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %86, i32 0, i32 25
  %88 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %87, i64 0, i64 1
  %89 = getelementptr inbounds [2 x float], [2 x float]* %88, i32 0, i32 0
  %90 = call i32 @FChoose(float* %89, i32 2)
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 10, i32 8
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %178

; <label>:95:                                     ; preds = %30
  %96 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %97 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %96, i32 0, i32 25
  %98 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %97, i64 0, i64 2
  %99 = getelementptr inbounds [2 x float], [2 x float]* %98, i32 0, i32 0
  %100 = call i32 @FChoose(float* %99, i32 2)
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 8, i32 9
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %178

; <label>:105:                                    ; preds = %30
  %106 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %107 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %106, i32 0, i32 25
  %108 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %107, i64 0, i64 3
  %109 = getelementptr inbounds [2 x float], [2 x float]* %108, i32 0, i32 0
  %110 = call i32 @FChoose(float* %109, i32 2)
  %111 = icmp eq i32 %110, 1
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 10, i32 6
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %178

; <label>:115:                                    ; preds = %30
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %118 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %117, i32 0, i32 20
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %137

; <label>:121:                                    ; preds = %115
  %122 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %123 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %122, i32 0, i32 21
  %124 = load float**, float*** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float*, float** %124, i64 %126
  %128 = load float*, float** %127, align 8
  %129 = getelementptr inbounds float, float* %128, i64 5
  %130 = call i32 @FChoose(float* %129, i32 2)
  %131 = icmp eq i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 2
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %10, align 1
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %138

; <label>:137:                                    ; preds = %115
  store i8 7, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %138

; <label>:138:                                    ; preds = %137, %121
  br label %178

; <label>:139:                                    ; preds = %30
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %142 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %141, i32 0, i32 20
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %174

; <label>:145:                                    ; preds = %139
  %146 = getelementptr inbounds [4 x float], [4 x float]* %18, i32 0, i32 0
  %147 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %148 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %147, i32 0, i32 21
  %149 = load float**, float*** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float*, float** %149, i64 %151
  %153 = load float*, float** %152, align 8
  call void @FCopy(float* %146, float* %153, i32 3)
  %154 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %155 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %154, i32 0, i32 27
  %156 = load float*, float** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  %160 = load float, float* %159, align 4
  %161 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 3
  store float %160, float* %161, align 4
  %162 = getelementptr inbounds [4 x float], [4 x float]* %18, i32 0, i32 0
  %163 = call i32 @FChoose(float* %162, i32 4)
  switch i32 %163, label %172 [
    i32 0, label %164
    i32 1, label %167
    i32 2, label %168
    i32 3, label %171
  ]

; <label>:164:                                    ; preds = %145
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  store i8 1, i8* %10, align 1
  br label %173

; <label>:167:                                    ; preds = %145
  store i8 3, i8* %10, align 1
  br label %173

; <label>:168:                                    ; preds = %145
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  store i8 2, i8* %10, align 1
  br label %173

; <label>:171:                                    ; preds = %145
  store i32 0, i32* %11, align 4
  store i8 7, i8* %10, align 1
  br label %173

; <label>:172:                                    ; preds = %145
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %173

; <label>:173:                                    ; preds = %172, %171, %168, %167, %164
  br label %175

; <label>:174:                                    ; preds = %139
  store i32 0, i32* %11, align 4
  store i8 7, i8* %10, align 1
  br label %175

; <label>:175:                                    ; preds = %174, %173
  br label %178

; <label>:176:                                    ; preds = %30, %30
  br label %177

; <label>:177:                                    ; preds = %30, %176
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %178

; <label>:178:                                    ; preds = %177, %175, %138, %105, %95, %85, %75, %74, %53
  store i32 -1, i32* %17, align 4
  %179 = load i8, i8* %10, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %192

; <label>:182:                                    ; preds = %178
  %183 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %184 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %183, i32 0, i32 22
  %185 = load float**, float*** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float*, float** %185, i64 %187
  %189 = load float*, float** %188, align 8
  %190 = load i32, i32* @Alphabet_size, align 4
  %191 = call i32 @FChoose(float* %189, i32 %190)
  store i32 %191, i32* %17, align 4
  br label %259

; <label>:192:                                    ; preds = %178
  %193 = load i8, i8* %10, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 3
  br i1 %195, label %196, label %206

; <label>:196:                                    ; preds = %192
  %197 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %198 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %197, i32 0, i32 23
  %199 = load float**, float*** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float*, float** %199, i64 %201
  %203 = load float*, float** %202, align 8
  %204 = load i32, i32* @Alphabet_size, align 4
  %205 = call i32 @FChoose(float* %203, i32 %204)
  store i32 %205, i32* %17, align 4
  br label %258

; <label>:206:                                    ; preds = %192
  %207 = load i8, i8* %10, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 5
  br i1 %209, label %210, label %221

; <label>:210:                                    ; preds = %206
  %211 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  %212 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 5
  br i1 %220, label %251, label %221

; <label>:221:                                    ; preds = %210, %206
  %222 = load i8, i8* %10, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 8
  br i1 %224, label %225, label %236

; <label>:225:                                    ; preds = %221
  %226 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  %227 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %228, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 8
  br i1 %235, label %251, label %236

; <label>:236:                                    ; preds = %225, %221
  %237 = load i8, i8* %10, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp eq i32 %238, 10
  br i1 %239, label %240, label %257

; <label>:240:                                    ; preds = %236
  %241 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  %242 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* %16, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %243, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 10
  br i1 %250, label %251, label %257

; <label>:251:                                    ; preds = %240, %225, %210
  %252 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %253 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %252, i32 0, i32 28
  %254 = getelementptr inbounds [20 x float], [20 x float]* %253, i32 0, i32 0
  %255 = load i32, i32* @Alphabet_size, align 4
  %256 = call i32 @FChoose(float* %254, i32 %255)
  store i32 %256, i32* %17, align 4
  br label %257

; <label>:257:                                    ; preds = %251, %240, %236
  br label %258

; <label>:258:                                    ; preds = %257, %196
  br label %259

; <label>:259:                                    ; preds = %258, %182
  %260 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  %261 = load i32, i32* %16, align 4
  %262 = load i8, i8* %10, align 1
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* %17, align 4
  %265 = icmp ne i32 %264, -1
  br i1 %265, label %266, label %268

; <label>:266:                                    ; preds = %259
  %267 = load i32, i32* %13, align 4
  br label %269

; <label>:268:                                    ; preds = %259
  br label %269

; <label>:269:                                    ; preds = %268, %266
  %270 = phi i32 [ %267, %266 ], [ 0, %268 ]
  call void @TraceSet(%struct.p7trace_s* %260, i32 %261, i8 signext %262, i32 %263, i32 %270)
  %271 = load i32, i32* %16, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %16, align 4
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* %14, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %281

; <label>:276:                                    ; preds = %269
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, 64
  store i32 %278, i32* %14, align 4
  %279 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  %280 = load i32, i32* %14, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %279, i32 %280)
  br label %281

; <label>:281:                                    ; preds = %276, %269
  %282 = load i32, i32* %17, align 4
  %283 = icmp ne i32 %282, -1
  br i1 %283, label %284, label %306

; <label>:284:                                    ; preds = %281
  %285 = load i32, i32* %17, align 4
  %286 = trunc i32 %285 to i8
  %287 = load i8*, i8** %12, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  store i8 %286, i8* %290, align 1
  %291 = load i32, i32* %13, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %13, align 4
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, 1
  %295 = load i32, i32* %15, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %305

; <label>:297:                                    ; preds = %284
  %298 = load i32, i32* %15, align 4
  %299 = add nsw i32 %298, 64
  store i32 %299, i32* %15, align 4
  %300 = load i8*, i8** %12, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = mul i64 1, %302
  %304 = call i8* @sre_realloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 146, i8* %300, i64 %303)
  store i8* %304, i8** %12, align 8
  br label %305

; <label>:305:                                    ; preds = %297, %284
  br label %306

; <label>:306:                                    ; preds = %305, %281
  br label %26

; <label>:307:                                    ; preds = %26
  %308 = load i32, i32* %16, align 4
  %309 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  %310 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  %311 = load i32, i32* @Alphabet_iupac, align 4
  %312 = trunc i32 %311 to i8
  %313 = load i8*, i8** %12, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  store i8 %312, i8* %316, align 1
  %317 = load i8*, i8** %12, align 8
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %317, i64 %320
  store i8 0, i8* %321, align 1
  %322 = load i32, i32* %13, align 4
  %323 = add nsw i32 %322, -1
  store i32 %323, i32* %13, align 4
  %324 = load i8**, i8*** %6, align 8
  %325 = icmp ne i8** %324, null
  br i1 %325, label %326, label %329

; <label>:326:                                    ; preds = %307
  %327 = load i8*, i8** %12, align 8
  %328 = load i8**, i8*** %6, align 8
  store i8* %327, i8** %328, align 8
  br label %331

; <label>:329:                                    ; preds = %307
  %330 = load i8*, i8** %12, align 8
  call void @free(i8* %330) #4
  br label %331

; <label>:331:                                    ; preds = %329, %326
  %332 = load i32*, i32** %7, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %334, label %337

; <label>:334:                                    ; preds = %331
  %335 = load i32, i32* %13, align 4
  %336 = load i32*, i32** %7, align 8
  store i32 %335, i32* %336, align 4
  br label %337

; <label>:337:                                    ; preds = %334, %331
  %338 = load %struct.p7trace_s**, %struct.p7trace_s*** %8, align 8
  %339 = icmp ne %struct.p7trace_s** %338, null
  br i1 %339, label %340, label %343

; <label>:340:                                    ; preds = %337
  %341 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  %342 = load %struct.p7trace_s**, %struct.p7trace_s*** %8, align 8
  store %struct.p7trace_s* %341, %struct.p7trace_s** %342, align 8
  br label %345

; <label>:343:                                    ; preds = %337
  %344 = load %struct.p7trace_s*, %struct.p7trace_s** %9, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %344)
  br label %345

; <label>:345:                                    ; preds = %343, %340
  ret void
}

declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

declare i8* @sre_malloc(i8*, i32, i64) #1

declare void @TraceSet(%struct.p7trace_s*, i32, i8 signext, i32, i32) #1

declare i32 @FChoose(float*, i32) #1

declare void @FCopy(float*, float*, i32) #1

declare void @Die(i8*, ...) #1

declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #1

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @P7FreeTrace(%struct.p7trace_s*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @EmitConsensusSequence(%struct.plan7_s*, i8**, i8**, i32*, %struct.p7trace_s**) #0 {
  %6 = alloca %struct.plan7_s*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.p7trace_s**, align 8
  %11 = alloca %struct.p7trace_s*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.p7trace_s** %4, %struct.p7trace_s*** %10, align 8
  %25 = load i32, i32* @Alphabet_type, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %5
  store float 5.000000e-01, float* %24, align 4
  br label %29

; <label>:28:                                     ; preds = %5
  store float 0x3FECCCCCC0000000, float* %24, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %27
  %30 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  call void @StateOccupancy(%struct.plan7_s* %30, float** %14, float** %15, float** %16)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %20, align 4
  br label %31

; <label>:31:                                     ; preds = %81, %29
  %32 = load i32, i32* %20, align 4
  %33 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %33, i32 0, i32 20
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %84

; <label>:37:                                     ; preds = %31
  %38 = load float*, float** %14, align 8
  %39 = load i32, i32* %20, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = fcmp oge double %43, 5.000000e-01
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %37
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %17, align 4
  br label %51

; <label>:48:                                     ; preds = %37
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %18, align 4
  br label %51

; <label>:51:                                     ; preds = %48, %45
  %52 = load i32, i32* %20, align 4
  %53 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %54 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %53, i32 0, i32 20
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %80

; <label>:57:                                     ; preds = %51
  %58 = load float*, float** %15, align 8
  %59 = load i32, i32* %20, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = fpext float %62 to double
  %64 = fcmp oge double %63, 5.000000e-01
  br i1 %64, label %65, label %80

; <label>:65:                                     ; preds = %57
  %66 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %67 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 21
  %68 = load float**, float*** %67, align 8
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float*, float** %68, i64 %70
  %72 = load float*, float** %71, align 8
  %73 = getelementptr inbounds float, float* %72, i64 4
  %74 = load float, float* %73, align 4
  %75 = fsub float 1.000000e+00, %74
  %76 = fdiv float 1.000000e+00, %75
  %77 = fptosi float %76 to i32
  %78 = load i32, i32* %19, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %19, align 4
  br label %80

; <label>:80:                                     ; preds = %65, %57, %51
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %20, align 4
  br label %31

; <label>:84:                                     ; preds = %31
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 6, %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %88, %89
  call void @P7AllocTrace(i32 %90, %struct.p7trace_s** %11)
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %91, %92
  %94 = add nsw i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = mul i64 1, %95
  %97 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 327, i64 %96)
  store i8* %97, i8** %12, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %98, %99
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = mul i64 1, %102
  %104 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 328, i64 %103)
  store i8* %104, i8** %13, align 8
  %105 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  call void @TraceSet(%struct.p7trace_s* %105, i32 0, i8 signext 4, i32 0, i32 0)
  %106 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  call void @TraceSet(%struct.p7trace_s* %106, i32 1, i8 signext 5, i32 0, i32 0)
  %107 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  call void @TraceSet(%struct.p7trace_s* %107, i32 2, i8 signext 6, i32 0, i32 0)
  %108 = load i32, i32* @Alphabet_iupac, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  store i8 %109, i8* %111, align 1
  store i32 3, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 1, i32* %20, align 4
  br label %112

; <label>:112:                                    ; preds = %248, %84
  %113 = load i32, i32* %20, align 4
  %114 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %115 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %114, i32 0, i32 20
  %116 = load i32, i32* %115, align 8
  %117 = icmp sle i32 %113, %116
  br i1 %117, label %118, label %251

; <label>:118:                                    ; preds = %112
  %119 = load float*, float** %14, align 8
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fpext float %123 to double
  %125 = fcmp oge double %124, 5.000000e-01
  br i1 %125, label %126, label %187

; <label>:126:                                    ; preds = %118
  %127 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %128 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 22
  %129 = load float**, float*** %128, align 8
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float*, float** %129, i64 %131
  %133 = load float*, float** %132, align 8
  %134 = load i32, i32* @Alphabet_size, align 4
  %135 = call i32 @FArgMax(float* %133, i32 %134)
  store i32 %135, i32* %23, align 4
  %136 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, 1
  call void @TraceSet(%struct.p7trace_s* %136, i32 %137, i8 signext 1, i32 %138, i32 %140)
  %141 = load i32, i32* %23, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = load i8*, i8** %13, align 8
  %146 = load i32, i32* %22, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  store i8 %144, i8* %148, align 1
  %149 = load i32, i32* %23, align 4
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %12, align 8
  %152 = load i32, i32* %22, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  store i8 %150, i8* %155, align 1
  %156 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %157 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %156, i32 0, i32 22
  %158 = load float**, float*** %157, align 8
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float*, float** %158, i64 %160
  %162 = load float*, float** %161, align 8
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  %166 = load float, float* %165, align 4
  %167 = load float, float* %24, align 4
  %168 = fcmp olt float %166, %167
  br i1 %168, label %169, label %182

; <label>:169:                                    ; preds = %126
  %170 = load i8*, i8** %13, align 8
  %171 = load i32, i32* %22, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = call i32 @tolower(i32 %175) #5
  %177 = trunc i32 %176 to i8
  %178 = load i8*, i8** %13, align 8
  %179 = load i32, i32* %22, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  store i8 %177, i8* %181, align 1
  br label %182

; <label>:182:                                    ; preds = %169, %126
  %183 = load i32, i32* %22, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %22, align 4
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %21, align 4
  br label %193

; <label>:187:                                    ; preds = %118
  %188 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* %20, align 4
  call void @TraceSet(%struct.p7trace_s* %188, i32 %189, i8 signext 2, i32 %190, i32 0)
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %21, align 4
  br label %193

; <label>:193:                                    ; preds = %187, %182
  %194 = load i32, i32* %20, align 4
  %195 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %196 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %195, i32 0, i32 20
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %247

; <label>:199:                                    ; preds = %193
  %200 = load float*, float** %15, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %200, i64 %202
  %204 = load float, float* %203, align 4
  %205 = fpext float %204 to double
  %206 = fcmp oge double %205, 5.000000e-01
  br i1 %206, label %207, label %247

; <label>:207:                                    ; preds = %199
  %208 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %209 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %208, i32 0, i32 21
  %210 = load float**, float*** %209, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float*, float** %210, i64 %212
  %214 = load float*, float** %213, align 8
  %215 = getelementptr inbounds float, float* %214, i64 4
  %216 = load float, float* %215, align 4
  %217 = fsub float 1.000000e+00, %216
  %218 = fdiv float 1.000000e+00, %217
  %219 = fptosi float %218 to i32
  store i32 %219, i32* %23, align 4
  br label %220

; <label>:220:                                    ; preds = %224, %207
  %221 = load i32, i32* %23, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %23, align 4
  %223 = icmp ne i32 %221, 0
  br i1 %223, label %224, label %246

; <label>:224:                                    ; preds = %220
  %225 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %22, align 4
  %229 = add nsw i32 %228, 1
  call void @TraceSet(%struct.p7trace_s* %225, i32 %226, i8 signext 3, i32 %227, i32 %229)
  %230 = load i8*, i8** %13, align 8
  %231 = load i32, i32* %22, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  store i8 120, i8* %233, align 1
  %234 = load i32, i32* @Alphabet_iupac, align 4
  %235 = sub nsw i32 %234, 1
  %236 = trunc i32 %235 to i8
  %237 = load i8*, i8** %12, align 8
  %238 = load i32, i32* %22, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %237, i64 %240
  store i8 %236, i8* %241, align 1
  %242 = load i32, i32* %22, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %22, align 4
  %244 = load i32, i32* %21, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %21, align 4
  br label %220

; <label>:246:                                    ; preds = %220
  br label %247

; <label>:247:                                    ; preds = %246, %199, %193
  br label %248

; <label>:248:                                    ; preds = %247
  %249 = load i32, i32* %20, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %20, align 4
  br label %112

; <label>:251:                                    ; preds = %112
  %252 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %253 = load i32, i32* %21, align 4
  call void @TraceSet(%struct.p7trace_s* %252, i32 %253, i8 signext 7, i32 0, i32 0)
  %254 = load i32, i32* %21, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %21, align 4
  %256 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %257 = load i32, i32* %21, align 4
  call void @TraceSet(%struct.p7trace_s* %256, i32 %257, i8 signext 8, i32 0, i32 0)
  %258 = load i32, i32* %21, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %21, align 4
  %260 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %261 = load i32, i32* %21, align 4
  call void @TraceSet(%struct.p7trace_s* %260, i32 %261, i8 signext 9, i32 0, i32 0)
  %262 = load i32, i32* %21, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %21, align 4
  %264 = load i32, i32* @Alphabet_iupac, align 4
  %265 = trunc i32 %264 to i8
  %266 = load i8*, i8** %12, align 8
  %267 = load i32, i32* %22, align 4
  %268 = add nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %266, i64 %269
  store i8 %265, i8* %270, align 1
  %271 = load float*, float** %14, align 8
  %272 = bitcast float* %271 to i8*
  call void @free(i8* %272) #4
  %273 = load float*, float** %15, align 8
  %274 = bitcast float* %273 to i8*
  call void @free(i8* %274) #4
  %275 = load float*, float** %16, align 8
  %276 = bitcast float* %275 to i8*
  call void @free(i8* %276) #4
  %277 = load i8**, i8*** %7, align 8
  %278 = icmp ne i8** %277, null
  br i1 %278, label %279, label %282

; <label>:279:                                    ; preds = %251
  %280 = load i8*, i8** %13, align 8
  %281 = load i8**, i8*** %7, align 8
  store i8* %280, i8** %281, align 8
  br label %284

; <label>:282:                                    ; preds = %251
  %283 = load i8*, i8** %13, align 8
  call void @free(i8* %283) #4
  br label %284

; <label>:284:                                    ; preds = %282, %279
  %285 = load i8**, i8*** %8, align 8
  %286 = icmp ne i8** %285, null
  br i1 %286, label %287, label %290

; <label>:287:                                    ; preds = %284
  %288 = load i8*, i8** %12, align 8
  %289 = load i8**, i8*** %8, align 8
  store i8* %288, i8** %289, align 8
  br label %292

; <label>:290:                                    ; preds = %284
  %291 = load i8*, i8** %12, align 8
  call void @free(i8* %291) #4
  br label %292

; <label>:292:                                    ; preds = %290, %287
  %293 = load i32*, i32** %9, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %298

; <label>:295:                                    ; preds = %292
  %296 = load i32, i32* %22, align 4
  %297 = load i32*, i32** %9, align 8
  store i32 %296, i32* %297, align 4
  br label %298

; <label>:298:                                    ; preds = %295, %292
  %299 = load %struct.p7trace_s**, %struct.p7trace_s*** %10, align 8
  %300 = icmp ne %struct.p7trace_s** %299, null
  br i1 %300, label %301, label %304

; <label>:301:                                    ; preds = %298
  %302 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %303 = load %struct.p7trace_s**, %struct.p7trace_s*** %10, align 8
  store %struct.p7trace_s* %302, %struct.p7trace_s** %303, align 8
  br label %306

; <label>:304:                                    ; preds = %298
  %305 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %305)
  br label %306

; <label>:306:                                    ; preds = %304, %301
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @StateOccupancy(%struct.plan7_s*, float**, float**, float**) #0 {
  %5 = alloca %struct.plan7_s*, align 8
  %6 = alloca float**, align 8
  %7 = alloca float**, align 8
  %8 = alloca float**, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %5, align 8
  store float** %1, float*** %6, align 8
  store float** %2, float*** %7, align 8
  store float** %3, float*** %8, align 8
  %13 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 414, i64 %18)
  %20 = bitcast i8* %19 to float*
  store float* %20, float** %9, align 8
  %21 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 20
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 415, i64 %25)
  %27 = bitcast i8* %26 to float*
  store float* %27, float** %10, align 8
  %28 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 416, i64 %33)
  %35 = bitcast i8* %34 to float*
  store float* %35, float** %11, align 8
  %36 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 24
  %38 = load float, float* %37, align 8
  %39 = load float*, float** %11, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  store float %38, float* %40, align 4
  %41 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %42 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 26
  %43 = load float*, float** %42, align 8
  %44 = getelementptr inbounds float, float* %43, i64 1
  %45 = load float, float* %44, align 4
  %46 = load float*, float** %9, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  store float %45, float* %47, align 4
  %48 = load float*, float** %9, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %52 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %51, i32 0, i32 21
  %53 = load float**, float*** %52, align 8
  %54 = getelementptr inbounds float*, float** %53, i64 1
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  %57 = load float, float* %56, align 4
  %58 = fmul float %50, %57
  %59 = load float*, float** %10, align 8
  %60 = getelementptr inbounds float, float* %59, i64 1
  store float %58, float* %60, align 4
  store i32 2, i32* %12, align 4
  br label %61

; <label>:61:                                     ; preds = %221, %4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %64 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %63, i32 0, i32 20
  %65 = load i32, i32* %64, align 8
  %66 = icmp sle i32 %62, %65
  br i1 %66, label %67, label %224

; <label>:67:                                     ; preds = %61
  %68 = load float*, float** %9, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = load float, float* %72, align 4
  %74 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 21
  %76 = load float**, float*** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float*, float** %76, i64 %79
  %81 = load float*, float** %80, align 8
  %82 = getelementptr inbounds float, float* %81, i64 0
  %83 = load float, float* %82, align 4
  %84 = fmul float %73, %83
  %85 = load float*, float** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %85, i64 %88
  %90 = load float, float* %89, align 4
  %91 = fadd float %84, %90
  %92 = load float*, float** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %92, i64 %95
  %97 = load float, float* %96, align 4
  %98 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %99 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %98, i32 0, i32 21
  %100 = load float**, float*** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float*, float** %100, i64 %103
  %105 = load float*, float** %104, align 8
  %106 = getelementptr inbounds float, float* %105, i64 5
  %107 = load float, float* %106, align 4
  %108 = fmul float %97, %107
  %109 = fadd float %91, %108
  %110 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %111 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %110, i32 0, i32 26
  %112 = load float*, float** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  %116 = load float, float* %115, align 4
  %117 = fadd float %109, %116
  %118 = load float*, float** %9, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %118, i64 %120
  store float %117, float* %121, align 4
  %122 = load float*, float** %9, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %122, i64 %125
  %127 = load float, float* %126, align 4
  %128 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %129 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %128, i32 0, i32 21
  %130 = load float**, float*** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float*, float** %130, i64 %133
  %135 = load float*, float** %134, align 8
  %136 = getelementptr inbounds float, float* %135, i64 2
  %137 = load float, float* %136, align 4
  %138 = fmul float %127, %137
  %139 = load float*, float** %11, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %139, i64 %142
  %144 = load float, float* %143, align 4
  %145 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %146 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %145, i32 0, i32 21
  %147 = load float**, float*** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float*, float** %147, i64 %150
  %152 = load float*, float** %151, align 8
  %153 = getelementptr inbounds float, float* %152, i64 6
  %154 = load float, float* %153, align 4
  %155 = fmul float %144, %154
  %156 = fadd float %138, %155
  %157 = load float*, float** %11, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  store float %156, float* %160, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %163 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %162, i32 0, i32 20
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %186

; <label>:166:                                    ; preds = %67
  %167 = load float*, float** %9, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %167, i64 %169
  %171 = load float, float* %170, align 4
  %172 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %173 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %172, i32 0, i32 21
  %174 = load float**, float*** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float*, float** %174, i64 %176
  %178 = load float*, float** %177, align 8
  %179 = getelementptr inbounds float, float* %178, i64 1
  %180 = load float, float* %179, align 4
  %181 = fmul float %171, %180
  %182 = load float*, float** %10, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  store float %181, float* %185, align 4
  br label %186

; <label>:186:                                    ; preds = %166, %67
  %187 = load float*, float** %9, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = load float*, float** %11, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %192, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fadd float %191, %196
  %198 = load float*, float** %9, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  %202 = load float, float* %201, align 4
  %203 = fdiv float %202, %197
  store float %203, float* %201, align 4
  %204 = load float*, float** %9, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = load float, float* %207, align 4
  %209 = load float*, float** %11, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = load float, float* %212, align 4
  %214 = fadd float %208, %213
  %215 = load float*, float** %11, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %215, i64 %217
  %219 = load float, float* %218, align 4
  %220 = fdiv float %219, %214
  store float %220, float* %218, align 4
  br label %221

; <label>:221:                                    ; preds = %186
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %61

; <label>:224:                                    ; preds = %61
  %225 = load float*, float** %9, align 8
  %226 = load float**, float*** %6, align 8
  store float* %225, float** %226, align 8
  %227 = load float*, float** %11, align 8
  %228 = load float**, float*** %8, align 8
  store float* %227, float** %228, align 8
  %229 = load float*, float** %10, align 8
  %230 = load float**, float*** %7, align 8
  store float* %229, float** %230, align 8
  ret void
}

declare i32 @FArgMax(float*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
