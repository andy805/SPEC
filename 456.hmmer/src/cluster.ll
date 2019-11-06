; ModuleID = 'cluster.c'
source_filename = "cluster.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.phylo_s = type { i32, i32, i32, float, float, float, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.intstack_s = type { i32, %struct.intstack_s* }

@.str = private unnamed_addr constant [10 x i8] c"cluster.c\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"AllocPhylo() failed\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s:%.5f\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"):%.5f\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Interior node %d (code %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\09Parent: %d (code %d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"\09Left:   %d (%s) %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"interior\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09Right:   %d (%s) %f\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"\09Height:  %f\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"\09Includes:%d seqs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Cluster(float**, i32, i32, %struct.phylo_s**) #0 {
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phylo_s**, align 8
  %9 = alloca %struct.phylo_s*, align 8
  %10 = alloca float**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float*, align 8
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  store float** %0, float*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.phylo_s** %3, %struct.phylo_s*** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 168, i64 %25)
  %27 = bitcast i8* %26 to float**
  store float** %27, float*** %10, align 8
  store i32 0, i32* %12, align 4
  br label %28

; <label>:28:                                     ; preds = %68, %4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %71

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 171, i64 %35)
  %37 = bitcast i8* %36 to float*
  %38 = load float**, float*** %10, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float*, float** %38, i64 %40
  store float* %37, float** %41, align 8
  store i32 0, i32* %13, align 4
  br label %42

; <label>:42:                                     ; preds = %64, %32
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

; <label>:46:                                     ; preds = %42
  %47 = load float**, float*** %5, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float*, float** %47, i64 %49
  %51 = load float*, float** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  %56 = load float**, float*** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float*, float** %56, i64 %58
  %60 = load float*, float** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  store float %55, float* %63, align 4
  br label %64

; <label>:64:                                     ; preds = %46
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %42

; <label>:67:                                     ; preds = %42
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %28

; <label>:71:                                     ; preds = %28
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 176, i64 %74)
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** %11, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 177, i64 %80)
  %82 = bitcast i8* %81 to float*
  store float* %82, float** %21, align 8
  store i32 0, i32* %17, align 4
  br label %83

; <label>:83:                                     ; preds = %93, %71
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %96

; <label>:87:                                     ; preds = %83
  %88 = load i32, i32* %17, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

; <label>:93:                                     ; preds = %87
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %83

; <label>:96:                                     ; preds = %83
  store i32 0, i32* %12, align 4
  br label %97

; <label>:97:                                     ; preds = %107, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %110

; <label>:102:                                    ; preds = %97
  %103 = load float*, float** %21, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  store float 0.000000e+00, float* %106, align 4
  br label %107

; <label>:107:                                    ; preds = %102
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %97

; <label>:110:                                    ; preds = %97
  %111 = load i32, i32* %6, align 4
  %112 = call %struct.phylo_s* @AllocPhylo(i32 %111)
  store %struct.phylo_s* %112, %struct.phylo_s** %9, align 8
  %113 = icmp eq %struct.phylo_s* %112, null
  br i1 %113, label %114, label %115

; <label>:114:                                    ; preds = %110
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %115

; <label>:115:                                    ; preds = %114, %110
  store i32 0, i32* %13, align 4
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %15, align 4
  br label %117

; <label>:117:                                    ; preds = %914, %115
  %118 = load i32, i32* %15, align 4
  %119 = icmp sge i32 %118, 2
  br i1 %119, label %120, label %917

; <label>:120:                                    ; preds = %117
  store float 9.999990e+05, float* %18, align 4
  store i32 0, i32* %16, align 4
  br label %121

; <label>:121:                                    ; preds = %161, %120
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %164

; <label>:125:                                    ; preds = %121
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %17, align 4
  br label %128

; <label>:128:                                    ; preds = %157, %125
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %160

; <label>:132:                                    ; preds = %128
  %133 = load float**, float*** %10, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float*, float** %133, i64 %135
  %137 = load float*, float** %136, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  %141 = load float, float* %140, align 4
  %142 = load float, float* %18, align 4
  %143 = fcmp olt float %141, %142
  br i1 %143, label %144, label %156

; <label>:144:                                    ; preds = %132
  %145 = load float**, float*** %10, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float*, float** %145, i64 %147
  %149 = load float*, float** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %149, i64 %151
  %153 = load float, float* %152, align 4
  store float %153, float* %18, align 4
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %17, align 4
  store i32 %155, i32* %13, align 4
  br label %156

; <label>:156:                                    ; preds = %144, %132
  br label %157

; <label>:157:                                    ; preds = %156
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %17, align 4
  br label %128

; <label>:160:                                    ; preds = %128
  br label %161

; <label>:161:                                    ; preds = %160
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %121

; <label>:164:                                    ; preds = %121
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sub nsw i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %170, i64 %173
  %175 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %174, i32 0, i32 1
  store i32 %169, i32* %175, align 4
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sub nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %181, i64 %184
  %186 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %185, i32 0, i32 2
  store i32 %180, i32* %186, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp sge i32 %191, %192
  br i1 %193, label %194, label %210

; <label>:194:                                    ; preds = %164
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %195, %196
  %198 = sub nsw i32 %197, 2
  %199 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %200 = load i32*, i32** %11, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %6, align 4
  %206 = sub nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %199, i64 %207
  %209 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %208, i32 0, i32 0
  store i32 %198, i32* %209, align 8
  br label %210

; <label>:210:                                    ; preds = %194, %164
  %211 = load i32*, i32** %11, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %234

; <label>:218:                                    ; preds = %210
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %219, %220
  %222 = sub nsw i32 %221, 2
  %223 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %224 = load i32*, i32** %11, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %6, align 4
  %230 = sub nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %223, i64 %231
  %233 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %232, i32 0, i32 0
  store i32 %222, i32* %233, align 8
  br label %234

; <label>:234:                                    ; preds = %218, %210
  %235 = load float, float* %18, align 4
  %236 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %237 = load i32, i32* %15, align 4
  %238 = sub nsw i32 %237, 2
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %236, i64 %239
  %241 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %240, i32 0, i32 3
  store float %235, float* %241, align 4
  %242 = load float*, float** %21, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sub nsw i32 %243, 2
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %242, i64 %245
  store float %235, float* %246, align 4
  %247 = load float, float* %18, align 4
  %248 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sub nsw i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %248, i64 %251
  %253 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %252, i32 0, i32 5
  store float %247, float* %253, align 4
  %254 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %255 = load i32, i32* %15, align 4
  %256 = sub nsw i32 %255, 2
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %254, i64 %257
  %259 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %258, i32 0, i32 4
  store float %247, float* %259, align 8
  %260 = load i32*, i32** %11, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %6, align 4
  %266 = icmp sge i32 %264, %265
  br i1 %266, label %267, label %287

; <label>:267:                                    ; preds = %234
  %268 = load float*, float** %21, align 8
  %269 = load i32*, i32** %11, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %6, align 4
  %275 = sub nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %268, i64 %276
  %278 = load float, float* %277, align 4
  %279 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %280 = load i32, i32* %15, align 4
  %281 = sub nsw i32 %280, 2
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %279, i64 %282
  %284 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %283, i32 0, i32 4
  %285 = load float, float* %284, align 8
  %286 = fsub float %285, %278
  store float %286, float* %284, align 8
  br label %287

; <label>:287:                                    ; preds = %267, %234
  %288 = load i32*, i32** %11, align 8
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %6, align 4
  %294 = icmp sge i32 %292, %293
  br i1 %294, label %295, label %315

; <label>:295:                                    ; preds = %287
  %296 = load float*, float** %21, align 8
  %297 = load i32*, i32** %11, align 8
  %298 = load i32, i32* %13, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %6, align 4
  %303 = sub nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %296, i64 %304
  %306 = load float, float* %305, align 4
  %307 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sub nsw i32 %308, 2
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %307, i64 %310
  %312 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %311, i32 0, i32 5
  %313 = load float, float* %312, align 4
  %314 = fsub float %313, %306
  store float %314, float* %312, align 4
  br label %315

; <label>:315:                                    ; preds = %295, %287
  %316 = load i32*, i32** %11, align 8
  %317 = load i32, i32* %12, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %6, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %346

; <label>:323:                                    ; preds = %315
  %324 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %325 = load i32, i32* %15, align 4
  %326 = sub nsw i32 %325, 2
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %324, i64 %327
  %329 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 8
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %329, align 8
  %332 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %333 = load i32, i32* %15, align 4
  %334 = sub nsw i32 %333, 2
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %332, i64 %335
  %337 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %336, i32 0, i32 6
  %338 = load i8*, i8** %337, align 8
  %339 = load i32*, i32** %11, align 8
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %338, i64 %344
  store i8 1, i8* %345, align 1
  br label %407

; <label>:346:                                    ; preds = %315
  %347 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %348 = load i32*, i32** %11, align 8
  %349 = load i32, i32* %12, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %6, align 4
  %354 = sub nsw i32 %352, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %347, i64 %355
  %357 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %356, i32 0, i32 7
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %360 = load i32, i32* %15, align 4
  %361 = sub nsw i32 %360, 2
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %359, i64 %362
  %364 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %365, %358
  store i32 %366, i32* %364, align 8
  store i32 0, i32* %14, align 4
  br label %367

; <label>:367:                                    ; preds = %403, %346
  %368 = load i32, i32* %14, align 4
  %369 = load i32, i32* %6, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %406

; <label>:371:                                    ; preds = %367
  %372 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %373 = load i32*, i32** %11, align 8
  %374 = load i32, i32* %12, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %6, align 4
  %379 = sub nsw i32 %377, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %372, i64 %380
  %382 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %381, i32 0, i32 6
  %383 = load i8*, i8** %382, align 8
  %384 = load i32, i32* %14, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %383, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %390 = load i32, i32* %15, align 4
  %391 = sub nsw i32 %390, 2
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %389, i64 %392
  %394 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %393, i32 0, i32 6
  %395 = load i8*, i8** %394, align 8
  %396 = load i32, i32* %14, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8, i8* %395, i64 %397
  %399 = load i8, i8* %398, align 1
  %400 = sext i8 %399 to i32
  %401 = or i32 %400, %388
  %402 = trunc i32 %401 to i8
  store i8 %402, i8* %398, align 1
  br label %403

; <label>:403:                                    ; preds = %371
  %404 = load i32, i32* %14, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %14, align 4
  br label %367

; <label>:406:                                    ; preds = %367
  br label %407

; <label>:407:                                    ; preds = %406, %323
  %408 = load i32*, i32** %11, align 8
  %409 = load i32, i32* %13, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %6, align 4
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %415, label %438

; <label>:415:                                    ; preds = %407
  %416 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %417 = load i32, i32* %15, align 4
  %418 = sub nsw i32 %417, 2
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %416, i64 %419
  %421 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %420, i32 0, i32 7
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %421, align 8
  %424 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %425 = load i32, i32* %15, align 4
  %426 = sub nsw i32 %425, 2
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %424, i64 %427
  %429 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %428, i32 0, i32 6
  %430 = load i8*, i8** %429, align 8
  %431 = load i32*, i32** %11, align 8
  %432 = load i32, i32* %13, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8, i8* %430, i64 %436
  store i8 1, i8* %437, align 1
  br label %499

; <label>:438:                                    ; preds = %407
  %439 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %440 = load i32*, i32** %11, align 8
  %441 = load i32, i32* %13, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* %6, align 4
  %446 = sub nsw i32 %444, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %439, i64 %447
  %449 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %448, i32 0, i32 7
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %452 = load i32, i32* %15, align 4
  %453 = sub nsw i32 %452, 2
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %451, i64 %454
  %456 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %455, i32 0, i32 7
  %457 = load i32, i32* %456, align 8
  %458 = add nsw i32 %457, %450
  store i32 %458, i32* %456, align 8
  store i32 0, i32* %14, align 4
  br label %459

; <label>:459:                                    ; preds = %495, %438
  %460 = load i32, i32* %14, align 4
  %461 = load i32, i32* %6, align 4
  %462 = icmp slt i32 %460, %461
  br i1 %462, label %463, label %498

; <label>:463:                                    ; preds = %459
  %464 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %465 = load i32*, i32** %11, align 8
  %466 = load i32, i32* %13, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* %6, align 4
  %471 = sub nsw i32 %469, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %464, i64 %472
  %474 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %473, i32 0, i32 6
  %475 = load i8*, i8** %474, align 8
  %476 = load i32, i32* %14, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8, i8* %475, i64 %477
  %479 = load i8, i8* %478, align 1
  %480 = sext i8 %479 to i32
  %481 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %482 = load i32, i32* %15, align 4
  %483 = sub nsw i32 %482, 2
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %481, i64 %484
  %486 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %485, i32 0, i32 6
  %487 = load i8*, i8** %486, align 8
  %488 = load i32, i32* %14, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %487, i64 %489
  %491 = load i8, i8* %490, align 1
  %492 = sext i8 %491 to i32
  %493 = or i32 %492, %480
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %490, align 1
  br label %495

; <label>:495:                                    ; preds = %463
  %496 = load i32, i32* %14, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %14, align 4
  br label %459

; <label>:498:                                    ; preds = %459
  br label %499

; <label>:499:                                    ; preds = %498, %415
  %500 = load i32, i32* %12, align 4
  %501 = load i32, i32* %15, align 4
  %502 = sub nsw i32 %501, 1
  %503 = icmp eq i32 %500, %502
  br i1 %503, label %509, label %504

; <label>:504:                                    ; preds = %499
  %505 = load i32, i32* %13, align 4
  %506 = load i32, i32* %15, align 4
  %507 = sub nsw i32 %506, 2
  %508 = icmp eq i32 %505, %507
  br i1 %508, label %509, label %513

; <label>:509:                                    ; preds = %504, %499
  %510 = load i32, i32* %13, align 4
  store i32 %510, i32* %22, align 4
  %511 = load i32, i32* %12, align 4
  store i32 %511, i32* %13, align 4
  %512 = load i32, i32* %22, align 4
  store i32 %512, i32* %12, align 4
  br label %513

; <label>:513:                                    ; preds = %509, %504
  %514 = load i32, i32* %12, align 4
  %515 = load i32, i32* %15, align 4
  %516 = sub nsw i32 %515, 2
  %517 = icmp ne i32 %514, %516
  br i1 %517, label %518, label %607

; <label>:518:                                    ; preds = %513
  %519 = load float**, float*** %10, align 8
  %520 = load i32, i32* %15, align 4
  %521 = sub nsw i32 %520, 2
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds float*, float** %519, i64 %522
  %524 = load float*, float** %523, align 8
  store float* %524, float** %19, align 8
  %525 = load float**, float*** %10, align 8
  %526 = load i32, i32* %12, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds float*, float** %525, i64 %527
  %529 = load float*, float** %528, align 8
  %530 = load float**, float*** %10, align 8
  %531 = load i32, i32* %15, align 4
  %532 = sub nsw i32 %531, 2
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds float*, float** %530, i64 %533
  store float* %529, float** %534, align 8
  %535 = load float*, float** %19, align 8
  %536 = load float**, float*** %10, align 8
  %537 = load i32, i32* %12, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds float*, float** %536, i64 %538
  store float* %535, float** %539, align 8
  store i32 0, i32* %16, align 4
  br label %540

; <label>:540:                                    ; preds = %582, %518
  %541 = load i32, i32* %16, align 4
  %542 = load i32, i32* %15, align 4
  %543 = icmp slt i32 %541, %542
  br i1 %543, label %544, label %585

; <label>:544:                                    ; preds = %540
  %545 = load float**, float*** %10, align 8
  %546 = load i32, i32* %16, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds float*, float** %545, i64 %547
  %549 = load float*, float** %548, align 8
  %550 = load i32, i32* %15, align 4
  %551 = sub nsw i32 %550, 2
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds float, float* %549, i64 %552
  %554 = load float, float* %553, align 4
  store float %554, float* %20, align 4
  %555 = load float**, float*** %10, align 8
  %556 = load i32, i32* %16, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds float*, float** %555, i64 %557
  %559 = load float*, float** %558, align 8
  %560 = load i32, i32* %12, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds float, float* %559, i64 %561
  %563 = load float, float* %562, align 4
  %564 = load float**, float*** %10, align 8
  %565 = load i32, i32* %16, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds float*, float** %564, i64 %566
  %568 = load float*, float** %567, align 8
  %569 = load i32, i32* %15, align 4
  %570 = sub nsw i32 %569, 2
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds float, float* %568, i64 %571
  store float %563, float* %572, align 4
  %573 = load float, float* %20, align 4
  %574 = load float**, float*** %10, align 8
  %575 = load i32, i32* %16, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds float*, float** %574, i64 %576
  %578 = load float*, float** %577, align 8
  %579 = load i32, i32* %12, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds float, float* %578, i64 %580
  store float %573, float* %581, align 4
  br label %582

; <label>:582:                                    ; preds = %544
  %583 = load i32, i32* %16, align 4
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %16, align 4
  br label %540

; <label>:585:                                    ; preds = %540
  %586 = load i32*, i32** %11, align 8
  %587 = load i32, i32* %15, align 4
  %588 = sub nsw i32 %587, 2
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %586, i64 %589
  %591 = load i32, i32* %590, align 4
  store i32 %591, i32* %22, align 4
  %592 = load i32*, i32** %11, align 8
  %593 = load i32, i32* %12, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, i32* %592, i64 %594
  %596 = load i32, i32* %595, align 4
  %597 = load i32*, i32** %11, align 8
  %598 = load i32, i32* %15, align 4
  %599 = sub nsw i32 %598, 2
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, i32* %597, i64 %600
  store i32 %596, i32* %601, align 4
  %602 = load i32, i32* %22, align 4
  %603 = load i32*, i32** %11, align 8
  %604 = load i32, i32* %12, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %603, i64 %605
  store i32 %602, i32* %606, align 4
  br label %607

; <label>:607:                                    ; preds = %585, %513
  %608 = load i32, i32* %13, align 4
  %609 = load i32, i32* %15, align 4
  %610 = sub nsw i32 %609, 1
  %611 = icmp ne i32 %608, %610
  br i1 %611, label %612, label %701

; <label>:612:                                    ; preds = %607
  %613 = load float**, float*** %10, align 8
  %614 = load i32, i32* %15, align 4
  %615 = sub nsw i32 %614, 1
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds float*, float** %613, i64 %616
  %618 = load float*, float** %617, align 8
  store float* %618, float** %19, align 8
  %619 = load float**, float*** %10, align 8
  %620 = load i32, i32* %13, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds float*, float** %619, i64 %621
  %623 = load float*, float** %622, align 8
  %624 = load float**, float*** %10, align 8
  %625 = load i32, i32* %15, align 4
  %626 = sub nsw i32 %625, 1
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds float*, float** %624, i64 %627
  store float* %623, float** %628, align 8
  %629 = load float*, float** %19, align 8
  %630 = load float**, float*** %10, align 8
  %631 = load i32, i32* %13, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds float*, float** %630, i64 %632
  store float* %629, float** %633, align 8
  store i32 0, i32* %16, align 4
  br label %634

; <label>:634:                                    ; preds = %676, %612
  %635 = load i32, i32* %16, align 4
  %636 = load i32, i32* %15, align 4
  %637 = icmp slt i32 %635, %636
  br i1 %637, label %638, label %679

; <label>:638:                                    ; preds = %634
  %639 = load float**, float*** %10, align 8
  %640 = load i32, i32* %16, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds float*, float** %639, i64 %641
  %643 = load float*, float** %642, align 8
  %644 = load i32, i32* %15, align 4
  %645 = sub nsw i32 %644, 1
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds float, float* %643, i64 %646
  %648 = load float, float* %647, align 4
  store float %648, float* %20, align 4
  %649 = load float**, float*** %10, align 8
  %650 = load i32, i32* %16, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds float*, float** %649, i64 %651
  %653 = load float*, float** %652, align 8
  %654 = load i32, i32* %13, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds float, float* %653, i64 %655
  %657 = load float, float* %656, align 4
  %658 = load float**, float*** %10, align 8
  %659 = load i32, i32* %16, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds float*, float** %658, i64 %660
  %662 = load float*, float** %661, align 8
  %663 = load i32, i32* %15, align 4
  %664 = sub nsw i32 %663, 1
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds float, float* %662, i64 %665
  store float %657, float* %666, align 4
  %667 = load float, float* %20, align 4
  %668 = load float**, float*** %10, align 8
  %669 = load i32, i32* %16, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds float*, float** %668, i64 %670
  %672 = load float*, float** %671, align 8
  %673 = load i32, i32* %13, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds float, float* %672, i64 %674
  store float %667, float* %675, align 4
  br label %676

; <label>:676:                                    ; preds = %638
  %677 = load i32, i32* %16, align 4
  %678 = add nsw i32 %677, 1
  store i32 %678, i32* %16, align 4
  br label %634

; <label>:679:                                    ; preds = %634
  %680 = load i32*, i32** %11, align 8
  %681 = load i32, i32* %15, align 4
  %682 = sub nsw i32 %681, 1
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, i32* %680, i64 %683
  %685 = load i32, i32* %684, align 4
  store i32 %685, i32* %22, align 4
  %686 = load i32*, i32** %11, align 8
  %687 = load i32, i32* %13, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i32, i32* %686, i64 %688
  %690 = load i32, i32* %689, align 4
  %691 = load i32*, i32** %11, align 8
  %692 = load i32, i32* %15, align 4
  %693 = sub nsw i32 %692, 1
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i32, i32* %691, i64 %694
  store i32 %690, i32* %695, align 4
  %696 = load i32, i32* %22, align 4
  %697 = load i32*, i32** %11, align 8
  %698 = load i32, i32* %13, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32, i32* %697, i64 %699
  store i32 %696, i32* %700, align 4
  br label %701

; <label>:701:                                    ; preds = %679, %607
  %702 = load i32, i32* %15, align 4
  %703 = sub nsw i32 %702, 2
  store i32 %703, i32* %12, align 4
  %704 = load i32, i32* %15, align 4
  %705 = sub nsw i32 %704, 1
  store i32 %705, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %706

; <label>:706:                                    ; preds = %875, %701
  %707 = load i32, i32* %17, align 4
  %708 = load i32, i32* %15, align 4
  %709 = icmp slt i32 %707, %708
  br i1 %709, label %710, label %878

; <label>:710:                                    ; preds = %706
  %711 = load i32, i32* %7, align 4
  switch i32 %711, label %843 [
    i32 0, label %712
    i32 2, label %743
    i32 1, label %793
  ]

; <label>:712:                                    ; preds = %710
  %713 = load float**, float*** %10, align 8
  %714 = load i32, i32* %12, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds float*, float** %713, i64 %715
  %717 = load float*, float** %716, align 8
  %718 = load i32, i32* %17, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds float, float* %717, i64 %719
  %721 = load float, float* %720, align 4
  %722 = load float**, float*** %10, align 8
  %723 = load i32, i32* %13, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds float*, float** %722, i64 %724
  %726 = load float*, float** %725, align 8
  %727 = load i32, i32* %17, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds float, float* %726, i64 %728
  %730 = load float, float* %729, align 4
  %731 = fadd float %721, %730
  %732 = fpext float %731 to double
  %733 = fdiv double %732, 2.000000e+00
  %734 = fptrunc double %733 to float
  %735 = load float**, float*** %10, align 8
  %736 = load i32, i32* %12, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds float*, float** %735, i64 %737
  %739 = load float*, float** %738, align 8
  %740 = load i32, i32* %17, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds float, float* %739, i64 %741
  store float %734, float* %742, align 4
  br label %874

; <label>:743:                                    ; preds = %710
  %744 = load float**, float*** %10, align 8
  %745 = load i32, i32* %12, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds float*, float** %744, i64 %746
  %748 = load float*, float** %747, align 8
  %749 = load i32, i32* %17, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds float, float* %748, i64 %750
  %752 = load float, float* %751, align 4
  %753 = load float**, float*** %10, align 8
  %754 = load i32, i32* %13, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds float*, float** %753, i64 %755
  %757 = load float*, float** %756, align 8
  %758 = load i32, i32* %17, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds float, float* %757, i64 %759
  %761 = load float, float* %760, align 4
  %762 = fcmp olt float %752, %761
  br i1 %762, label %763, label %773

; <label>:763:                                    ; preds = %743
  %764 = load float**, float*** %10, align 8
  %765 = load i32, i32* %12, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds float*, float** %764, i64 %766
  %768 = load float*, float** %767, align 8
  %769 = load i32, i32* %17, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds float, float* %768, i64 %770
  %772 = load float, float* %771, align 4
  br label %783

; <label>:773:                                    ; preds = %743
  %774 = load float**, float*** %10, align 8
  %775 = load i32, i32* %13, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds float*, float** %774, i64 %776
  %778 = load float*, float** %777, align 8
  %779 = load i32, i32* %17, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds float, float* %778, i64 %780
  %782 = load float, float* %781, align 4
  br label %783

; <label>:783:                                    ; preds = %773, %763
  %784 = phi float [ %772, %763 ], [ %782, %773 ]
  %785 = load float**, float*** %10, align 8
  %786 = load i32, i32* %12, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds float*, float** %785, i64 %787
  %789 = load float*, float** %788, align 8
  %790 = load i32, i32* %17, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds float, float* %789, i64 %791
  store float %784, float* %792, align 4
  br label %874

; <label>:793:                                    ; preds = %710
  %794 = load float**, float*** %10, align 8
  %795 = load i32, i32* %12, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds float*, float** %794, i64 %796
  %798 = load float*, float** %797, align 8
  %799 = load i32, i32* %17, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds float, float* %798, i64 %800
  %802 = load float, float* %801, align 4
  %803 = load float**, float*** %10, align 8
  %804 = load i32, i32* %13, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds float*, float** %803, i64 %805
  %807 = load float*, float** %806, align 8
  %808 = load i32, i32* %17, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds float, float* %807, i64 %809
  %811 = load float, float* %810, align 4
  %812 = fcmp ogt float %802, %811
  br i1 %812, label %813, label %823

; <label>:813:                                    ; preds = %793
  %814 = load float**, float*** %10, align 8
  %815 = load i32, i32* %12, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds float*, float** %814, i64 %816
  %818 = load float*, float** %817, align 8
  %819 = load i32, i32* %17, align 4
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds float, float* %818, i64 %820
  %822 = load float, float* %821, align 4
  br label %833

; <label>:823:                                    ; preds = %793
  %824 = load float**, float*** %10, align 8
  %825 = load i32, i32* %13, align 4
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds float*, float** %824, i64 %826
  %828 = load float*, float** %827, align 8
  %829 = load i32, i32* %17, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds float, float* %828, i64 %830
  %832 = load float, float* %831, align 4
  br label %833

; <label>:833:                                    ; preds = %823, %813
  %834 = phi float [ %822, %813 ], [ %832, %823 ]
  %835 = load float**, float*** %10, align 8
  %836 = load i32, i32* %12, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds float*, float** %835, i64 %837
  %839 = load float*, float** %838, align 8
  %840 = load i32, i32* %17, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds float, float* %839, i64 %841
  store float %834, float* %842, align 4
  br label %874

; <label>:843:                                    ; preds = %710
  %844 = load float**, float*** %10, align 8
  %845 = load i32, i32* %12, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds float*, float** %844, i64 %846
  %848 = load float*, float** %847, align 8
  %849 = load i32, i32* %17, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds float, float* %848, i64 %850
  %852 = load float, float* %851, align 4
  %853 = load float**, float*** %10, align 8
  %854 = load i32, i32* %13, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds float*, float** %853, i64 %855
  %857 = load float*, float** %856, align 8
  %858 = load i32, i32* %17, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds float, float* %857, i64 %859
  %861 = load float, float* %860, align 4
  %862 = fadd float %852, %861
  %863 = fpext float %862 to double
  %864 = fdiv double %863, 2.000000e+00
  %865 = fptrunc double %864 to float
  %866 = load float**, float*** %10, align 8
  %867 = load i32, i32* %12, align 4
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds float*, float** %866, i64 %868
  %870 = load float*, float** %869, align 8
  %871 = load i32, i32* %17, align 4
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds float, float* %870, i64 %872
  store float %865, float* %873, align 4
  br label %874

; <label>:874:                                    ; preds = %843, %833, %783, %712
  br label %875

; <label>:875:                                    ; preds = %874
  %876 = load i32, i32* %17, align 4
  %877 = add nsw i32 %876, 1
  store i32 %877, i32* %17, align 4
  br label %706

; <label>:878:                                    ; preds = %706
  store i32 0, i32* %17, align 4
  br label %879

; <label>:879:                                    ; preds = %901, %878
  %880 = load i32, i32* %17, align 4
  %881 = load i32, i32* %15, align 4
  %882 = icmp slt i32 %880, %881
  br i1 %882, label %883, label %904

; <label>:883:                                    ; preds = %879
  %884 = load float**, float*** %10, align 8
  %885 = load i32, i32* %12, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds float*, float** %884, i64 %886
  %888 = load float*, float** %887, align 8
  %889 = load i32, i32* %17, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds float, float* %888, i64 %890
  %892 = load float, float* %891, align 4
  %893 = load float**, float*** %10, align 8
  %894 = load i32, i32* %17, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds float*, float** %893, i64 %895
  %897 = load float*, float** %896, align 8
  %898 = load i32, i32* %12, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds float, float* %897, i64 %899
  store float %892, float* %900, align 4
  br label %901

; <label>:901:                                    ; preds = %883
  %902 = load i32, i32* %17, align 4
  %903 = add nsw i32 %902, 1
  store i32 %903, i32* %17, align 4
  br label %879

; <label>:904:                                    ; preds = %879
  %905 = load i32, i32* %15, align 4
  %906 = load i32, i32* %6, align 4
  %907 = add nsw i32 %905, %906
  %908 = sub nsw i32 %907, 2
  %909 = load i32*, i32** %11, align 8
  %910 = load i32, i32* %15, align 4
  %911 = sub nsw i32 %910, 2
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds i32, i32* %909, i64 %912
  store i32 %908, i32* %913, align 4
  br label %914

; <label>:914:                                    ; preds = %904
  %915 = load i32, i32* %15, align 4
  %916 = add nsw i32 %915, -1
  store i32 %916, i32* %15, align 4
  br label %117

; <label>:917:                                    ; preds = %117
  %918 = load float**, float*** %10, align 8
  %919 = bitcast float** %918 to i8**
  %920 = load i32, i32* %6, align 4
  call void @Free2DArray(i8** %919, i32 %920)
  %921 = load i32*, i32** %11, align 8
  %922 = bitcast i32* %921 to i8*
  call void @free(i8* %922) #3
  %923 = load float*, float** %21, align 8
  %924 = bitcast float* %923 to i8*
  call void @free(i8* %924) #3
  %925 = load %struct.phylo_s*, %struct.phylo_s** %9, align 8
  %926 = load %struct.phylo_s**, %struct.phylo_s*** %8, align 8
  store %struct.phylo_s* %925, %struct.phylo_s** %926, align 8
  ret i32 1
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.phylo_s* @AllocPhylo(i32) #0 {
  %2 = alloca %struct.phylo_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phylo_s*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 40
  %10 = call noalias i8* @malloc(i64 %9) #3
  %11 = bitcast i8* %10 to %struct.phylo_s*
  store %struct.phylo_s* %11, %struct.phylo_s** %4, align 8
  %12 = icmp eq %struct.phylo_s* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  store %struct.phylo_s* null, %struct.phylo_s** %2, align 8
  br label %72

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

; <label>:15:                                     ; preds = %67, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %70

; <label>:20:                                     ; preds = %15
  %21 = load %struct.phylo_s*, %struct.phylo_s** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %21, i64 %23
  %25 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %24, i32 0, i32 3
  store float 0.000000e+00, float* %25, align 4
  %26 = load %struct.phylo_s*, %struct.phylo_s** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %26, i64 %28
  %30 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %29, i32 0, i32 5
  store float 0.000000e+00, float* %30, align 4
  %31 = load %struct.phylo_s*, %struct.phylo_s** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %31, i64 %33
  %35 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %34, i32 0, i32 4
  store float 0.000000e+00, float* %35, align 8
  %36 = load %struct.phylo_s*, %struct.phylo_s** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %36, i64 %38
  %40 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load %struct.phylo_s*, %struct.phylo_s** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %41, i64 %43
  %45 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %44, i32 0, i32 2
  store i32 -1, i32* %45, align 8
  %46 = load %struct.phylo_s*, %struct.phylo_s** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %46, i64 %48
  %50 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 4
  %51 = load %struct.phylo_s*, %struct.phylo_s** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %51, i64 %53
  %55 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %54, i32 0, i32 7
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = call noalias i8* @calloc(i64 %57, i64 1) #3
  %59 = load %struct.phylo_s*, %struct.phylo_s** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %59, i64 %61
  %63 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %62, i32 0, i32 6
  store i8* %58, i8** %63, align 8
  %64 = icmp eq i8* %58, null
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %20
  store %struct.phylo_s* null, %struct.phylo_s** %2, align 8
  br label %72

; <label>:66:                                     ; preds = %20
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %15

; <label>:70:                                     ; preds = %15
  %71 = load %struct.phylo_s*, %struct.phylo_s** %4, align 8
  store %struct.phylo_s* %71, %struct.phylo_s** %2, align 8
  br label %72

; <label>:72:                                     ; preds = %70, %65, %13
  %73 = load %struct.phylo_s*, %struct.phylo_s** %2, align 8
  ret %struct.phylo_s* %73
}

declare void @Die(i8*, ...) #1

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @FreePhylo(%struct.phylo_s*, i32) #0 {
  %3 = alloca %struct.phylo_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phylo_s* %0, %struct.phylo_s** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %6
  %12 = load %struct.phylo_s*, %struct.phylo_s** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %12, i64 %14
  %16 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %15, i32 0, i32 6
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* %17) #3
  br label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6

; <label>:21:                                     ; preds = %6
  %22 = load %struct.phylo_s*, %struct.phylo_s** %3, align 8
  %23 = bitcast %struct.phylo_s* %22 to i8*
  call void @free(i8* %23) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MakeDiffMx(i8**, i32, float***) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca float***, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store float*** %2, float**** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call float** @FMX2Alloc(i32 %10, i32 %11)
  store float** %12, float*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

; <label>:13:                                     ; preds = %58, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %61

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %9, align 4
  br label %19

; <label>:19:                                     ; preds = %54, %17
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %57

; <label>:23:                                     ; preds = %19
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call float @PairwiseIdentity(i8* %28, i8* %33)
  %35 = fpext float %34 to double
  %36 = fsub double 1.000000e+00, %35
  %37 = fptrunc double %36 to float
  %38 = load float**, float*** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float*, float** %38, i64 %40
  %42 = load float*, float** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  store float %37, float* %45, align 4
  %46 = load float**, float*** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float*, float** %46, i64 %48
  %50 = load float*, float** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  store float %37, float* %53, align 4
  br label %54

; <label>:54:                                     ; preds = %23
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %19

; <label>:57:                                     ; preds = %19
  br label %58

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %13

; <label>:61:                                     ; preds = %13
  %62 = load float**, float*** %7, align 8
  %63 = load float***, float**** %6, align 8
  store float** %62, float*** %63, align 8
  ret void
}

declare float** @FMX2Alloc(i32, i32) #1

declare float @PairwiseIdentity(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MakeIdentityMx(i8**, i32, float***) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca float***, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store float*** %2, float**** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call float** @FMX2Alloc(i32 %10, i32 %11)
  store float** %12, float*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

; <label>:13:                                     ; preds = %55, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %58

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %9, align 4
  br label %19

; <label>:19:                                     ; preds = %51, %17
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %54

; <label>:23:                                     ; preds = %19
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call float @PairwiseIdentity(i8* %28, i8* %33)
  %35 = load float**, float*** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float*, float** %35, i64 %37
  %39 = load float*, float** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  store float %34, float* %42, align 4
  %43 = load float**, float*** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float*, float** %43, i64 %45
  %47 = load float*, float** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  store float %34, float* %50, align 4
  br label %51

; <label>:51:                                     ; preds = %23
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %19

; <label>:54:                                     ; preds = %19
  br label %55

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %13

; <label>:58:                                     ; preds = %13
  %59 = load float**, float*** %7, align 8
  %60 = load float***, float**** %6, align 8
  store float** %59, float*** %60, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @PrintNewHampshireTree(%struct._IO_FILE*, %struct.aliinfo_s*, %struct.phylo_s*, i32) #0 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.aliinfo_s*, align 8
  %7 = alloca %struct.phylo_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intstack_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.aliinfo_s* %1, %struct.aliinfo_s** %6, align 8
  store %struct.phylo_s* %2, %struct.phylo_s** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = mul nsw i32 2, %13
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 464, i64 %17)
  %19 = bitcast i8* %18 to float*
  store float* %19, float** %11, align 8
  %20 = call %struct.intstack_s* @InitIntStack()
  store %struct.intstack_s* %20, %struct.intstack_s** %9, align 8
  %21 = load %struct.intstack_s*, %struct.intstack_s** %9, align 8
  %22 = load i32, i32* %8, align 4
  call void @PushIntStack(%struct.intstack_s* %21, i32 %22)
  store i32 0, i32* %12, align 4
  br label %23

; <label>:23:                                     ; preds = %149, %4
  %24 = load %struct.intstack_s*, %struct.intstack_s** %9, align 8
  %25 = call i32 @PopIntStack(%struct.intstack_s* %24, i32* %10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %150

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %54

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %36 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %35)
  br label %37

; <label>:37:                                     ; preds = %34, %31
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %39 = load %struct.aliinfo_s*, %struct.aliinfo_s** %6, align 8
  %40 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %39, i32 0, i32 6
  %41 = load %struct.seqinfo_s*, %struct.seqinfo_s** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %41, i64 %43
  %45 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %44, i32 0, i32 1
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %45, i32 0, i32 0
  %47 = load float*, float** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fpext float %51 to double
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %46, double %52)
  store i32 1, i32* %12, align 4
  br label %149

; <label>:54:                                     ; preds = %27
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 2, %56
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %128

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %64 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %63)
  br label %65

; <label>:65:                                     ; preds = %62, %59
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %67 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %66)
  %68 = load %struct.intstack_s*, %struct.intstack_s** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %69, %70
  call void @PushIntStack(%struct.intstack_s* %68, i32 %71)
  %72 = load %struct.intstack_s*, %struct.intstack_s** %9, align 8
  %73 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %73, i64 %77
  %79 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  call void @PushIntStack(%struct.intstack_s* %72, i32 %80)
  %81 = load %struct.intstack_s*, %struct.intstack_s** %9, align 8
  %82 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %82, i64 %86
  %88 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  call void @PushIntStack(%struct.intstack_s* %81, i32 %89)
  %90 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %90, i64 %94
  %96 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %95, i32 0, i32 5
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %11, align 8
  %99 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %99, i64 %103
  %105 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %98, i64 %107
  store float %97, float* %108, align 4
  %109 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %109, i64 %113
  %115 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %114, i32 0, i32 4
  %116 = load float, float* %115, align 8
  %117 = load float*, float** %11, align 8
  %118 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %118, i64 %122
  %124 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %117, i64 %126
  store float %116, float* %127, align 4
  store i32 0, i32* %12, align 4
  br label %148

; <label>:128:                                    ; preds = %54
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %8, align 4
  %131 = mul nsw i32 2, %130
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %136

; <label>:133:                                    ; preds = %128
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  br label %147

; <label>:136:                                    ; preds = %128
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %138 = load float*, float** %11, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %8, align 4
  %141 = sub nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %138, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fpext float %144 to double
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double %145)
  br label %147

; <label>:147:                                    ; preds = %136, %133
  store i32 1, i32* %12, align 4
  br label %148

; <label>:148:                                    ; preds = %147, %65
  br label %149

; <label>:149:                                    ; preds = %148, %37
  br label %23

; <label>:150:                                    ; preds = %23
  %151 = load %struct.intstack_s*, %struct.intstack_s** %9, align 8
  %152 = call i32 @FreeIntStack(%struct.intstack_s* %151)
  %153 = load float*, float** %11, align 8
  %154 = bitcast float* %153 to i8*
  call void @free(i8* %154) #3
  ret void
}

declare %struct.intstack_s* @InitIntStack() #1

declare void @PushIntStack(%struct.intstack_s*, i32) #1

declare i32 @PopIntStack(%struct.intstack_s*, i32*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @FreeIntStack(%struct.intstack_s*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @PrintPhylo(%struct._IO_FILE*, %struct.aliinfo_s*, %struct.phylo_s*, i32) #0 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.aliinfo_s*, align 8
  %7 = alloca %struct.phylo_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.aliinfo_s* %1, %struct.aliinfo_s** %6, align 8
  store %struct.phylo_s* %2, %struct.phylo_s** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %175, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %178

; <label>:15:                                     ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i32 %17, i32 %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %23 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %23, i64 %25
  %27 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %31, i64 %33
  %35 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 %30, i32 %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %39 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %39, i64 %41
  %43 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %15
  %48 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %48, i64 %50
  %52 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %53, %54
  br label %63

; <label>:56:                                     ; preds = %15
  %57 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %57, i64 %59
  %61 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  br label %63

; <label>:63:                                     ; preds = %56, %47
  %64 = phi i32 [ %55, %47 ], [ %62, %56 ]
  %65 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %65, i64 %67
  %69 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %87

; <label>:73:                                     ; preds = %63
  %74 = load %struct.aliinfo_s*, %struct.aliinfo_s** %6, align 8
  %75 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %74, i32 0, i32 6
  %76 = load %struct.seqinfo_s*, %struct.seqinfo_s** %75, align 8
  %77 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %77, i64 %79
  %81 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %76, i64 %83
  %85 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %84, i32 0, i32 1
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %85, i32 0, i32 0
  br label %88

; <label>:87:                                     ; preds = %63
  br label %88

; <label>:88:                                     ; preds = %87, %73
  %89 = phi i8* [ %86, %73 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %87 ]
  %90 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %90, i64 %92
  %94 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %93, i32 0, i32 4
  %95 = load float, float* %94, align 8
  %96 = fpext float %95 to double
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 %64, i8* %89, double %96)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %99 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %99, i64 %101
  %103 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %116

; <label>:107:                                    ; preds = %88
  %108 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %108, i64 %110
  %112 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  br label %123

; <label>:116:                                    ; preds = %88
  %117 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %117, i64 %119
  %121 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  br label %123

; <label>:123:                                    ; preds = %116, %107
  %124 = phi i32 [ %115, %107 ], [ %122, %116 ]
  %125 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %125, i64 %127
  %129 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %147

; <label>:133:                                    ; preds = %123
  %134 = load %struct.aliinfo_s*, %struct.aliinfo_s** %6, align 8
  %135 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %134, i32 0, i32 6
  %136 = load %struct.seqinfo_s*, %struct.seqinfo_s** %135, align 8
  %137 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %137, i64 %139
  %141 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %136, i64 %143
  %145 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %144, i32 0, i32 1
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %145, i32 0, i32 0
  br label %148

; <label>:147:                                    ; preds = %123
  br label %148

; <label>:148:                                    ; preds = %147, %133
  %149 = phi i8* [ %146, %133 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %147 ]
  %150 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %150, i64 %152
  %154 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %153, i32 0, i32 5
  %155 = load float, float* %154, align 4
  %156 = fpext float %155 to double
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 %124, i8* %149, double %156)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %159 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %159, i64 %161
  %163 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %162, i32 0, i32 3
  %164 = load float, float* %163, align 4
  %165 = fpext float %164 to double
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), double %165)
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %168 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %168, i64 %170
  %172 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i32 %173)
  br label %175

; <label>:175:                                    ; preds = %148
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %10

; <label>:178:                                    ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
