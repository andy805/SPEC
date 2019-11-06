; ModuleID = 'attacks.c'
source_filename = "attacks.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@calc_attackers.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@calc_attackers.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@calc_attackers.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@board = external global [144 x i32], align 16
@is_attacked.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@is_attacked.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@is_attacked.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@nk_attacked.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@nk_attacked.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@nk_attacked.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16

; Function Attrs: noinline nounwind optnone uwtable
define i32 @calc_attackers(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %340

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = srem i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %179

; <label>:19:                                     ; preds = %15
  store i32 0, i32* %7, align 4
  br label %20

; <label>:20:                                     ; preds = %77, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %80

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.rook_o, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %80

; <label>:38:                                     ; preds = %23
  br label %39

; <label>:39:                                     ; preds = %68, %38
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %75

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 7
  br i1 %50, label %57, label %51

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 9
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %51, %45
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %75

; <label>:60:                                     ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 13
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %60
  br label %75

; <label>:67:                                     ; preds = %60
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.rook_o, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %39

; <label>:75:                                     ; preds = %66, %57, %39
  br label %76

; <label>:76:                                     ; preds = %75
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %20

; <label>:80:                                     ; preds = %35, %20
  store i32 0, i32* %7, align 4
  br label %81

; <label>:81:                                     ; preds = %152, %80
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %155

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.bishop_o, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %85, %89
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %103

; <label>:96:                                     ; preds = %84
  %97 = load i32, i32* %7, align 4
  %98 = srem i32 %97, 2
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %155

; <label>:103:                                    ; preds = %96, %84
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 5
  br i1 %108, label %109, label %112

; <label>:109:                                    ; preds = %103
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %155

; <label>:112:                                    ; preds = %103
  br label %113

; <label>:113:                                    ; preds = %142, %112
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %149

; <label>:119:                                    ; preds = %113
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 11
  br i1 %124, label %131, label %125

; <label>:125:                                    ; preds = %119
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 9
  br i1 %130, label %131, label %134

; <label>:131:                                    ; preds = %125, %119
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %149

; <label>:134:                                    ; preds = %125
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 13
  br i1 %139, label %140, label %141

; <label>:140:                                    ; preds = %134
  br label %149

; <label>:141:                                    ; preds = %134
  br label %142

; <label>:142:                                    ; preds = %141
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.bishop_o, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %6, align 4
  br label %113

; <label>:149:                                    ; preds = %140, %131, %113
  br label %150

; <label>:150:                                    ; preds = %149
  br label %151

; <label>:151:                                    ; preds = %150
  br label %152

; <label>:152:                                    ; preds = %151
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %81

; <label>:155:                                    ; preds = %109, %100, %81
  store i32 0, i32* %7, align 4
  br label %156

; <label>:156:                                    ; preds = %175, %155
  %157 = load i32, i32* %7, align 4
  %158 = icmp slt i32 %157, 8
  br i1 %158, label %159, label %178

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* @calc_attackers.knight_o, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %160, %164
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %174

; <label>:171:                                    ; preds = %159
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %174

; <label>:174:                                    ; preds = %171, %159
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %156

; <label>:178:                                    ; preds = %156
  br label %338

; <label>:179:                                    ; preds = %15
  store i32 0, i32* %7, align 4
  br label %180

; <label>:180:                                    ; preds = %236, %179
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %181, 4
  br i1 %182, label %183, label %239

; <label>:183:                                    ; preds = %180
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.rook_o, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %184, %188
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 6
  br i1 %194, label %195, label %198

; <label>:195:                                    ; preds = %183
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %239

; <label>:198:                                    ; preds = %183
  br label %199

; <label>:199:                                    ; preds = %227, %198
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %234

; <label>:205:                                    ; preds = %199
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 8
  br i1 %210, label %217, label %211

; <label>:211:                                    ; preds = %205
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 10
  br i1 %216, label %217, label %220

; <label>:217:                                    ; preds = %211, %205
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %234

; <label>:220:                                    ; preds = %211
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 13
  br i1 %225, label %226, label %227

; <label>:226:                                    ; preds = %220
  br label %234

; <label>:227:                                    ; preds = %220
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.rook_o, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %6, align 4
  br label %199

; <label>:234:                                    ; preds = %226, %217, %199
  br label %235

; <label>:235:                                    ; preds = %234
  br label %236

; <label>:236:                                    ; preds = %235
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %180

; <label>:239:                                    ; preds = %195, %180
  store i32 0, i32* %7, align 4
  br label %240

; <label>:240:                                    ; preds = %311, %239
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %241, 4
  br i1 %242, label %243, label %314

; <label>:243:                                    ; preds = %240
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.bishop_o, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %244, %248
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 2
  br i1 %254, label %255, label %262

; <label>:255:                                    ; preds = %243
  %256 = load i32, i32* %7, align 4
  %257 = srem i32 %256, 2
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %262, label %259

; <label>:259:                                    ; preds = %255
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %314

; <label>:262:                                    ; preds = %255, %243
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 6
  br i1 %267, label %268, label %271

; <label>:268:                                    ; preds = %262
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %314

; <label>:271:                                    ; preds = %262
  br label %272

; <label>:272:                                    ; preds = %301, %271
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %308

; <label>:278:                                    ; preds = %272
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 12
  br i1 %283, label %290, label %284

; <label>:284:                                    ; preds = %278
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 10
  br i1 %289, label %290, label %293

; <label>:290:                                    ; preds = %284, %278
  %291 = load i32, i32* %8, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %8, align 4
  br label %308

; <label>:293:                                    ; preds = %284
  %294 = load i32, i32* %6, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 13
  br i1 %298, label %299, label %300

; <label>:299:                                    ; preds = %293
  br label %308

; <label>:300:                                    ; preds = %293
  br label %301

; <label>:301:                                    ; preds = %300
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.bishop_o, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %6, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %6, align 4
  br label %272

; <label>:308:                                    ; preds = %299, %290, %272
  br label %309

; <label>:309:                                    ; preds = %308
  br label %310

; <label>:310:                                    ; preds = %309
  br label %311

; <label>:311:                                    ; preds = %310
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %7, align 4
  br label %240

; <label>:314:                                    ; preds = %268, %259, %240
  store i32 0, i32* %7, align 4
  br label %315

; <label>:315:                                    ; preds = %334, %314
  %316 = load i32, i32* %7, align 4
  %317 = icmp slt i32 %316, 8
  br i1 %317, label %318, label %337

; <label>:318:                                    ; preds = %315
  %319 = load i32, i32* %4, align 4
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [8 x i32], [8 x i32]* @calc_attackers.knight_o, i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %319, %323
  store i32 %324, i32* %6, align 4
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %328, 4
  br i1 %329, label %330, label %333

; <label>:330:                                    ; preds = %318
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %8, align 4
  br label %333

; <label>:333:                                    ; preds = %330, %318
  br label %334

; <label>:334:                                    ; preds = %333
  %335 = load i32, i32* %7, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %7, align 4
  br label %315

; <label>:337:                                    ; preds = %315
  br label %338

; <label>:338:                                    ; preds = %337, %178
  %339 = load i32, i32* %8, align 4
  store i32 %339, i32* %3, align 4
  br label %340

; <label>:340:                                    ; preds = %338, %14
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @is_attacked(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %134

; <label>:13:                                     ; preds = %2
  store i32 0, i32* %9, align 4
  br label %14

; <label>:14:                                     ; preds = %64, %13
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %67

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.bishop_o, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %31
  store i32 1, i32* %3, align 4
  br label %258

; <label>:36:                                     ; preds = %31, %17
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  store i32 1, i32* %3, align 4
  br label %258

; <label>:40:                                     ; preds = %36
  br label %41

; <label>:41:                                     ; preds = %55, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 11
  br i1 %46, label %50, label %47

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 9
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %47, %44
  store i32 1, i32* %3, align 4
  br label %258

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 13
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %51
  br label %63

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  br label %41

; <label>:63:                                     ; preds = %54, %41
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %14

; <label>:67:                                     ; preds = %14
  store i32 0, i32* %9, align 4
  br label %68

; <label>:68:                                     ; preds = %84, %67
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %87

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* @is_attacked.knight_o, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %72, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %71
  store i32 1, i32* %3, align 4
  br label %258

; <label>:83:                                     ; preds = %71
  br label %84

; <label>:84:                                     ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %68

; <label>:87:                                     ; preds = %68
  store i32 0, i32* %9, align 4
  br label %88

; <label>:88:                                     ; preds = %130, %87
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %133

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.rook_o, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 5
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %91
  store i32 1, i32* %3, align 4
  br label %258

; <label>:106:                                    ; preds = %91
  br label %107

; <label>:107:                                    ; preds = %121, %106
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %129

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 7
  br i1 %112, label %116, label %113

; <label>:113:                                    ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 9
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %113, %110
  store i32 1, i32* %3, align 4
  br label %258

; <label>:117:                                    ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 13
  br i1 %119, label %120, label %121

; <label>:120:                                    ; preds = %117
  br label %129

; <label>:121:                                    ; preds = %117
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %8, align 4
  br label %107

; <label>:129:                                    ; preds = %120, %107
  br label %130

; <label>:130:                                    ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %88

; <label>:133:                                    ; preds = %88
  store i32 0, i32* %3, align 4
  br label %258

; <label>:134:                                    ; preds = %2
  store i32 0, i32* %9, align 4
  br label %135

; <label>:135:                                    ; preds = %185, %134
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 4
  br i1 %137, label %138, label %188

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.bishop_o, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %157

; <label>:152:                                    ; preds = %138
  %153 = load i32, i32* %9, align 4
  %154 = and i32 %153, 1
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

; <label>:156:                                    ; preds = %152
  store i32 1, i32* %3, align 4
  br label %258

; <label>:157:                                    ; preds = %152, %138
  %158 = load i32, i32* %8, align 4
  %159 = icmp eq i32 %158, 6
  br i1 %159, label %160, label %161

; <label>:160:                                    ; preds = %157
  store i32 1, i32* %3, align 4
  br label %258

; <label>:161:                                    ; preds = %157
  br label %162

; <label>:162:                                    ; preds = %176, %161
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %184

; <label>:165:                                    ; preds = %162
  %166 = load i32, i32* %8, align 4
  %167 = icmp eq i32 %166, 12
  br i1 %167, label %171, label %168

; <label>:168:                                    ; preds = %165
  %169 = load i32, i32* %8, align 4
  %170 = icmp eq i32 %169, 10
  br i1 %170, label %171, label %172

; <label>:171:                                    ; preds = %168, %165
  store i32 1, i32* %3, align 4
  br label %258

; <label>:172:                                    ; preds = %168
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 13
  br i1 %174, label %175, label %176

; <label>:175:                                    ; preds = %172
  br label %184

; <label>:176:                                    ; preds = %172
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %8, align 4
  br label %162

; <label>:184:                                    ; preds = %175, %162
  br label %185

; <label>:185:                                    ; preds = %184
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %135

; <label>:188:                                    ; preds = %135
  store i32 0, i32* %9, align 4
  br label %189

; <label>:189:                                    ; preds = %205, %188
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %190, 8
  br i1 %191, label %192, label %208

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* @is_attacked.knight_o, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %193, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 4
  br i1 %202, label %203, label %204

; <label>:203:                                    ; preds = %192
  store i32 1, i32* %3, align 4
  br label %258

; <label>:204:                                    ; preds = %192
  br label %205

; <label>:205:                                    ; preds = %204
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %189

; <label>:208:                                    ; preds = %189
  store i32 0, i32* %9, align 4
  br label %209

; <label>:209:                                    ; preds = %254, %208
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %210, 4
  br i1 %211, label %212, label %257

; <label>:212:                                    ; preds = %209
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.rook_o, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.rook_o, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %217, %221
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp eq i32 %227, 6
  br i1 %228, label %229, label %230

; <label>:229:                                    ; preds = %212
  store i32 1, i32* %3, align 4
  br label %258

; <label>:230:                                    ; preds = %212
  br label %231

; <label>:231:                                    ; preds = %245, %230
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %253

; <label>:234:                                    ; preds = %231
  %235 = load i32, i32* %8, align 4
  %236 = icmp eq i32 %235, 8
  br i1 %236, label %240, label %237

; <label>:237:                                    ; preds = %234
  %238 = load i32, i32* %8, align 4
  %239 = icmp eq i32 %238, 10
  br i1 %239, label %240, label %241

; <label>:240:                                    ; preds = %237, %234
  store i32 1, i32* %3, align 4
  br label %258

; <label>:241:                                    ; preds = %237
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 13
  br i1 %243, label %244, label %245

; <label>:244:                                    ; preds = %241
  br label %253

; <label>:245:                                    ; preds = %241
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %8, align 4
  br label %231

; <label>:253:                                    ; preds = %244, %231
  br label %254

; <label>:254:                                    ; preds = %253
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %9, align 4
  br label %209

; <label>:257:                                    ; preds = %209
  store i32 0, i32* %3, align 4
  br label %258

; <label>:258:                                    ; preds = %257, %240, %229, %203, %171, %160, %156, %133, %116, %105, %82, %50, %39, %35
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @nk_attacked(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %126

; <label>:13:                                     ; preds = %2
  store i32 0, i32* %9, align 4
  br label %14

; <label>:14:                                     ; preds = %60, %13
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %63

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %31
  store i32 1, i32* %3, align 4
  br label %242

; <label>:36:                                     ; preds = %31, %17
  br label %37

; <label>:37:                                     ; preds = %51, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 11
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43, %40
  store i32 1, i32* %3, align 4
  br label %242

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 13
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %47
  br label %59

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %37

; <label>:59:                                     ; preds = %50, %37
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %14

; <label>:63:                                     ; preds = %14
  store i32 0, i32* %9, align 4
  br label %64

; <label>:64:                                     ; preds = %80, %63
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %83

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %68, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %67
  store i32 1, i32* %3, align 4
  br label %242

; <label>:79:                                     ; preds = %67
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %64

; <label>:83:                                     ; preds = %64
  store i32 0, i32* %9, align 4
  br label %84

; <label>:84:                                     ; preds = %122, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %125

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  br label %99

; <label>:99:                                     ; preds = %113, %87
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %121

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 7
  br i1 %104, label %108, label %105

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 9
  br i1 %107, label %108, label %109

; <label>:108:                                    ; preds = %105, %102
  store i32 1, i32* %3, align 4
  br label %242

; <label>:109:                                    ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 13
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %109
  br label %121

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %8, align 4
  br label %99

; <label>:121:                                    ; preds = %112, %99
  br label %122

; <label>:122:                                    ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %84

; <label>:125:                                    ; preds = %84
  store i32 0, i32* %3, align 4
  br label %242

; <label>:126:                                    ; preds = %2
  store i32 0, i32* %9, align 4
  br label %127

; <label>:127:                                    ; preds = %173, %126
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %176

; <label>:130:                                    ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %135, %136
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %149

; <label>:144:                                    ; preds = %130
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

; <label>:148:                                    ; preds = %144
  store i32 1, i32* %3, align 4
  br label %242

; <label>:149:                                    ; preds = %144, %130
  br label %150

; <label>:150:                                    ; preds = %164, %149
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 12
  br i1 %155, label %159, label %156

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 10
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %156, %153
  store i32 1, i32* %3, align 4
  br label %242

; <label>:160:                                    ; preds = %156
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 13
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %160
  br label %172

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %8, align 4
  br label %150

; <label>:172:                                    ; preds = %163, %150
  br label %173

; <label>:173:                                    ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %127

; <label>:176:                                    ; preds = %127
  store i32 0, i32* %9, align 4
  br label %177

; <label>:177:                                    ; preds = %193, %176
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %180, label %196

; <label>:180:                                    ; preds = %177
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %181, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 4
  br i1 %190, label %191, label %192

; <label>:191:                                    ; preds = %180
  store i32 1, i32* %3, align 4
  br label %242

; <label>:192:                                    ; preds = %180
  br label %193

; <label>:193:                                    ; preds = %192
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %177

; <label>:196:                                    ; preds = %177
  store i32 0, i32* %9, align 4
  br label %197

; <label>:197:                                    ; preds = %238, %196
  %198 = load i32, i32* %9, align 4
  %199 = icmp slt i32 %198, 4
  br i1 %199, label %200, label %241

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %205, %209
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %8, align 4
  br label %215

; <label>:215:                                    ; preds = %229, %200
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %237

; <label>:218:                                    ; preds = %215
  %219 = load i32, i32* %8, align 4
  %220 = icmp eq i32 %219, 8
  br i1 %220, label %224, label %221

; <label>:221:                                    ; preds = %218
  %222 = load i32, i32* %8, align 4
  %223 = icmp eq i32 %222, 10
  br i1 %223, label %224, label %225

; <label>:224:                                    ; preds = %221, %218
  store i32 1, i32* %3, align 4
  br label %242

; <label>:225:                                    ; preds = %221
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 13
  br i1 %227, label %228, label %229

; <label>:228:                                    ; preds = %225
  br label %237

; <label>:229:                                    ; preds = %225
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %8, align 4
  br label %215

; <label>:237:                                    ; preds = %228, %215
  br label %238

; <label>:238:                                    ; preds = %237
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %197

; <label>:241:                                    ; preds = %197
  store i32 0, i32* %3, align 4
  br label %242

; <label>:242:                                    ; preds = %241, %224, %191, %159, %148, %125, %108, %78, %46, %35
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
