; ModuleID = 'treeup.c'
source_filename = "treeup.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define void @update_tree(i64, i64, i64, i64, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, i64, i64) #0 {
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.node*, align 8
  %18 = alloca %struct.node*, align 8
  %19 = alloca %struct.node*, align 8
  %20 = alloca %struct.node*, align 8
  %21 = alloca %struct.node*, align 8
  %22 = alloca %struct.arc*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.arc*, align 8
  %26 = alloca %struct.arc*, align 8
  %27 = alloca %struct.node*, align 8
  %28 = alloca %struct.node*, align 8
  %29 = alloca %struct.node*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i64 %0, i64* %13, align 8
  store i64 %1, i64* %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store %struct.node* %4, %struct.node** %17, align 8
  store %struct.node* %5, %struct.node** %18, align 8
  store %struct.node* %6, %struct.node** %19, align 8
  store %struct.node* %7, %struct.node** %20, align 8
  store %struct.node* %8, %struct.node** %21, align 8
  store %struct.arc* %9, %struct.arc** %22, align 8
  store i64 %10, i64* %23, align 8
  store i64 %11, i64* %24, align 8
  %35 = load %struct.arc*, %struct.arc** %22, align 8
  %36 = getelementptr inbounds %struct.arc, %struct.arc* %35, i32 0, i32 1
  %37 = load %struct.node*, %struct.node** %36, align 8
  %38 = load %struct.node*, %struct.node** %18, align 8
  %39 = icmp eq %struct.node* %37, %38
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %12
  %41 = load i64, i64* %23, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %52, label %43

; <label>:43:                                     ; preds = %40, %12
  %44 = load %struct.arc*, %struct.arc** %22, align 8
  %45 = getelementptr inbounds %struct.arc, %struct.arc* %44, i32 0, i32 1
  %46 = load %struct.node*, %struct.node** %45, align 8
  %47 = load %struct.node*, %struct.node** %17, align 8
  %48 = icmp eq %struct.node* %46, %47
  br i1 %48, label %49, label %62

; <label>:49:                                     ; preds = %43
  %50 = load i64, i64* %23, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %62

; <label>:52:                                     ; preds = %49, %40
  %53 = load i64, i64* %23, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %52
  %56 = load i64, i64* %23, align 8
  br label %60

; <label>:57:                                     ; preds = %52
  %58 = load i64, i64* %23, align 8
  %59 = sub nsw i64 0, %58
  br label %60

; <label>:60:                                     ; preds = %57, %55
  %61 = phi i64 [ %56, %55 ], [ %59, %57 ]
  store i64 %61, i64* %23, align 8
  br label %73

; <label>:62:                                     ; preds = %49, %43
  %63 = load i64, i64* %23, align 8
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %62
  %66 = load i64, i64* %23, align 8
  br label %70

; <label>:67:                                     ; preds = %62
  %68 = load i64, i64* %23, align 8
  %69 = sub nsw i64 0, %68
  br label %70

; <label>:70:                                     ; preds = %67, %65
  %71 = phi i64 [ %66, %65 ], [ %69, %67 ]
  %72 = sub nsw i64 0, %71
  store i64 %72, i64* %23, align 8
  br label %73

; <label>:73:                                     ; preds = %70, %60
  %74 = load %struct.node*, %struct.node** %19, align 8
  store %struct.node* %74, %struct.node** %27, align 8
  %75 = load i64, i64* %23, align 8
  %76 = load %struct.node*, %struct.node** %27, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %80

; <label>:80:                                     ; preds = %87, %73
  %81 = load %struct.node*, %struct.node** %27, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 2
  %83 = load %struct.node*, %struct.node** %82, align 8
  store %struct.node* %83, %struct.node** %28, align 8
  %84 = load %struct.node*, %struct.node** %28, align 8
  %85 = icmp ne %struct.node* %84, null
  br i1 %85, label %86, label %94

; <label>:86:                                     ; preds = %80
  br label %87

; <label>:87:                                     ; preds = %106, %86
  %88 = load i64, i64* %23, align 8
  %89 = load %struct.node*, %struct.node** %28, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load %struct.node*, %struct.node** %28, align 8
  store %struct.node* %93, %struct.node** %27, align 8
  br label %80

; <label>:94:                                     ; preds = %80
  br label %95

; <label>:95:                                     ; preds = %107, %94
  %96 = load %struct.node*, %struct.node** %27, align 8
  %97 = load %struct.node*, %struct.node** %19, align 8
  %98 = icmp eq %struct.node* %96, %97
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  br label %111

; <label>:100:                                    ; preds = %95
  %101 = load %struct.node*, %struct.node** %27, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 4
  %103 = load %struct.node*, %struct.node** %102, align 8
  store %struct.node* %103, %struct.node** %28, align 8
  %104 = load %struct.node*, %struct.node** %28, align 8
  %105 = icmp ne %struct.node* %104, null
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %100
  br label %87

; <label>:107:                                    ; preds = %100
  %108 = load %struct.node*, %struct.node** %27, align 8
  %109 = getelementptr inbounds %struct.node, %struct.node* %108, i32 0, i32 3
  %110 = load %struct.node*, %struct.node** %109, align 8
  store %struct.node* %110, %struct.node** %27, align 8
  br label %95

; <label>:111:                                    ; preds = %99
  %112 = load %struct.node*, %struct.node** %17, align 8
  store %struct.node* %112, %struct.node** %28, align 8
  %113 = load %struct.node*, %struct.node** %28, align 8
  %114 = getelementptr inbounds %struct.node, %struct.node* %113, i32 0, i32 3
  %115 = load %struct.node*, %struct.node** %114, align 8
  store %struct.node* %115, %struct.node** %27, align 8
  %116 = load %struct.node*, %struct.node** %19, align 8
  %117 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 11
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %32, align 8
  store i64 %118, i64* %33, align 8
  %119 = load %struct.node*, %struct.node** %18, align 8
  store %struct.node* %119, %struct.node** %29, align 8
  %120 = load %struct.arc*, %struct.arc** %22, align 8
  store %struct.arc* %120, %struct.arc** %26, align 8
  br label %121

; <label>:121:                                    ; preds = %204, %111
  %122 = load %struct.node*, %struct.node** %28, align 8
  %123 = load %struct.node*, %struct.node** %20, align 8
  %124 = icmp ne %struct.node* %122, %123
  br i1 %124, label %125, label %235

; <label>:125:                                    ; preds = %121
  %126 = load %struct.node*, %struct.node** %28, align 8
  %127 = getelementptr inbounds %struct.node, %struct.node* %126, i32 0, i32 4
  %128 = load %struct.node*, %struct.node** %127, align 8
  %129 = icmp ne %struct.node* %128, null
  br i1 %129, label %130, label %138

; <label>:130:                                    ; preds = %125
  %131 = load %struct.node*, %struct.node** %28, align 8
  %132 = getelementptr inbounds %struct.node, %struct.node* %131, i32 0, i32 5
  %133 = load %struct.node*, %struct.node** %132, align 8
  %134 = load %struct.node*, %struct.node** %28, align 8
  %135 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 4
  %136 = load %struct.node*, %struct.node** %135, align 8
  %137 = getelementptr inbounds %struct.node, %struct.node* %136, i32 0, i32 5
  store %struct.node* %133, %struct.node** %137, align 8
  br label %138

; <label>:138:                                    ; preds = %130, %125
  %139 = load %struct.node*, %struct.node** %28, align 8
  %140 = getelementptr inbounds %struct.node, %struct.node* %139, i32 0, i32 5
  %141 = load %struct.node*, %struct.node** %140, align 8
  %142 = icmp ne %struct.node* %141, null
  br i1 %142, label %143, label %151

; <label>:143:                                    ; preds = %138
  %144 = load %struct.node*, %struct.node** %28, align 8
  %145 = getelementptr inbounds %struct.node, %struct.node* %144, i32 0, i32 4
  %146 = load %struct.node*, %struct.node** %145, align 8
  %147 = load %struct.node*, %struct.node** %28, align 8
  %148 = getelementptr inbounds %struct.node, %struct.node* %147, i32 0, i32 5
  %149 = load %struct.node*, %struct.node** %148, align 8
  %150 = getelementptr inbounds %struct.node, %struct.node* %149, i32 0, i32 4
  store %struct.node* %146, %struct.node** %150, align 8
  br label %157

; <label>:151:                                    ; preds = %138
  %152 = load %struct.node*, %struct.node** %28, align 8
  %153 = getelementptr inbounds %struct.node, %struct.node* %152, i32 0, i32 4
  %154 = load %struct.node*, %struct.node** %153, align 8
  %155 = load %struct.node*, %struct.node** %27, align 8
  %156 = getelementptr inbounds %struct.node, %struct.node* %155, i32 0, i32 2
  store %struct.node* %154, %struct.node** %156, align 8
  br label %157

; <label>:157:                                    ; preds = %151, %143
  %158 = load %struct.node*, %struct.node** %29, align 8
  %159 = load %struct.node*, %struct.node** %28, align 8
  %160 = getelementptr inbounds %struct.node, %struct.node* %159, i32 0, i32 3
  store %struct.node* %158, %struct.node** %160, align 8
  %161 = load %struct.node*, %struct.node** %29, align 8
  %162 = getelementptr inbounds %struct.node, %struct.node* %161, i32 0, i32 2
  %163 = load %struct.node*, %struct.node** %162, align 8
  %164 = load %struct.node*, %struct.node** %28, align 8
  %165 = getelementptr inbounds %struct.node, %struct.node* %164, i32 0, i32 4
  store %struct.node* %163, %struct.node** %165, align 8
  %166 = load %struct.node*, %struct.node** %28, align 8
  %167 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 4
  %168 = load %struct.node*, %struct.node** %167, align 8
  %169 = icmp ne %struct.node* %168, null
  br i1 %169, label %170, label %176

; <label>:170:                                    ; preds = %157
  %171 = load %struct.node*, %struct.node** %28, align 8
  %172 = load %struct.node*, %struct.node** %28, align 8
  %173 = getelementptr inbounds %struct.node, %struct.node* %172, i32 0, i32 4
  %174 = load %struct.node*, %struct.node** %173, align 8
  %175 = getelementptr inbounds %struct.node, %struct.node* %174, i32 0, i32 5
  store %struct.node* %171, %struct.node** %175, align 8
  br label %176

; <label>:176:                                    ; preds = %170, %157
  %177 = load %struct.node*, %struct.node** %28, align 8
  %178 = load %struct.node*, %struct.node** %29, align 8
  %179 = getelementptr inbounds %struct.node, %struct.node* %178, i32 0, i32 2
  store %struct.node* %177, %struct.node** %179, align 8
  %180 = load %struct.node*, %struct.node** %28, align 8
  %181 = getelementptr inbounds %struct.node, %struct.node* %180, i32 0, i32 5
  store %struct.node* null, %struct.node** %181, align 8
  %182 = load %struct.node*, %struct.node** %28, align 8
  %183 = getelementptr inbounds %struct.node, %struct.node* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %30, align 8
  %189 = load i64, i64* %30, align 8
  %190 = load i64, i64* %13, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %198

; <label>:192:                                    ; preds = %176
  %193 = load %struct.node*, %struct.node** %28, align 8
  %194 = getelementptr inbounds %struct.node, %struct.node* %193, i32 0, i32 10
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %15, align 8
  %197 = add nsw i64 %195, %196
  store i64 %197, i64* %34, align 8
  br label %204

; <label>:198:                                    ; preds = %176
  %199 = load %struct.node*, %struct.node** %28, align 8
  %200 = getelementptr inbounds %struct.node, %struct.node* %199, i32 0, i32 10
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %15, align 8
  %203 = sub nsw i64 %201, %202
  store i64 %203, i64* %34, align 8
  br label %204

; <label>:204:                                    ; preds = %198, %192
  %205 = load %struct.node*, %struct.node** %28, align 8
  %206 = getelementptr inbounds %struct.node, %struct.node* %205, i32 0, i32 6
  %207 = load %struct.arc*, %struct.arc** %206, align 8
  store %struct.arc* %207, %struct.arc** %25, align 8
  %208 = load %struct.node*, %struct.node** %28, align 8
  %209 = getelementptr inbounds %struct.node, %struct.node* %208, i32 0, i32 11
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %31, align 8
  %211 = load i64, i64* %14, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.node*, %struct.node** %28, align 8
  %214 = getelementptr inbounds %struct.node, %struct.node* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 8
  %215 = load i64, i64* %16, align 8
  %216 = load %struct.node*, %struct.node** %28, align 8
  %217 = getelementptr inbounds %struct.node, %struct.node* %216, i32 0, i32 10
  store i64 %215, i64* %217, align 8
  %218 = load %struct.arc*, %struct.arc** %26, align 8
  %219 = load %struct.node*, %struct.node** %28, align 8
  %220 = getelementptr inbounds %struct.node, %struct.node* %219, i32 0, i32 6
  store %struct.arc* %218, %struct.arc** %220, align 8
  %221 = load i64, i64* %33, align 8
  %222 = load %struct.node*, %struct.node** %28, align 8
  %223 = getelementptr inbounds %struct.node, %struct.node* %222, i32 0, i32 11
  store i64 %221, i64* %223, align 8
  %224 = load %struct.node*, %struct.node** %28, align 8
  store %struct.node* %224, %struct.node** %29, align 8
  %225 = load i64, i64* %30, align 8
  store i64 %225, i64* %14, align 8
  %226 = load i64, i64* %34, align 8
  store i64 %226, i64* %16, align 8
  %227 = load %struct.arc*, %struct.arc** %25, align 8
  store %struct.arc* %227, %struct.arc** %26, align 8
  %228 = load i64, i64* %32, align 8
  %229 = load i64, i64* %31, align 8
  %230 = sub nsw i64 %228, %229
  store i64 %230, i64* %33, align 8
  %231 = load %struct.node*, %struct.node** %27, align 8
  store %struct.node* %231, %struct.node** %28, align 8
  %232 = load %struct.node*, %struct.node** %28, align 8
  %233 = getelementptr inbounds %struct.node, %struct.node* %232, i32 0, i32 3
  %234 = load %struct.node*, %struct.node** %233, align 8
  store %struct.node* %234, %struct.node** %27, align 8
  br label %121

; <label>:235:                                    ; preds = %121
  %236 = load i64, i64* %15, align 8
  %237 = load i64, i64* %24, align 8
  %238 = icmp sgt i64 %236, %237
  br i1 %238, label %239, label %310

; <label>:239:                                    ; preds = %235
  %240 = load %struct.node*, %struct.node** %20, align 8
  store %struct.node* %240, %struct.node** %28, align 8
  br label %241

; <label>:241:                                    ; preds = %270, %239
  %242 = load %struct.node*, %struct.node** %28, align 8
  %243 = load %struct.node*, %struct.node** %21, align 8
  %244 = icmp ne %struct.node* %242, %243
  br i1 %244, label %245, label %274

; <label>:245:                                    ; preds = %241
  %246 = load i64, i64* %32, align 8
  %247 = load %struct.node*, %struct.node** %28, align 8
  %248 = getelementptr inbounds %struct.node, %struct.node* %247, i32 0, i32 11
  %249 = load i64, i64* %248, align 8
  %250 = sub nsw i64 %249, %246
  store i64 %250, i64* %248, align 8
  %251 = load %struct.node*, %struct.node** %28, align 8
  %252 = getelementptr inbounds %struct.node, %struct.node* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* %13, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %263

; <label>:257:                                    ; preds = %245
  %258 = load i64, i64* %15, align 8
  %259 = load %struct.node*, %struct.node** %28, align 8
  %260 = getelementptr inbounds %struct.node, %struct.node* %259, i32 0, i32 10
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %261, %258
  store i64 %262, i64* %260, align 8
  br label %269

; <label>:263:                                    ; preds = %245
  %264 = load i64, i64* %15, align 8
  %265 = load %struct.node*, %struct.node** %28, align 8
  %266 = getelementptr inbounds %struct.node, %struct.node* %265, i32 0, i32 10
  %267 = load i64, i64* %266, align 8
  %268 = sub nsw i64 %267, %264
  store i64 %268, i64* %266, align 8
  br label %269

; <label>:269:                                    ; preds = %263, %257
  br label %270

; <label>:270:                                    ; preds = %269
  %271 = load %struct.node*, %struct.node** %28, align 8
  %272 = getelementptr inbounds %struct.node, %struct.node* %271, i32 0, i32 3
  %273 = load %struct.node*, %struct.node** %272, align 8
  store %struct.node* %273, %struct.node** %28, align 8
  br label %241

; <label>:274:                                    ; preds = %241
  %275 = load %struct.node*, %struct.node** %18, align 8
  store %struct.node* %275, %struct.node** %28, align 8
  br label %276

; <label>:276:                                    ; preds = %305, %274
  %277 = load %struct.node*, %struct.node** %28, align 8
  %278 = load %struct.node*, %struct.node** %21, align 8
  %279 = icmp ne %struct.node* %277, %278
  br i1 %279, label %280, label %309

; <label>:280:                                    ; preds = %276
  %281 = load i64, i64* %32, align 8
  %282 = load %struct.node*, %struct.node** %28, align 8
  %283 = getelementptr inbounds %struct.node, %struct.node* %282, i32 0, i32 11
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, %281
  store i64 %285, i64* %283, align 8
  %286 = load %struct.node*, %struct.node** %28, align 8
  %287 = getelementptr inbounds %struct.node, %struct.node* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = load i64, i64* %13, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %298

; <label>:292:                                    ; preds = %280
  %293 = load i64, i64* %15, align 8
  %294 = load %struct.node*, %struct.node** %28, align 8
  %295 = getelementptr inbounds %struct.node, %struct.node* %294, i32 0, i32 10
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %296, %293
  store i64 %297, i64* %295, align 8
  br label %304

; <label>:298:                                    ; preds = %280
  %299 = load i64, i64* %15, align 8
  %300 = load %struct.node*, %struct.node** %28, align 8
  %301 = getelementptr inbounds %struct.node, %struct.node* %300, i32 0, i32 10
  %302 = load i64, i64* %301, align 8
  %303 = sub nsw i64 %302, %299
  store i64 %303, i64* %301, align 8
  br label %304

; <label>:304:                                    ; preds = %298, %292
  br label %305

; <label>:305:                                    ; preds = %304
  %306 = load %struct.node*, %struct.node** %28, align 8
  %307 = getelementptr inbounds %struct.node, %struct.node* %306, i32 0, i32 3
  %308 = load %struct.node*, %struct.node** %307, align 8
  store %struct.node* %308, %struct.node** %28, align 8
  br label %276

; <label>:309:                                    ; preds = %276
  br label %343

; <label>:310:                                    ; preds = %235
  %311 = load %struct.node*, %struct.node** %20, align 8
  store %struct.node* %311, %struct.node** %28, align 8
  br label %312

; <label>:312:                                    ; preds = %322, %310
  %313 = load %struct.node*, %struct.node** %28, align 8
  %314 = load %struct.node*, %struct.node** %21, align 8
  %315 = icmp ne %struct.node* %313, %314
  br i1 %315, label %316, label %326

; <label>:316:                                    ; preds = %312
  %317 = load i64, i64* %32, align 8
  %318 = load %struct.node*, %struct.node** %28, align 8
  %319 = getelementptr inbounds %struct.node, %struct.node* %318, i32 0, i32 11
  %320 = load i64, i64* %319, align 8
  %321 = sub nsw i64 %320, %317
  store i64 %321, i64* %319, align 8
  br label %322

; <label>:322:                                    ; preds = %316
  %323 = load %struct.node*, %struct.node** %28, align 8
  %324 = getelementptr inbounds %struct.node, %struct.node* %323, i32 0, i32 3
  %325 = load %struct.node*, %struct.node** %324, align 8
  store %struct.node* %325, %struct.node** %28, align 8
  br label %312

; <label>:326:                                    ; preds = %312
  %327 = load %struct.node*, %struct.node** %18, align 8
  store %struct.node* %327, %struct.node** %28, align 8
  br label %328

; <label>:328:                                    ; preds = %338, %326
  %329 = load %struct.node*, %struct.node** %28, align 8
  %330 = load %struct.node*, %struct.node** %21, align 8
  %331 = icmp ne %struct.node* %329, %330
  br i1 %331, label %332, label %342

; <label>:332:                                    ; preds = %328
  %333 = load i64, i64* %32, align 8
  %334 = load %struct.node*, %struct.node** %28, align 8
  %335 = getelementptr inbounds %struct.node, %struct.node* %334, i32 0, i32 11
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %336, %333
  store i64 %337, i64* %335, align 8
  br label %338

; <label>:338:                                    ; preds = %332
  %339 = load %struct.node*, %struct.node** %28, align 8
  %340 = getelementptr inbounds %struct.node, %struct.node* %339, i32 0, i32 3
  %341 = load %struct.node*, %struct.node** %340, align 8
  store %struct.node* %341, %struct.node** %28, align 8
  br label %328

; <label>:342:                                    ; preds = %328
  br label %343

; <label>:343:                                    ; preds = %342, %309
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
