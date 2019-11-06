; ModuleID = 'postprob.c'
source_filename = "postprob.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"traceback failed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Traceback failed.\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"postprob.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define float @P7OptimalAccuracy(i8*, i32, %struct.plan7_s*, %struct.p7trace_s**) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.plan7_s*, align 8
  %8 = alloca %struct.p7trace_s**, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.dpmatrix_s*, align 8
  %11 = alloca %struct.dpmatrix_s*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.plan7_s* %2, %struct.plan7_s** %7, align 8
  store %struct.p7trace_s** %3, %struct.p7trace_s*** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %15 = call float @P7Forward(i8* %12, i32 %13, %struct.plan7_s* %14, %struct.dpmatrix_s** %10)
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %19 = call float @P7Backward(i8* %16, i32 %17, %struct.plan7_s* %18, %struct.dpmatrix_s** %11)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %22 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %23 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %11, align 8
  %24 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %11, align 8
  call void @P7EmitterPosterior(i32 %20, %struct.plan7_s* %21, %struct.dpmatrix_s* %22, %struct.dpmatrix_s* %23, %struct.dpmatrix_s* %24)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %27 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 20
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %11, align 8
  %30 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %31 = load %struct.p7trace_s**, %struct.p7trace_s*** %8, align 8
  %32 = call float @P7FillOptimalAccuracy(i32 %25, i32 %28, %struct.dpmatrix_s* %29, %struct.dpmatrix_s* %30, %struct.p7trace_s** %31)
  %33 = fpext float %32 to double
  store double %33, double* %9, align 8
  %34 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %34)
  %35 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %11, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %35)
  %36 = load double, double* %9, align 8
  %37 = fptrunc double %36 to float
  ret float %37
}

declare float @P7Forward(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**) #1

; Function Attrs: noinline nounwind optnone uwtable
define float @P7Backward(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.plan7_s*, align 8
  %8 = alloca %struct.dpmatrix_s**, align 8
  %9 = alloca %struct.dpmatrix_s*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.plan7_s* %2, %struct.plan7_s** %7, align 8
  store %struct.dpmatrix_s** %3, %struct.dpmatrix_s*** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 20
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 %18, i32 %21, i32*** %10, i32*** %11, i32*** %12, i32*** %13)
  store %struct.dpmatrix_s* %22, %struct.dpmatrix_s** %9, align 8
  %23 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 33
  %25 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %24, i64 0, i64 2
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32**, i32*** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %27, i32* %33, align 4
  %34 = load i32**, i32*** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %42 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 33
  %43 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %42, i64 0, i64 1
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %43, i64 0, i64 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %40, %45
  %47 = load i32**, i32*** %10, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %46, i32* %52, align 4
  %53 = load i32**, i32*** %10, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 -987654321, i32* %58, align 4
  %59 = load i32**, i32*** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 -987654321, i32* %64, align 4
  %65 = load i32**, i32*** %10, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 -987654321, i32* %70, align 4
  %71 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %72 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %71, i32 0, i32 20
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %15, align 4
  br label %74

; <label>:74:                                     ; preds = %143, %4
  %75 = load i32, i32* %15, align 4
  %76 = icmp sge i32 %75, 1
  br i1 %76, label %77, label %146

; <label>:77:                                     ; preds = %74
  %78 = load i32**, i32*** %10, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %86 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %85, i32 0, i32 35
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %84, %91
  %93 = load i32**, i32*** %11, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %92, i32* %100, align 4
  %101 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %102 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %101, i32 0, i32 31
  %103 = load i32**, i32*** %102, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %103, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32**, i32*** %11, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %116
  store i32 %126, i32* %124, align 4
  %127 = load i32**, i32*** %13, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 -987654321, i32* %134, align 4
  %135 = load i32**, i32*** %12, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 -987654321, i32* %142, align 4
  br label %143

; <label>:143:                                    ; preds = %77
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %15, align 4
  br label %74

; <label>:146:                                    ; preds = %74
  %147 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %148 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %147, i32 0, i32 30
  %149 = load i32**, i32*** %148, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %153 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %152, i32 0, i32 20
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %151, i64 %156
  store i32 -987654321, i32* %157, align 4
  %158 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %159 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %158, i32 0, i32 30
  %160 = load i32**, i32*** %159, align 8
  %161 = getelementptr inbounds i32*, i32** %160, i64 6
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %164 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %163, i32 0, i32 20
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %162, i64 %167
  store i32 -987654321, i32* %168, align 4
  %169 = load i32, i32* %6, align 4
  %170 = sub nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %171

; <label>:171:                                    ; preds = %694, %146
  %172 = load i32, i32* %14, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %697

; <label>:174:                                    ; preds = %171
  %175 = load i32**, i32*** %10, align 8
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %175, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %184 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %183, i32 0, i32 33
  %185 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %184, i64 0, i64 2
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %185, i64 0, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %182, %187
  %189 = load i32**, i32*** %10, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  store i32 %188, i32* %194, align 4
  %195 = load i32**, i32*** %10, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 -987654321, i32* %200, align 4
  %201 = load i32**, i32*** %10, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32**, i32*** %11, align 8
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %208, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %215 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %214, i32 0, i32 20
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %221 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %220, i32 0, i32 34
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %224 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %223, i32 0, i32 20
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %222, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %219, %229
  %231 = call i32 @ILogsum(i32 %207, i32 %230)
  %232 = load i32**, i32*** %10, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*, i32** %232, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 %231, i32* %237, align 4
  %238 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %239 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %238, i32 0, i32 20
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 1
  store i32 %241, i32* %15, align 4
  br label %242

; <label>:242:                                    ; preds = %278, %174
  %243 = load i32, i32* %15, align 4
  %244 = icmp sge i32 %243, 1
  br i1 %244, label %245, label %281

; <label>:245:                                    ; preds = %242
  %246 = load i32**, i32*** %10, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %246, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32**, i32*** %11, align 8
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32*, i32** %253, i64 %256
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %15, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %264 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %263, i32 0, i32 34
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %262, %269
  %271 = call i32 @ILogsum(i32 %252, i32 %270)
  %272 = load i32**, i32*** %10, align 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %272, i64 %274
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  store i32 %271, i32* %277, align 4
  br label %278

; <label>:278:                                    ; preds = %245
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %15, align 4
  br label %242

; <label>:281:                                    ; preds = %242
  %282 = load i32**, i32*** %10, align 8
  %283 = load i32, i32* %14, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %290 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %289, i32 0, i32 33
  %291 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %290, i64 0, i64 3
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %291, i64 0, i64 0
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %288, %293
  %295 = load i32**, i32*** %10, align 8
  %296 = load i32, i32* %14, align 4
  %297 = add nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32*, i32** %295, i64 %298
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 3
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %304 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %303, i32 0, i32 33
  %305 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %304, i64 0, i64 3
  %306 = getelementptr inbounds [2 x i32], [2 x i32]* %305, i64 0, i64 1
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %302, %307
  %309 = call i32 @ILogsum(i32 %294, i32 %308)
  %310 = load i32**, i32*** %10, align 8
  %311 = load i32, i32* %14, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %310, i64 %312
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 3
  store i32 %309, i32* %315, align 4
  %316 = load i32**, i32*** %10, align 8
  %317 = load i32, i32* %14, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %316, i64 %318
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %324 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %323, i32 0, i32 33
  %325 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %324, i64 0, i64 1
  %326 = getelementptr inbounds [2 x i32], [2 x i32]* %325, i64 0, i64 0
  %327 = load i32, i32* %326, align 8
  %328 = add nsw i32 %322, %327
  %329 = load i32**, i32*** %10, align 8
  %330 = load i32, i32* %14, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32*, i32** %329, i64 %331
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 3
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %337 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %336, i32 0, i32 33
  %338 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %337, i64 0, i64 1
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %338, i64 0, i64 1
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %335, %340
  %342 = call i32 @ILogsum(i32 %328, i32 %341)
  %343 = load i32**, i32*** %10, align 8
  %344 = load i32, i32* %14, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32*, i32** %343, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  store i32 %342, i32* %348, align 4
  %349 = load i32**, i32*** %10, align 8
  %350 = load i32, i32* %14, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32*, i32** %349, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %357 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %356, i32 0, i32 33
  %358 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %357, i64 0, i64 0
  %359 = getelementptr inbounds [2 x i32], [2 x i32]* %358, i64 0, i64 0
  %360 = load i32, i32* %359, align 8
  %361 = add nsw i32 %355, %360
  %362 = load i32**, i32*** %10, align 8
  %363 = load i32, i32* %14, align 4
  %364 = add nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32*, i32** %362, i64 %365
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 4
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %371 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %370, i32 0, i32 33
  %372 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %371, i64 0, i64 0
  %373 = getelementptr inbounds [2 x i32], [2 x i32]* %372, i64 0, i64 1
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %369, %374
  %376 = call i32 @ILogsum(i32 %361, i32 %375)
  %377 = load i32**, i32*** %10, align 8
  %378 = load i32, i32* %14, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32*, i32** %377, i64 %379
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 4
  store i32 %376, i32* %382, align 4
  %383 = load i32, i32* %14, align 4
  %384 = icmp sgt i32 %383, 0
  br i1 %384, label %385, label %693

; <label>:385:                                    ; preds = %281
  %386 = load i32**, i32*** %10, align 8
  %387 = load i32, i32* %14, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32*, i32** %386, i64 %388
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %394 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %393, i32 0, i32 35
  %395 = load i32*, i32** %394, align 8
  %396 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %397 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %396, i32 0, i32 20
  %398 = load i32, i32* %397, align 8
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %395, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %392, %401
  %403 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %404 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %403, i32 0, i32 31
  %405 = load i32**, i32*** %404, align 8
  %406 = load i8*, i8** %5, align 8
  %407 = load i32, i32* %14, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %406, i64 %408
  %410 = load i8, i8* %409, align 1
  %411 = sext i8 %410 to i32
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32*, i32** %405, i64 %412
  %414 = load i32*, i32** %413, align 8
  %415 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %416 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %415, i32 0, i32 20
  %417 = load i32, i32* %416, align 8
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %414, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = add nsw i32 %402, %420
  %422 = load i32**, i32*** %11, align 8
  %423 = load i32, i32* %14, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32*, i32** %422, i64 %424
  %426 = load i32*, i32** %425, align 8
  %427 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %428 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %427, i32 0, i32 20
  %429 = load i32, i32* %428, align 8
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %426, i64 %430
  store i32 %421, i32* %431, align 4
  %432 = load i32**, i32*** %13, align 8
  %433 = load i32, i32* %14, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32*, i32** %432, i64 %434
  %436 = load i32*, i32** %435, align 8
  %437 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %438 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %437, i32 0, i32 20
  %439 = load i32, i32* %438, align 8
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %436, i64 %440
  store i32 -987654321, i32* %441, align 4
  %442 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %443 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %442, i32 0, i32 20
  %444 = load i32, i32* %443, align 8
  %445 = sub nsw i32 %444, 1
  store i32 %445, i32* %15, align 4
  br label %446

; <label>:446:                                    ; preds = %689, %385
  %447 = load i32, i32* %15, align 4
  %448 = icmp sge i32 %447, 1
  br i1 %448, label %449, label %692

; <label>:449:                                    ; preds = %446
  %450 = load i32**, i32*** %10, align 8
  %451 = load i32, i32* %14, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32*, i32** %450, i64 %452
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 1
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %458 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %457, i32 0, i32 35
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %15, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 %456, %463
  %465 = load i32**, i32*** %11, align 8
  %466 = load i32, i32* %14, align 4
  %467 = add nsw i32 %466, 1
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32*, i32** %465, i64 %468
  %470 = load i32*, i32** %469, align 8
  %471 = load i32, i32* %15, align 4
  %472 = add nsw i32 %471, 1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %470, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %477 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %476, i32 0, i32 30
  %478 = load i32**, i32*** %477, align 8
  %479 = getelementptr inbounds i32*, i32** %478, i64 0
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %15, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = add nsw i32 %475, %484
  %486 = call i32 @ILogsum(i32 %464, i32 %485)
  %487 = load i32**, i32*** %12, align 8
  %488 = load i32, i32* %14, align 4
  %489 = add nsw i32 %488, 1
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32*, i32** %487, i64 %490
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %15, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %498 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %497, i32 0, i32 30
  %499 = load i32**, i32*** %498, align 8
  %500 = getelementptr inbounds i32*, i32** %499, i64 1
  %501 = load i32*, i32** %500, align 8
  %502 = load i32, i32* %15, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, i32* %501, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = add nsw i32 %496, %505
  %507 = load i32**, i32*** %13, align 8
  %508 = load i32, i32* %14, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32*, i32** %507, i64 %509
  %511 = load i32*, i32** %510, align 8
  %512 = load i32, i32* %15, align 4
  %513 = add nsw i32 %512, 1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %511, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %518 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %517, i32 0, i32 30
  %519 = load i32**, i32*** %518, align 8
  %520 = getelementptr inbounds i32*, i32** %519, i64 2
  %521 = load i32*, i32** %520, align 8
  %522 = load i32, i32* %15, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  %525 = load i32, i32* %524, align 4
  %526 = add nsw i32 %516, %525
  %527 = call i32 @ILogsum(i32 %506, i32 %526)
  %528 = call i32 @ILogsum(i32 %486, i32 %527)
  %529 = load i32**, i32*** %11, align 8
  %530 = load i32, i32* %14, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32*, i32** %529, i64 %531
  %533 = load i32*, i32** %532, align 8
  %534 = load i32, i32* %15, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i32, i32* %533, i64 %535
  store i32 %528, i32* %536, align 4
  %537 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %538 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %537, i32 0, i32 31
  %539 = load i32**, i32*** %538, align 8
  %540 = load i8*, i8** %5, align 8
  %541 = load i32, i32* %14, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i8, i8* %540, i64 %542
  %544 = load i8, i8* %543, align 1
  %545 = sext i8 %544 to i32
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32*, i32** %539, i64 %546
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %15, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = load i32**, i32*** %11, align 8
  %554 = load i32, i32* %14, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i32*, i32** %553, i64 %555
  %557 = load i32*, i32** %556, align 8
  %558 = load i32, i32* %15, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i32, i32* %557, i64 %559
  %561 = load i32, i32* %560, align 4
  %562 = add nsw i32 %561, %552
  store i32 %562, i32* %560, align 4
  %563 = load i32**, i32*** %12, align 8
  %564 = load i32, i32* %14, align 4
  %565 = add nsw i32 %564, 1
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32*, i32** %563, i64 %566
  %568 = load i32*, i32** %567, align 8
  %569 = load i32, i32* %15, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %568, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %574 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %573, i32 0, i32 30
  %575 = load i32**, i32*** %574, align 8
  %576 = getelementptr inbounds i32*, i32** %575, i64 4
  %577 = load i32*, i32** %576, align 8
  %578 = load i32, i32* %15, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %577, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = add nsw i32 %572, %581
  %583 = load i32**, i32*** %11, align 8
  %584 = load i32, i32* %14, align 4
  %585 = add nsw i32 %584, 1
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32*, i32** %583, i64 %586
  %588 = load i32*, i32** %587, align 8
  %589 = load i32, i32* %15, align 4
  %590 = add nsw i32 %589, 1
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, i32* %588, i64 %591
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %595 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %594, i32 0, i32 30
  %596 = load i32**, i32*** %595, align 8
  %597 = getelementptr inbounds i32*, i32** %596, i64 3
  %598 = load i32*, i32** %597, align 8
  %599 = load i32, i32* %15, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, i32* %598, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = add nsw i32 %593, %602
  %604 = call i32 @ILogsum(i32 %582, i32 %603)
  %605 = load i32**, i32*** %12, align 8
  %606 = load i32, i32* %14, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32*, i32** %605, i64 %607
  %609 = load i32*, i32** %608, align 8
  %610 = load i32, i32* %15, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i32, i32* %609, i64 %611
  store i32 %604, i32* %612, align 4
  %613 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %614 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %613, i32 0, i32 32
  %615 = load i32**, i32*** %614, align 8
  %616 = load i8*, i8** %5, align 8
  %617 = load i32, i32* %14, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i8, i8* %616, i64 %618
  %620 = load i8, i8* %619, align 1
  %621 = sext i8 %620 to i32
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32*, i32** %615, i64 %622
  %624 = load i32*, i32** %623, align 8
  %625 = load i32, i32* %15, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32, i32* %624, i64 %626
  %628 = load i32, i32* %627, align 4
  %629 = load i32**, i32*** %12, align 8
  %630 = load i32, i32* %14, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i32*, i32** %629, i64 %631
  %633 = load i32*, i32** %632, align 8
  %634 = load i32, i32* %15, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i32, i32* %633, i64 %635
  %637 = load i32, i32* %636, align 4
  %638 = add nsw i32 %637, %628
  store i32 %638, i32* %636, align 4
  %639 = load i32**, i32*** %13, align 8
  %640 = load i32, i32* %14, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i32*, i32** %639, i64 %641
  %643 = load i32*, i32** %642, align 8
  %644 = load i32, i32* %15, align 4
  %645 = add nsw i32 %644, 1
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i32, i32* %643, i64 %646
  %648 = load i32, i32* %647, align 4
  %649 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %650 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %649, i32 0, i32 30
  %651 = load i32**, i32*** %650, align 8
  %652 = getelementptr inbounds i32*, i32** %651, i64 6
  %653 = load i32*, i32** %652, align 8
  %654 = load i32, i32* %15, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i32, i32* %653, i64 %655
  %657 = load i32, i32* %656, align 4
  %658 = add nsw i32 %648, %657
  %659 = load i32**, i32*** %11, align 8
  %660 = load i32, i32* %14, align 4
  %661 = add nsw i32 %660, 1
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i32*, i32** %659, i64 %662
  %664 = load i32*, i32** %663, align 8
  %665 = load i32, i32* %15, align 4
  %666 = add nsw i32 %665, 1
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32, i32* %664, i64 %667
  %669 = load i32, i32* %668, align 4
  %670 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %671 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %670, i32 0, i32 30
  %672 = load i32**, i32*** %671, align 8
  %673 = getelementptr inbounds i32*, i32** %672, i64 5
  %674 = load i32*, i32** %673, align 8
  %675 = load i32, i32* %15, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i32, i32* %674, i64 %676
  %678 = load i32, i32* %677, align 4
  %679 = add nsw i32 %669, %678
  %680 = call i32 @ILogsum(i32 %658, i32 %679)
  %681 = load i32**, i32*** %13, align 8
  %682 = load i32, i32* %14, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32*, i32** %681, i64 %683
  %685 = load i32*, i32** %684, align 8
  %686 = load i32, i32* %15, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, i32* %685, i64 %687
  store i32 %680, i32* %688, align 4
  br label %689

; <label>:689:                                    ; preds = %449
  %690 = load i32, i32* %15, align 4
  %691 = add nsw i32 %690, -1
  store i32 %691, i32* %15, align 4
  br label %446

; <label>:692:                                    ; preds = %446
  br label %693

; <label>:693:                                    ; preds = %692, %281
  br label %694

; <label>:694:                                    ; preds = %693
  %695 = load i32, i32* %14, align 4
  %696 = add nsw i32 %695, -1
  store i32 %696, i32* %14, align 4
  br label %171

; <label>:697:                                    ; preds = %171
  %698 = load i32**, i32*** %10, align 8
  %699 = getelementptr inbounds i32*, i32** %698, i64 0
  %700 = load i32*, i32** %699, align 8
  %701 = getelementptr inbounds i32, i32* %700, i64 4
  %702 = load i32, i32* %701, align 4
  store i32 %702, i32* %16, align 4
  %703 = load %struct.dpmatrix_s**, %struct.dpmatrix_s*** %8, align 8
  %704 = icmp ne %struct.dpmatrix_s** %703, null
  br i1 %704, label %705, label %708

; <label>:705:                                    ; preds = %697
  %706 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %707 = load %struct.dpmatrix_s**, %struct.dpmatrix_s*** %8, align 8
  store %struct.dpmatrix_s* %706, %struct.dpmatrix_s** %707, align 8
  br label %710

; <label>:708:                                    ; preds = %697
  %709 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %709)
  br label %710

; <label>:710:                                    ; preds = %708, %705
  %711 = load i32, i32* %16, align 4
  %712 = call float @Scorify(i32 %711)
  ret float %712
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P7EmitterPosterior(i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.dpmatrix_s*, %struct.dpmatrix_s*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.plan7_s*, align 8
  %8 = alloca %struct.dpmatrix_s*, align 8
  %9 = alloca %struct.dpmatrix_s*, align 8
  %10 = alloca %struct.dpmatrix_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.plan7_s* %1, %struct.plan7_s** %7, align 8
  store %struct.dpmatrix_s* %2, %struct.dpmatrix_s** %8, align 8
  store %struct.dpmatrix_s* %3, %struct.dpmatrix_s** %9, align 8
  store %struct.dpmatrix_s* %4, %struct.dpmatrix_s** %10, align 8
  %14 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %15 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %11, align 4
  br label %22

; <label>:22:                                     ; preds = %594, %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %597

; <label>:25:                                     ; preds = %22
  %26 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %27 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 33
  %38 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %37, i64 0, i64 2
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %35, %40
  %42 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %43 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %41, %50
  %52 = load i32, i32* %13, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %55 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %53, i32* %61, align 4
  %62 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %63 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 33
  %74 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %73, i64 0, i64 3
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %71, %76
  %78 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %79 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %77, %86
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %91 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %89, i32* %97, align 4
  %98 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %99 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %100, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %109 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %108, i32 0, i32 33
  %110 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %109, i64 0, i64 0
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %110, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %107, %112
  %114 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %115 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %113, %122
  %124 = load i32, i32* %13, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %127 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %126, i32 0, i32 0
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32 %125, i32* %133, align 4
  %134 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %135 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %134, i32 0, i32 0
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 -987654321, i32* %141, align 4
  %142 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %143 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 -987654321, i32* %149, align 4
  store i32 1, i32* %12, align 4
  br label %150

; <label>:150:                                    ; preds = %397, %25
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %153 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %152, i32 0, i32 20
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %400

; <label>:156:                                    ; preds = %150
  %157 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %158 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %157, i32 0, i32 1
  %159 = load i32**, i32*** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %169 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %168, i32 0, i32 1
  %170 = load i32**, i32*** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %167, i32* %177, align 4
  %178 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %179 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %178, i32 0, i32 1
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %180, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %192 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %191, i32 0, i32 30
  %193 = load i32**, i32*** %192, align 8
  %194 = getelementptr inbounds i32*, i32** %193, i64 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %190, %200
  %202 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %203 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %202, i32 0, i32 2
  %204 = load i32**, i32*** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %204, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %216 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %215, i32 0, i32 30
  %217 = load i32**, i32*** %216, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %214, %224
  %226 = call i32 @ILogsum(i32 %201, i32 %225)
  %227 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %228 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %227, i32 0, i32 0
  %229 = load i32**, i32*** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %229, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %238 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %237, i32 0, i32 34
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %236, %243
  %245 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %246 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %245, i32 0, i32 3
  %247 = load i32**, i32*** %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %247, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %259 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %258, i32 0, i32 30
  %260 = load i32**, i32*** %259, align 8
  %261 = getelementptr inbounds i32*, i32** %260, i64 5
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %257, %267
  %269 = call i32 @ILogsum(i32 %244, i32 %268)
  %270 = call i32 @ILogsum(i32 %226, i32 %269)
  %271 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %272 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %271, i32 0, i32 1
  %273 = load i32**, i32*** %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, %270
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* %13, align 4
  %284 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %285 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %284, i32 0, i32 1
  %286 = load i32**, i32*** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32*, i32** %286, i64 %288
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 %294, %283
  store i32 %295, i32* %293, align 4
  %296 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %297 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %296, i32 0, i32 2
  %298 = load i32**, i32*** %297, align 8
  %299 = load i32, i32* %11, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32*, i32** %298, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %308 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %307, i32 0, i32 2
  %309 = load i32**, i32*** %308, align 8
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  store i32 %306, i32* %316, align 4
  %317 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %318 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %317, i32 0, i32 1
  %319 = load i32**, i32*** %318, align 8
  %320 = load i32, i32* %11, align 4
  %321 = sub nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32*, i32** %319, i64 %322
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %12, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %330 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %329, i32 0, i32 30
  %331 = load i32**, i32*** %330, align 8
  %332 = getelementptr inbounds i32*, i32** %331, i64 1
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = add nsw i32 %328, %337
  %339 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %340 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %339, i32 0, i32 2
  %341 = load i32**, i32*** %340, align 8
  %342 = load i32, i32* %11, align 4
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32*, i32** %341, i64 %344
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %12, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %352 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %351, i32 0, i32 30
  %353 = load i32**, i32*** %352, align 8
  %354 = getelementptr inbounds i32*, i32** %353, i64 4
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %12, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 %350, %359
  %361 = call i32 @ILogsum(i32 %338, i32 %360)
  %362 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %363 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %362, i32 0, i32 2
  %364 = load i32**, i32*** %363, align 8
  %365 = load i32, i32* %11, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32*, i32** %364, i64 %366
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %12, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %372, %361
  store i32 %373, i32* %371, align 4
  %374 = load i32, i32* %13, align 4
  %375 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %376 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %375, i32 0, i32 2
  %377 = load i32**, i32*** %376, align 8
  %378 = load i32, i32* %11, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32*, i32** %377, i64 %379
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %12, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = sub nsw i32 %385, %374
  store i32 %386, i32* %384, align 4
  %387 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %388 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %387, i32 0, i32 3
  %389 = load i32**, i32*** %388, align 8
  %390 = load i32, i32* %11, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32*, i32** %389, i64 %391
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %12, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  store i32 -987654321, i32* %396, align 4
  br label %397

; <label>:397:                                    ; preds = %156
  %398 = load i32, i32* %12, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %12, align 4
  br label %150

; <label>:400:                                    ; preds = %150
  %401 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %402 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %401, i32 0, i32 1
  %403 = load i32**, i32*** %402, align 8
  %404 = load i32, i32* %11, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32*, i32** %403, i64 %405
  %407 = load i32*, i32** %406, align 8
  %408 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %409 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %408, i32 0, i32 20
  %410 = load i32, i32* %409, align 8
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %407, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %415 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %414, i32 0, i32 1
  %416 = load i32**, i32*** %415, align 8
  %417 = load i32, i32* %11, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32*, i32** %416, i64 %418
  %420 = load i32*, i32** %419, align 8
  %421 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %422 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %421, i32 0, i32 20
  %423 = load i32, i32* %422, align 8
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %420, i64 %424
  store i32 %413, i32* %425, align 4
  %426 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %427 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %426, i32 0, i32 1
  %428 = load i32**, i32*** %427, align 8
  %429 = load i32, i32* %11, align 4
  %430 = sub nsw i32 %429, 1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32*, i32** %428, i64 %431
  %433 = load i32*, i32** %432, align 8
  %434 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %435 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %434, i32 0, i32 20
  %436 = load i32, i32* %435, align 8
  %437 = sub nsw i32 %436, 1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %433, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %442 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %441, i32 0, i32 30
  %443 = load i32**, i32*** %442, align 8
  %444 = getelementptr inbounds i32*, i32** %443, i64 0
  %445 = load i32*, i32** %444, align 8
  %446 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %447 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %446, i32 0, i32 20
  %448 = load i32, i32* %447, align 8
  %449 = sub nsw i32 %448, 1
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %445, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = add nsw i32 %440, %452
  %454 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %455 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %454, i32 0, i32 2
  %456 = load i32**, i32*** %455, align 8
  %457 = load i32, i32* %11, align 4
  %458 = sub nsw i32 %457, 1
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32*, i32** %456, i64 %459
  %461 = load i32*, i32** %460, align 8
  %462 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %463 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %462, i32 0, i32 20
  %464 = load i32, i32* %463, align 8
  %465 = sub nsw i32 %464, 1
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %461, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %470 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %469, i32 0, i32 30
  %471 = load i32**, i32*** %470, align 8
  %472 = getelementptr inbounds i32*, i32** %471, i64 3
  %473 = load i32*, i32** %472, align 8
  %474 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %475 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %474, i32 0, i32 20
  %476 = load i32, i32* %475, align 8
  %477 = sub nsw i32 %476, 1
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %473, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %468, %480
  %482 = call i32 @ILogsum(i32 %453, i32 %481)
  %483 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %484 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %483, i32 0, i32 0
  %485 = load i32**, i32*** %484, align 8
  %486 = load i32, i32* %11, align 4
  %487 = sub nsw i32 %486, 1
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32*, i32** %485, i64 %488
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 0
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %494 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %493, i32 0, i32 34
  %495 = load i32*, i32** %494, align 8
  %496 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %497 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %496, i32 0, i32 20
  %498 = load i32, i32* %497, align 8
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %495, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = add nsw i32 %492, %501
  %503 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %504 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %503, i32 0, i32 3
  %505 = load i32**, i32*** %504, align 8
  %506 = load i32, i32* %11, align 4
  %507 = sub nsw i32 %506, 1
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32*, i32** %505, i64 %508
  %510 = load i32*, i32** %509, align 8
  %511 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %512 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %511, i32 0, i32 20
  %513 = load i32, i32* %512, align 8
  %514 = sub nsw i32 %513, 1
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %510, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %519 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %518, i32 0, i32 30
  %520 = load i32**, i32*** %519, align 8
  %521 = getelementptr inbounds i32*, i32** %520, i64 5
  %522 = load i32*, i32** %521, align 8
  %523 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %524 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %523, i32 0, i32 20
  %525 = load i32, i32* %524, align 8
  %526 = sub nsw i32 %525, 1
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %522, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = add nsw i32 %517, %529
  %531 = call i32 @ILogsum(i32 %502, i32 %530)
  %532 = call i32 @ILogsum(i32 %482, i32 %531)
  %533 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %534 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %533, i32 0, i32 1
  %535 = load i32**, i32*** %534, align 8
  %536 = load i32, i32* %11, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32*, i32** %535, i64 %537
  %539 = load i32*, i32** %538, align 8
  %540 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %541 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %540, i32 0, i32 20
  %542 = load i32, i32* %541, align 8
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32, i32* %539, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = add nsw i32 %545, %532
  store i32 %546, i32* %544, align 4
  %547 = load i32, i32* %13, align 4
  %548 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %549 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %548, i32 0, i32 1
  %550 = load i32**, i32*** %549, align 8
  %551 = load i32, i32* %11, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32*, i32** %550, i64 %552
  %554 = load i32*, i32** %553, align 8
  %555 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %556 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %555, i32 0, i32 20
  %557 = load i32, i32* %556, align 8
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %554, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = sub nsw i32 %560, %547
  store i32 %561, i32* %559, align 4
  %562 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %563 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %562, i32 0, i32 3
  %564 = load i32**, i32*** %563, align 8
  %565 = load i32, i32* %11, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32*, i32** %564, i64 %566
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 0
  store i32 -987654321, i32* %569, align 4
  %570 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %571 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %570, i32 0, i32 3
  %572 = load i32**, i32*** %571, align 8
  %573 = load i32, i32* %11, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32*, i32** %572, i64 %574
  %576 = load i32*, i32** %575, align 8
  %577 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %578 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %577, i32 0, i32 20
  %579 = load i32, i32* %578, align 8
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32, i32* %576, i64 %580
  store i32 -987654321, i32* %581, align 4
  %582 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %10, align 8
  %583 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %582, i32 0, i32 2
  %584 = load i32**, i32*** %583, align 8
  %585 = load i32, i32* %11, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32*, i32** %584, i64 %586
  %588 = load i32*, i32** %587, align 8
  %589 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %590 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %589, i32 0, i32 20
  %591 = load i32, i32* %590, align 8
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %588, i64 %592
  store i32 -987654321, i32* %593, align 4
  br label %594

; <label>:594:                                    ; preds = %400
  %595 = load i32, i32* %11, align 4
  %596 = add nsw i32 %595, -1
  store i32 %596, i32* %11, align 4
  br label %22

; <label>:597:                                    ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define float @P7FillOptimalAccuracy(i32, i32, %struct.dpmatrix_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpmatrix_s*, align 8
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.dpmatrix_s* %2, %struct.dpmatrix_s** %8, align 8
  store %struct.dpmatrix_s* %3, %struct.dpmatrix_s** %9, align 8
  store %struct.p7trace_s** %4, %struct.p7trace_s*** %10, align 8
  %19 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %20 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  store i32** %21, i32*** %12, align 8
  %22 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %23 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  store i32** %24, i32*** %13, align 8
  %25 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %26 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  store i32** %27, i32*** %14, align 8
  %28 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %29 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %28, i32 0, i32 3
  %30 = load i32**, i32*** %29, align 8
  store i32** %30, i32*** %15, align 8
  %31 = load i32**, i32*** %12, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 -987654321, i32* %34, align 4
  %35 = load i32**, i32*** %12, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 -987654321, i32* %38, align 4
  %39 = load i32**, i32*** %12, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 -987654321, i32* %42, align 4
  %43 = load i32**, i32*** %12, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 -987654321, i32* %46, align 4
  %47 = load i32**, i32*** %12, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32 -987654321, i32* %50, align 4
  store i32 0, i32* %17, align 4
  br label %51

; <label>:51:                                     ; preds = %74, %5
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %77

; <label>:55:                                     ; preds = %51
  %56 = load i32**, i32*** %15, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 -987654321, i32* %61, align 4
  %62 = load i32**, i32*** %14, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 -987654321, i32* %67, align 4
  %68 = load i32**, i32*** %13, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 -987654321, i32* %73, align 4
  br label %74

; <label>:74:                                     ; preds = %55
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %51

; <label>:77:                                     ; preds = %51
  store i32 1, i32* %16, align 4
  br label %78

; <label>:78:                                     ; preds = %679, %77
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %682

; <label>:82:                                     ; preds = %78
  %83 = load i32**, i32*** %15, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 -987654321, i32* %88, align 4
  %89 = load i32**, i32*** %14, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 -987654321, i32* %94, align 4
  %95 = load i32**, i32*** %13, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 -987654321, i32* %100, align 4
  store i32 1, i32* %17, align 4
  br label %101

; <label>:101:                                    ; preds = %437, %82
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %440

; <label>:105:                                    ; preds = %101
  %106 = load i32**, i32*** %13, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 -987654321, i32* %113, align 4
  %114 = load i32**, i32*** %13, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %114, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %18, align 4
  %125 = load i32**, i32*** %13, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %124, %133
  br i1 %134, label %135, label %145

; <label>:135:                                    ; preds = %105
  %136 = load i32, i32* %18, align 4
  %137 = load i32**, i32*** %13, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %136, i32* %144, align 4
  br label %145

; <label>:145:                                    ; preds = %135, %105
  %146 = load i32**, i32*** %14, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %146, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %18, align 4
  %157 = load i32**, i32*** %13, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %156, %165
  br i1 %166, label %167, label %177

; <label>:167:                                    ; preds = %145
  %168 = load i32, i32* %18, align 4
  %169 = load i32**, i32*** %13, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %168, i32* %176, align 4
  br label %177

; <label>:177:                                    ; preds = %167, %145
  %178 = load i32**, i32*** %15, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %178, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %18, align 4
  %189 = load i32**, i32*** %13, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp sgt i32 %188, %197
  br i1 %198, label %199, label %209

; <label>:199:                                    ; preds = %177
  %200 = load i32, i32* %18, align 4
  %201 = load i32**, i32*** %13, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %200, i32* %208, align 4
  br label %209

; <label>:209:                                    ; preds = %199, %177
  %210 = load i32**, i32*** %12, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %210, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %18, align 4
  %218 = load i32**, i32*** %13, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %17, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp sgt i32 %217, %226
  br i1 %227, label %228, label %238

; <label>:228:                                    ; preds = %209
  %229 = load i32, i32* %18, align 4
  %230 = load i32**, i32*** %13, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %230, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %229, i32* %237, align 4
  br label %238

; <label>:238:                                    ; preds = %228, %209
  %239 = load i32**, i32*** %13, align 8
  %240 = load i32, i32* %16, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %249 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %248, i32 0, i32 1
  %250 = load i32**, i32*** %249, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %250, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ILogsum(i32 %247, i32 %258)
  %260 = load i32**, i32*** %13, align 8
  %261 = load i32, i32* %16, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %260, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %17, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  store i32 %259, i32* %267, align 4
  %268 = load i32**, i32*** %15, align 8
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %268, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 -987654321, i32* %275, align 4
  %276 = load i32**, i32*** %13, align 8
  %277 = load i32, i32* %16, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32*, i32** %276, i64 %278
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %17, align 4
  %282 = sub nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %18, align 4
  %286 = load i32**, i32*** %15, align 8
  %287 = load i32, i32* %16, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32*, i32** %286, i64 %288
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %17, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = icmp sgt i32 %285, %294
  br i1 %295, label %296, label %306

; <label>:296:                                    ; preds = %238
  %297 = load i32, i32* %18, align 4
  %298 = load i32**, i32*** %15, align 8
  %299 = load i32, i32* %16, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32*, i32** %298, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %17, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 %297, i32* %305, align 4
  br label %306

; <label>:306:                                    ; preds = %296, %238
  %307 = load i32**, i32*** %15, align 8
  %308 = load i32, i32* %16, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32*, i32** %307, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sub nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %311, i64 %314
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* %18, align 4
  %317 = load i32**, i32*** %15, align 8
  %318 = load i32, i32* %16, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32*, i32** %317, i64 %319
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %17, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp sgt i32 %316, %325
  br i1 %326, label %327, label %337

; <label>:327:                                    ; preds = %306
  %328 = load i32, i32* %18, align 4
  %329 = load i32**, i32*** %15, align 8
  %330 = load i32, i32* %16, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32*, i32** %329, i64 %331
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %17, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  store i32 %328, i32* %336, align 4
  br label %337

; <label>:337:                                    ; preds = %327, %306
  %338 = load i32**, i32*** %14, align 8
  %339 = load i32, i32* %16, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32*, i32** %338, i64 %340
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %17, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  store i32 -987654321, i32* %345, align 4
  %346 = load i32**, i32*** %13, align 8
  %347 = load i32, i32* %16, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32*, i32** %346, i64 %349
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %17, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %18, align 4
  %356 = load i32**, i32*** %14, align 8
  %357 = load i32, i32* %16, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32*, i32** %356, i64 %358
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %17, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = icmp sgt i32 %355, %364
  br i1 %365, label %366, label %376

; <label>:366:                                    ; preds = %337
  %367 = load i32, i32* %18, align 4
  %368 = load i32**, i32*** %14, align 8
  %369 = load i32, i32* %16, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32*, i32** %368, i64 %370
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %17, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  store i32 %367, i32* %375, align 4
  br label %376

; <label>:376:                                    ; preds = %366, %337
  %377 = load i32**, i32*** %14, align 8
  %378 = load i32, i32* %16, align 4
  %379 = sub nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32*, i32** %377, i64 %380
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %17, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %18, align 4
  %387 = load i32**, i32*** %14, align 8
  %388 = load i32, i32* %16, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32*, i32** %387, i64 %389
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %17, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = icmp sgt i32 %386, %395
  br i1 %396, label %397, label %407

; <label>:397:                                    ; preds = %376
  %398 = load i32, i32* %18, align 4
  %399 = load i32**, i32*** %14, align 8
  %400 = load i32, i32* %16, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32*, i32** %399, i64 %401
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %17, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  store i32 %398, i32* %406, align 4
  br label %407

; <label>:407:                                    ; preds = %397, %376
  %408 = load i32**, i32*** %14, align 8
  %409 = load i32, i32* %16, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32*, i32** %408, i64 %410
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %17, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %418 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %417, i32 0, i32 2
  %419 = load i32**, i32*** %418, align 8
  %420 = load i32, i32* %16, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32*, i32** %419, i64 %421
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %17, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @ILogsum(i32 %416, i32 %427)
  %429 = load i32**, i32*** %14, align 8
  %430 = load i32, i32* %16, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32*, i32** %429, i64 %431
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %17, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  store i32 %428, i32* %436, align 4
  br label %437

; <label>:437:                                    ; preds = %407
  %438 = load i32, i32* %17, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %17, align 4
  br label %101

; <label>:440:                                    ; preds = %101
  %441 = load i32**, i32*** %12, align 8
  %442 = load i32, i32* %16, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32*, i32** %441, i64 %443
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 4
  store i32 -987654321, i32* %446, align 4
  %447 = load i32**, i32*** %12, align 8
  %448 = load i32, i32* %16, align 4
  %449 = sub nsw i32 %448, 1
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32*, i32** %447, i64 %450
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 4
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %456 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %455, i32 0, i32 0
  %457 = load i32**, i32*** %456, align 8
  %458 = load i32, i32* %16, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32*, i32** %457, i64 %459
  %461 = load i32*, i32** %460, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 4
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @ILogsum(i32 %454, i32 %463)
  store i32 %464, i32* %18, align 4
  %465 = icmp sgt i32 %464, -987654321
  br i1 %465, label %466, label %474

; <label>:466:                                    ; preds = %440
  %467 = load i32, i32* %18, align 4
  %468 = load i32**, i32*** %12, align 8
  %469 = load i32, i32* %16, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32*, i32** %468, i64 %470
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 4
  store i32 %467, i32* %473, align 4
  br label %474

; <label>:474:                                    ; preds = %466, %440
  %475 = load i32**, i32*** %12, align 8
  %476 = load i32, i32* %16, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32*, i32** %475, i64 %477
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 1
  store i32 -987654321, i32* %480, align 4
  store i32 1, i32* %17, align 4
  br label %481

; <label>:481:                                    ; preds = %512, %474
  %482 = load i32, i32* %17, align 4
  %483 = load i32, i32* %7, align 4
  %484 = icmp sle i32 %482, %483
  br i1 %484, label %485, label %515

; <label>:485:                                    ; preds = %481
  %486 = load i32**, i32*** %13, align 8
  %487 = load i32, i32* %16, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32*, i32** %486, i64 %488
  %490 = load i32*, i32** %489, align 8
  %491 = load i32, i32* %17, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  store i32 %494, i32* %18, align 4
  %495 = load i32**, i32*** %12, align 8
  %496 = load i32, i32* %16, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32*, i32** %495, i64 %497
  %499 = load i32*, i32** %498, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 1
  %501 = load i32, i32* %500, align 4
  %502 = icmp sgt i32 %494, %501
  br i1 %502, label %503, label %511

; <label>:503:                                    ; preds = %485
  %504 = load i32, i32* %18, align 4
  %505 = load i32**, i32*** %12, align 8
  %506 = load i32, i32* %16, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32*, i32** %505, i64 %507
  %509 = load i32*, i32** %508, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 1
  store i32 %504, i32* %510, align 4
  br label %511

; <label>:511:                                    ; preds = %503, %485
  br label %512

; <label>:512:                                    ; preds = %511
  %513 = load i32, i32* %17, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %17, align 4
  br label %481

; <label>:515:                                    ; preds = %481
  %516 = load i32**, i32*** %12, align 8
  %517 = load i32, i32* %16, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32*, i32** %516, i64 %518
  %520 = load i32*, i32** %519, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 3
  store i32 -987654321, i32* %521, align 4
  %522 = load i32**, i32*** %12, align 8
  %523 = load i32, i32* %16, align 4
  %524 = sub nsw i32 %523, 1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32*, i32** %522, i64 %525
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 3
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %531 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %530, i32 0, i32 0
  %532 = load i32**, i32*** %531, align 8
  %533 = load i32, i32* %16, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32*, i32** %532, i64 %534
  %536 = load i32*, i32** %535, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 3
  %538 = load i32, i32* %537, align 4
  %539 = call i32 @ILogsum(i32 %529, i32 %538)
  store i32 %539, i32* %18, align 4
  %540 = icmp sgt i32 %539, -987654321
  br i1 %540, label %541, label %549

; <label>:541:                                    ; preds = %515
  %542 = load i32, i32* %18, align 4
  %543 = load i32**, i32*** %12, align 8
  %544 = load i32, i32* %16, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32*, i32** %543, i64 %545
  %547 = load i32*, i32** %546, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 3
  store i32 %542, i32* %548, align 4
  br label %549

; <label>:549:                                    ; preds = %541, %515
  %550 = load i32**, i32*** %12, align 8
  %551 = load i32, i32* %16, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32*, i32** %550, i64 %552
  %554 = load i32*, i32** %553, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 1
  %556 = load i32, i32* %555, align 4
  store i32 %556, i32* %18, align 4
  %557 = load i32**, i32*** %12, align 8
  %558 = load i32, i32* %16, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i32*, i32** %557, i64 %559
  %561 = load i32*, i32** %560, align 8
  %562 = getelementptr inbounds i32, i32* %561, i64 3
  %563 = load i32, i32* %562, align 4
  %564 = icmp sgt i32 %556, %563
  br i1 %564, label %565, label %573

; <label>:565:                                    ; preds = %549
  %566 = load i32, i32* %18, align 4
  %567 = load i32**, i32*** %12, align 8
  %568 = load i32, i32* %16, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32*, i32** %567, i64 %569
  %571 = load i32*, i32** %570, align 8
  %572 = getelementptr inbounds i32, i32* %571, i64 3
  store i32 %566, i32* %572, align 4
  br label %573

; <label>:573:                                    ; preds = %565, %549
  %574 = load i32**, i32*** %12, align 8
  %575 = load i32, i32* %16, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32*, i32** %574, i64 %576
  %578 = load i32*, i32** %577, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 0
  store i32 -987654321, i32* %579, align 4
  %580 = load i32**, i32*** %12, align 8
  %581 = load i32, i32* %16, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32*, i32** %580, i64 %582
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 4
  %586 = load i32, i32* %585, align 4
  store i32 %586, i32* %18, align 4
  %587 = icmp sgt i32 %586, -987654321
  br i1 %587, label %588, label %596

; <label>:588:                                    ; preds = %573
  %589 = load i32, i32* %18, align 4
  %590 = load i32**, i32*** %12, align 8
  %591 = load i32, i32* %16, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32*, i32** %590, i64 %592
  %594 = load i32*, i32** %593, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 0
  store i32 %589, i32* %595, align 4
  br label %596

; <label>:596:                                    ; preds = %588, %573
  %597 = load i32**, i32*** %12, align 8
  %598 = load i32, i32* %16, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32*, i32** %597, i64 %599
  %601 = load i32*, i32** %600, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 3
  %603 = load i32, i32* %602, align 4
  store i32 %603, i32* %18, align 4
  %604 = load i32**, i32*** %12, align 8
  %605 = load i32, i32* %16, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32*, i32** %604, i64 %606
  %608 = load i32*, i32** %607, align 8
  %609 = getelementptr inbounds i32, i32* %608, i64 0
  %610 = load i32, i32* %609, align 4
  %611 = icmp sgt i32 %603, %610
  br i1 %611, label %612, label %620

; <label>:612:                                    ; preds = %596
  %613 = load i32, i32* %18, align 4
  %614 = load i32**, i32*** %12, align 8
  %615 = load i32, i32* %16, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i32*, i32** %614, i64 %616
  %618 = load i32*, i32** %617, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 0
  store i32 %613, i32* %619, align 4
  br label %620

; <label>:620:                                    ; preds = %612, %596
  %621 = load i32**, i32*** %12, align 8
  %622 = load i32, i32* %16, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i32*, i32** %621, i64 %623
  %625 = load i32*, i32** %624, align 8
  %626 = getelementptr inbounds i32, i32* %625, i64 2
  store i32 -987654321, i32* %626, align 4
  %627 = load i32**, i32*** %12, align 8
  %628 = load i32, i32* %16, align 4
  %629 = sub nsw i32 %628, 1
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i32*, i32** %627, i64 %630
  %632 = load i32*, i32** %631, align 8
  %633 = getelementptr inbounds i32, i32* %632, i64 2
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %636 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %635, i32 0, i32 0
  %637 = load i32**, i32*** %636, align 8
  %638 = load i32, i32* %16, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i32*, i32** %637, i64 %639
  %641 = load i32*, i32** %640, align 8
  %642 = getelementptr inbounds i32, i32* %641, i64 2
  %643 = load i32, i32* %642, align 4
  %644 = call i32 @ILogsum(i32 %634, i32 %643)
  store i32 %644, i32* %18, align 4
  %645 = icmp sgt i32 %644, -987654321
  br i1 %645, label %646, label %654

; <label>:646:                                    ; preds = %620
  %647 = load i32, i32* %18, align 4
  %648 = load i32**, i32*** %12, align 8
  %649 = load i32, i32* %16, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32*, i32** %648, i64 %650
  %652 = load i32*, i32** %651, align 8
  %653 = getelementptr inbounds i32, i32* %652, i64 2
  store i32 %647, i32* %653, align 4
  br label %654

; <label>:654:                                    ; preds = %646, %620
  %655 = load i32**, i32*** %12, align 8
  %656 = load i32, i32* %16, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i32*, i32** %655, i64 %657
  %659 = load i32*, i32** %658, align 8
  %660 = getelementptr inbounds i32, i32* %659, i64 1
  %661 = load i32, i32* %660, align 4
  store i32 %661, i32* %18, align 4
  %662 = load i32**, i32*** %12, align 8
  %663 = load i32, i32* %16, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i32*, i32** %662, i64 %664
  %666 = load i32*, i32** %665, align 8
  %667 = getelementptr inbounds i32, i32* %666, i64 2
  %668 = load i32, i32* %667, align 4
  %669 = icmp sgt i32 %661, %668
  br i1 %669, label %670, label %678

; <label>:670:                                    ; preds = %654
  %671 = load i32, i32* %18, align 4
  %672 = load i32**, i32*** %12, align 8
  %673 = load i32, i32* %16, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32*, i32** %672, i64 %674
  %676 = load i32*, i32** %675, align 8
  %677 = getelementptr inbounds i32, i32* %676, i64 2
  store i32 %671, i32* %677, align 4
  br label %678

; <label>:678:                                    ; preds = %670, %654
  br label %679

; <label>:679:                                    ; preds = %678
  %680 = load i32, i32* %16, align 4
  %681 = add nsw i32 %680, 1
  store i32 %681, i32* %16, align 4
  br label %78

; <label>:682:                                    ; preds = %78
  %683 = load i32**, i32*** %12, align 8
  %684 = load i32, i32* %6, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds i32*, i32** %683, i64 %685
  %687 = load i32*, i32** %686, align 8
  %688 = getelementptr inbounds i32, i32* %687, i64 2
  %689 = load i32, i32* %688, align 4
  store i32 %689, i32* %18, align 4
  %690 = load %struct.p7trace_s**, %struct.p7trace_s*** %10, align 8
  %691 = icmp ne %struct.p7trace_s** %690, null
  br i1 %691, label %692, label %699

; <label>:692:                                    ; preds = %682
  %693 = load i32, i32* %6, align 4
  %694 = load i32, i32* %7, align 4
  %695 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %696 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  call void @P7OptimalAccuracyTrace(i32 %693, i32 %694, %struct.dpmatrix_s* %695, %struct.dpmatrix_s* %696, %struct.p7trace_s** %11)
  %697 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %698 = load %struct.p7trace_s**, %struct.p7trace_s*** %10, align 8
  store %struct.p7trace_s* %697, %struct.p7trace_s** %698, align 8
  br label %699

; <label>:699:                                    ; preds = %692, %682
  %700 = load i32, i32* %18, align 4
  %701 = call float @Score2Prob(i32 %700, float 1.000000e+00)
  ret float %701
}

declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #1

declare %struct.dpmatrix_s* @AllocPlan7Matrix(i32, i32, i32***, i32***, i32***, i32***) #1

declare i32 @ILogsum(i32, i32) #1

declare float @Scorify(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7OptimalAccuracyTrace(i32, i32, %struct.dpmatrix_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpmatrix_s*, align 8
  %9 = alloca %struct.dpmatrix_s*, align 8
  %10 = alloca %struct.p7trace_s**, align 8
  %11 = alloca %struct.p7trace_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.dpmatrix_s* %2, %struct.dpmatrix_s** %8, align 8
  store %struct.dpmatrix_s* %3, %struct.dpmatrix_s** %9, align 8
  store %struct.p7trace_s** %4, %struct.p7trace_s*** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %22, 6
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  call void @P7AllocTrace(i32 %24, %struct.p7trace_s** %11)
  %25 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %26 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  store i32** %27, i32*** %16, align 8
  %28 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %29 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  store i32** %30, i32*** %17, align 8
  %31 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %32 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  store i32** %33, i32*** %18, align 8
  %34 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %9, align 8
  %35 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %34, i32 0, i32 3
  %36 = load i32**, i32*** %35, align 8
  store i32** %36, i32*** %19, align 8
  %37 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %38 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 9, i8* %40, align 1
  %41 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %42 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %46 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %50 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 8, i8* %52, align 1
  %53 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %54 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %58 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 0, i32* %60, align 4
  store i32 2, i32* %13, align 4
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %14, align 4
  br label %62

; <label>:62:                                     ; preds = %954, %5
  %63 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %64 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 4
  br i1 %72, label %73, label %955

; <label>:73:                                     ; preds = %62
  %74 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %75 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  switch i32 %82, label %941 [
    i32 1, label %83
    i32 2, label %304
    i32 3, label %402
    i32 5, label %522
    i32 6, label %618
    i32 7, label %691
    i32 8, label %749
    i32 10, label %845
  ]

; <label>:83:                                     ; preds = %73
  %84 = load i32**, i32*** %17, align 8
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %84, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32**, i32*** %17, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %106 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %107, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ILogsum(i32 %104, i32 %117)
  %119 = icmp eq i32 %95, %118
  br i1 %119, label %120, label %149

; <label>:120:                                    ; preds = %83
  %121 = load i32, i32* %14, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %149

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %15, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %149

; <label>:126:                                    ; preds = %123
  %127 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %128 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 1, i8* %132, align 1
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %15, align 4
  %135 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %136 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %133, i32* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %14, align 4
  %143 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %144 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %141, i32* %148, align 4
  br label %303

; <label>:149:                                    ; preds = %123, %120, %83
  %150 = load i32, i32* %20, align 4
  %151 = load i32**, i32*** %18, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %161 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %160, i32 0, i32 1
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %162, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ILogsum(i32 %159, i32 %172)
  %174 = icmp eq i32 %150, %173
  br i1 %174, label %175, label %203

; <label>:175:                                    ; preds = %149
  %176 = load i32, i32* %14, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %203

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* %15, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %203

; <label>:181:                                    ; preds = %178
  %182 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %183 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 3, i8* %187, align 1
  %188 = load i32, i32* %15, align 4
  %189 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %190 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %14, align 4
  %197 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %198 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %195, i32* %202, align 4
  br label %302

; <label>:203:                                    ; preds = %178, %175, %149
  %204 = load i32, i32* %20, align 4
  %205 = load i32**, i32*** %19, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %215 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %214, i32 0, i32 1
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %216, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @ILogsum(i32 %213, i32 %226)
  %228 = icmp eq i32 %204, %227
  br i1 %228, label %229, label %256

; <label>:229:                                    ; preds = %203
  %230 = load i32, i32* %14, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %256

; <label>:232:                                    ; preds = %229
  %233 = load i32, i32* %15, align 4
  %234 = icmp sgt i32 %233, 1
  br i1 %234, label %235, label %256

; <label>:235:                                    ; preds = %232
  %236 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %237 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  store i8 2, i8* %241, align 1
  %242 = load i32, i32* %15, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %15, align 4
  %244 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %245 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %242, i32* %249, align 4
  %250 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %251 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 0, i32* %255, align 4
  br label %301

; <label>:256:                                    ; preds = %232, %229, %203
  %257 = load i32, i32* %20, align 4
  %258 = load i32**, i32*** %16, align 8
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %258, i64 %260
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %266 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %265, i32 0, i32 1
  %267 = load i32**, i32*** %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %267, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %15, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @ILogsum(i32 %264, i32 %277)
  %279 = icmp eq i32 %257, %278
  br i1 %279, label %280, label %299

; <label>:280:                                    ; preds = %256
  %281 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %282 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  store i8 6, i8* %286, align 1
  %287 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %288 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %287, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %13, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 0, i32* %292, align 4
  %293 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %294 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %293, i32 0, i32 3
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 0, i32* %298, align 4
  br label %300

; <label>:299:                                    ; preds = %256
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %300

; <label>:300:                                    ; preds = %299, %280
  br label %301

; <label>:301:                                    ; preds = %300, %235
  br label %302

; <label>:302:                                    ; preds = %301, %181
  br label %303

; <label>:303:                                    ; preds = %302, %126
  br label %942

; <label>:304:                                    ; preds = %73
  %305 = load i32**, i32*** %19, align 8
  %306 = load i32, i32* %14, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %305, i64 %307
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32**, i32*** %17, align 8
  %316 = load i32, i32* %14, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32*, i32** %315, i64 %317
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %15, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %314, %323
  br i1 %324, label %325, label %354

; <label>:325:                                    ; preds = %304
  %326 = load i32, i32* %14, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %354

; <label>:328:                                    ; preds = %325
  %329 = load i32, i32* %15, align 4
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %331, label %354

; <label>:331:                                    ; preds = %328
  %332 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %333 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %332, i32 0, i32 1
  %334 = load i8*, i8** %333, align 8
  %335 = load i32, i32* %13, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  store i8 1, i8* %337, align 1
  %338 = load i32, i32* %15, align 4
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %15, align 4
  %340 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %341 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %340, i32 0, i32 2
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  store i32 %338, i32* %345, align 4
  %346 = load i32, i32* %14, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* %14, align 4
  %348 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %349 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %348, i32 0, i32 3
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %13, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  store i32 %346, i32* %353, align 4
  br label %401

; <label>:354:                                    ; preds = %328, %325, %304
  %355 = load i32**, i32*** %19, align 8
  %356 = load i32, i32* %14, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32*, i32** %355, i64 %357
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %15, align 4
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %359, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load i32**, i32*** %19, align 8
  %366 = load i32, i32* %14, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32*, i32** %365, i64 %367
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %15, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %364, %373
  br i1 %374, label %375, label %399

; <label>:375:                                    ; preds = %354
  %376 = load i32, i32* %15, align 4
  %377 = icmp sgt i32 %376, 1
  br i1 %377, label %378, label %399

; <label>:378:                                    ; preds = %375
  %379 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %380 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %379, i32 0, i32 1
  %381 = load i8*, i8** %380, align 8
  %382 = load i32, i32* %13, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %381, i64 %383
  store i8 2, i8* %384, align 1
  %385 = load i32, i32* %15, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %15, align 4
  %387 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %388 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %387, i32 0, i32 2
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %13, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  store i32 %385, i32* %392, align 4
  %393 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %394 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %393, i32 0, i32 3
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %13, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  store i32 0, i32* %398, align 4
  br label %400

; <label>:399:                                    ; preds = %375, %354
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %400

; <label>:400:                                    ; preds = %399, %378
  br label %401

; <label>:401:                                    ; preds = %400, %331
  br label %942

; <label>:402:                                    ; preds = %73
  %403 = load i32**, i32*** %18, align 8
  %404 = load i32, i32* %14, align 4
  %405 = add nsw i32 %404, 1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32*, i32** %403, i64 %406
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %15, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  store i32 %412, i32* %20, align 4
  %413 = load i32, i32* %20, align 4
  %414 = load i32**, i32*** %17, align 8
  %415 = load i32, i32* %14, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32*, i32** %414, i64 %416
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %15, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %424 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %423, i32 0, i32 2
  %425 = load i32**, i32*** %424, align 8
  %426 = load i32, i32* %14, align 4
  %427 = add nsw i32 %426, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32*, i32** %425, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %15, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @ILogsum(i32 %422, i32 %434)
  %436 = icmp eq i32 %413, %435
  br i1 %436, label %437, label %466

; <label>:437:                                    ; preds = %402
  %438 = load i32, i32* %14, align 4
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %466

; <label>:440:                                    ; preds = %437
  %441 = load i32, i32* %15, align 4
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %466

; <label>:443:                                    ; preds = %440
  %444 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %445 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %444, i32 0, i32 1
  %446 = load i8*, i8** %445, align 8
  %447 = load i32, i32* %13, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %446, i64 %448
  store i8 1, i8* %449, align 1
  %450 = load i32, i32* %15, align 4
  %451 = add nsw i32 %450, -1
  store i32 %451, i32* %15, align 4
  %452 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %453 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %452, i32 0, i32 2
  %454 = load i32*, i32** %453, align 8
  %455 = load i32, i32* %13, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  store i32 %450, i32* %457, align 4
  %458 = load i32, i32* %14, align 4
  %459 = add nsw i32 %458, -1
  store i32 %459, i32* %14, align 4
  %460 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %461 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %460, i32 0, i32 3
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %13, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 %458, i32* %465, align 4
  br label %521

; <label>:466:                                    ; preds = %440, %437, %402
  %467 = load i32, i32* %20, align 4
  %468 = load i32**, i32*** %18, align 8
  %469 = load i32, i32* %14, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32*, i32** %468, i64 %470
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* %15, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %478 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %477, i32 0, i32 2
  %479 = load i32**, i32*** %478, align 8
  %480 = load i32, i32* %14, align 4
  %481 = add nsw i32 %480, 1
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32*, i32** %479, i64 %482
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %15, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = call i32 @ILogsum(i32 %476, i32 %488)
  %490 = icmp eq i32 %467, %489
  br i1 %490, label %491, label %519

; <label>:491:                                    ; preds = %466
  %492 = load i32, i32* %14, align 4
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %519

; <label>:494:                                    ; preds = %491
  %495 = load i32, i32* %15, align 4
  %496 = icmp sgt i32 %495, 0
  br i1 %496, label %497, label %519

; <label>:497:                                    ; preds = %494
  %498 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %499 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %498, i32 0, i32 1
  %500 = load i8*, i8** %499, align 8
  %501 = load i32, i32* %13, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i8, i8* %500, i64 %502
  store i8 3, i8* %503, align 1
  %504 = load i32, i32* %15, align 4
  %505 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %506 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %505, i32 0, i32 2
  %507 = load i32*, i32** %506, align 8
  %508 = load i32, i32* %13, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  store i32 %504, i32* %510, align 4
  %511 = load i32, i32* %14, align 4
  %512 = add nsw i32 %511, -1
  store i32 %512, i32* %14, align 4
  %513 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %514 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %513, i32 0, i32 3
  %515 = load i32*, i32** %514, align 8
  %516 = load i32, i32* %13, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %515, i64 %517
  store i32 %511, i32* %518, align 4
  br label %520

; <label>:519:                                    ; preds = %494, %491, %466
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %520

; <label>:520:                                    ; preds = %519, %497
  br label %521

; <label>:521:                                    ; preds = %520, %443
  br label %942

; <label>:522:                                    ; preds = %73
  %523 = load i32, i32* %14, align 4
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %553

; <label>:525:                                    ; preds = %522
  %526 = load i32**, i32*** %16, align 8
  %527 = load i32, i32* %14, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32*, i32** %526, i64 %528
  %530 = load i32*, i32** %529, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 4
  %532 = load i32, i32* %531, align 4
  %533 = icmp eq i32 %532, -987654321
  br i1 %533, label %534, label %553

; <label>:534:                                    ; preds = %525
  %535 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %536 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %535, i32 0, i32 1
  %537 = load i8*, i8** %536, align 8
  %538 = load i32, i32* %13, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i8, i8* %537, i64 %539
  store i8 4, i8* %540, align 1
  %541 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %542 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %541, i32 0, i32 2
  %543 = load i32*, i32** %542, align 8
  %544 = load i32, i32* %13, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %543, i64 %545
  store i32 0, i32* %546, align 4
  %547 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %548 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %547, i32 0, i32 3
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* %13, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  store i32 0, i32* %552, align 4
  br label %617

; <label>:553:                                    ; preds = %525, %522
  %554 = load i32, i32* %14, align 4
  %555 = icmp sgt i32 %554, 0
  br i1 %555, label %556, label %615

; <label>:556:                                    ; preds = %553
  %557 = load i32**, i32*** %16, align 8
  %558 = load i32, i32* %14, align 4
  %559 = add nsw i32 %558, 1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32*, i32** %557, i64 %560
  %562 = load i32*, i32** %561, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 4
  %564 = load i32, i32* %563, align 4
  %565 = load i32**, i32*** %16, align 8
  %566 = load i32, i32* %14, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32*, i32** %565, i64 %567
  %569 = load i32*, i32** %568, align 8
  %570 = getelementptr inbounds i32, i32* %569, i64 4
  %571 = load i32, i32* %570, align 4
  %572 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %573 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %572, i32 0, i32 0
  %574 = load i32**, i32*** %573, align 8
  %575 = load i32, i32* %14, align 4
  %576 = add nsw i32 %575, 1
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32*, i32** %574, i64 %577
  %579 = load i32*, i32** %578, align 8
  %580 = getelementptr inbounds i32, i32* %579, i64 4
  %581 = load i32, i32* %580, align 4
  %582 = call i32 @ILogsum(i32 %571, i32 %581)
  %583 = icmp eq i32 %564, %582
  br i1 %583, label %584, label %615

; <label>:584:                                    ; preds = %556
  %585 = load i32, i32* %14, align 4
  %586 = icmp sgt i32 %585, 0
  br i1 %586, label %587, label %615

; <label>:587:                                    ; preds = %584
  %588 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %589 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %588, i32 0, i32 1
  %590 = load i8*, i8** %589, align 8
  %591 = load i32, i32* %13, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i8, i8* %590, i64 %592
  store i8 5, i8* %593, align 1
  %594 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %595 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %594, i32 0, i32 2
  %596 = load i32*, i32** %595, align 8
  %597 = load i32, i32* %13, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %596, i64 %598
  store i32 0, i32* %599, align 4
  %600 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %601 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %600, i32 0, i32 3
  %602 = load i32*, i32** %601, align 8
  %603 = load i32, i32* %13, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %602, i64 %604
  store i32 0, i32* %605, align 4
  %606 = load i32, i32* %14, align 4
  %607 = add nsw i32 %606, -1
  store i32 %607, i32* %14, align 4
  %608 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %609 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %608, i32 0, i32 3
  %610 = load i32*, i32** %609, align 8
  %611 = load i32, i32* %13, align 4
  %612 = sub nsw i32 %611, 1
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i32, i32* %610, i64 %613
  store i32 %606, i32* %614, align 4
  br label %616

; <label>:615:                                    ; preds = %584, %556, %553
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %616

; <label>:616:                                    ; preds = %615, %587
  br label %617

; <label>:617:                                    ; preds = %616, %534
  br label %942

; <label>:618:                                    ; preds = %73
  %619 = load i32**, i32*** %16, align 8
  %620 = load i32, i32* %14, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32*, i32** %619, i64 %621
  %623 = load i32*, i32** %622, align 8
  %624 = getelementptr inbounds i32, i32* %623, i64 0
  %625 = load i32, i32* %624, align 4
  %626 = load i32**, i32*** %16, align 8
  %627 = load i32, i32* %14, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32*, i32** %626, i64 %628
  %630 = load i32*, i32** %629, align 8
  %631 = getelementptr inbounds i32, i32* %630, i64 4
  %632 = load i32, i32* %631, align 4
  %633 = icmp eq i32 %625, %632
  br i1 %633, label %634, label %653

; <label>:634:                                    ; preds = %618
  %635 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %636 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %635, i32 0, i32 1
  %637 = load i8*, i8** %636, align 8
  %638 = load i32, i32* %13, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i8, i8* %637, i64 %639
  store i8 5, i8* %640, align 1
  %641 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %642 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %641, i32 0, i32 2
  %643 = load i32*, i32** %642, align 8
  %644 = load i32, i32* %13, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i32, i32* %643, i64 %645
  store i32 0, i32* %646, align 4
  %647 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %648 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %647, i32 0, i32 3
  %649 = load i32*, i32** %648, align 8
  %650 = load i32, i32* %13, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i32, i32* %649, i64 %651
  store i32 0, i32* %652, align 4
  br label %690

; <label>:653:                                    ; preds = %618
  %654 = load i32**, i32*** %16, align 8
  %655 = load i32, i32* %14, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i32*, i32** %654, i64 %656
  %658 = load i32*, i32** %657, align 8
  %659 = getelementptr inbounds i32, i32* %658, i64 0
  %660 = load i32, i32* %659, align 4
  %661 = load i32**, i32*** %16, align 8
  %662 = load i32, i32* %14, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32*, i32** %661, i64 %663
  %665 = load i32*, i32** %664, align 8
  %666 = getelementptr inbounds i32, i32* %665, i64 3
  %667 = load i32, i32* %666, align 4
  %668 = icmp eq i32 %660, %667
  br i1 %668, label %669, label %688

; <label>:669:                                    ; preds = %653
  %670 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %671 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %670, i32 0, i32 1
  %672 = load i8*, i8** %671, align 8
  %673 = load i32, i32* %13, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i8, i8* %672, i64 %674
  store i8 10, i8* %675, align 1
  %676 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %677 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %676, i32 0, i32 2
  %678 = load i32*, i32** %677, align 8
  %679 = load i32, i32* %13, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i32, i32* %678, i64 %680
  store i32 0, i32* %681, align 4
  %682 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %683 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %682, i32 0, i32 3
  %684 = load i32*, i32** %683, align 8
  %685 = load i32, i32* %13, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i32, i32* %684, i64 %686
  store i32 0, i32* %687, align 4
  br label %689

; <label>:688:                                    ; preds = %653
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %689

; <label>:689:                                    ; preds = %688, %669
  br label %690

; <label>:690:                                    ; preds = %689, %634
  br label %942

; <label>:691:                                    ; preds = %73
  %692 = load i32, i32* %7, align 4
  store i32 %692, i32* %15, align 4
  br label %693

; <label>:693:                                    ; preds = %741, %691
  %694 = load i32, i32* %15, align 4
  %695 = icmp sge i32 %694, 1
  br i1 %695, label %696, label %744

; <label>:696:                                    ; preds = %693
  %697 = load i32**, i32*** %16, align 8
  %698 = load i32, i32* %14, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32*, i32** %697, i64 %699
  %701 = load i32*, i32** %700, align 8
  %702 = getelementptr inbounds i32, i32* %701, i64 1
  %703 = load i32, i32* %702, align 4
  %704 = load i32**, i32*** %17, align 8
  %705 = load i32, i32* %14, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32*, i32** %704, i64 %706
  %708 = load i32*, i32** %707, align 8
  %709 = load i32, i32* %15, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i32, i32* %708, i64 %710
  %712 = load i32, i32* %711, align 4
  %713 = icmp eq i32 %703, %712
  br i1 %713, label %714, label %740

; <label>:714:                                    ; preds = %696
  %715 = load i32, i32* %14, align 4
  %716 = icmp sgt i32 %715, 0
  br i1 %716, label %717, label %740

; <label>:717:                                    ; preds = %714
  %718 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %719 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %718, i32 0, i32 1
  %720 = load i8*, i8** %719, align 8
  %721 = load i32, i32* %13, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i8, i8* %720, i64 %722
  store i8 1, i8* %723, align 1
  %724 = load i32, i32* %15, align 4
  %725 = add nsw i32 %724, -1
  store i32 %725, i32* %15, align 4
  %726 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %727 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %726, i32 0, i32 2
  %728 = load i32*, i32** %727, align 8
  %729 = load i32, i32* %13, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i32, i32* %728, i64 %730
  store i32 %724, i32* %731, align 4
  %732 = load i32, i32* %14, align 4
  %733 = add nsw i32 %732, -1
  store i32 %733, i32* %14, align 4
  %734 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %735 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %734, i32 0, i32 3
  %736 = load i32*, i32** %735, align 8
  %737 = load i32, i32* %13, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds i32, i32* %736, i64 %738
  store i32 %732, i32* %739, align 4
  br label %744

; <label>:740:                                    ; preds = %714, %696
  br label %741

; <label>:741:                                    ; preds = %740
  %742 = load i32, i32* %15, align 4
  %743 = add nsw i32 %742, -1
  store i32 %743, i32* %15, align 4
  br label %693

; <label>:744:                                    ; preds = %717, %693
  %745 = load i32, i32* %15, align 4
  %746 = icmp sle i32 %745, 0
  br i1 %746, label %747, label %748

; <label>:747:                                    ; preds = %744
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %748

; <label>:748:                                    ; preds = %747, %744
  br label %942

; <label>:749:                                    ; preds = %73
  %750 = load i32**, i32*** %16, align 8
  %751 = load i32, i32* %14, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i32*, i32** %750, i64 %752
  %754 = load i32*, i32** %753, align 8
  %755 = getelementptr inbounds i32, i32* %754, i64 2
  %756 = load i32, i32* %755, align 4
  %757 = load i32**, i32*** %16, align 8
  %758 = load i32, i32* %14, align 4
  %759 = sub nsw i32 %758, 1
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds i32*, i32** %757, i64 %760
  %762 = load i32*, i32** %761, align 8
  %763 = getelementptr inbounds i32, i32* %762, i64 2
  %764 = load i32, i32* %763, align 4
  %765 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %766 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %765, i32 0, i32 0
  %767 = load i32**, i32*** %766, align 8
  %768 = load i32, i32* %14, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds i32*, i32** %767, i64 %769
  %771 = load i32*, i32** %770, align 8
  %772 = getelementptr inbounds i32, i32* %771, i64 2
  %773 = load i32, i32* %772, align 4
  %774 = call i32 @ILogsum(i32 %764, i32 %773)
  %775 = icmp eq i32 %756, %774
  br i1 %775, label %776, label %807

; <label>:776:                                    ; preds = %749
  %777 = load i32, i32* %14, align 4
  %778 = icmp sgt i32 %777, 0
  br i1 %778, label %779, label %807

; <label>:779:                                    ; preds = %776
  %780 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %781 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %780, i32 0, i32 1
  %782 = load i8*, i8** %781, align 8
  %783 = load i32, i32* %13, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i8, i8* %782, i64 %784
  store i8 8, i8* %785, align 1
  %786 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %787 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %786, i32 0, i32 2
  %788 = load i32*, i32** %787, align 8
  %789 = load i32, i32* %13, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds i32, i32* %788, i64 %790
  store i32 0, i32* %791, align 4
  %792 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %793 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %792, i32 0, i32 3
  %794 = load i32*, i32** %793, align 8
  %795 = load i32, i32* %13, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds i32, i32* %794, i64 %796
  store i32 0, i32* %797, align 4
  %798 = load i32, i32* %14, align 4
  %799 = add nsw i32 %798, -1
  store i32 %799, i32* %14, align 4
  %800 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %801 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %800, i32 0, i32 3
  %802 = load i32*, i32** %801, align 8
  %803 = load i32, i32* %13, align 4
  %804 = sub nsw i32 %803, 1
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i32, i32* %802, i64 %805
  store i32 %798, i32* %806, align 4
  br label %844

; <label>:807:                                    ; preds = %776, %749
  %808 = load i32**, i32*** %16, align 8
  %809 = load i32, i32* %14, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i32*, i32** %808, i64 %810
  %812 = load i32*, i32** %811, align 8
  %813 = getelementptr inbounds i32, i32* %812, i64 2
  %814 = load i32, i32* %813, align 4
  %815 = load i32**, i32*** %16, align 8
  %816 = load i32, i32* %14, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds i32*, i32** %815, i64 %817
  %819 = load i32*, i32** %818, align 8
  %820 = getelementptr inbounds i32, i32* %819, i64 1
  %821 = load i32, i32* %820, align 4
  %822 = icmp eq i32 %814, %821
  br i1 %822, label %823, label %842

; <label>:823:                                    ; preds = %807
  %824 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %825 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %824, i32 0, i32 1
  %826 = load i8*, i8** %825, align 8
  %827 = load i32, i32* %13, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds i8, i8* %826, i64 %828
  store i8 7, i8* %829, align 1
  %830 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %831 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %830, i32 0, i32 2
  %832 = load i32*, i32** %831, align 8
  %833 = load i32, i32* %13, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds i32, i32* %832, i64 %834
  store i32 0, i32* %835, align 4
  %836 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %837 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %836, i32 0, i32 3
  %838 = load i32*, i32** %837, align 8
  %839 = load i32, i32* %13, align 4
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds i32, i32* %838, i64 %840
  store i32 0, i32* %841, align 4
  br label %843

; <label>:842:                                    ; preds = %807
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %843

; <label>:843:                                    ; preds = %842, %823
  br label %844

; <label>:844:                                    ; preds = %843, %779
  br label %942

; <label>:845:                                    ; preds = %73
  %846 = load i32**, i32*** %16, align 8
  %847 = load i32, i32* %14, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds i32*, i32** %846, i64 %848
  %850 = load i32*, i32** %849, align 8
  %851 = getelementptr inbounds i32, i32* %850, i64 3
  %852 = load i32, i32* %851, align 4
  %853 = load i32**, i32*** %16, align 8
  %854 = load i32, i32* %14, align 4
  %855 = sub nsw i32 %854, 1
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds i32*, i32** %853, i64 %856
  %858 = load i32*, i32** %857, align 8
  %859 = getelementptr inbounds i32, i32* %858, i64 3
  %860 = load i32, i32* %859, align 4
  %861 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %8, align 8
  %862 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %861, i32 0, i32 0
  %863 = load i32**, i32*** %862, align 8
  %864 = load i32, i32* %14, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds i32*, i32** %863, i64 %865
  %867 = load i32*, i32** %866, align 8
  %868 = getelementptr inbounds i32, i32* %867, i64 3
  %869 = load i32, i32* %868, align 4
  %870 = call i32 @ILogsum(i32 %860, i32 %869)
  %871 = icmp eq i32 %852, %870
  br i1 %871, label %872, label %903

; <label>:872:                                    ; preds = %845
  %873 = load i32, i32* %14, align 4
  %874 = icmp sgt i32 %873, 0
  br i1 %874, label %875, label %903

; <label>:875:                                    ; preds = %872
  %876 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %877 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %876, i32 0, i32 1
  %878 = load i8*, i8** %877, align 8
  %879 = load i32, i32* %13, align 4
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds i8, i8* %878, i64 %880
  store i8 10, i8* %881, align 1
  %882 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %883 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %882, i32 0, i32 2
  %884 = load i32*, i32** %883, align 8
  %885 = load i32, i32* %13, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds i32, i32* %884, i64 %886
  store i32 0, i32* %887, align 4
  %888 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %889 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %888, i32 0, i32 3
  %890 = load i32*, i32** %889, align 8
  %891 = load i32, i32* %13, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds i32, i32* %890, i64 %892
  store i32 0, i32* %893, align 4
  %894 = load i32, i32* %14, align 4
  %895 = add nsw i32 %894, -1
  store i32 %895, i32* %14, align 4
  %896 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %897 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %896, i32 0, i32 3
  %898 = load i32*, i32** %897, align 8
  %899 = load i32, i32* %13, align 4
  %900 = sub nsw i32 %899, 1
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i32, i32* %898, i64 %901
  store i32 %894, i32* %902, align 4
  br label %940

; <label>:903:                                    ; preds = %872, %845
  %904 = load i32**, i32*** %16, align 8
  %905 = load i32, i32* %14, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds i32*, i32** %904, i64 %906
  %908 = load i32*, i32** %907, align 8
  %909 = getelementptr inbounds i32, i32* %908, i64 3
  %910 = load i32, i32* %909, align 4
  %911 = load i32**, i32*** %16, align 8
  %912 = load i32, i32* %14, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i32*, i32** %911, i64 %913
  %915 = load i32*, i32** %914, align 8
  %916 = getelementptr inbounds i32, i32* %915, i64 1
  %917 = load i32, i32* %916, align 4
  %918 = icmp eq i32 %910, %917
  br i1 %918, label %919, label %938

; <label>:919:                                    ; preds = %903
  %920 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %921 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %920, i32 0, i32 1
  %922 = load i8*, i8** %921, align 8
  %923 = load i32, i32* %13, align 4
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds i8, i8* %922, i64 %924
  store i8 7, i8* %925, align 1
  %926 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %927 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %926, i32 0, i32 2
  %928 = load i32*, i32** %927, align 8
  %929 = load i32, i32* %13, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds i32, i32* %928, i64 %930
  store i32 0, i32* %931, align 4
  %932 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %933 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %932, i32 0, i32 3
  %934 = load i32*, i32** %933, align 8
  %935 = load i32, i32* %13, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i32, i32* %934, i64 %936
  store i32 0, i32* %937, align 4
  br label %939

; <label>:938:                                    ; preds = %903
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %939

; <label>:939:                                    ; preds = %938, %919
  br label %940

; <label>:940:                                    ; preds = %939, %875
  br label %942

; <label>:941:                                    ; preds = %73
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %942

; <label>:942:                                    ; preds = %941, %940, %844, %748, %690, %617, %521, %401, %303
  %943 = load i32, i32* %13, align 4
  %944 = add nsw i32 %943, 1
  store i32 %944, i32* %13, align 4
  %945 = load i32, i32* %13, align 4
  %946 = load i32, i32* %12, align 4
  %947 = icmp eq i32 %945, %946
  br i1 %947, label %948, label %954

; <label>:948:                                    ; preds = %942
  %949 = load i32, i32* %6, align 4
  %950 = load i32, i32* %12, align 4
  %951 = add nsw i32 %950, %949
  store i32 %951, i32* %12, align 4
  %952 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %953 = load i32, i32* %12, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %952, i32 %953)
  br label %954

; <label>:954:                                    ; preds = %948, %942
  br label %62

; <label>:955:                                    ; preds = %62
  %956 = load i32, i32* %13, align 4
  %957 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %958 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %957, i32 0, i32 0
  store i32 %956, i32* %958, align 8
  %959 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  call void @P7ReverseTrace(%struct.p7trace_s* %959)
  %960 = load %struct.p7trace_s*, %struct.p7trace_s** %11, align 8
  %961 = load %struct.p7trace_s**, %struct.p7trace_s*** %10, align 8
  store %struct.p7trace_s* %960, %struct.p7trace_s** %961, align 8
  ret void
}

declare float @Score2Prob(i32, float) #1

declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

declare void @Die(i8*, ...) #1

declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #1

declare void @P7ReverseTrace(%struct.p7trace_s*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @PostalCode(i32, %struct.dpmatrix_s*, %struct.p7trace_s*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpmatrix_s*, align 8
  %6 = alloca %struct.p7trace_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dpmatrix_s* %1, %struct.dpmatrix_s** %5, align 8
  store %struct.p7trace_s* %2, %struct.p7trace_s** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 1
  %15 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 692, i64 %14)
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %134, %3
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %137

; <label>:22:                                     ; preds = %16
  %23 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %24 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %31 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %22
  br label %134

; <label>:40:                                     ; preds = %22
  %41 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %42 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  switch i32 %48, label %133 [
    i32 1, label %49
    i32 3, label %67
    i32 5, label %85
    i32 8, label %101
    i32 10, label %117
  ]

; <label>:49:                                     ; preds = %40
  %50 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %5, align 8
  %51 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call signext i8 @score2postcode(i32 %60)
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 %61, i8* %66, align 1
  br label %133

; <label>:67:                                     ; preds = %40
  %68 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %5, align 8
  %69 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %68, i32 0, i32 2
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call signext i8 @score2postcode(i32 %78)
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 %79, i8* %84, align 1
  br label %133

; <label>:85:                                     ; preds = %40
  %86 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %5, align 8
  %87 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %86, i32 0, i32 0
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = call signext i8 @score2postcode(i32 %94)
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  store i8 %95, i8* %100, align 1
  br label %133

; <label>:101:                                    ; preds = %40
  %102 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %5, align 8
  %103 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %102, i32 0, i32 0
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = call signext i8 @score2postcode(i32 %110)
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8 %111, i8* %116, align 1
  br label %133

; <label>:117:                                    ; preds = %40
  %118 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %5, align 8
  %119 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = call signext i8 @score2postcode(i32 %126)
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8 %127, i8* %132, align 1
  br label %133

; <label>:133:                                    ; preds = %40, %117, %101, %85, %67, %49
  br label %134

; <label>:134:                                    ; preds = %133, %39
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %16

; <label>:137:                                    ; preds = %16
  %138 = load i8*, i8** %10, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 0, i8* %141, align 1
  %142 = load i8*, i8** %10, align 8
  ret i8* %142
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @score2postcode(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call float @Score2Prob(i32 %4, float 1.000000e+00)
  %6 = fpext float %5 to double
  %7 = fmul double %6, 1.000000e+01
  %8 = fptosi double %7 to i8
  store i8 %8, i8* %3, align 1
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sgt i32 %10, 9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  br label %17

; <label>:13:                                     ; preds = %1
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  %16 = add nsw i32 48, %15
  br label %17

; <label>:17:                                     ; preds = %13, %12
  %18 = phi i32 [ 42, %12 ], [ %16, %13 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
