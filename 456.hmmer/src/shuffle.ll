; ModuleID = 'shuffle.c'
source_filename = "shuffle.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"shuffle.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"hey, you didn't end on s_f.\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"hey, pos (%d) != len (%d).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @StrShuffle(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %8, %9
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strcpy(i8* %12, i8* %13) #5
  br label %15

; <label>:15:                                     ; preds = %11, %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* %16) #6
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %19

; <label>:19:                                     ; preds = %49, %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %52

; <label>:22:                                     ; preds = %19
  %23 = call double @sre_random()
  %24 = load i32, i32* %5, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double %23, %25
  %27 = fptosi double %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %7, align 1
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 %38, i8* %42, align 1
  %43 = load i8, i8* %7, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %43, i8* %48, align 1
  br label %49

; <label>:49:                                     ; preds = %22
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %19

; <label>:52:                                     ; preds = %19
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare double @sre_random() #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @StrDPShuffle(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca [26 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strlen(i8* %18) #6
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %21

; <label>:21:                                     ; preds = %42, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %45

; <label>:25:                                     ; preds = %21
  %26 = call i16** @__ctype_b_loc() #7
  %27 = load i16*, i16** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %27, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 1024
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

; <label>:40:                                     ; preds = %25
  store i32 0, i32* %3, align 4
  br label %459

; <label>:41:                                     ; preds = %25
  br label %42

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %21

; <label>:45:                                     ; preds = %21
  %46 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 127, i64 208)
  %47 = bitcast i8* %46 to i8**
  store i8** %47, i8*** %10, align 8
  %48 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i64 104)
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %50

; <label>:50:                                     ; preds = %67, %45
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 26
  br i1 %52, label %53, label %70

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = mul i64 1, %56
  %58 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 131, i64 %57)
  %59 = load i8**, i8*** %10, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %58, i8** %62, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 0, i32* %66, align 4
  br label %67

; <label>:67:                                     ; preds = %53
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %50

; <label>:70:                                     ; preds = %50
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = call i32 @toupper(i32 %74) #6
  %76 = sub nsw i32 %75, 65
  store i32 %76, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %77

; <label>:77:                                     ; preds = %111, %70
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %114

; <label>:81:                                     ; preds = %77
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 @toupper(i32 %87) #6
  %89 = sub nsw i32 %88, 65
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = trunc i32 %90 to i8
  %92 = load i8**, i8*** %10, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %96, i64 %102
  store i8 %91, i8* %103, align 1
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %8, align 4
  br label %111

; <label>:111:                                    ; preds = %81
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %77

; <label>:114:                                    ; preds = %77
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 @toupper(i32 %121) #6
  %123 = sub nsw i32 %122, 65
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %14, align 1
  store i32 0, i32* %17, align 4
  br label %125

; <label>:125:                                    ; preds = %296, %114
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  br i1 %128, label %129, label %297

; <label>:129:                                    ; preds = %125
  store i32 0, i32* %8, align 4
  br label %130

; <label>:130:                                    ; preds = %203, %129
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 26
  br i1 %132, label %133, label %206

; <label>:133:                                    ; preds = %130
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

; <label>:140:                                    ; preds = %133
  %141 = load i32, i32* %8, align 4
  %142 = load i8, i8* %14, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %146

; <label>:145:                                    ; preds = %140, %133
  br label %203

; <label>:146:                                    ; preds = %140
  %147 = call double @sre_random()
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = sitofp i32 %152 to double
  %154 = fmul double %147, %153
  %155 = fptosi double %154 to i32
  store i32 %155, i32* %7, align 4
  %156 = load i8**, i8*** %10, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  store i32 %165, i32* %9, align 4
  %166 = load i8**, i8*** %10, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %170, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = load i8**, i8*** %10, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 %179, i8* %187, align 1
  %188 = load i32, i32* %9, align 4
  %189 = trunc i32 %188 to i8
  %190 = load i8**, i8*** %10, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = load i32*, i32** %11, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %194, i64 %201
  store i8 %189, i8* %202, align 1
  br label %203

; <label>:203:                                    ; preds = %146, %145
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %130

; <label>:206:                                    ; preds = %130
  store i32 0, i32* %8, align 4
  br label %207

; <label>:207:                                    ; preds = %214, %206
  %208 = load i32, i32* %8, align 4
  %209 = icmp slt i32 %208, 26
  br i1 %209, label %210, label %217

; <label>:210:                                    ; preds = %207
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [26 x i8], [26 x i8]* %15, i64 0, i64 %212
  store i8 0, i8* %213, align 1
  br label %214

; <label>:214:                                    ; preds = %210
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  br label %207

; <label>:217:                                    ; preds = %207
  store i32 1, i32* %16, align 4
  %218 = load i8, i8* %14, align 1
  %219 = sext i8 %218 to i32
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [26 x i8], [26 x i8]* %15, i64 0, i64 %220
  store i8 1, i8* %221, align 1
  br label %222

; <label>:222:                                    ; preds = %266, %217
  %223 = load i32, i32* %16, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %267

; <label>:225:                                    ; preds = %222
  store i32 0, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %226

; <label>:226:                                    ; preds = %263, %225
  %227 = load i32, i32* %8, align 4
  %228 = icmp slt i32 %227, 26
  br i1 %228, label %229, label %266

; <label>:229:                                    ; preds = %226
  %230 = load i8**, i8*** %10, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  %234 = load i8*, i8** %233, align 8
  %235 = load i32*, i32** %11, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %234, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  store i32 %244, i32* %9, align 4
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [26 x i8], [26 x i8]* %15, i64 0, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %262

; <label>:251:                                    ; preds = %229
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [26 x i8], [26 x i8]* %15, i64 0, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %262

; <label>:258:                                    ; preds = %251
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [26 x i8], [26 x i8]* %15, i64 0, i64 %260
  store i8 1, i8* %261, align 1
  store i32 1, i32* %16, align 4
  br label %262

; <label>:262:                                    ; preds = %258, %251, %229
  br label %263

; <label>:263:                                    ; preds = %262
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %226

; <label>:266:                                    ; preds = %226
  br label %222

; <label>:267:                                    ; preds = %222
  store i32 1, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %268

; <label>:268:                                    ; preds = %293, %267
  %269 = load i32, i32* %8, align 4
  %270 = icmp slt i32 %269, 26
  br i1 %270, label %271, label %296

; <label>:271:                                    ; preds = %268
  %272 = load i32*, i32** %11, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %283, label %278

; <label>:278:                                    ; preds = %271
  %279 = load i32, i32* %8, align 4
  %280 = load i8, i8* %14, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %284

; <label>:283:                                    ; preds = %278, %271
  br label %293

; <label>:284:                                    ; preds = %278
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [26 x i8], [26 x i8]* %15, i64 0, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

; <label>:291:                                    ; preds = %284
  store i32 0, i32* %17, align 4
  br label %296

; <label>:292:                                    ; preds = %284
  br label %293

; <label>:293:                                    ; preds = %292, %283
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %8, align 4
  br label %268

; <label>:296:                                    ; preds = %291, %268
  br label %125

; <label>:297:                                    ; preds = %125
  store i32 0, i32* %8, align 4
  br label %298

; <label>:298:                                    ; preds = %360, %297
  %299 = load i32, i32* %8, align 4
  %300 = icmp slt i32 %299, 26
  br i1 %300, label %301, label %363

; <label>:301:                                    ; preds = %298
  %302 = load i32*, i32** %11, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = sub nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %308

; <label>:308:                                    ; preds = %356, %301
  %309 = load i32, i32* %13, align 4
  %310 = icmp sgt i32 %309, 1
  br i1 %310, label %311, label %359

; <label>:311:                                    ; preds = %308
  %312 = call double @sre_random()
  %313 = load i32, i32* %13, align 4
  %314 = sitofp i32 %313 to double
  %315 = fmul double %312, %314
  %316 = fptosi double %315 to i32
  store i32 %316, i32* %7, align 4
  %317 = load i8**, i8*** %10, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8*, i8** %317, i64 %319
  %321 = load i8*, i8** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  store i32 %326, i32* %9, align 4
  %327 = load i8**, i8*** %10, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %327, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = load i32, i32* %13, align 4
  %333 = sub nsw i32 %332, 1
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %331, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = load i8**, i8*** %10, align 8
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8*, i8** %337, i64 %339
  %341 = load i8*, i8** %340, align 8
  %342 = load i32, i32* %7, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  store i8 %336, i8* %344, align 1
  %345 = load i32, i32* %9, align 4
  %346 = trunc i32 %345 to i8
  %347 = load i8**, i8*** %10, align 8
  %348 = load i32, i32* %8, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  %351 = load i8*, i8** %350, align 8
  %352 = load i32, i32* %13, align 4
  %353 = sub nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %351, i64 %354
  store i8 %346, i8* %355, align 1
  br label %356

; <label>:356:                                    ; preds = %311
  %357 = load i32, i32* %13, align 4
  %358 = add nsw i32 %357, -1
  store i32 %358, i32* %13, align 4
  br label %308

; <label>:359:                                    ; preds = %308
  br label %360

; <label>:360:                                    ; preds = %359
  %361 = load i32, i32* %8, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %8, align 4
  br label %298

; <label>:363:                                    ; preds = %298
  %364 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 240, i64 104)
  %365 = bitcast i8* %364 to i32*
  store i32* %365, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %366

; <label>:366:                                    ; preds = %374, %363
  %367 = load i32, i32* %8, align 4
  %368 = icmp slt i32 %367, 26
  br i1 %368, label %369, label %377

; <label>:369:                                    ; preds = %366
  %370 = load i32*, i32** %12, align 8
  %371 = load i32, i32* %8, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  store i32 0, i32* %373, align 4
  br label %374

; <label>:374:                                    ; preds = %369
  %375 = load i32, i32* %8, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %8, align 4
  br label %366

; <label>:377:                                    ; preds = %366
  store i32 0, i32* %7, align 4
  %378 = load i8*, i8** %5, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 0
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  %382 = call i32 @toupper(i32 %381) #6
  %383 = sub nsw i32 %382, 65
  store i32 %383, i32* %8, align 4
  br label %384

; <label>:384:                                    ; preds = %377, %426
  %385 = load i32, i32* %8, align 4
  %386 = add nsw i32 65, %385
  %387 = trunc i32 %386 to i8
  %388 = load i8*, i8** %4, align 8
  %389 = load i32, i32* %7, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %7, align 4
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds i8, i8* %388, i64 %391
  store i8 %387, i8* %392, align 1
  %393 = load i8**, i8*** %10, align 8
  %394 = load i32, i32* %8, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8*, i8** %393, i64 %395
  %397 = load i8*, i8** %396, align 8
  %398 = load i32*, i32** %12, align 8
  %399 = load i32, i32* %8, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %397, i64 %403
  %405 = load i8, i8* %404, align 1
  %406 = sext i8 %405 to i32
  store i32 %406, i32* %9, align 4
  %407 = load i32*, i32** %12, align 8
  %408 = load i32, i32* %8, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %410, align 4
  %413 = load i32, i32* %9, align 4
  store i32 %413, i32* %8, align 4
  %414 = load i32*, i32** %12, align 8
  %415 = load i32, i32* %8, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load i32*, i32** %11, align 8
  %420 = load i32, i32* %8, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = icmp eq i32 %418, %423
  br i1 %424, label %425, label %426

; <label>:425:                                    ; preds = %384
  br label %427

; <label>:426:                                    ; preds = %384
  br label %384

; <label>:427:                                    ; preds = %425
  %428 = load i8, i8* %14, align 1
  %429 = sext i8 %428 to i32
  %430 = add nsw i32 65, %429
  %431 = trunc i32 %430 to i8
  %432 = load i8*, i8** %4, align 8
  %433 = load i32, i32* %7, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %7, align 4
  %435 = sext i32 %433 to i64
  %436 = getelementptr inbounds i8, i8* %432, i64 %435
  store i8 %431, i8* %436, align 1
  %437 = load i8*, i8** %4, align 8
  %438 = load i32, i32* %7, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %437, i64 %439
  store i8 0, i8* %440, align 1
  %441 = load i32, i32* %8, align 4
  %442 = load i8, i8* %14, align 1
  %443 = sext i8 %442 to i32
  %444 = icmp ne i32 %441, %443
  br i1 %444, label %445, label %446

; <label>:445:                                    ; preds = %427
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %446

; <label>:446:                                    ; preds = %445, %427
  %447 = load i32, i32* %7, align 4
  %448 = load i32, i32* %6, align 4
  %449 = icmp ne i32 %447, %448
  br i1 %449, label %450, label %453

; <label>:450:                                    ; preds = %446
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* %6, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 %451, i32 %452)
  br label %453

; <label>:453:                                    ; preds = %450, %446
  %454 = load i8**, i8*** %10, align 8
  call void @Free2DArray(i8** %454, i32 26)
  %455 = load i32*, i32** %11, align 8
  %456 = bitcast i32* %455 to i8*
  call void @free(i8* %456) #5
  %457 = load i32*, i32** %12, align 8
  %458 = bitcast i32* %457 to i8*
  call void @free(i8* %458) #5
  store i32 1, i32* %3, align 4
  br label %459

; <label>:459:                                    ; preds = %453, %40
  %460 = load i32, i32* %3, align 4
  ret i32 %460
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #2

declare void @Die(i8*, ...) #3

declare void @Free2DArray(i8**, i32) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @StrMarkov0(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [26 x float], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9) #6
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %33, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %36

; <label>:16:                                     ; preds = %12
  %17 = call i16** @__ctype_b_loc() #7
  %18 = load i16*, i16** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %18, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 1024
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %16
  store i32 0, i32* %3, align 4
  br label %83

; <label>:32:                                     ; preds = %16
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %12

; <label>:36:                                     ; preds = %12
  %37 = getelementptr inbounds [26 x float], [26 x float]* %8, i32 0, i32 0
  call void @FSet(float* %37, i32 26, float 0.000000e+00)
  store i32 0, i32* %7, align 4
  br label %38

; <label>:38:                                     ; preds = %57, %36
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 @toupper(i32 %48) #6
  %50 = sub nsw i32 %49, 65
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [26 x float], [26 x float]* %8, i64 0, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fpext float %53 to double
  %55 = fadd double %54, 1.000000e+00
  %56 = fptrunc double %55 to float
  store float %56, float* %52, align 4
  br label %57

; <label>:57:                                     ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %38

; <label>:60:                                     ; preds = %38
  %61 = getelementptr inbounds [26 x float], [26 x float]* %8, i32 0, i32 0
  call void @FNorm(float* %61, i32 26)
  store i32 0, i32* %7, align 4
  br label %62

; <label>:62:                                     ; preds = %75, %60
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %78

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds [26 x float], [26 x float]* %8, i32 0, i32 0
  %68 = call i32 @FChoose(float* %67, i32 26)
  %69 = add nsw i32 %68, 65
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 %70, i8* %74, align 1
  br label %75

; <label>:75:                                     ; preds = %66
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %62

; <label>:78:                                     ; preds = %62
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  store i32 1, i32* %3, align 4
  br label %83

; <label>:83:                                     ; preds = %78, %31
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare void @FSet(float*, i32, float) #3

declare void @FNorm(float*, i32) #3

declare i32 @FChoose(float*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @StrMarkov1(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [26 x [26 x float]], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12) #6
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

; <label>:15:                                     ; preds = %36, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

; <label>:19:                                     ; preds = %15
  %20 = call i16** @__ctype_b_loc() #7
  %21 = load i16*, i16** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %21, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 1024
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %19
  store i32 0, i32* %3, align 4
  br label %130

; <label>:35:                                     ; preds = %19
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %15

; <label>:39:                                     ; preds = %15
  store i32 0, i32* %8, align 4
  br label %40

; <label>:40:                                     ; preds = %48, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 26
  br i1 %42, label %43, label %51

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* %11, i64 0, i64 %45
  %47 = getelementptr inbounds [26 x float], [26 x float]* %46, i32 0, i32 0
  call void @FSet(float* %47, i32 26, float 0.000000e+00)
  br label %48

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %40

; <label>:51:                                     ; preds = %40
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 @toupper(i32 %55) #6
  %57 = sub nsw i32 %56, 65
  store i32 %57, i32* %8, align 4
  store i32 %57, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %58

; <label>:58:                                     ; preds = %82, %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %85

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 @toupper(i32 %68) #6
  %70 = sub nsw i32 %69, 65
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* %11, i64 0, i64 %72
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [26 x float], [26 x float]* %73, i64 0, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  %79 = fadd double %78, 1.000000e+00
  %80 = fptrunc double %79 to float
  store float %80, float* %76, align 4
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %8, align 4
  br label %82

; <label>:82:                                     ; preds = %62
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %58

; <label>:85:                                     ; preds = %58
  store i32 0, i32* %8, align 4
  br label %86

; <label>:86:                                     ; preds = %94, %85
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 26
  br i1 %88, label %89, label %97

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* %11, i64 0, i64 %91
  %93 = getelementptr inbounds [26 x float], [26 x float]* %92, i32 0, i32 0
  call void @FNorm(float* %93, i32 26)
  br label %94

; <label>:94:                                     ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %86

; <label>:97:                                     ; preds = %86
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 65
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 %101, i8* %103, align 1
  store i32 1, i32* %7, align 4
  br label %104

; <label>:104:                                    ; preds = %122, %97
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %125

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* %11, i64 0, i64 %110
  %112 = getelementptr inbounds [26 x float], [26 x float]* %111, i32 0, i32 0
  %113 = call i32 @FChoose(float* %112, i32 26)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 65
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 %116, i8* %120, align 1
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %8, align 4
  br label %122

; <label>:122:                                    ; preds = %108
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %104

; <label>:125:                                    ; preds = %104
  %126 = load i8*, i8** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 0, i8* %129, align 1
  store i32 1, i32* %3, align 4
  br label %130

; <label>:130:                                    ; preds = %125, %34
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @StrReverse(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

; <label>:11:                                     ; preds = %42, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 2
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %45

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %7, align 1
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %30, i64 %35
  store i8 %29, i8* %36, align 1
  %37 = load i8, i8* %7, align 1
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 %37, i8* %41, align 1
  br label %42

; <label>:42:                                     ; preds = %16
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %11

; <label>:45:                                     ; preds = %11
  %46 = load i32, i32* %5, align 4
  %47 = srem i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 %54, i8* %58, align 1
  br label %59

; <label>:59:                                     ; preds = %49, %45
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @StrRegionalShuffle(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %12, %13
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @strcpy(i8* %16, i8* %17) #5
  br label %19

; <label>:19:                                     ; preds = %15, %3
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20) #6
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %23

; <label>:23:                                     ; preds = %82, %19
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %86

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  br label %43

; <label>:38:                                     ; preds = %27
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  br label %43

; <label>:43:                                     ; preds = %38, %35
  %44 = phi i32 [ %37, %35 ], [ %42, %38 ]
  store i32 %44, i32* %11, align 4
  br label %45

; <label>:45:                                     ; preds = %78, %43
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %81

; <label>:49:                                     ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = call double @sre_random()
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sitofp i32 %54 to double
  %56 = fmul double %51, %55
  %57 = fptosi double %56 to i32
  %58 = add nsw i32 %50, %57
  store i32 %58, i32* %9, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %8, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %68, i8* %72, align 1
  %73 = load i8, i8* %8, align 1
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %73, i8* %77, align 1
  br label %78

; <label>:78:                                     ; preds = %49
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %11, align 4
  br label %45

; <label>:81:                                     ; preds = %45
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %23

; <label>:86:                                     ; preds = %23
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @AlignmentShuffle(i8**, i8**, i32, i32) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp ne i8** %12, %13
  br i1 %14, label %15, label %36

; <label>:15:                                     ; preds = %4
  store i32 0, i32* %9, align 4
  br label %16

; <label>:16:                                     ; preds = %32, %15
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strcpy(i8* %25, i8* %30) #5
  br label %32

; <label>:32:                                     ; preds = %20
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %16

; <label>:35:                                     ; preds = %16
  br label %36

; <label>:36:                                     ; preds = %35, %4
  store i32 0, i32* %9, align 4
  br label %37

; <label>:37:                                     ; preds = %50, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

; <label>:41:                                     ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

; <label>:50:                                     ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %37

; <label>:53:                                     ; preds = %37
  br label %54

; <label>:54:                                     ; preds = %109, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %112

; <label>:57:                                     ; preds = %54
  %58 = call double @sre_random()
  %59 = load i32, i32* %8, align 4
  %60 = sitofp i32 %59 to double
  %61 = fmul double %58, %60
  %62 = fptosi double %61 to i32
  store i32 %62, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %63

; <label>:63:                                     ; preds = %105, %57
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %108

; <label>:67:                                     ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %11, align 1
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 %86, i8* %94, align 1
  %95 = load i8, i8* %11, align 1
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 %95, i8* %104, align 1
  br label %105

; <label>:105:                                    ; preds = %67
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %63

; <label>:108:                                    ; preds = %63
  br label %109

; <label>:109:                                    ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %8, align 4
  br label %54

; <label>:112:                                    ; preds = %54
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @AlignmentBootstrap(i8**, i8**, i32, i32) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %48, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %51

; <label>:16:                                     ; preds = %12
  %17 = call double @sre_random()
  %18 = load i32, i32* %8, align 4
  %19 = sitofp i32 %18 to double
  %20 = fmul double %17, %19
  %21 = fptosi double %20 to i32
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

; <label>:22:                                     ; preds = %44, %16
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

; <label>:26:                                     ; preds = %22
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %35, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %26
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %22

; <label>:47:                                     ; preds = %22
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %12

; <label>:51:                                     ; preds = %12
  store i32 0, i32* %11, align 4
  br label %52

; <label>:52:                                     ; preds = %65, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %68

; <label>:56:                                     ; preds = %52
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 0, i8* %64, align 1
  br label %65

; <label>:65:                                     ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %52

; <label>:68:                                     ; preds = %52
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @QRNAShuffle(i8*, i8*, i8*, i8*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %21, %22
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strcpy(i8* %25, i8* %26) #5
  br label %28

; <label>:28:                                     ; preds = %24, %4
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @strcpy(i8* %33, i8* %34) #5
  br label %36

; <label>:36:                                     ; preds = %32, %28
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strlen(i8* %37) #6
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 572, i64 %42)
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 573, i64 %47)
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %11, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 574, i64 %52)
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %55

; <label>:55:                                     ; preds = %328, %36
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %331

; <label>:59:                                     ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 32
  br i1 %66, label %99, label %67

; <label>:67:                                     ; preds = %59
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %99, label %75

; <label>:75:                                     ; preds = %67
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 95
  br i1 %82, label %99, label %83

; <label>:83:                                     ; preds = %75
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 45
  br i1 %90, label %99, label %91

; <label>:91:                                     ; preds = %83
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 126
  br i1 %98, label %99, label %140

; <label>:99:                                     ; preds = %91, %83, %75, %67, %59
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 32
  br i1 %106, label %139, label %107

; <label>:107:                                    ; preds = %99
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 46
  br i1 %114, label %139, label %115

; <label>:115:                                    ; preds = %107
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 95
  br i1 %122, label %139, label %123

; <label>:123:                                    ; preds = %115
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 45
  br i1 %130, label %139, label %131

; <label>:131:                                    ; preds = %123
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 126
  br i1 %138, label %139, label %140

; <label>:139:                                    ; preds = %131, %123, %115, %107, %99
  br label %328

; <label>:140:                                    ; preds = %131, %91
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 32
  br i1 %147, label %228, label %148

; <label>:148:                                    ; preds = %140
  %149 = load i8*, i8** %7, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 46
  br i1 %155, label %228, label %156

; <label>:156:                                    ; preds = %148
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 95
  br i1 %163, label %228, label %164

; <label>:164:                                    ; preds = %156
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 45
  br i1 %171, label %228, label %172

; <label>:172:                                    ; preds = %164
  %173 = load i8*, i8** %7, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 126
  br i1 %179, label %228, label %180

; <label>:180:                                    ; preds = %172
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 32
  br i1 %187, label %228, label %188

; <label>:188:                                    ; preds = %180
  %189 = load i8*, i8** %8, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 46
  br i1 %195, label %228, label %196

; <label>:196:                                    ; preds = %188
  %197 = load i8*, i8** %8, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 95
  br i1 %203, label %228, label %204

; <label>:204:                                    ; preds = %196
  %205 = load i8*, i8** %8, align 8
  %206 = load i32, i32* %16, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 45
  br i1 %211, label %228, label %212

; <label>:212:                                    ; preds = %204
  %213 = load i8*, i8** %8, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 126
  br i1 %219, label %228, label %220

; <label>:220:                                    ; preds = %212
  %221 = load i32, i32* %16, align 4
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %326

; <label>:228:                                    ; preds = %212, %204, %196, %188, %180, %172, %164, %156, %148, %140
  %229 = load i8*, i8** %7, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 32
  br i1 %235, label %268, label %236

; <label>:236:                                    ; preds = %228
  %237 = load i8*, i8** %7, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 46
  br i1 %243, label %268, label %244

; <label>:244:                                    ; preds = %236
  %245 = load i8*, i8** %7, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 95
  br i1 %251, label %268, label %252

; <label>:252:                                    ; preds = %244
  %253 = load i8*, i8** %7, align 8
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 45
  br i1 %259, label %268, label %260

; <label>:260:                                    ; preds = %252
  %261 = load i8*, i8** %7, align 8
  %262 = load i32, i32* %16, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 126
  br i1 %267, label %268, label %276

; <label>:268:                                    ; preds = %260, %252, %244, %236, %228
  %269 = load i32, i32* %16, align 4
  %270 = load i32*, i32** %12, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  store i32 %269, i32* %273, align 4
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  br label %325

; <label>:276:                                    ; preds = %260
  %277 = load i8*, i8** %8, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 32
  br i1 %283, label %316, label %284

; <label>:284:                                    ; preds = %276
  %285 = load i8*, i8** %8, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 46
  br i1 %291, label %316, label %292

; <label>:292:                                    ; preds = %284
  %293 = load i8*, i8** %8, align 8
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 95
  br i1 %299, label %316, label %300

; <label>:300:                                    ; preds = %292
  %301 = load i8*, i8** %8, align 8
  %302 = load i32, i32* %16, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp eq i32 %306, 45
  br i1 %307, label %316, label %308

; <label>:308:                                    ; preds = %300
  %309 = load i8*, i8** %8, align 8
  %310 = load i32, i32* %16, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %309, i64 %311
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp eq i32 %314, 126
  br i1 %315, label %316, label %324

; <label>:316:                                    ; preds = %308, %300, %292, %284, %276
  %317 = load i32, i32* %16, align 4
  %318 = load i32*, i32** %11, align 8
  %319 = load i32, i32* %14, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %317, i32* %321, align 4
  %322 = load i32, i32* %14, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %14, align 4
  br label %324

; <label>:324:                                    ; preds = %316, %308
  br label %325

; <label>:325:                                    ; preds = %324, %268
  br label %326

; <label>:326:                                    ; preds = %325, %220
  br label %327

; <label>:327:                                    ; preds = %326
  br label %328

; <label>:328:                                    ; preds = %327, %139
  %329 = load i32, i32* %16, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %16, align 4
  br label %55

; <label>:331:                                    ; preds = %55
  br label %332

; <label>:332:                                    ; preds = %440, %331
  %333 = load i32, i32* %13, align 4
  %334 = icmp sgt i32 %333, 1
  br i1 %334, label %335, label %443

; <label>:335:                                    ; preds = %332
  %336 = call double @sre_random()
  %337 = load i32, i32* %13, align 4
  %338 = sitofp i32 %337 to double
  %339 = fmul double %336, %338
  %340 = fptosi double %339 to i32
  store i32 %340, i32* %17, align 4
  %341 = load i8*, i8** %5, align 8
  %342 = load i32*, i32** %10, align 8
  %343 = load i32, i32* %17, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %341, i64 %347
  %349 = load i8, i8* %348, align 1
  store i8 %349, i8* %19, align 1
  %350 = load i8*, i8** %6, align 8
  %351 = load i32*, i32** %10, align 8
  %352 = load i32, i32* %17, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %350, i64 %356
  %358 = load i8, i8* %357, align 1
  store i8 %358, i8* %20, align 1
  %359 = load i32*, i32** %10, align 8
  %360 = load i32, i32* %17, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %18, align 4
  %364 = load i8*, i8** %5, align 8
  %365 = load i32*, i32** %10, align 8
  %366 = load i32, i32* %13, align 4
  %367 = sub nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %364, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = load i8*, i8** %5, align 8
  %375 = load i32*, i32** %10, align 8
  %376 = load i32, i32* %17, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %374, i64 %380
  store i8 %373, i8* %381, align 1
  %382 = load i8*, i8** %6, align 8
  %383 = load i32*, i32** %10, align 8
  %384 = load i32, i32* %13, align 4
  %385 = sub nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %382, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = load i8*, i8** %6, align 8
  %393 = load i32*, i32** %10, align 8
  %394 = load i32, i32* %17, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %392, i64 %398
  store i8 %391, i8* %399, align 1
  %400 = load i32*, i32** %10, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sub nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %400, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load i32*, i32** %10, align 8
  %407 = load i32, i32* %17, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  store i32 %405, i32* %409, align 4
  %410 = load i8, i8* %19, align 1
  %411 = load i8*, i8** %5, align 8
  %412 = load i32*, i32** %10, align 8
  %413 = load i32, i32* %13, align 4
  %414 = sub nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %412, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8, i8* %411, i64 %418
  store i8 %410, i8* %419, align 1
  %420 = load i8, i8* %20, align 1
  %421 = load i8*, i8** %6, align 8
  %422 = load i32*, i32** %10, align 8
  %423 = load i32, i32* %13, align 4
  %424 = sub nsw i32 %423, 1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %421, i64 %428
  store i8 %420, i8* %429, align 1
  %430 = load i32*, i32** %10, align 8
  %431 = load i32, i32* %13, align 4
  %432 = sub nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = load i32*, i32** %10, align 8
  %437 = load i32, i32* %17, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  store i32 %435, i32* %439, align 4
  br label %440

; <label>:440:                                    ; preds = %335
  %441 = load i32, i32* %13, align 4
  %442 = add nsw i32 %441, -1
  store i32 %442, i32* %13, align 4
  br label %332

; <label>:443:                                    ; preds = %332
  br label %444

; <label>:444:                                    ; preds = %548, %443
  %445 = load i32, i32* %14, align 4
  %446 = icmp sgt i32 %445, 1
  br i1 %446, label %447, label %551

; <label>:447:                                    ; preds = %444
  %448 = call double @sre_random()
  %449 = load i32, i32* %14, align 4
  %450 = sitofp i32 %449 to double
  %451 = fmul double %448, %450
  %452 = fptosi double %451 to i32
  store i32 %452, i32* %17, align 4
  %453 = load i8*, i8** %5, align 8
  %454 = load i32*, i32** %11, align 8
  %455 = load i32, i32* %17, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i8, i8* %453, i64 %459
  %461 = load i8, i8* %460, align 1
  store i8 %461, i8* %19, align 1
  %462 = load i8*, i8** %6, align 8
  %463 = load i32*, i32** %11, align 8
  %464 = load i32, i32* %17, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8, i8* %462, i64 %468
  %470 = load i8, i8* %469, align 1
  store i8 %470, i8* %20, align 1
  %471 = load i32*, i32** %11, align 8
  %472 = load i32, i32* %17, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %18, align 4
  %476 = load i8*, i8** %5, align 8
  %477 = load i32*, i32** %11, align 8
  %478 = load i32, i32* %14, align 4
  %479 = sub nsw i32 %478, 1
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %477, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i8, i8* %476, i64 %483
  %485 = load i8, i8* %484, align 1
  %486 = load i8*, i8** %5, align 8
  %487 = load i32*, i32** %11, align 8
  %488 = load i32, i32* %17, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8, i8* %486, i64 %492
  store i8 %485, i8* %493, align 1
  %494 = load i8*, i8** %6, align 8
  %495 = load i32*, i32** %11, align 8
  %496 = load i32, i32* %14, align 4
  %497 = sub nsw i32 %496, 1
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %495, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i8, i8* %494, i64 %501
  %503 = load i8, i8* %502, align 1
  %504 = load i8*, i8** %6, align 8
  %505 = load i32*, i32** %11, align 8
  %506 = load i32, i32* %17, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8, i8* %504, i64 %510
  store i8 %503, i8* %511, align 1
  %512 = load i32*, i32** %11, align 8
  %513 = load i32, i32* %14, align 4
  %514 = sub nsw i32 %513, 1
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %512, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = load i32*, i32** %11, align 8
  %519 = load i32, i32* %17, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  store i32 %517, i32* %521, align 4
  %522 = load i8, i8* %19, align 1
  %523 = load i8*, i8** %5, align 8
  %524 = load i32*, i32** %11, align 8
  %525 = load i32, i32* %14, align 4
  %526 = sub nsw i32 %525, 1
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %524, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i8, i8* %523, i64 %530
  store i8 %522, i8* %531, align 1
  %532 = load i8, i8* %20, align 1
  %533 = load i8*, i8** %6, align 8
  %534 = load i32*, i32** %11, align 8
  %535 = load i32, i32* %14, align 4
  %536 = sub nsw i32 %535, 1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %534, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8, i8* %533, i64 %540
  store i8 %532, i8* %541, align 1
  %542 = load i32, i32* %18, align 4
  %543 = load i32*, i32** %11, align 8
  %544 = load i32, i32* %14, align 4
  %545 = sub nsw i32 %544, 1
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %543, i64 %546
  store i32 %542, i32* %547, align 4
  br label %548

; <label>:548:                                    ; preds = %447
  %549 = load i32, i32* %14, align 4
  %550 = add nsw i32 %549, -1
  store i32 %550, i32* %14, align 4
  br label %444

; <label>:551:                                    ; preds = %444
  br label %552

; <label>:552:                                    ; preds = %656, %551
  %553 = load i32, i32* %15, align 4
  %554 = icmp sgt i32 %553, 1
  br i1 %554, label %555, label %659

; <label>:555:                                    ; preds = %552
  %556 = call double @sre_random()
  %557 = load i32, i32* %15, align 4
  %558 = sitofp i32 %557 to double
  %559 = fmul double %556, %558
  %560 = fptosi double %559 to i32
  store i32 %560, i32* %17, align 4
  %561 = load i8*, i8** %5, align 8
  %562 = load i32*, i32** %12, align 8
  %563 = load i32, i32* %17, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i32, i32* %562, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i8, i8* %561, i64 %567
  %569 = load i8, i8* %568, align 1
  store i8 %569, i8* %19, align 1
  %570 = load i8*, i8** %6, align 8
  %571 = load i32*, i32** %12, align 8
  %572 = load i32, i32* %17, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i32, i32* %571, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i8, i8* %570, i64 %576
  %578 = load i8, i8* %577, align 1
  store i8 %578, i8* %20, align 1
  %579 = load i32*, i32** %12, align 8
  %580 = load i32, i32* %17, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i32, i32* %579, i64 %581
  %583 = load i32, i32* %582, align 4
  store i32 %583, i32* %18, align 4
  %584 = load i8*, i8** %5, align 8
  %585 = load i32*, i32** %12, align 8
  %586 = load i32, i32* %15, align 4
  %587 = sub nsw i32 %586, 1
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32, i32* %585, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i8, i8* %584, i64 %591
  %593 = load i8, i8* %592, align 1
  %594 = load i8*, i8** %5, align 8
  %595 = load i32*, i32** %12, align 8
  %596 = load i32, i32* %17, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32, i32* %595, i64 %597
  %599 = load i32, i32* %598, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i8, i8* %594, i64 %600
  store i8 %593, i8* %601, align 1
  %602 = load i8*, i8** %6, align 8
  %603 = load i32*, i32** %12, align 8
  %604 = load i32, i32* %15, align 4
  %605 = sub nsw i32 %604, 1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %603, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i8, i8* %602, i64 %609
  %611 = load i8, i8* %610, align 1
  %612 = load i8*, i8** %6, align 8
  %613 = load i32*, i32** %12, align 8
  %614 = load i32, i32* %17, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i32, i32* %613, i64 %615
  %617 = load i32, i32* %616, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i8, i8* %612, i64 %618
  store i8 %611, i8* %619, align 1
  %620 = load i32*, i32** %12, align 8
  %621 = load i32, i32* %15, align 4
  %622 = sub nsw i32 %621, 1
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i32, i32* %620, i64 %623
  %625 = load i32, i32* %624, align 4
  %626 = load i32*, i32** %12, align 8
  %627 = load i32, i32* %17, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32, i32* %626, i64 %628
  store i32 %625, i32* %629, align 4
  %630 = load i8, i8* %19, align 1
  %631 = load i8*, i8** %5, align 8
  %632 = load i32*, i32** %12, align 8
  %633 = load i32, i32* %15, align 4
  %634 = sub nsw i32 %633, 1
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i32, i32* %632, i64 %635
  %637 = load i32, i32* %636, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i8, i8* %631, i64 %638
  store i8 %630, i8* %639, align 1
  %640 = load i8, i8* %20, align 1
  %641 = load i8*, i8** %6, align 8
  %642 = load i32*, i32** %12, align 8
  %643 = load i32, i32* %15, align 4
  %644 = sub nsw i32 %643, 1
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i32, i32* %642, i64 %645
  %647 = load i32, i32* %646, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8, i8* %641, i64 %648
  store i8 %640, i8* %649, align 1
  %650 = load i32, i32* %18, align 4
  %651 = load i32*, i32** %12, align 8
  %652 = load i32, i32* %15, align 4
  %653 = sub nsw i32 %652, 1
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %651, i64 %654
  store i32 %650, i32* %655, align 4
  br label %656

; <label>:656:                                    ; preds = %555
  %657 = load i32, i32* %15, align 4
  %658 = add nsw i32 %657, -1
  store i32 %658, i32* %15, align 4
  br label %552

; <label>:659:                                    ; preds = %552
  %660 = load i32*, i32** %10, align 8
  %661 = bitcast i32* %660 to i8*
  call void @free(i8* %661) #5
  %662 = load i32*, i32** %11, align 8
  %663 = bitcast i32* %662 to i8*
  call void @free(i8* %663) #5
  %664 = load i32*, i32** %12, align 8
  %665 = bitcast i32* %664 to i8*
  call void @free(i8* %665) #5
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
