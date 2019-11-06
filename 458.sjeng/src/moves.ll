; ModuleID = 'moves.c'
source_filename = "moves.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32 }

@Variant = external global i32, align 4
@white_to_move = external global i32, align 4
@board = external global [144 x i32], align 16
@Xfile = external constant [144 x i32], align 16
@bking_loc = external global i32, align 4
@Xrank = external constant [144 x i32], align 16
@Xdiagl = external constant [144 x i32], align 16
@Xdiagr = external constant [144 x i32], align 16
@wking_loc = external global i32, align 4
@kingcap = common global i32 0, align 4
@numb_moves = common global i32 0, align 4
@genfor = internal global %struct.move_s* null, align 8
@captures = external global i32, align 4
@fcaptures = common global i32 0, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@gfrom = common global i32 0, align 4
@ep_square = external global i32, align 4
@moved = external global [144 x i32], align 16
@Giveaway = external global i32, align 4
@holding = external global [2 x [16 x i32]], align 16
@f_in_check.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@extended_in_check.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@path_x = external global [300 x %struct.move_x], align 16
@ply = external global i32, align 4
@fifty = external global i32, align 4
@is_promoted = external global [62 x i32], align 16
@squares = external global [144 x i32], align 16
@material = external global [14 x i32], align 16
@Material = external global i32, align 4
@zobrist = external global [14 x [144 x i32]], align 16
@hash = external global i32, align 4
@white_castled = external global i32, align 4
@black_castled = external global i32, align 4
@total_moves = common global i32 0, align 4
@total_movegens = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @check_legal(%struct.move_s*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.move_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.move_s* %0, %struct.move_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.move_s*, %struct.move_s** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.move_s, %struct.move_s* %12, i64 %14
  %16 = getelementptr inbounds %struct.move_s, %struct.move_s* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.move_s*, %struct.move_s** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.move_s, %struct.move_s* %18, i64 %20
  %22 = getelementptr inbounds %struct.move_s, %struct.move_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.move_s*, %struct.move_s** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.move_s, %struct.move_s* %24, i64 %26
  %28 = getelementptr inbounds %struct.move_s, %struct.move_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @Variant, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %3
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:33:                                     ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %101

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %52

; <label>:39:                                     ; preds = %36
  %40 = call i32 @is_attacked(i32 30, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:43:                                     ; preds = %39
  %44 = call i32 @is_attacked(i32 31, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:47:                                     ; preds = %43
  %48 = call i32 @is_attacked(i32 32, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %47
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:51:                                     ; preds = %47
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:52:                                     ; preds = %36
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %68

; <label>:55:                                     ; preds = %52
  %56 = call i32 @is_attacked(i32 30, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %55
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:59:                                     ; preds = %55
  %60 = call i32 @is_attacked(i32 29, i32 0)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %59
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:63:                                     ; preds = %59
  %64 = call i32 @is_attacked(i32 28, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %63
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:67:                                     ; preds = %63
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:68:                                     ; preds = %52
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %84

; <label>:71:                                     ; preds = %68
  %72 = call i32 @is_attacked(i32 114, i32 1)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %71
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:75:                                     ; preds = %71
  %76 = call i32 @is_attacked(i32 115, i32 1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %75
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:79:                                     ; preds = %75
  %80 = call i32 @is_attacked(i32 116, i32 1)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:83:                                     ; preds = %79
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:84:                                     ; preds = %68
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %100

; <label>:87:                                     ; preds = %84
  %88 = call i32 @is_attacked(i32 114, i32 1)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:91:                                     ; preds = %87
  %92 = call i32 @is_attacked(i32 113, i32 1)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %91
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:95:                                     ; preds = %91
  %96 = call i32 @is_attacked(i32 112, i32 1)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %95
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:99:                                     ; preds = %95
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:100:                                    ; preds = %84
  br label %1572

; <label>:101:                                    ; preds = %33
  %102 = load i32, i32* @white_to_move, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %836

; <label>:105:                                    ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %830, label %108

; <label>:108:                                    ; preds = %105
  %109 = load %struct.move_s*, %struct.move_s** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.move_s, %struct.move_s* %109, i64 %111
  %113 = getelementptr inbounds %struct.move_s, %struct.move_s* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %108
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:117:                                    ; preds = %108
  %118 = load %struct.move_s*, %struct.move_s** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.move_s, %struct.move_s* %118, i64 %120
  %122 = getelementptr inbounds %struct.move_s, %struct.move_s* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

; <label>:125:                                    ; preds = %117
  br label %131

; <label>:126:                                    ; preds = %117
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  br label %131

; <label>:131:                                    ; preds = %126, %125
  %132 = phi i32 [ 2, %125 ], [ %130, %126 ]
  switch i32 %132, label %542 [
    i32 2, label %133
    i32 4, label %216
    i32 12, label %258
    i32 8, label %314
    i32 10, label %370
  ]

; <label>:133:                                    ; preds = %131
  %134 = load %struct.move_s*, %struct.move_s** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.move_s, %struct.move_s* %134, i64 %136
  %138 = getelementptr inbounds %struct.move_s, %struct.move_s* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 13
  br i1 %140, label %141, label %183

; <label>:141:                                    ; preds = %133
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @bking_loc, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %145, %149
  br i1 %150, label %151, label %182

; <label>:151:                                    ; preds = %141
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @bking_loc, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %155, %159
  br i1 %160, label %161, label %182

; <label>:161:                                    ; preds = %151
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @bking_loc, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %165, %169
  br i1 %170, label %171, label %182

; <label>:171:                                    ; preds = %161
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @bking_loc, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %175, %179
  br i1 %180, label %181, label %182

; <label>:181:                                    ; preds = %171
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:182:                                    ; preds = %171, %161, %151, %141
  br label %215

; <label>:183:                                    ; preds = %133
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @bking_loc, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %187, %191
  br i1 %192, label %193, label %214

; <label>:193:                                    ; preds = %183
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @bking_loc, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %197, %201
  br i1 %202, label %203, label %214

; <label>:203:                                    ; preds = %193
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @bking_loc, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %207, %211
  br i1 %212, label %213, label %214

; <label>:213:                                    ; preds = %203
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:214:                                    ; preds = %203, %193, %183
  br label %215

; <label>:215:                                    ; preds = %214, %182
  br label %543

; <label>:216:                                    ; preds = %131
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @bking_loc, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %220, %224
  br i1 %225, label %226, label %257

; <label>:226:                                    ; preds = %216
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @bking_loc, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %230, %234
  br i1 %235, label %236, label %257

; <label>:236:                                    ; preds = %226
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @bking_loc, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %240, %244
  br i1 %245, label %246, label %257

; <label>:246:                                    ; preds = %236
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @bking_loc, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %250, %254
  br i1 %255, label %256, label %257

; <label>:256:                                    ; preds = %246
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:257:                                    ; preds = %246, %236, %226, %216
  br label %543

; <label>:258:                                    ; preds = %131
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @bking_loc, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %262, %266
  br i1 %267, label %268, label %313

; <label>:268:                                    ; preds = %258
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @bking_loc, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %272, %276
  br i1 %277, label %278, label %313

; <label>:278:                                    ; preds = %268
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %282, %286
  br i1 %287, label %288, label %300

; <label>:288:                                    ; preds = %278
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @bking_loc, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %292, %296
  br i1 %297, label %298, label %299

; <label>:298:                                    ; preds = %288
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:299:                                    ; preds = %288
  br label %312

; <label>:300:                                    ; preds = %278
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @bking_loc, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %304, %308
  br i1 %309, label %310, label %311

; <label>:310:                                    ; preds = %300
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:311:                                    ; preds = %300
  br label %312

; <label>:312:                                    ; preds = %311, %299
  br label %313

; <label>:313:                                    ; preds = %312, %268, %258
  br label %543

; <label>:314:                                    ; preds = %131
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @bking_loc, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %318, %322
  br i1 %323, label %324, label %369

; <label>:324:                                    ; preds = %314
  %325 = load i32, i32* %9, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @bking_loc, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %328, %332
  br i1 %333, label %334, label %369

; <label>:334:                                    ; preds = %324
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %338, %342
  br i1 %343, label %344, label %356

; <label>:344:                                    ; preds = %334
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @bking_loc, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %348, %352
  br i1 %353, label %354, label %355

; <label>:354:                                    ; preds = %344
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:355:                                    ; preds = %344
  br label %368

; <label>:356:                                    ; preds = %334
  %357 = load i32, i32* %9, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @bking_loc, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = icmp ne i32 %360, %364
  br i1 %365, label %366, label %367

; <label>:366:                                    ; preds = %356
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:367:                                    ; preds = %356
  br label %368

; <label>:368:                                    ; preds = %367, %355
  br label %369

; <label>:369:                                    ; preds = %368, %324, %314
  br label %543

; <label>:370:                                    ; preds = %131
  %371 = load i32, i32* %9, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %10, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %374, %378
  br i1 %379, label %380, label %412

; <label>:380:                                    ; preds = %370
  %381 = load i32, i32* %9, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @bking_loc, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %384, %388
  br i1 %389, label %390, label %411

; <label>:390:                                    ; preds = %380
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @bking_loc, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = icmp ne i32 %394, %398
  br i1 %399, label %400, label %411

; <label>:400:                                    ; preds = %390
  %401 = load i32, i32* %9, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @bking_loc, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %404, %408
  br i1 %409, label %410, label %411

; <label>:410:                                    ; preds = %400
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:411:                                    ; preds = %400, %390, %380
  br label %541

; <label>:412:                                    ; preds = %370
  %413 = load i32, i32* %9, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %10, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = icmp eq i32 %416, %420
  br i1 %421, label %422, label %454

; <label>:422:                                    ; preds = %412
  %423 = load i32, i32* %9, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @bking_loc, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %426, %430
  br i1 %431, label %432, label %453

; <label>:432:                                    ; preds = %422
  %433 = load i32, i32* %9, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @bking_loc, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = icmp ne i32 %436, %440
  br i1 %441, label %442, label %453

; <label>:442:                                    ; preds = %432
  %443 = load i32, i32* %9, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @bking_loc, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = icmp ne i32 %446, %450
  br i1 %451, label %452, label %453

; <label>:452:                                    ; preds = %442
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:453:                                    ; preds = %442, %432, %422
  br label %540

; <label>:454:                                    ; preds = %412
  %455 = load i32, i32* %9, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* %10, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = icmp eq i32 %458, %462
  br i1 %463, label %464, label %496

; <label>:464:                                    ; preds = %454
  %465 = load i32, i32* %9, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* @bking_loc, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = icmp ne i32 %468, %472
  br i1 %473, label %474, label %495

; <label>:474:                                    ; preds = %464
  %475 = load i32, i32* %9, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* @bking_loc, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = icmp ne i32 %478, %482
  br i1 %483, label %484, label %495

; <label>:484:                                    ; preds = %474
  %485 = load i32, i32* %9, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* @bking_loc, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = icmp ne i32 %488, %492
  br i1 %493, label %494, label %495

; <label>:494:                                    ; preds = %484
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:495:                                    ; preds = %484, %474, %464
  br label %539

; <label>:496:                                    ; preds = %454
  %497 = load i32, i32* %9, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %10, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = icmp eq i32 %500, %504
  br i1 %505, label %506, label %538

; <label>:506:                                    ; preds = %496
  %507 = load i32, i32* %9, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* @bking_loc, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = icmp ne i32 %510, %514
  br i1 %515, label %516, label %537

; <label>:516:                                    ; preds = %506
  %517 = load i32, i32* %9, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* @bking_loc, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = icmp ne i32 %520, %524
  br i1 %525, label %526, label %537

; <label>:526:                                    ; preds = %516
  %527 = load i32, i32* %9, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %528
  %530 = load i32, i32* %529, align 4
  %531 = load i32, i32* @bking_loc, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = icmp ne i32 %530, %534
  br i1 %535, label %536, label %537

; <label>:536:                                    ; preds = %526
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:537:                                    ; preds = %526, %516, %506
  br label %538

; <label>:538:                                    ; preds = %537, %496
  br label %539

; <label>:539:                                    ; preds = %538, %495
  br label %540

; <label>:540:                                    ; preds = %539, %453
  br label %541

; <label>:541:                                    ; preds = %540, %411
  br label %543

; <label>:542:                                    ; preds = %131
  br label %543

; <label>:543:                                    ; preds = %542, %541, %369, %313, %257, %215
  %544 = load i32, i32* %10, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = icmp ne i32 %547, 6
  br i1 %548, label %549, label %829

; <label>:549:                                    ; preds = %543
  %550 = load i32, i32* %9, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* @bking_loc, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = icmp eq i32 %553, %557
  br i1 %558, label %559, label %618

; <label>:559:                                    ; preds = %549
  %560 = load i32, i32* @bking_loc, align 4
  %561 = load i32, i32* %9, align 4
  %562 = icmp sgt i32 %560, %561
  br i1 %562, label %563, label %590

; <label>:563:                                    ; preds = %559
  %564 = load i32, i32* @bking_loc, align 4
  %565 = sub nsw i32 %564, 12
  store i32 %565, i32* %11, align 4
  br label %566

; <label>:566:                                    ; preds = %573, %563
  %567 = load i32, i32* %11, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = icmp eq i32 %570, 13
  br i1 %571, label %572, label %576

; <label>:572:                                    ; preds = %566
  br label %573

; <label>:573:                                    ; preds = %572
  %574 = load i32, i32* %11, align 4
  %575 = sub nsw i32 %574, 12
  store i32 %575, i32* %11, align 4
  br label %566

; <label>:576:                                    ; preds = %566
  %577 = load i32, i32* %11, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = icmp eq i32 %580, 7
  br i1 %581, label %588, label %582

; <label>:582:                                    ; preds = %576
  %583 = load i32, i32* %11, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %584
  %586 = load i32, i32* %585, align 4
  %587 = icmp eq i32 %586, 9
  br i1 %587, label %588, label %589

; <label>:588:                                    ; preds = %582, %576
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:589:                                    ; preds = %582
  br label %617

; <label>:590:                                    ; preds = %559
  %591 = load i32, i32* @bking_loc, align 4
  %592 = add nsw i32 %591, 12
  store i32 %592, i32* %11, align 4
  br label %593

; <label>:593:                                    ; preds = %600, %590
  %594 = load i32, i32* %11, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = icmp eq i32 %597, 13
  br i1 %598, label %599, label %603

; <label>:599:                                    ; preds = %593
  br label %600

; <label>:600:                                    ; preds = %599
  %601 = load i32, i32* %11, align 4
  %602 = add nsw i32 %601, 12
  store i32 %602, i32* %11, align 4
  br label %593

; <label>:603:                                    ; preds = %593
  %604 = load i32, i32* %11, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = icmp eq i32 %607, 7
  br i1 %608, label %615, label %609

; <label>:609:                                    ; preds = %603
  %610 = load i32, i32* %11, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %611
  %613 = load i32, i32* %612, align 4
  %614 = icmp eq i32 %613, 9
  br i1 %614, label %615, label %616

; <label>:615:                                    ; preds = %609, %603
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:616:                                    ; preds = %609
  br label %617

; <label>:617:                                    ; preds = %616, %589
  br label %828

; <label>:618:                                    ; preds = %549
  %619 = load i32, i32* %9, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* @bking_loc, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = icmp eq i32 %622, %626
  br i1 %627, label %628, label %687

; <label>:628:                                    ; preds = %618
  %629 = load i32, i32* @bking_loc, align 4
  %630 = load i32, i32* %9, align 4
  %631 = icmp sgt i32 %629, %630
  br i1 %631, label %632, label %659

; <label>:632:                                    ; preds = %628
  %633 = load i32, i32* @bking_loc, align 4
  %634 = sub nsw i32 %633, 1
  store i32 %634, i32* %11, align 4
  br label %635

; <label>:635:                                    ; preds = %642, %632
  %636 = load i32, i32* %11, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %637
  %639 = load i32, i32* %638, align 4
  %640 = icmp eq i32 %639, 13
  br i1 %640, label %641, label %645

; <label>:641:                                    ; preds = %635
  br label %642

; <label>:642:                                    ; preds = %641
  %643 = load i32, i32* %11, align 4
  %644 = sub nsw i32 %643, 1
  store i32 %644, i32* %11, align 4
  br label %635

; <label>:645:                                    ; preds = %635
  %646 = load i32, i32* %11, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %647
  %649 = load i32, i32* %648, align 4
  %650 = icmp eq i32 %649, 7
  br i1 %650, label %657, label %651

; <label>:651:                                    ; preds = %645
  %652 = load i32, i32* %11, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %653
  %655 = load i32, i32* %654, align 4
  %656 = icmp eq i32 %655, 9
  br i1 %656, label %657, label %658

; <label>:657:                                    ; preds = %651, %645
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:658:                                    ; preds = %651
  br label %686

; <label>:659:                                    ; preds = %628
  %660 = load i32, i32* @bking_loc, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %11, align 4
  br label %662

; <label>:662:                                    ; preds = %669, %659
  %663 = load i32, i32* %11, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = icmp eq i32 %666, 13
  br i1 %667, label %668, label %672

; <label>:668:                                    ; preds = %662
  br label %669

; <label>:669:                                    ; preds = %668
  %670 = load i32, i32* %11, align 4
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %11, align 4
  br label %662

; <label>:672:                                    ; preds = %662
  %673 = load i32, i32* %11, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = icmp eq i32 %676, 7
  br i1 %677, label %684, label %678

; <label>:678:                                    ; preds = %672
  %679 = load i32, i32* %11, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %680
  %682 = load i32, i32* %681, align 4
  %683 = icmp eq i32 %682, 9
  br i1 %683, label %684, label %685

; <label>:684:                                    ; preds = %678, %672
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:685:                                    ; preds = %678
  br label %686

; <label>:686:                                    ; preds = %685, %658
  br label %827

; <label>:687:                                    ; preds = %618
  %688 = load i32, i32* %9, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = load i32, i32* @bking_loc, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %693
  %695 = load i32, i32* %694, align 4
  %696 = icmp eq i32 %691, %695
  br i1 %696, label %697, label %756

; <label>:697:                                    ; preds = %687
  %698 = load i32, i32* @bking_loc, align 4
  %699 = load i32, i32* %9, align 4
  %700 = icmp sgt i32 %698, %699
  br i1 %700, label %701, label %728

; <label>:701:                                    ; preds = %697
  %702 = load i32, i32* @bking_loc, align 4
  %703 = sub nsw i32 %702, 13
  store i32 %703, i32* %11, align 4
  br label %704

; <label>:704:                                    ; preds = %711, %701
  %705 = load i32, i32* %11, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %706
  %708 = load i32, i32* %707, align 4
  %709 = icmp eq i32 %708, 13
  br i1 %709, label %710, label %714

; <label>:710:                                    ; preds = %704
  br label %711

; <label>:711:                                    ; preds = %710
  %712 = load i32, i32* %11, align 4
  %713 = sub nsw i32 %712, 13
  store i32 %713, i32* %11, align 4
  br label %704

; <label>:714:                                    ; preds = %704
  %715 = load i32, i32* %11, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %716
  %718 = load i32, i32* %717, align 4
  %719 = icmp eq i32 %718, 11
  br i1 %719, label %726, label %720

; <label>:720:                                    ; preds = %714
  %721 = load i32, i32* %11, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %722
  %724 = load i32, i32* %723, align 4
  %725 = icmp eq i32 %724, 9
  br i1 %725, label %726, label %727

; <label>:726:                                    ; preds = %720, %714
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:727:                                    ; preds = %720
  br label %755

; <label>:728:                                    ; preds = %697
  %729 = load i32, i32* @bking_loc, align 4
  %730 = add nsw i32 %729, 13
  store i32 %730, i32* %11, align 4
  br label %731

; <label>:731:                                    ; preds = %738, %728
  %732 = load i32, i32* %11, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %733
  %735 = load i32, i32* %734, align 4
  %736 = icmp eq i32 %735, 13
  br i1 %736, label %737, label %741

; <label>:737:                                    ; preds = %731
  br label %738

; <label>:738:                                    ; preds = %737
  %739 = load i32, i32* %11, align 4
  %740 = add nsw i32 %739, 13
  store i32 %740, i32* %11, align 4
  br label %731

; <label>:741:                                    ; preds = %731
  %742 = load i32, i32* %11, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %743
  %745 = load i32, i32* %744, align 4
  %746 = icmp eq i32 %745, 11
  br i1 %746, label %753, label %747

; <label>:747:                                    ; preds = %741
  %748 = load i32, i32* %11, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %749
  %751 = load i32, i32* %750, align 4
  %752 = icmp eq i32 %751, 9
  br i1 %752, label %753, label %754

; <label>:753:                                    ; preds = %747, %741
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:754:                                    ; preds = %747
  br label %755

; <label>:755:                                    ; preds = %754, %727
  br label %826

; <label>:756:                                    ; preds = %687
  %757 = load i32, i32* %9, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %758
  %760 = load i32, i32* %759, align 4
  %761 = load i32, i32* @bking_loc, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %762
  %764 = load i32, i32* %763, align 4
  %765 = icmp eq i32 %760, %764
  br i1 %765, label %766, label %825

; <label>:766:                                    ; preds = %756
  %767 = load i32, i32* @bking_loc, align 4
  %768 = load i32, i32* %9, align 4
  %769 = icmp sgt i32 %767, %768
  br i1 %769, label %770, label %797

; <label>:770:                                    ; preds = %766
  %771 = load i32, i32* @bking_loc, align 4
  %772 = sub nsw i32 %771, 11
  store i32 %772, i32* %11, align 4
  br label %773

; <label>:773:                                    ; preds = %780, %770
  %774 = load i32, i32* %11, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %775
  %777 = load i32, i32* %776, align 4
  %778 = icmp eq i32 %777, 13
  br i1 %778, label %779, label %783

; <label>:779:                                    ; preds = %773
  br label %780

; <label>:780:                                    ; preds = %779
  %781 = load i32, i32* %11, align 4
  %782 = sub nsw i32 %781, 11
  store i32 %782, i32* %11, align 4
  br label %773

; <label>:783:                                    ; preds = %773
  %784 = load i32, i32* %11, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %785
  %787 = load i32, i32* %786, align 4
  %788 = icmp eq i32 %787, 11
  br i1 %788, label %795, label %789

; <label>:789:                                    ; preds = %783
  %790 = load i32, i32* %11, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %791
  %793 = load i32, i32* %792, align 4
  %794 = icmp eq i32 %793, 9
  br i1 %794, label %795, label %796

; <label>:795:                                    ; preds = %789, %783
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:796:                                    ; preds = %789
  br label %824

; <label>:797:                                    ; preds = %766
  %798 = load i32, i32* @bking_loc, align 4
  %799 = add nsw i32 %798, 11
  store i32 %799, i32* %11, align 4
  br label %800

; <label>:800:                                    ; preds = %807, %797
  %801 = load i32, i32* %11, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %802
  %804 = load i32, i32* %803, align 4
  %805 = icmp eq i32 %804, 13
  br i1 %805, label %806, label %810

; <label>:806:                                    ; preds = %800
  br label %807

; <label>:807:                                    ; preds = %806
  %808 = load i32, i32* %11, align 4
  %809 = add nsw i32 %808, 11
  store i32 %809, i32* %11, align 4
  br label %800

; <label>:810:                                    ; preds = %800
  %811 = load i32, i32* %11, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %812
  %814 = load i32, i32* %813, align 4
  %815 = icmp eq i32 %814, 11
  br i1 %815, label %822, label %816

; <label>:816:                                    ; preds = %810
  %817 = load i32, i32* %11, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %818
  %820 = load i32, i32* %819, align 4
  %821 = icmp eq i32 %820, 9
  br i1 %821, label %822, label %823

; <label>:822:                                    ; preds = %816, %810
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:823:                                    ; preds = %816
  br label %824

; <label>:824:                                    ; preds = %823, %796
  br label %825

; <label>:825:                                    ; preds = %824, %756
  br label %826

; <label>:826:                                    ; preds = %825, %755
  br label %827

; <label>:827:                                    ; preds = %826, %686
  br label %828

; <label>:828:                                    ; preds = %827, %617
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:829:                                    ; preds = %543
  br label %830

; <label>:830:                                    ; preds = %829, %105
  %831 = load i32, i32* @bking_loc, align 4
  %832 = call i32 @is_attacked(i32 %831, i32 1)
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %835

; <label>:834:                                    ; preds = %830
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:835:                                    ; preds = %830
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:836:                                    ; preds = %101
  %837 = load i32, i32* %7, align 4
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %1566, label %839

; <label>:839:                                    ; preds = %836
  %840 = load %struct.move_s*, %struct.move_s** %5, align 8
  %841 = load i32, i32* %6, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds %struct.move_s, %struct.move_s* %840, i64 %842
  %844 = getelementptr inbounds %struct.move_s, %struct.move_s* %843, i32 0, i32 0
  %845 = load i32, i32* %844, align 4
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %848

; <label>:847:                                    ; preds = %839
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:848:                                    ; preds = %839
  %849 = load %struct.move_s*, %struct.move_s** %5, align 8
  %850 = load i32, i32* %6, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds %struct.move_s, %struct.move_s* %849, i64 %851
  %853 = getelementptr inbounds %struct.move_s, %struct.move_s* %852, i32 0, i32 3
  %854 = load i32, i32* %853, align 4
  %855 = icmp ne i32 %854, 0
  br i1 %855, label %856, label %857

; <label>:856:                                    ; preds = %848
  br label %862

; <label>:857:                                    ; preds = %848
  %858 = load i32, i32* %10, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %859
  %861 = load i32, i32* %860, align 4
  br label %862

; <label>:862:                                    ; preds = %857, %856
  %863 = phi i32 [ 1, %856 ], [ %861, %857 ]
  switch i32 %863, label %1278 [
    i32 1, label %864
    i32 3, label %947
    i32 11, label %989
    i32 7, label %1045
    i32 9, label %1101
  ]

; <label>:864:                                    ; preds = %862
  %865 = load %struct.move_s*, %struct.move_s** %5, align 8
  %866 = load i32, i32* %6, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds %struct.move_s, %struct.move_s* %865, i64 %867
  %869 = getelementptr inbounds %struct.move_s, %struct.move_s* %868, i32 0, i32 2
  %870 = load i32, i32* %869, align 4
  %871 = icmp ne i32 %870, 13
  br i1 %871, label %872, label %914

; <label>:872:                                    ; preds = %864
  %873 = load i32, i32* %9, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %874
  %876 = load i32, i32* %875, align 4
  %877 = load i32, i32* @wking_loc, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %878
  %880 = load i32, i32* %879, align 4
  %881 = icmp ne i32 %876, %880
  br i1 %881, label %882, label %913

; <label>:882:                                    ; preds = %872
  %883 = load i32, i32* %9, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %884
  %886 = load i32, i32* %885, align 4
  %887 = load i32, i32* @wking_loc, align 4
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %888
  %890 = load i32, i32* %889, align 4
  %891 = icmp ne i32 %886, %890
  br i1 %891, label %892, label %913

; <label>:892:                                    ; preds = %882
  %893 = load i32, i32* %9, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %894
  %896 = load i32, i32* %895, align 4
  %897 = load i32, i32* @wking_loc, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %898
  %900 = load i32, i32* %899, align 4
  %901 = icmp ne i32 %896, %900
  br i1 %901, label %902, label %913

; <label>:902:                                    ; preds = %892
  %903 = load i32, i32* %9, align 4
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %904
  %906 = load i32, i32* %905, align 4
  %907 = load i32, i32* @wking_loc, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %908
  %910 = load i32, i32* %909, align 4
  %911 = icmp ne i32 %906, %910
  br i1 %911, label %912, label %913

; <label>:912:                                    ; preds = %902
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:913:                                    ; preds = %902, %892, %882, %872
  br label %946

; <label>:914:                                    ; preds = %864
  %915 = load i32, i32* %9, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %916
  %918 = load i32, i32* %917, align 4
  %919 = load i32, i32* @wking_loc, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %920
  %922 = load i32, i32* %921, align 4
  %923 = icmp ne i32 %918, %922
  br i1 %923, label %924, label %945

; <label>:924:                                    ; preds = %914
  %925 = load i32, i32* %9, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %926
  %928 = load i32, i32* %927, align 4
  %929 = load i32, i32* @wking_loc, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %930
  %932 = load i32, i32* %931, align 4
  %933 = icmp ne i32 %928, %932
  br i1 %933, label %934, label %945

; <label>:934:                                    ; preds = %924
  %935 = load i32, i32* %9, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %936
  %938 = load i32, i32* %937, align 4
  %939 = load i32, i32* @wking_loc, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %940
  %942 = load i32, i32* %941, align 4
  %943 = icmp ne i32 %938, %942
  br i1 %943, label %944, label %945

; <label>:944:                                    ; preds = %934
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:945:                                    ; preds = %934, %924, %914
  br label %946

; <label>:946:                                    ; preds = %945, %913
  br label %1279

; <label>:947:                                    ; preds = %862
  %948 = load i32, i32* %9, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %949
  %951 = load i32, i32* %950, align 4
  %952 = load i32, i32* @wking_loc, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %953
  %955 = load i32, i32* %954, align 4
  %956 = icmp ne i32 %951, %955
  br i1 %956, label %957, label %988

; <label>:957:                                    ; preds = %947
  %958 = load i32, i32* %9, align 4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %959
  %961 = load i32, i32* %960, align 4
  %962 = load i32, i32* @wking_loc, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %963
  %965 = load i32, i32* %964, align 4
  %966 = icmp ne i32 %961, %965
  br i1 %966, label %967, label %988

; <label>:967:                                    ; preds = %957
  %968 = load i32, i32* %9, align 4
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %969
  %971 = load i32, i32* %970, align 4
  %972 = load i32, i32* @wking_loc, align 4
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %973
  %975 = load i32, i32* %974, align 4
  %976 = icmp ne i32 %971, %975
  br i1 %976, label %977, label %988

; <label>:977:                                    ; preds = %967
  %978 = load i32, i32* %9, align 4
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %979
  %981 = load i32, i32* %980, align 4
  %982 = load i32, i32* @wking_loc, align 4
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %983
  %985 = load i32, i32* %984, align 4
  %986 = icmp ne i32 %981, %985
  br i1 %986, label %987, label %988

; <label>:987:                                    ; preds = %977
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:988:                                    ; preds = %977, %967, %957, %947
  br label %1279

; <label>:989:                                    ; preds = %862
  %990 = load i32, i32* %9, align 4
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %991
  %993 = load i32, i32* %992, align 4
  %994 = load i32, i32* @wking_loc, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %995
  %997 = load i32, i32* %996, align 4
  %998 = icmp ne i32 %993, %997
  br i1 %998, label %999, label %1044

; <label>:999:                                    ; preds = %989
  %1000 = load i32, i32* %9, align 4
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1001
  %1003 = load i32, i32* %1002, align 4
  %1004 = load i32, i32* @wking_loc, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1005
  %1007 = load i32, i32* %1006, align 4
  %1008 = icmp ne i32 %1003, %1007
  br i1 %1008, label %1009, label %1044

; <label>:1009:                                   ; preds = %999
  %1010 = load i32, i32* %9, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1011
  %1013 = load i32, i32* %1012, align 4
  %1014 = load i32, i32* %10, align 4
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1015
  %1017 = load i32, i32* %1016, align 4
  %1018 = icmp eq i32 %1013, %1017
  br i1 %1018, label %1019, label %1031

; <label>:1019:                                   ; preds = %1009
  %1020 = load i32, i32* %9, align 4
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1021
  %1023 = load i32, i32* %1022, align 4
  %1024 = load i32, i32* @wking_loc, align 4
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1025
  %1027 = load i32, i32* %1026, align 4
  %1028 = icmp ne i32 %1023, %1027
  br i1 %1028, label %1029, label %1030

; <label>:1029:                                   ; preds = %1019
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1030:                                   ; preds = %1019
  br label %1043

; <label>:1031:                                   ; preds = %1009
  %1032 = load i32, i32* %9, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1033
  %1035 = load i32, i32* %1034, align 4
  %1036 = load i32, i32* @wking_loc, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1037
  %1039 = load i32, i32* %1038, align 4
  %1040 = icmp ne i32 %1035, %1039
  br i1 %1040, label %1041, label %1042

; <label>:1041:                                   ; preds = %1031
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1042:                                   ; preds = %1031
  br label %1043

; <label>:1043:                                   ; preds = %1042, %1030
  br label %1044

; <label>:1044:                                   ; preds = %1043, %999, %989
  br label %1279

; <label>:1045:                                   ; preds = %862
  %1046 = load i32, i32* %9, align 4
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1047
  %1049 = load i32, i32* %1048, align 4
  %1050 = load i32, i32* @wking_loc, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1051
  %1053 = load i32, i32* %1052, align 4
  %1054 = icmp ne i32 %1049, %1053
  br i1 %1054, label %1055, label %1100

; <label>:1055:                                   ; preds = %1045
  %1056 = load i32, i32* %9, align 4
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1057
  %1059 = load i32, i32* %1058, align 4
  %1060 = load i32, i32* @wking_loc, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1061
  %1063 = load i32, i32* %1062, align 4
  %1064 = icmp ne i32 %1059, %1063
  br i1 %1064, label %1065, label %1100

; <label>:1065:                                   ; preds = %1055
  %1066 = load i32, i32* %9, align 4
  %1067 = sext i32 %1066 to i64
  %1068 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1067
  %1069 = load i32, i32* %1068, align 4
  %1070 = load i32, i32* %10, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1071
  %1073 = load i32, i32* %1072, align 4
  %1074 = icmp eq i32 %1069, %1073
  br i1 %1074, label %1075, label %1087

; <label>:1075:                                   ; preds = %1065
  %1076 = load i32, i32* %9, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1077
  %1079 = load i32, i32* %1078, align 4
  %1080 = load i32, i32* @wking_loc, align 4
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1081
  %1083 = load i32, i32* %1082, align 4
  %1084 = icmp ne i32 %1079, %1083
  br i1 %1084, label %1085, label %1086

; <label>:1085:                                   ; preds = %1075
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1086:                                   ; preds = %1075
  br label %1099

; <label>:1087:                                   ; preds = %1065
  %1088 = load i32, i32* %9, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1089
  %1091 = load i32, i32* %1090, align 4
  %1092 = load i32, i32* @wking_loc, align 4
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1093
  %1095 = load i32, i32* %1094, align 4
  %1096 = icmp ne i32 %1091, %1095
  br i1 %1096, label %1097, label %1098

; <label>:1097:                                   ; preds = %1087
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1098:                                   ; preds = %1087
  br label %1099

; <label>:1099:                                   ; preds = %1098, %1086
  br label %1100

; <label>:1100:                                   ; preds = %1099, %1055, %1045
  br label %1279

; <label>:1101:                                   ; preds = %862
  %1102 = load i32, i32* %9, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1103
  %1105 = load i32, i32* %1104, align 4
  %1106 = load %struct.move_s*, %struct.move_s** %5, align 8
  %1107 = load i32, i32* %6, align 4
  %1108 = sext i32 %1107 to i64
  %1109 = getelementptr inbounds %struct.move_s, %struct.move_s* %1106, i64 %1108
  %1110 = getelementptr inbounds %struct.move_s, %struct.move_s* %1109, i32 0, i32 1
  %1111 = load i32, i32* %1110, align 4
  %1112 = sext i32 %1111 to i64
  %1113 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1112
  %1114 = load i32, i32* %1113, align 4
  %1115 = icmp eq i32 %1105, %1114
  br i1 %1115, label %1116, label %1148

; <label>:1116:                                   ; preds = %1101
  %1117 = load i32, i32* %9, align 4
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1118
  %1120 = load i32, i32* %1119, align 4
  %1121 = load i32, i32* @wking_loc, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1122
  %1124 = load i32, i32* %1123, align 4
  %1125 = icmp ne i32 %1120, %1124
  br i1 %1125, label %1126, label %1147

; <label>:1126:                                   ; preds = %1116
  %1127 = load i32, i32* %9, align 4
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1128
  %1130 = load i32, i32* %1129, align 4
  %1131 = load i32, i32* @wking_loc, align 4
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1132
  %1134 = load i32, i32* %1133, align 4
  %1135 = icmp ne i32 %1130, %1134
  br i1 %1135, label %1136, label %1147

; <label>:1136:                                   ; preds = %1126
  %1137 = load i32, i32* %9, align 4
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1138
  %1140 = load i32, i32* %1139, align 4
  %1141 = load i32, i32* @wking_loc, align 4
  %1142 = sext i32 %1141 to i64
  %1143 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1142
  %1144 = load i32, i32* %1143, align 4
  %1145 = icmp ne i32 %1140, %1144
  br i1 %1145, label %1146, label %1147

; <label>:1146:                                   ; preds = %1136
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1147:                                   ; preds = %1136, %1126, %1116
  br label %1277

; <label>:1148:                                   ; preds = %1101
  %1149 = load i32, i32* %9, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1150
  %1152 = load i32, i32* %1151, align 4
  %1153 = load i32, i32* %10, align 4
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1154
  %1156 = load i32, i32* %1155, align 4
  %1157 = icmp eq i32 %1152, %1156
  br i1 %1157, label %1158, label %1190

; <label>:1158:                                   ; preds = %1148
  %1159 = load i32, i32* %9, align 4
  %1160 = sext i32 %1159 to i64
  %1161 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1160
  %1162 = load i32, i32* %1161, align 4
  %1163 = load i32, i32* @wking_loc, align 4
  %1164 = sext i32 %1163 to i64
  %1165 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1164
  %1166 = load i32, i32* %1165, align 4
  %1167 = icmp ne i32 %1162, %1166
  br i1 %1167, label %1168, label %1189

; <label>:1168:                                   ; preds = %1158
  %1169 = load i32, i32* %9, align 4
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1170
  %1172 = load i32, i32* %1171, align 4
  %1173 = load i32, i32* @wking_loc, align 4
  %1174 = sext i32 %1173 to i64
  %1175 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1174
  %1176 = load i32, i32* %1175, align 4
  %1177 = icmp ne i32 %1172, %1176
  br i1 %1177, label %1178, label %1189

; <label>:1178:                                   ; preds = %1168
  %1179 = load i32, i32* %9, align 4
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1180
  %1182 = load i32, i32* %1181, align 4
  %1183 = load i32, i32* @wking_loc, align 4
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1184
  %1186 = load i32, i32* %1185, align 4
  %1187 = icmp ne i32 %1182, %1186
  br i1 %1187, label %1188, label %1189

; <label>:1188:                                   ; preds = %1178
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1189:                                   ; preds = %1178, %1168, %1158
  br label %1276

; <label>:1190:                                   ; preds = %1148
  %1191 = load i32, i32* %9, align 4
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1192
  %1194 = load i32, i32* %1193, align 4
  %1195 = load i32, i32* %10, align 4
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1196
  %1198 = load i32, i32* %1197, align 4
  %1199 = icmp eq i32 %1194, %1198
  br i1 %1199, label %1200, label %1232

; <label>:1200:                                   ; preds = %1190
  %1201 = load i32, i32* %9, align 4
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1202
  %1204 = load i32, i32* %1203, align 4
  %1205 = load i32, i32* @wking_loc, align 4
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1206
  %1208 = load i32, i32* %1207, align 4
  %1209 = icmp ne i32 %1204, %1208
  br i1 %1209, label %1210, label %1231

; <label>:1210:                                   ; preds = %1200
  %1211 = load i32, i32* %9, align 4
  %1212 = sext i32 %1211 to i64
  %1213 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1212
  %1214 = load i32, i32* %1213, align 4
  %1215 = load i32, i32* @wking_loc, align 4
  %1216 = sext i32 %1215 to i64
  %1217 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1216
  %1218 = load i32, i32* %1217, align 4
  %1219 = icmp ne i32 %1214, %1218
  br i1 %1219, label %1220, label %1231

; <label>:1220:                                   ; preds = %1210
  %1221 = load i32, i32* %9, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1222
  %1224 = load i32, i32* %1223, align 4
  %1225 = load i32, i32* @wking_loc, align 4
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1226
  %1228 = load i32, i32* %1227, align 4
  %1229 = icmp ne i32 %1224, %1228
  br i1 %1229, label %1230, label %1231

; <label>:1230:                                   ; preds = %1220
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1231:                                   ; preds = %1220, %1210, %1200
  br label %1275

; <label>:1232:                                   ; preds = %1190
  %1233 = load i32, i32* %9, align 4
  %1234 = sext i32 %1233 to i64
  %1235 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1234
  %1236 = load i32, i32* %1235, align 4
  %1237 = load i32, i32* %10, align 4
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1238
  %1240 = load i32, i32* %1239, align 4
  %1241 = icmp eq i32 %1236, %1240
  br i1 %1241, label %1242, label %1274

; <label>:1242:                                   ; preds = %1232
  %1243 = load i32, i32* %9, align 4
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1244
  %1246 = load i32, i32* %1245, align 4
  %1247 = load i32, i32* @wking_loc, align 4
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1248
  %1250 = load i32, i32* %1249, align 4
  %1251 = icmp ne i32 %1246, %1250
  br i1 %1251, label %1252, label %1273

; <label>:1252:                                   ; preds = %1242
  %1253 = load i32, i32* %9, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1254
  %1256 = load i32, i32* %1255, align 4
  %1257 = load i32, i32* @wking_loc, align 4
  %1258 = sext i32 %1257 to i64
  %1259 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1258
  %1260 = load i32, i32* %1259, align 4
  %1261 = icmp ne i32 %1256, %1260
  br i1 %1261, label %1262, label %1273

; <label>:1262:                                   ; preds = %1252
  %1263 = load i32, i32* %9, align 4
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1264
  %1266 = load i32, i32* %1265, align 4
  %1267 = load i32, i32* @wking_loc, align 4
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1268
  %1270 = load i32, i32* %1269, align 4
  %1271 = icmp ne i32 %1266, %1270
  br i1 %1271, label %1272, label %1273

; <label>:1272:                                   ; preds = %1262
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1273:                                   ; preds = %1262, %1252, %1242
  br label %1274

; <label>:1274:                                   ; preds = %1273, %1232
  br label %1275

; <label>:1275:                                   ; preds = %1274, %1231
  br label %1276

; <label>:1276:                                   ; preds = %1275, %1189
  br label %1277

; <label>:1277:                                   ; preds = %1276, %1147
  br label %1279

; <label>:1278:                                   ; preds = %862
  br label %1279

; <label>:1279:                                   ; preds = %1278, %1277, %1100, %1044, %988, %946
  %1280 = load i32, i32* %10, align 4
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1281
  %1283 = load i32, i32* %1282, align 4
  %1284 = icmp ne i32 %1283, 5
  br i1 %1284, label %1285, label %1565

; <label>:1285:                                   ; preds = %1279
  %1286 = load i32, i32* %9, align 4
  %1287 = sext i32 %1286 to i64
  %1288 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1287
  %1289 = load i32, i32* %1288, align 4
  %1290 = load i32, i32* @wking_loc, align 4
  %1291 = sext i32 %1290 to i64
  %1292 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1291
  %1293 = load i32, i32* %1292, align 4
  %1294 = icmp eq i32 %1289, %1293
  br i1 %1294, label %1295, label %1354

; <label>:1295:                                   ; preds = %1285
  %1296 = load i32, i32* @wking_loc, align 4
  %1297 = load i32, i32* %9, align 4
  %1298 = icmp sgt i32 %1296, %1297
  br i1 %1298, label %1299, label %1326

; <label>:1299:                                   ; preds = %1295
  %1300 = load i32, i32* @wking_loc, align 4
  %1301 = sub nsw i32 %1300, 12
  store i32 %1301, i32* %11, align 4
  br label %1302

; <label>:1302:                                   ; preds = %1309, %1299
  %1303 = load i32, i32* %11, align 4
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1304
  %1306 = load i32, i32* %1305, align 4
  %1307 = icmp eq i32 %1306, 13
  br i1 %1307, label %1308, label %1312

; <label>:1308:                                   ; preds = %1302
  br label %1309

; <label>:1309:                                   ; preds = %1308
  %1310 = load i32, i32* %11, align 4
  %1311 = sub nsw i32 %1310, 12
  store i32 %1311, i32* %11, align 4
  br label %1302

; <label>:1312:                                   ; preds = %1302
  %1313 = load i32, i32* %11, align 4
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1314
  %1316 = load i32, i32* %1315, align 4
  %1317 = icmp eq i32 %1316, 8
  br i1 %1317, label %1324, label %1318

; <label>:1318:                                   ; preds = %1312
  %1319 = load i32, i32* %11, align 4
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1320
  %1322 = load i32, i32* %1321, align 4
  %1323 = icmp eq i32 %1322, 10
  br i1 %1323, label %1324, label %1325

; <label>:1324:                                   ; preds = %1318, %1312
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1325:                                   ; preds = %1318
  br label %1353

; <label>:1326:                                   ; preds = %1295
  %1327 = load i32, i32* @wking_loc, align 4
  %1328 = add nsw i32 %1327, 12
  store i32 %1328, i32* %11, align 4
  br label %1329

; <label>:1329:                                   ; preds = %1336, %1326
  %1330 = load i32, i32* %11, align 4
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1331
  %1333 = load i32, i32* %1332, align 4
  %1334 = icmp eq i32 %1333, 13
  br i1 %1334, label %1335, label %1339

; <label>:1335:                                   ; preds = %1329
  br label %1336

; <label>:1336:                                   ; preds = %1335
  %1337 = load i32, i32* %11, align 4
  %1338 = add nsw i32 %1337, 12
  store i32 %1338, i32* %11, align 4
  br label %1329

; <label>:1339:                                   ; preds = %1329
  %1340 = load i32, i32* %11, align 4
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1341
  %1343 = load i32, i32* %1342, align 4
  %1344 = icmp eq i32 %1343, 8
  br i1 %1344, label %1351, label %1345

; <label>:1345:                                   ; preds = %1339
  %1346 = load i32, i32* %11, align 4
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1347
  %1349 = load i32, i32* %1348, align 4
  %1350 = icmp eq i32 %1349, 10
  br i1 %1350, label %1351, label %1352

; <label>:1351:                                   ; preds = %1345, %1339
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1352:                                   ; preds = %1345
  br label %1353

; <label>:1353:                                   ; preds = %1352, %1325
  br label %1564

; <label>:1354:                                   ; preds = %1285
  %1355 = load i32, i32* %9, align 4
  %1356 = sext i32 %1355 to i64
  %1357 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1356
  %1358 = load i32, i32* %1357, align 4
  %1359 = load i32, i32* @wking_loc, align 4
  %1360 = sext i32 %1359 to i64
  %1361 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1360
  %1362 = load i32, i32* %1361, align 4
  %1363 = icmp eq i32 %1358, %1362
  br i1 %1363, label %1364, label %1423

; <label>:1364:                                   ; preds = %1354
  %1365 = load i32, i32* @wking_loc, align 4
  %1366 = load i32, i32* %9, align 4
  %1367 = icmp sgt i32 %1365, %1366
  br i1 %1367, label %1368, label %1395

; <label>:1368:                                   ; preds = %1364
  %1369 = load i32, i32* @wking_loc, align 4
  %1370 = sub nsw i32 %1369, 1
  store i32 %1370, i32* %11, align 4
  br label %1371

; <label>:1371:                                   ; preds = %1378, %1368
  %1372 = load i32, i32* %11, align 4
  %1373 = sext i32 %1372 to i64
  %1374 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1373
  %1375 = load i32, i32* %1374, align 4
  %1376 = icmp eq i32 %1375, 13
  br i1 %1376, label %1377, label %1381

; <label>:1377:                                   ; preds = %1371
  br label %1378

; <label>:1378:                                   ; preds = %1377
  %1379 = load i32, i32* %11, align 4
  %1380 = sub nsw i32 %1379, 1
  store i32 %1380, i32* %11, align 4
  br label %1371

; <label>:1381:                                   ; preds = %1371
  %1382 = load i32, i32* %11, align 4
  %1383 = sext i32 %1382 to i64
  %1384 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1383
  %1385 = load i32, i32* %1384, align 4
  %1386 = icmp eq i32 %1385, 8
  br i1 %1386, label %1393, label %1387

; <label>:1387:                                   ; preds = %1381
  %1388 = load i32, i32* %11, align 4
  %1389 = sext i32 %1388 to i64
  %1390 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1389
  %1391 = load i32, i32* %1390, align 4
  %1392 = icmp eq i32 %1391, 10
  br i1 %1392, label %1393, label %1394

; <label>:1393:                                   ; preds = %1387, %1381
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1394:                                   ; preds = %1387
  br label %1422

; <label>:1395:                                   ; preds = %1364
  %1396 = load i32, i32* @wking_loc, align 4
  %1397 = add nsw i32 %1396, 1
  store i32 %1397, i32* %11, align 4
  br label %1398

; <label>:1398:                                   ; preds = %1405, %1395
  %1399 = load i32, i32* %11, align 4
  %1400 = sext i32 %1399 to i64
  %1401 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1400
  %1402 = load i32, i32* %1401, align 4
  %1403 = icmp eq i32 %1402, 13
  br i1 %1403, label %1404, label %1408

; <label>:1404:                                   ; preds = %1398
  br label %1405

; <label>:1405:                                   ; preds = %1404
  %1406 = load i32, i32* %11, align 4
  %1407 = add nsw i32 %1406, 1
  store i32 %1407, i32* %11, align 4
  br label %1398

; <label>:1408:                                   ; preds = %1398
  %1409 = load i32, i32* %11, align 4
  %1410 = sext i32 %1409 to i64
  %1411 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1410
  %1412 = load i32, i32* %1411, align 4
  %1413 = icmp eq i32 %1412, 8
  br i1 %1413, label %1420, label %1414

; <label>:1414:                                   ; preds = %1408
  %1415 = load i32, i32* %11, align 4
  %1416 = sext i32 %1415 to i64
  %1417 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1416
  %1418 = load i32, i32* %1417, align 4
  %1419 = icmp eq i32 %1418, 10
  br i1 %1419, label %1420, label %1421

; <label>:1420:                                   ; preds = %1414, %1408
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1421:                                   ; preds = %1414
  br label %1422

; <label>:1422:                                   ; preds = %1421, %1394
  br label %1563

; <label>:1423:                                   ; preds = %1354
  %1424 = load i32, i32* %9, align 4
  %1425 = sext i32 %1424 to i64
  %1426 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1425
  %1427 = load i32, i32* %1426, align 4
  %1428 = load i32, i32* @wking_loc, align 4
  %1429 = sext i32 %1428 to i64
  %1430 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1429
  %1431 = load i32, i32* %1430, align 4
  %1432 = icmp eq i32 %1427, %1431
  br i1 %1432, label %1433, label %1492

; <label>:1433:                                   ; preds = %1423
  %1434 = load i32, i32* @wking_loc, align 4
  %1435 = load i32, i32* %9, align 4
  %1436 = icmp sgt i32 %1434, %1435
  br i1 %1436, label %1437, label %1464

; <label>:1437:                                   ; preds = %1433
  %1438 = load i32, i32* @wking_loc, align 4
  %1439 = sub nsw i32 %1438, 13
  store i32 %1439, i32* %11, align 4
  br label %1440

; <label>:1440:                                   ; preds = %1447, %1437
  %1441 = load i32, i32* %11, align 4
  %1442 = sext i32 %1441 to i64
  %1443 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1442
  %1444 = load i32, i32* %1443, align 4
  %1445 = icmp eq i32 %1444, 13
  br i1 %1445, label %1446, label %1450

; <label>:1446:                                   ; preds = %1440
  br label %1447

; <label>:1447:                                   ; preds = %1446
  %1448 = load i32, i32* %11, align 4
  %1449 = sub nsw i32 %1448, 13
  store i32 %1449, i32* %11, align 4
  br label %1440

; <label>:1450:                                   ; preds = %1440
  %1451 = load i32, i32* %11, align 4
  %1452 = sext i32 %1451 to i64
  %1453 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1452
  %1454 = load i32, i32* %1453, align 4
  %1455 = icmp eq i32 %1454, 12
  br i1 %1455, label %1462, label %1456

; <label>:1456:                                   ; preds = %1450
  %1457 = load i32, i32* %11, align 4
  %1458 = sext i32 %1457 to i64
  %1459 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1458
  %1460 = load i32, i32* %1459, align 4
  %1461 = icmp eq i32 %1460, 10
  br i1 %1461, label %1462, label %1463

; <label>:1462:                                   ; preds = %1456, %1450
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1463:                                   ; preds = %1456
  br label %1491

; <label>:1464:                                   ; preds = %1433
  %1465 = load i32, i32* @wking_loc, align 4
  %1466 = add nsw i32 %1465, 13
  store i32 %1466, i32* %11, align 4
  br label %1467

; <label>:1467:                                   ; preds = %1474, %1464
  %1468 = load i32, i32* %11, align 4
  %1469 = sext i32 %1468 to i64
  %1470 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1469
  %1471 = load i32, i32* %1470, align 4
  %1472 = icmp eq i32 %1471, 13
  br i1 %1472, label %1473, label %1477

; <label>:1473:                                   ; preds = %1467
  br label %1474

; <label>:1474:                                   ; preds = %1473
  %1475 = load i32, i32* %11, align 4
  %1476 = add nsw i32 %1475, 13
  store i32 %1476, i32* %11, align 4
  br label %1467

; <label>:1477:                                   ; preds = %1467
  %1478 = load i32, i32* %11, align 4
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1479
  %1481 = load i32, i32* %1480, align 4
  %1482 = icmp eq i32 %1481, 12
  br i1 %1482, label %1489, label %1483

; <label>:1483:                                   ; preds = %1477
  %1484 = load i32, i32* %11, align 4
  %1485 = sext i32 %1484 to i64
  %1486 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1485
  %1487 = load i32, i32* %1486, align 4
  %1488 = icmp eq i32 %1487, 10
  br i1 %1488, label %1489, label %1490

; <label>:1489:                                   ; preds = %1483, %1477
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1490:                                   ; preds = %1483
  br label %1491

; <label>:1491:                                   ; preds = %1490, %1463
  br label %1562

; <label>:1492:                                   ; preds = %1423
  %1493 = load i32, i32* %9, align 4
  %1494 = sext i32 %1493 to i64
  %1495 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1494
  %1496 = load i32, i32* %1495, align 4
  %1497 = load i32, i32* @wking_loc, align 4
  %1498 = sext i32 %1497 to i64
  %1499 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1498
  %1500 = load i32, i32* %1499, align 4
  %1501 = icmp eq i32 %1496, %1500
  br i1 %1501, label %1502, label %1561

; <label>:1502:                                   ; preds = %1492
  %1503 = load i32, i32* @wking_loc, align 4
  %1504 = load i32, i32* %9, align 4
  %1505 = icmp sgt i32 %1503, %1504
  br i1 %1505, label %1506, label %1533

; <label>:1506:                                   ; preds = %1502
  %1507 = load i32, i32* @wking_loc, align 4
  %1508 = sub nsw i32 %1507, 11
  store i32 %1508, i32* %11, align 4
  br label %1509

; <label>:1509:                                   ; preds = %1516, %1506
  %1510 = load i32, i32* %11, align 4
  %1511 = sext i32 %1510 to i64
  %1512 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1511
  %1513 = load i32, i32* %1512, align 4
  %1514 = icmp eq i32 %1513, 13
  br i1 %1514, label %1515, label %1519

; <label>:1515:                                   ; preds = %1509
  br label %1516

; <label>:1516:                                   ; preds = %1515
  %1517 = load i32, i32* %11, align 4
  %1518 = sub nsw i32 %1517, 11
  store i32 %1518, i32* %11, align 4
  br label %1509

; <label>:1519:                                   ; preds = %1509
  %1520 = load i32, i32* %11, align 4
  %1521 = sext i32 %1520 to i64
  %1522 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1521
  %1523 = load i32, i32* %1522, align 4
  %1524 = icmp eq i32 %1523, 12
  br i1 %1524, label %1531, label %1525

; <label>:1525:                                   ; preds = %1519
  %1526 = load i32, i32* %11, align 4
  %1527 = sext i32 %1526 to i64
  %1528 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1527
  %1529 = load i32, i32* %1528, align 4
  %1530 = icmp eq i32 %1529, 10
  br i1 %1530, label %1531, label %1532

; <label>:1531:                                   ; preds = %1525, %1519
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1532:                                   ; preds = %1525
  br label %1560

; <label>:1533:                                   ; preds = %1502
  %1534 = load i32, i32* @wking_loc, align 4
  %1535 = add nsw i32 %1534, 11
  store i32 %1535, i32* %11, align 4
  br label %1536

; <label>:1536:                                   ; preds = %1543, %1533
  %1537 = load i32, i32* %11, align 4
  %1538 = sext i32 %1537 to i64
  %1539 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1538
  %1540 = load i32, i32* %1539, align 4
  %1541 = icmp eq i32 %1540, 13
  br i1 %1541, label %1542, label %1546

; <label>:1542:                                   ; preds = %1536
  br label %1543

; <label>:1543:                                   ; preds = %1542
  %1544 = load i32, i32* %11, align 4
  %1545 = add nsw i32 %1544, 11
  store i32 %1545, i32* %11, align 4
  br label %1536

; <label>:1546:                                   ; preds = %1536
  %1547 = load i32, i32* %11, align 4
  %1548 = sext i32 %1547 to i64
  %1549 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1548
  %1550 = load i32, i32* %1549, align 4
  %1551 = icmp eq i32 %1550, 12
  br i1 %1551, label %1558, label %1552

; <label>:1552:                                   ; preds = %1546
  %1553 = load i32, i32* %11, align 4
  %1554 = sext i32 %1553 to i64
  %1555 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1554
  %1556 = load i32, i32* %1555, align 4
  %1557 = icmp eq i32 %1556, 10
  br i1 %1557, label %1558, label %1559

; <label>:1558:                                   ; preds = %1552, %1546
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1559:                                   ; preds = %1552
  br label %1560

; <label>:1560:                                   ; preds = %1559, %1532
  br label %1561

; <label>:1561:                                   ; preds = %1560, %1492
  br label %1562

; <label>:1562:                                   ; preds = %1561, %1491
  br label %1563

; <label>:1563:                                   ; preds = %1562, %1422
  br label %1564

; <label>:1564:                                   ; preds = %1563, %1353
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1565:                                   ; preds = %1279
  br label %1566

; <label>:1566:                                   ; preds = %1565, %836
  %1567 = load i32, i32* @wking_loc, align 4
  %1568 = call i32 @is_attacked(i32 %1567, i32 0)
  %1569 = icmp ne i32 %1568, 0
  br i1 %1569, label %1570, label %1571

; <label>:1570:                                   ; preds = %1566
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1571:                                   ; preds = %1566
  store i32 1, i32* %4, align 4
  br label %1573

; <label>:1572:                                   ; preds = %100
  store i32 0, i32* %4, align 4
  br label %1573

; <label>:1573:                                   ; preds = %1572, %1571, %1570, %1564, %1558, %1531, %1489, %1462, %1420, %1393, %1351, %1324, %1272, %1230, %1188, %1146, %1097, %1085, %1041, %1029, %987, %944, %912, %847, %835, %834, %828, %822, %795, %753, %726, %684, %657, %615, %588, %536, %494, %452, %410, %366, %354, %310, %298, %256, %213, %181, %116, %99, %98, %94, %90, %83, %82, %78, %74, %67, %66, %62, %58, %51, %50, %46, %42, %32
  %1574 = load i32, i32* %4, align 4
  ret i32 %1574
}

declare i32 @is_attacked(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @gen(%struct.move_s*) #0 {
  %2 = alloca %struct.move_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.move_s* %0, %struct.move_s** %2, align 8
  store i32 0, i32* @kingcap, align 4
  store i32 0, i32* @numb_moves, align 4
  %7 = load %struct.move_s*, %struct.move_s** %2, align 8
  %8 = getelementptr inbounds %struct.move_s, %struct.move_s* %7, i64 0
  store %struct.move_s* %8, %struct.move_s** @genfor, align 8
  %9 = load i32, i32* @Variant, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i32 0, i32* @captures, align 4
  store i32 0, i32* @fcaptures, align 4
  br label %12

; <label>:12:                                     ; preds = %11, %1
  br label %13

; <label>:13:                                     ; preds = %1099, %12
  %14 = load i32, i32* @white_to_move, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %476

; <label>:16:                                     ; preds = %13
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %472, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @piece_count, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %38

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* @Variant, align 4
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* @kingcap, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %24, %21
  %28 = load i32, i32* @Variant, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* @fcaptures, align 4
  %32 = load i32, i32* @captures, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

; <label>:34:                                     ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br label %36

; <label>:36:                                     ; preds = %34, %24
  %37 = phi i1 [ true, %24 ], [ %35, %34 ]
  br label %38

; <label>:38:                                     ; preds = %36, %17
  %39 = phi i1 [ false, %17 ], [ %37, %36 ]
  br i1 %39, label %40, label %475

; <label>:40:                                     ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

; <label>:47:                                     ; preds = %40
  br label %472

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %51

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* @gfrom, align 4
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %470 [
    i32 1, label %58
    i32 3, label %158
    i32 11, label %239
    i32 7, label %280
    i32 9, label %321
    i32 5, label %402
  ]

; <label>:58:                                     ; preds = %51
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 12
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 13
  br i1 %64, label %65, label %104

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 7
  br i1 %70, label %71, label %80

; <label>:71:                                     ; preds = %65
  %72 = load i32, i32* @Variant, align 4
  %73 = icmp ne i32 %72, 3
  br i1 %73, label %74, label %80

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* @Variant, align 4
  %76 = icmp ne i32 %75, 4
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 12
  call void @push_pawn(i32 %79, i32 0)
  br label %103

; <label>:80:                                     ; preds = %74, %71, %65
  %81 = load i32, i32* @captures, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %102, label %83

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 12
  call void @push_pawn(i32 %85, i32 0)
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %101

; <label>:91:                                     ; preds = %83
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 24
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 13
  br i1 %97, label %98, label %101

; <label>:98:                                     ; preds = %91
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 24
  call void @push_pawn_simple(i32 %100)
  br label %101

; <label>:101:                                    ; preds = %98, %91, %83
  br label %102

; <label>:102:                                    ; preds = %101, %80
  br label %103

; <label>:103:                                    ; preds = %102, %77
  br label %104

; <label>:104:                                    ; preds = %103, %58
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 13
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %122

; <label>:112:                                    ; preds = %104
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 13
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

; <label>:119:                                    ; preds = %112
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 13
  call void @push_pawn(i32 %121, i32 0)
  br label %122

; <label>:122:                                    ; preds = %119, %112, %104
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 11
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %140

; <label>:130:                                    ; preds = %122
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 11
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

; <label>:137:                                    ; preds = %130
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 11
  call void @push_pawn(i32 %139, i32 0)
  br label %140

; <label>:140:                                    ; preds = %137, %130, %122
  %141 = load i32, i32* @ep_square, align 4
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 13
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %148

; <label>:145:                                    ; preds = %140
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 13
  call void @push_pawn(i32 %147, i32 1)
  br label %157

; <label>:148:                                    ; preds = %140
  %149 = load i32, i32* @ep_square, align 4
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 11
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %156

; <label>:153:                                    ; preds = %148
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 11
  call void @push_pawn(i32 %155, i32 1)
  br label %156

; <label>:156:                                    ; preds = %153, %148
  br label %157

; <label>:157:                                    ; preds = %156, %145
  br label %471

; <label>:158:                                    ; preds = %51
  %159 = load i32, i32* %3, align 4
  %160 = sub nsw i32 %159, 25
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

; <label>:165:                                    ; preds = %158
  %166 = load i32, i32* %3, align 4
  %167 = sub nsw i32 %166, 25
  call void @push_knighT(i32 %167)
  br label %168

; <label>:168:                                    ; preds = %165, %158
  %169 = load i32, i32* %3, align 4
  %170 = sub nsw i32 %169, 23
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

; <label>:175:                                    ; preds = %168
  %176 = load i32, i32* %3, align 4
  %177 = sub nsw i32 %176, 23
  call void @push_knighT(i32 %177)
  br label %178

; <label>:178:                                    ; preds = %175, %168
  %179 = load i32, i32* %3, align 4
  %180 = sub nsw i32 %179, 14
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

; <label>:185:                                    ; preds = %178
  %186 = load i32, i32* %3, align 4
  %187 = sub nsw i32 %186, 14
  call void @push_knighT(i32 %187)
  br label %188

; <label>:188:                                    ; preds = %185, %178
  %189 = load i32, i32* %3, align 4
  %190 = sub nsw i32 %189, 10
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

; <label>:195:                                    ; preds = %188
  %196 = load i32, i32* %3, align 4
  %197 = sub nsw i32 %196, 10
  call void @push_knighT(i32 %197)
  br label %198

; <label>:198:                                    ; preds = %195, %188
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 10
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

; <label>:205:                                    ; preds = %198
  %206 = load i32, i32* %3, align 4
  %207 = add nsw i32 %206, 10
  call void @push_knighT(i32 %207)
  br label %208

; <label>:208:                                    ; preds = %205, %198
  %209 = load i32, i32* %3, align 4
  %210 = add nsw i32 %209, 14
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

; <label>:215:                                    ; preds = %208
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %216, 14
  call void @push_knighT(i32 %217)
  br label %218

; <label>:218:                                    ; preds = %215, %208
  %219 = load i32, i32* %3, align 4
  %220 = add nsw i32 %219, 23
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

; <label>:225:                                    ; preds = %218
  %226 = load i32, i32* %3, align 4
  %227 = add nsw i32 %226, 23
  call void @push_knighT(i32 %227)
  br label %228

; <label>:228:                                    ; preds = %225, %218
  %229 = load i32, i32* %3, align 4
  %230 = add nsw i32 %229, 25
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

; <label>:235:                                    ; preds = %228
  %236 = load i32, i32* %3, align 4
  %237 = add nsw i32 %236, 25
  call void @push_knighT(i32 %237)
  br label %238

; <label>:238:                                    ; preds = %235, %228
  br label %471

; <label>:239:                                    ; preds = %51
  %240 = load i32, i32* %3, align 4
  %241 = sub nsw i32 %240, 13
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

; <label>:246:                                    ; preds = %239
  %247 = load i32, i32* %3, align 4
  %248 = sub nsw i32 %247, 13
  call void @push_slidE(i32 %248)
  br label %249

; <label>:249:                                    ; preds = %246, %239
  %250 = load i32, i32* %3, align 4
  %251 = sub nsw i32 %250, 11
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

; <label>:256:                                    ; preds = %249
  %257 = load i32, i32* %3, align 4
  %258 = sub nsw i32 %257, 11
  call void @push_slidE(i32 %258)
  br label %259

; <label>:259:                                    ; preds = %256, %249
  %260 = load i32, i32* %3, align 4
  %261 = add nsw i32 %260, 11
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

; <label>:266:                                    ; preds = %259
  %267 = load i32, i32* %3, align 4
  %268 = add nsw i32 %267, 11
  call void @push_slidE(i32 %268)
  br label %269

; <label>:269:                                    ; preds = %266, %259
  %270 = load i32, i32* %3, align 4
  %271 = add nsw i32 %270, 13
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

; <label>:276:                                    ; preds = %269
  %277 = load i32, i32* %3, align 4
  %278 = add nsw i32 %277, 13
  call void @push_slidE(i32 %278)
  br label %279

; <label>:279:                                    ; preds = %276, %269
  br label %471

; <label>:280:                                    ; preds = %51
  %281 = load i32, i32* %3, align 4
  %282 = sub nsw i32 %281, 12
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

; <label>:287:                                    ; preds = %280
  %288 = load i32, i32* %3, align 4
  %289 = sub nsw i32 %288, 12
  call void @push_slidE(i32 %289)
  br label %290

; <label>:290:                                    ; preds = %287, %280
  %291 = load i32, i32* %3, align 4
  %292 = sub nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

; <label>:297:                                    ; preds = %290
  %298 = load i32, i32* %3, align 4
  %299 = sub nsw i32 %298, 1
  call void @push_slidE(i32 %299)
  br label %300

; <label>:300:                                    ; preds = %297, %290
  %301 = load i32, i32* %3, align 4
  %302 = add nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

; <label>:307:                                    ; preds = %300
  %308 = load i32, i32* %3, align 4
  %309 = add nsw i32 %308, 1
  call void @push_slidE(i32 %309)
  br label %310

; <label>:310:                                    ; preds = %307, %300
  %311 = load i32, i32* %3, align 4
  %312 = add nsw i32 %311, 12
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

; <label>:317:                                    ; preds = %310
  %318 = load i32, i32* %3, align 4
  %319 = add nsw i32 %318, 12
  call void @push_slidE(i32 %319)
  br label %320

; <label>:320:                                    ; preds = %317, %310
  br label %471

; <label>:321:                                    ; preds = %51
  %322 = load i32, i32* %3, align 4
  %323 = sub nsw i32 %322, 13
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

; <label>:328:                                    ; preds = %321
  %329 = load i32, i32* %3, align 4
  %330 = sub nsw i32 %329, 13
  call void @push_slidE(i32 %330)
  br label %331

; <label>:331:                                    ; preds = %328, %321
  %332 = load i32, i32* %3, align 4
  %333 = sub nsw i32 %332, 12
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

; <label>:338:                                    ; preds = %331
  %339 = load i32, i32* %3, align 4
  %340 = sub nsw i32 %339, 12
  call void @push_slidE(i32 %340)
  br label %341

; <label>:341:                                    ; preds = %338, %331
  %342 = load i32, i32* %3, align 4
  %343 = sub nsw i32 %342, 11
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

; <label>:348:                                    ; preds = %341
  %349 = load i32, i32* %3, align 4
  %350 = sub nsw i32 %349, 11
  call void @push_slidE(i32 %350)
  br label %351

; <label>:351:                                    ; preds = %348, %341
  %352 = load i32, i32* %3, align 4
  %353 = sub nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %361

; <label>:358:                                    ; preds = %351
  %359 = load i32, i32* %3, align 4
  %360 = sub nsw i32 %359, 1
  call void @push_slidE(i32 %360)
  br label %361

; <label>:361:                                    ; preds = %358, %351
  %362 = load i32, i32* %3, align 4
  %363 = add nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

; <label>:368:                                    ; preds = %361
  %369 = load i32, i32* %3, align 4
  %370 = add nsw i32 %369, 1
  call void @push_slidE(i32 %370)
  br label %371

; <label>:371:                                    ; preds = %368, %361
  %372 = load i32, i32* %3, align 4
  %373 = add nsw i32 %372, 11
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %381

; <label>:378:                                    ; preds = %371
  %379 = load i32, i32* %3, align 4
  %380 = add nsw i32 %379, 11
  call void @push_slidE(i32 %380)
  br label %381

; <label>:381:                                    ; preds = %378, %371
  %382 = load i32, i32* %3, align 4
  %383 = add nsw i32 %382, 12
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

; <label>:388:                                    ; preds = %381
  %389 = load i32, i32* %3, align 4
  %390 = add nsw i32 %389, 12
  call void @push_slidE(i32 %390)
  br label %391

; <label>:391:                                    ; preds = %388, %381
  %392 = load i32, i32* %3, align 4
  %393 = add nsw i32 %392, 13
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %401

; <label>:398:                                    ; preds = %391
  %399 = load i32, i32* %3, align 4
  %400 = add nsw i32 %399, 13
  call void @push_slidE(i32 %400)
  br label %401

; <label>:401:                                    ; preds = %398, %391
  br label %471

; <label>:402:                                    ; preds = %51
  %403 = load i32, i32* %3, align 4
  %404 = sub nsw i32 %403, 13
  call void @push_king(i32 %404)
  %405 = load i32, i32* %3, align 4
  %406 = sub nsw i32 %405, 12
  call void @push_king(i32 %406)
  %407 = load i32, i32* %3, align 4
  %408 = sub nsw i32 %407, 11
  call void @push_king(i32 %408)
  %409 = load i32, i32* %3, align 4
  %410 = sub nsw i32 %409, 1
  call void @push_king(i32 %410)
  %411 = load i32, i32* %3, align 4
  %412 = add nsw i32 %411, 1
  call void @push_king(i32 %412)
  %413 = load i32, i32* %3, align 4
  %414 = add nsw i32 %413, 11
  call void @push_king(i32 %414)
  %415 = load i32, i32* %3, align 4
  %416 = add nsw i32 %415, 12
  call void @push_king(i32 %416)
  %417 = load i32, i32* %3, align 4
  %418 = add nsw i32 %417, 13
  call void @push_king(i32 %418)
  %419 = load i32, i32* %3, align 4
  %420 = icmp eq i32 %419, 30
  br i1 %420, label %421, label %469

; <label>:421:                                    ; preds = %402
  %422 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 30), align 8
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %469, label %424

; <label>:424:                                    ; preds = %421
  %425 = load i32, i32* @captures, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %469, label %427

; <label>:427:                                    ; preds = %424
  %428 = load i32, i32* @Variant, align 4
  %429 = icmp ne i32 %428, 3
  br i1 %429, label %433, label %430

; <label>:430:                                    ; preds = %427
  %431 = load i32, i32* @Giveaway, align 4
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %469

; <label>:433:                                    ; preds = %430, %427
  %434 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 33), align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %449, label %436

; <label>:436:                                    ; preds = %433
  %437 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 33), align 4
  %438 = icmp eq i32 %437, 7
  br i1 %438, label %439, label %449

; <label>:439:                                    ; preds = %436
  %440 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 31), align 4
  %441 = icmp eq i32 %440, 13
  br i1 %441, label %442, label %448

; <label>:442:                                    ; preds = %439
  %443 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 32), align 16
  %444 = icmp eq i32 %443, 13
  br i1 %444, label %445, label %448

; <label>:445:                                    ; preds = %442
  %446 = load i32, i32* %3, align 4
  %447 = add nsw i32 %446, 2
  call void @push_king_castle(i32 %447, i32 1)
  br label %448

; <label>:448:                                    ; preds = %445, %442, %439
  br label %449

; <label>:449:                                    ; preds = %448, %436, %433
  %450 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 26), align 8
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %468, label %452

; <label>:452:                                    ; preds = %449
  %453 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 26), align 8
  %454 = icmp eq i32 %453, 7
  br i1 %454, label %455, label %468

; <label>:455:                                    ; preds = %452
  %456 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 27), align 4
  %457 = icmp eq i32 %456, 13
  br i1 %457, label %458, label %467

; <label>:458:                                    ; preds = %455
  %459 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 28), align 16
  %460 = icmp eq i32 %459, 13
  br i1 %460, label %461, label %467

; <label>:461:                                    ; preds = %458
  %462 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 29), align 4
  %463 = icmp eq i32 %462, 13
  br i1 %463, label %464, label %467

; <label>:464:                                    ; preds = %461
  %465 = load i32, i32* %3, align 4
  %466 = sub nsw i32 %465, 2
  call void @push_king_castle(i32 %466, i32 2)
  br label %467

; <label>:467:                                    ; preds = %464, %461, %458, %455
  br label %468

; <label>:468:                                    ; preds = %467, %452, %449
  br label %469

; <label>:469:                                    ; preds = %468, %430, %424, %421, %402
  br label %471

; <label>:470:                                    ; preds = %51
  br label %471

; <label>:471:                                    ; preds = %470, %469, %401, %320, %279, %238, %157
  br label %472

; <label>:472:                                    ; preds = %471, %47
  %473 = load i32, i32* %5, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %5, align 4
  br label %17

; <label>:475:                                    ; preds = %38
  br label %936

; <label>:476:                                    ; preds = %13
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %477

; <label>:477:                                    ; preds = %932, %476
  %478 = load i32, i32* %4, align 4
  %479 = load i32, i32* @piece_count, align 4
  %480 = icmp sle i32 %478, %479
  br i1 %480, label %481, label %498

; <label>:481:                                    ; preds = %477
  %482 = load i32, i32* @Variant, align 4
  %483 = icmp ne i32 %482, 3
  br i1 %483, label %484, label %487

; <label>:484:                                    ; preds = %481
  %485 = load i32, i32* @kingcap, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %496

; <label>:487:                                    ; preds = %484, %481
  %488 = load i32, i32* @Variant, align 4
  %489 = icmp eq i32 %488, 3
  br i1 %489, label %490, label %494

; <label>:490:                                    ; preds = %487
  %491 = load i32, i32* @fcaptures, align 4
  %492 = load i32, i32* @captures, align 4
  %493 = icmp eq i32 %491, %492
  br label %494

; <label>:494:                                    ; preds = %490, %487
  %495 = phi i1 [ false, %487 ], [ %493, %490 ]
  br label %496

; <label>:496:                                    ; preds = %494, %484
  %497 = phi i1 [ true, %484 ], [ %495, %494 ]
  br label %498

; <label>:498:                                    ; preds = %496, %477
  %499 = phi i1 [ false, %477 ], [ %497, %496 ]
  br i1 %499, label %500, label %935

; <label>:500:                                    ; preds = %498
  %501 = load i32, i32* %5, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %502
  %504 = load i32, i32* %503, align 4
  store i32 %504, i32* %6, align 4
  %505 = load i32, i32* %6, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %508, label %507

; <label>:507:                                    ; preds = %500
  br label %932

; <label>:508:                                    ; preds = %500
  %509 = load i32, i32* %4, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %4, align 4
  br label %511

; <label>:511:                                    ; preds = %508
  %512 = load i32, i32* %6, align 4
  store i32 %512, i32* %3, align 4
  %513 = load i32, i32* %6, align 4
  store i32 %513, i32* @gfrom, align 4
  %514 = load i32, i32* %3, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %515
  %517 = load i32, i32* %516, align 4
  switch i32 %517, label %930 [
    i32 2, label %518
    i32 4, label %618
    i32 12, label %699
    i32 8, label %740
    i32 10, label %781
    i32 6, label %862
  ]

; <label>:518:                                    ; preds = %511
  %519 = load i32, i32* %3, align 4
  %520 = sub nsw i32 %519, 12
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = icmp eq i32 %523, 13
  br i1 %524, label %525, label %564

; <label>:525:                                    ; preds = %518
  %526 = load i32, i32* %3, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = icmp eq i32 %529, 2
  br i1 %530, label %531, label %540

; <label>:531:                                    ; preds = %525
  %532 = load i32, i32* @Variant, align 4
  %533 = icmp ne i32 %532, 3
  br i1 %533, label %534, label %540

; <label>:534:                                    ; preds = %531
  %535 = load i32, i32* @Variant, align 4
  %536 = icmp ne i32 %535, 4
  br i1 %536, label %537, label %540

; <label>:537:                                    ; preds = %534
  %538 = load i32, i32* %3, align 4
  %539 = sub nsw i32 %538, 12
  call void @push_pawn(i32 %539, i32 0)
  br label %563

; <label>:540:                                    ; preds = %534, %531, %525
  %541 = load i32, i32* @captures, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %562, label %543

; <label>:543:                                    ; preds = %540
  %544 = load i32, i32* %3, align 4
  %545 = sub nsw i32 %544, 12
  call void @push_pawn(i32 %545, i32 0)
  %546 = load i32, i32* %3, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, 7
  br i1 %550, label %551, label %561

; <label>:551:                                    ; preds = %543
  %552 = load i32, i32* %3, align 4
  %553 = sub nsw i32 %552, 24
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = icmp eq i32 %556, 13
  br i1 %557, label %558, label %561

; <label>:558:                                    ; preds = %551
  %559 = load i32, i32* %3, align 4
  %560 = sub nsw i32 %559, 24
  call void @push_pawn_simple(i32 %560)
  br label %561

; <label>:561:                                    ; preds = %558, %551, %543
  br label %562

; <label>:562:                                    ; preds = %561, %540
  br label %563

; <label>:563:                                    ; preds = %562, %537
  br label %564

; <label>:564:                                    ; preds = %563, %518
  %565 = load i32, i32* %3, align 4
  %566 = sub nsw i32 %565, 13
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %567
  %569 = load i32, i32* %568, align 4
  %570 = and i32 %569, 1
  %571 = icmp eq i32 %570, 1
  br i1 %571, label %572, label %582

; <label>:572:                                    ; preds = %564
  %573 = load i32, i32* %3, align 4
  %574 = sub nsw i32 %573, 13
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %575
  %577 = load i32, i32* %576, align 4
  %578 = icmp ne i32 %577, 13
  br i1 %578, label %579, label %582

; <label>:579:                                    ; preds = %572
  %580 = load i32, i32* %3, align 4
  %581 = sub nsw i32 %580, 13
  call void @push_pawn(i32 %581, i32 0)
  br label %582

; <label>:582:                                    ; preds = %579, %572, %564
  %583 = load i32, i32* %3, align 4
  %584 = sub nsw i32 %583, 11
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %585
  %587 = load i32, i32* %586, align 4
  %588 = and i32 %587, 1
  %589 = icmp eq i32 %588, 1
  br i1 %589, label %590, label %600

; <label>:590:                                    ; preds = %582
  %591 = load i32, i32* %3, align 4
  %592 = sub nsw i32 %591, 11
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = icmp ne i32 %595, 13
  br i1 %596, label %597, label %600

; <label>:597:                                    ; preds = %590
  %598 = load i32, i32* %3, align 4
  %599 = sub nsw i32 %598, 11
  call void @push_pawn(i32 %599, i32 0)
  br label %600

; <label>:600:                                    ; preds = %597, %590, %582
  %601 = load i32, i32* @ep_square, align 4
  %602 = load i32, i32* %3, align 4
  %603 = sub nsw i32 %602, 13
  %604 = icmp eq i32 %601, %603
  br i1 %604, label %605, label %608

; <label>:605:                                    ; preds = %600
  %606 = load i32, i32* %3, align 4
  %607 = sub nsw i32 %606, 13
  call void @push_pawn(i32 %607, i32 1)
  br label %617

; <label>:608:                                    ; preds = %600
  %609 = load i32, i32* @ep_square, align 4
  %610 = load i32, i32* %3, align 4
  %611 = sub nsw i32 %610, 11
  %612 = icmp eq i32 %609, %611
  br i1 %612, label %613, label %616

; <label>:613:                                    ; preds = %608
  %614 = load i32, i32* %3, align 4
  %615 = sub nsw i32 %614, 11
  call void @push_pawn(i32 %615, i32 1)
  br label %616

; <label>:616:                                    ; preds = %613, %608
  br label %617

; <label>:617:                                    ; preds = %616, %605
  br label %931

; <label>:618:                                    ; preds = %511
  %619 = load i32, i32* %3, align 4
  %620 = sub nsw i32 %619, 25
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %621
  %623 = load i32, i32* %622, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %628

; <label>:625:                                    ; preds = %618
  %626 = load i32, i32* %3, align 4
  %627 = sub nsw i32 %626, 25
  call void @push_knighT(i32 %627)
  br label %628

; <label>:628:                                    ; preds = %625, %618
  %629 = load i32, i32* %3, align 4
  %630 = sub nsw i32 %629, 23
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %631
  %633 = load i32, i32* %632, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %638

; <label>:635:                                    ; preds = %628
  %636 = load i32, i32* %3, align 4
  %637 = sub nsw i32 %636, 23
  call void @push_knighT(i32 %637)
  br label %638

; <label>:638:                                    ; preds = %635, %628
  %639 = load i32, i32* %3, align 4
  %640 = sub nsw i32 %639, 14
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %641
  %643 = load i32, i32* %642, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %648

; <label>:645:                                    ; preds = %638
  %646 = load i32, i32* %3, align 4
  %647 = sub nsw i32 %646, 14
  call void @push_knighT(i32 %647)
  br label %648

; <label>:648:                                    ; preds = %645, %638
  %649 = load i32, i32* %3, align 4
  %650 = sub nsw i32 %649, 10
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %651
  %653 = load i32, i32* %652, align 4
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %658

; <label>:655:                                    ; preds = %648
  %656 = load i32, i32* %3, align 4
  %657 = sub nsw i32 %656, 10
  call void @push_knighT(i32 %657)
  br label %658

; <label>:658:                                    ; preds = %655, %648
  %659 = load i32, i32* %3, align 4
  %660 = add nsw i32 %659, 10
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %661
  %663 = load i32, i32* %662, align 4
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %668

; <label>:665:                                    ; preds = %658
  %666 = load i32, i32* %3, align 4
  %667 = add nsw i32 %666, 10
  call void @push_knighT(i32 %667)
  br label %668

; <label>:668:                                    ; preds = %665, %658
  %669 = load i32, i32* %3, align 4
  %670 = add nsw i32 %669, 14
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %678

; <label>:675:                                    ; preds = %668
  %676 = load i32, i32* %3, align 4
  %677 = add nsw i32 %676, 14
  call void @push_knighT(i32 %677)
  br label %678

; <label>:678:                                    ; preds = %675, %668
  %679 = load i32, i32* %3, align 4
  %680 = add nsw i32 %679, 23
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %681
  %683 = load i32, i32* %682, align 4
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %688

; <label>:685:                                    ; preds = %678
  %686 = load i32, i32* %3, align 4
  %687 = add nsw i32 %686, 23
  call void @push_knighT(i32 %687)
  br label %688

; <label>:688:                                    ; preds = %685, %678
  %689 = load i32, i32* %3, align 4
  %690 = add nsw i32 %689, 25
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %698

; <label>:695:                                    ; preds = %688
  %696 = load i32, i32* %3, align 4
  %697 = add nsw i32 %696, 25
  call void @push_knighT(i32 %697)
  br label %698

; <label>:698:                                    ; preds = %695, %688
  br label %931

; <label>:699:                                    ; preds = %511
  %700 = load i32, i32* %3, align 4
  %701 = sub nsw i32 %700, 13
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %702
  %704 = load i32, i32* %703, align 4
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %706, label %709

; <label>:706:                                    ; preds = %699
  %707 = load i32, i32* %3, align 4
  %708 = sub nsw i32 %707, 13
  call void @push_slidE(i32 %708)
  br label %709

; <label>:709:                                    ; preds = %706, %699
  %710 = load i32, i32* %3, align 4
  %711 = sub nsw i32 %710, 11
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %712
  %714 = load i32, i32* %713, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %719

; <label>:716:                                    ; preds = %709
  %717 = load i32, i32* %3, align 4
  %718 = sub nsw i32 %717, 11
  call void @push_slidE(i32 %718)
  br label %719

; <label>:719:                                    ; preds = %716, %709
  %720 = load i32, i32* %3, align 4
  %721 = add nsw i32 %720, 11
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %722
  %724 = load i32, i32* %723, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %729

; <label>:726:                                    ; preds = %719
  %727 = load i32, i32* %3, align 4
  %728 = add nsw i32 %727, 11
  call void @push_slidE(i32 %728)
  br label %729

; <label>:729:                                    ; preds = %726, %719
  %730 = load i32, i32* %3, align 4
  %731 = add nsw i32 %730, 13
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %732
  %734 = load i32, i32* %733, align 4
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %739

; <label>:736:                                    ; preds = %729
  %737 = load i32, i32* %3, align 4
  %738 = add nsw i32 %737, 13
  call void @push_slidE(i32 %738)
  br label %739

; <label>:739:                                    ; preds = %736, %729
  br label %931

; <label>:740:                                    ; preds = %511
  %741 = load i32, i32* %3, align 4
  %742 = sub nsw i32 %741, 12
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %743
  %745 = load i32, i32* %744, align 4
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %750

; <label>:747:                                    ; preds = %740
  %748 = load i32, i32* %3, align 4
  %749 = sub nsw i32 %748, 12
  call void @push_slidE(i32 %749)
  br label %750

; <label>:750:                                    ; preds = %747, %740
  %751 = load i32, i32* %3, align 4
  %752 = sub nsw i32 %751, 1
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %753
  %755 = load i32, i32* %754, align 4
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %757, label %760

; <label>:757:                                    ; preds = %750
  %758 = load i32, i32* %3, align 4
  %759 = sub nsw i32 %758, 1
  call void @push_slidE(i32 %759)
  br label %760

; <label>:760:                                    ; preds = %757, %750
  %761 = load i32, i32* %3, align 4
  %762 = add nsw i32 %761, 1
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %763
  %765 = load i32, i32* %764, align 4
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %770

; <label>:767:                                    ; preds = %760
  %768 = load i32, i32* %3, align 4
  %769 = add nsw i32 %768, 1
  call void @push_slidE(i32 %769)
  br label %770

; <label>:770:                                    ; preds = %767, %760
  %771 = load i32, i32* %3, align 4
  %772 = add nsw i32 %771, 12
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %773
  %775 = load i32, i32* %774, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %780

; <label>:777:                                    ; preds = %770
  %778 = load i32, i32* %3, align 4
  %779 = add nsw i32 %778, 12
  call void @push_slidE(i32 %779)
  br label %780

; <label>:780:                                    ; preds = %777, %770
  br label %931

; <label>:781:                                    ; preds = %511
  %782 = load i32, i32* %3, align 4
  %783 = sub nsw i32 %782, 13
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %784
  %786 = load i32, i32* %785, align 4
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %791

; <label>:788:                                    ; preds = %781
  %789 = load i32, i32* %3, align 4
  %790 = sub nsw i32 %789, 13
  call void @push_slidE(i32 %790)
  br label %791

; <label>:791:                                    ; preds = %788, %781
  %792 = load i32, i32* %3, align 4
  %793 = sub nsw i32 %792, 12
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %794
  %796 = load i32, i32* %795, align 4
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %801

; <label>:798:                                    ; preds = %791
  %799 = load i32, i32* %3, align 4
  %800 = sub nsw i32 %799, 12
  call void @push_slidE(i32 %800)
  br label %801

; <label>:801:                                    ; preds = %798, %791
  %802 = load i32, i32* %3, align 4
  %803 = sub nsw i32 %802, 11
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %804
  %806 = load i32, i32* %805, align 4
  %807 = icmp ne i32 %806, 0
  br i1 %807, label %808, label %811

; <label>:808:                                    ; preds = %801
  %809 = load i32, i32* %3, align 4
  %810 = sub nsw i32 %809, 11
  call void @push_slidE(i32 %810)
  br label %811

; <label>:811:                                    ; preds = %808, %801
  %812 = load i32, i32* %3, align 4
  %813 = sub nsw i32 %812, 1
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %814
  %816 = load i32, i32* %815, align 4
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %821

; <label>:818:                                    ; preds = %811
  %819 = load i32, i32* %3, align 4
  %820 = sub nsw i32 %819, 1
  call void @push_slidE(i32 %820)
  br label %821

; <label>:821:                                    ; preds = %818, %811
  %822 = load i32, i32* %3, align 4
  %823 = add nsw i32 %822, 1
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %824
  %826 = load i32, i32* %825, align 4
  %827 = icmp ne i32 %826, 0
  br i1 %827, label %828, label %831

; <label>:828:                                    ; preds = %821
  %829 = load i32, i32* %3, align 4
  %830 = add nsw i32 %829, 1
  call void @push_slidE(i32 %830)
  br label %831

; <label>:831:                                    ; preds = %828, %821
  %832 = load i32, i32* %3, align 4
  %833 = add nsw i32 %832, 11
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %834
  %836 = load i32, i32* %835, align 4
  %837 = icmp ne i32 %836, 0
  br i1 %837, label %838, label %841

; <label>:838:                                    ; preds = %831
  %839 = load i32, i32* %3, align 4
  %840 = add nsw i32 %839, 11
  call void @push_slidE(i32 %840)
  br label %841

; <label>:841:                                    ; preds = %838, %831
  %842 = load i32, i32* %3, align 4
  %843 = add nsw i32 %842, 12
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %844
  %846 = load i32, i32* %845, align 4
  %847 = icmp ne i32 %846, 0
  br i1 %847, label %848, label %851

; <label>:848:                                    ; preds = %841
  %849 = load i32, i32* %3, align 4
  %850 = add nsw i32 %849, 12
  call void @push_slidE(i32 %850)
  br label %851

; <label>:851:                                    ; preds = %848, %841
  %852 = load i32, i32* %3, align 4
  %853 = add nsw i32 %852, 13
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %854
  %856 = load i32, i32* %855, align 4
  %857 = icmp ne i32 %856, 0
  br i1 %857, label %858, label %861

; <label>:858:                                    ; preds = %851
  %859 = load i32, i32* %3, align 4
  %860 = add nsw i32 %859, 13
  call void @push_slidE(i32 %860)
  br label %861

; <label>:861:                                    ; preds = %858, %851
  br label %931

; <label>:862:                                    ; preds = %511
  %863 = load i32, i32* %3, align 4
  %864 = sub nsw i32 %863, 13
  call void @push_king(i32 %864)
  %865 = load i32, i32* %3, align 4
  %866 = sub nsw i32 %865, 12
  call void @push_king(i32 %866)
  %867 = load i32, i32* %3, align 4
  %868 = sub nsw i32 %867, 11
  call void @push_king(i32 %868)
  %869 = load i32, i32* %3, align 4
  %870 = sub nsw i32 %869, 1
  call void @push_king(i32 %870)
  %871 = load i32, i32* %3, align 4
  %872 = add nsw i32 %871, 1
  call void @push_king(i32 %872)
  %873 = load i32, i32* %3, align 4
  %874 = add nsw i32 %873, 11
  call void @push_king(i32 %874)
  %875 = load i32, i32* %3, align 4
  %876 = add nsw i32 %875, 12
  call void @push_king(i32 %876)
  %877 = load i32, i32* %3, align 4
  %878 = add nsw i32 %877, 13
  call void @push_king(i32 %878)
  %879 = load i32, i32* %3, align 4
  %880 = icmp eq i32 %879, 114
  br i1 %880, label %881, label %929

; <label>:881:                                    ; preds = %862
  %882 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 114), align 8
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %929, label %884

; <label>:884:                                    ; preds = %881
  %885 = load i32, i32* @captures, align 4
  %886 = icmp ne i32 %885, 0
  br i1 %886, label %929, label %887

; <label>:887:                                    ; preds = %884
  %888 = load i32, i32* @Variant, align 4
  %889 = icmp ne i32 %888, 3
  br i1 %889, label %893, label %890

; <label>:890:                                    ; preds = %887
  %891 = load i32, i32* @Giveaway, align 4
  %892 = icmp eq i32 %891, 1
  br i1 %892, label %893, label %929

; <label>:893:                                    ; preds = %890, %887
  %894 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 117), align 4
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %909, label %896

; <label>:896:                                    ; preds = %893
  %897 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 117), align 4
  %898 = icmp eq i32 %897, 8
  br i1 %898, label %899, label %909

; <label>:899:                                    ; preds = %896
  %900 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 115), align 4
  %901 = icmp eq i32 %900, 13
  br i1 %901, label %902, label %908

; <label>:902:                                    ; preds = %899
  %903 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 116), align 16
  %904 = icmp eq i32 %903, 13
  br i1 %904, label %905, label %908

; <label>:905:                                    ; preds = %902
  %906 = load i32, i32* %3, align 4
  %907 = add nsw i32 %906, 2
  call void @push_king_castle(i32 %907, i32 3)
  br label %908

; <label>:908:                                    ; preds = %905, %902, %899
  br label %909

; <label>:909:                                    ; preds = %908, %896, %893
  %910 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 110), align 8
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %928, label %912

; <label>:912:                                    ; preds = %909
  %913 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 110), align 8
  %914 = icmp eq i32 %913, 8
  br i1 %914, label %915, label %928

; <label>:915:                                    ; preds = %912
  %916 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 111), align 4
  %917 = icmp eq i32 %916, 13
  br i1 %917, label %918, label %927

; <label>:918:                                    ; preds = %915
  %919 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 112), align 16
  %920 = icmp eq i32 %919, 13
  br i1 %920, label %921, label %927

; <label>:921:                                    ; preds = %918
  %922 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 113), align 4
  %923 = icmp eq i32 %922, 13
  br i1 %923, label %924, label %927

; <label>:924:                                    ; preds = %921
  %925 = load i32, i32* %3, align 4
  %926 = sub nsw i32 %925, 2
  call void @push_king_castle(i32 %926, i32 4)
  br label %927

; <label>:927:                                    ; preds = %924, %921, %918, %915
  br label %928

; <label>:928:                                    ; preds = %927, %912, %909
  br label %929

; <label>:929:                                    ; preds = %928, %890, %884, %881, %862
  br label %931

; <label>:930:                                    ; preds = %511
  br label %931

; <label>:931:                                    ; preds = %930, %929, %861, %780, %739, %698, %617
  br label %932

; <label>:932:                                    ; preds = %931, %507
  %933 = load i32, i32* %5, align 4
  %934 = add nsw i32 %933, 1
  store i32 %934, i32* %5, align 4
  br label %477

; <label>:935:                                    ; preds = %498
  br label %936

; <label>:936:                                    ; preds = %935, %475
  %937 = load i32, i32* @Variant, align 4
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %942, label %939

; <label>:939:                                    ; preds = %936
  %940 = load i32, i32* @Variant, align 4
  %941 = icmp eq i32 %940, 1
  br i1 %941, label %942, label %1090

; <label>:942:                                    ; preds = %939, %936
  %943 = load i32, i32* @captures, align 4
  %944 = icmp ne i32 %943, 0
  br i1 %944, label %1090, label %945

; <label>:945:                                    ; preds = %942
  %946 = load i32, i32* @kingcap, align 4
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %1090, label %948

; <label>:948:                                    ; preds = %945
  %949 = load i32, i32* @white_to_move, align 4
  %950 = icmp ne i32 %949, 0
  br i1 %950, label %951, label %1018

; <label>:951:                                    ; preds = %948
  %952 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4
  %953 = icmp ne i32 %952, 0
  br i1 %953, label %966, label %954

; <label>:954:                                    ; preds = %951
  %955 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4
  %956 = icmp ne i32 %955, 0
  br i1 %956, label %966, label %957

; <label>:957:                                    ; preds = %954
  %958 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4
  %959 = icmp ne i32 %958, 0
  br i1 %959, label %966, label %960

; <label>:960:                                    ; preds = %957
  %961 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4
  %962 = icmp ne i32 %961, 0
  br i1 %962, label %966, label %963

; <label>:963:                                    ; preds = %960
  %964 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4
  %965 = icmp ne i32 %964, 0
  br i1 %965, label %966, label %1018

; <label>:966:                                    ; preds = %963, %960, %957, %954, %951
  store i32 26, i32* %3, align 4
  br label %967

; <label>:967:                                    ; preds = %1014, %966
  %968 = load i32, i32* %3, align 4
  %969 = icmp slt i32 %968, 118
  br i1 %969, label %970, label %1017

; <label>:970:                                    ; preds = %967
  %971 = load i32, i32* %3, align 4
  store i32 %971, i32* @gfrom, align 4
  %972 = load i32, i32* %3, align 4
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %973
  %975 = load i32, i32* %974, align 4
  switch i32 %975, label %1013 [
    i32 0, label %976
    i32 13, label %979
  ]

; <label>:976:                                    ; preds = %970
  %977 = load i32, i32* %3, align 4
  %978 = add nsw i32 %977, 3
  store i32 %978, i32* %3, align 4
  br label %1014

; <label>:979:                                    ; preds = %970
  %980 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4
  %981 = icmp ne i32 %980, 0
  br i1 %981, label %982, label %996

; <label>:982:                                    ; preds = %979
  %983 = load i32, i32* %3, align 4
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %984
  %986 = load i32, i32* %985, align 4
  %987 = icmp ne i32 %986, 8
  br i1 %987, label %988, label %995

; <label>:988:                                    ; preds = %982
  %989 = load i32, i32* %3, align 4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %990
  %992 = load i32, i32* %991, align 4
  %993 = icmp ne i32 %992, 1
  br i1 %993, label %994, label %995

; <label>:994:                                    ; preds = %988
  call void @try_drop(i32 1)
  br label %995

; <label>:995:                                    ; preds = %994, %988, %982
  br label %996

; <label>:996:                                    ; preds = %995, %979
  %997 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4
  %998 = icmp ne i32 %997, 0
  br i1 %998, label %999, label %1000

; <label>:999:                                    ; preds = %996
  call void @try_drop(i32 3)
  br label %1000

; <label>:1000:                                   ; preds = %999, %996
  %1001 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4
  %1002 = icmp ne i32 %1001, 0
  br i1 %1002, label %1003, label %1004

; <label>:1003:                                   ; preds = %1000
  call void @try_drop(i32 11)
  br label %1004

; <label>:1004:                                   ; preds = %1003, %1000
  %1005 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4
  %1006 = icmp ne i32 %1005, 0
  br i1 %1006, label %1007, label %1008

; <label>:1007:                                   ; preds = %1004
  call void @try_drop(i32 7)
  br label %1008

; <label>:1008:                                   ; preds = %1007, %1004
  %1009 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4
  %1010 = icmp ne i32 %1009, 0
  br i1 %1010, label %1011, label %1012

; <label>:1011:                                   ; preds = %1008
  call void @try_drop(i32 9)
  br label %1012

; <label>:1012:                                   ; preds = %1011, %1008
  br label %1013

; <label>:1013:                                   ; preds = %1012, %970
  br label %1014

; <label>:1014:                                   ; preds = %1013, %976
  %1015 = load i32, i32* %3, align 4
  %1016 = add nsw i32 %1015, 1
  store i32 %1016, i32* %3, align 4
  br label %967

; <label>:1017:                                   ; preds = %967
  br label %1089

; <label>:1018:                                   ; preds = %963, %948
  %1019 = load i32, i32* @white_to_move, align 4
  %1020 = icmp ne i32 %1019, 0
  br i1 %1020, label %1088, label %1021

; <label>:1021:                                   ; preds = %1018
  %1022 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8
  %1023 = icmp ne i32 %1022, 0
  br i1 %1023, label %1036, label %1024

; <label>:1024:                                   ; preds = %1021
  %1025 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16
  %1026 = icmp ne i32 %1025, 0
  br i1 %1026, label %1036, label %1027

; <label>:1027:                                   ; preds = %1024
  %1028 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16
  %1029 = icmp ne i32 %1028, 0
  br i1 %1029, label %1036, label %1030

; <label>:1030:                                   ; preds = %1027
  %1031 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8
  %1032 = icmp ne i32 %1031, 0
  br i1 %1032, label %1036, label %1033

; <label>:1033:                                   ; preds = %1030
  %1034 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16
  %1035 = icmp ne i32 %1034, 0
  br i1 %1035, label %1036, label %1088

; <label>:1036:                                   ; preds = %1033, %1030, %1027, %1024, %1021
  store i32 26, i32* %3, align 4
  br label %1037

; <label>:1037:                                   ; preds = %1084, %1036
  %1038 = load i32, i32* %3, align 4
  %1039 = icmp slt i32 %1038, 118
  br i1 %1039, label %1040, label %1087

; <label>:1040:                                   ; preds = %1037
  %1041 = load i32, i32* %3, align 4
  store i32 %1041, i32* @gfrom, align 4
  %1042 = load i32, i32* %3, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1043
  %1045 = load i32, i32* %1044, align 4
  switch i32 %1045, label %1083 [
    i32 0, label %1046
    i32 13, label %1049
  ]

; <label>:1046:                                   ; preds = %1040
  %1047 = load i32, i32* %3, align 4
  %1048 = add nsw i32 %1047, 3
  store i32 %1048, i32* %3, align 4
  br label %1084

; <label>:1049:                                   ; preds = %1040
  %1050 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8
  %1051 = icmp ne i32 %1050, 0
  br i1 %1051, label %1052, label %1066

; <label>:1052:                                   ; preds = %1049
  %1053 = load i32, i32* %3, align 4
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1054
  %1056 = load i32, i32* %1055, align 4
  %1057 = icmp ne i32 %1056, 8
  br i1 %1057, label %1058, label %1065

; <label>:1058:                                   ; preds = %1052
  %1059 = load i32, i32* %3, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1060
  %1062 = load i32, i32* %1061, align 4
  %1063 = icmp ne i32 %1062, 1
  br i1 %1063, label %1064, label %1065

; <label>:1064:                                   ; preds = %1058
  call void @try_drop(i32 2)
  br label %1065

; <label>:1065:                                   ; preds = %1064, %1058, %1052
  br label %1066

; <label>:1066:                                   ; preds = %1065, %1049
  %1067 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16
  %1068 = icmp ne i32 %1067, 0
  br i1 %1068, label %1069, label %1070

; <label>:1069:                                   ; preds = %1066
  call void @try_drop(i32 4)
  br label %1070

; <label>:1070:                                   ; preds = %1069, %1066
  %1071 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16
  %1072 = icmp ne i32 %1071, 0
  br i1 %1072, label %1073, label %1074

; <label>:1073:                                   ; preds = %1070
  call void @try_drop(i32 12)
  br label %1074

; <label>:1074:                                   ; preds = %1073, %1070
  %1075 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16
  %1076 = icmp ne i32 %1075, 0
  br i1 %1076, label %1077, label %1078

; <label>:1077:                                   ; preds = %1074
  call void @try_drop(i32 8)
  br label %1078

; <label>:1078:                                   ; preds = %1077, %1074
  %1079 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8
  %1080 = icmp ne i32 %1079, 0
  br i1 %1080, label %1081, label %1082

; <label>:1081:                                   ; preds = %1078
  call void @try_drop(i32 10)
  br label %1082

; <label>:1082:                                   ; preds = %1081, %1078
  br label %1083

; <label>:1083:                                   ; preds = %1082, %1040
  br label %1084

; <label>:1084:                                   ; preds = %1083, %1046
  %1085 = load i32, i32* %3, align 4
  %1086 = add nsw i32 %1085, 1
  store i32 %1086, i32* %3, align 4
  br label %1037

; <label>:1087:                                   ; preds = %1037
  br label %1088

; <label>:1088:                                   ; preds = %1087, %1033, %1018
  br label %1089

; <label>:1089:                                   ; preds = %1088, %1017
  br label %1090

; <label>:1090:                                   ; preds = %1089, %945, %942, %939
  %1091 = load i32, i32* @Variant, align 4
  %1092 = icmp eq i32 %1091, 3
  br i1 %1092, label %1093, label %1100

; <label>:1093:                                   ; preds = %1090
  %1094 = load i32, i32* @fcaptures, align 4
  %1095 = icmp eq i32 %1094, 1
  br i1 %1095, label %1096, label %1100

; <label>:1096:                                   ; preds = %1093
  %1097 = load i32, i32* @captures, align 4
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1099, label %1100

; <label>:1099:                                   ; preds = %1096
  store i32 1, i32* @captures, align 4
  store i32 0, i32* @numb_moves, align 4
  br label %13

; <label>:1100:                                   ; preds = %1096, %1093, %1090
  %1101 = load i32, i32* @Variant, align 4
  %1102 = icmp eq i32 %1101, 3
  br i1 %1102, label %1103, label %1104

; <label>:1103:                                   ; preds = %1100
  store i32 0, i32* @kingcap, align 4
  br label %1104

; <label>:1104:                                   ; preds = %1103, %1100
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @push_pawn(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* @gfrom, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* %3, align 4
  call void @add_capture(i32 %15, i32 2, i32 0, i32 1)
  br label %79

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %3, align 4
  call void @add_capture(i32 %17, i32 1, i32 0, i32 1)
  br label %79

; <label>:18:                                     ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @gfrom, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %49

; <label>:28:                                     ; preds = %18
  %29 = load i32, i32* @gfrom, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %49

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  call void @add_capture(i32 %35, i32 %36, i32 9, i32 0)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %5, align 4
  call void @add_capture(i32 %37, i32 %38, i32 7, i32 0)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  call void @add_capture(i32 %39, i32 %40, i32 11, i32 0)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  call void @add_capture(i32 %41, i32 %42, i32 3, i32 0)
  %43 = load i32, i32* @Variant, align 4
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %34
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %5, align 4
  call void @add_capture(i32 %46, i32 %47, i32 5, i32 0)
  br label %48

; <label>:48:                                     ; preds = %45, %34
  br label %79

; <label>:49:                                     ; preds = %28, %18
  %50 = load i32, i32* @gfrom, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %76

; <label>:55:                                     ; preds = %49
  %56 = load i32, i32* @gfrom, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %76

; <label>:61:                                     ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  call void @add_capture(i32 %62, i32 %63, i32 10, i32 0)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  call void @add_capture(i32 %64, i32 %65, i32 8, i32 0)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %5, align 4
  call void @add_capture(i32 %66, i32 %67, i32 12, i32 0)
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %5, align 4
  call void @add_capture(i32 %68, i32 %69, i32 4, i32 0)
  %70 = load i32, i32* @Variant, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %75

; <label>:72:                                     ; preds = %61
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %5, align 4
  call void @add_capture(i32 %73, i32 %74, i32 6, i32 0)
  br label %75

; <label>:75:                                     ; preds = %72, %61
  br label %79

; <label>:76:                                     ; preds = %55, %49
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %5, align 4
  call void @add_capture(i32 %77, i32 %78, i32 0, i32 0)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %48, %16, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @push_pawn_simple(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @add_move(i32 %3, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @push_knighT(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* @captures, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  br label %40

; <label>:12:                                     ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 13
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %2, align 4
  call void @add_move(i32 %19, i32 0)
  br label %40

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 1
  %26 = load i32, i32* @gfrom, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %25, %30
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %20
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  call void @add_capture(i32 %33, i32 %37, i32 0, i32 0)
  br label %40

; <label>:38:                                     ; preds = %20
  br label %39

; <label>:39:                                     ; preds = %38
  br label %40

; <label>:40:                                     ; preds = %39, %32, %18, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @push_slidE(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @gfrom, align 4
  %7 = sub nsw i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @gfrom, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 1
  store i32 %12, i32* %4, align 4
  br label %13

; <label>:13:                                     ; preds = %44, %1
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 13
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* @captures, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %2, align 4
  call void @add_move(i32 %23, i32 0)
  br label %24

; <label>:24:                                     ; preds = %22, %19
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %2, align 4
  br label %43

; <label>:28:                                     ; preds = %13
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  call void @add_capture(i32 %37, i32 %41, i32 0, i32 0)
  br label %50

; <label>:42:                                     ; preds = %28
  br label %50

; <label>:43:                                     ; preds = %24
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %13, label %50

; <label>:50:                                     ; preds = %44, %42, %36
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @push_king(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  br label %47

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 13
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* @captures, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  br label %47

; <label>:19:                                     ; preds = %15, %9
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 13
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %2, align 4
  call void @add_move(i32 %26, i32 0)
  br label %47

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  %33 = load i32, i32* @gfrom, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %32, %37
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  call void @add_capture(i32 %40, i32 %44, i32 0, i32 0)
  br label %47

; <label>:45:                                     ; preds = %27
  br label %46

; <label>:46:                                     ; preds = %45
  br label %47

; <label>:47:                                     ; preds = %46, %39, %25, %18, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @push_king_castle(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @gfrom, align 4
  %6 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %7 = load i32, i32* @numb_moves, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.move_s, %struct.move_s* %6, i64 %8
  %10 = getelementptr inbounds %struct.move_s, %struct.move_s* %9, i32 0, i32 0
  store i32 %5, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %13 = load i32, i32* @numb_moves, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.move_s, %struct.move_s* %12, i64 %14
  %16 = getelementptr inbounds %struct.move_s, %struct.move_s* %15, i32 0, i32 1
  store i32 %11, i32* %16, align 4
  %17 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %18 = load i32, i32* @numb_moves, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.move_s, %struct.move_s* %17, i64 %19
  %21 = getelementptr inbounds %struct.move_s, %struct.move_s* %20, i32 0, i32 2
  store i32 13, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %24 = load i32, i32* @numb_moves, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.move_s, %struct.move_s* %23, i64 %25
  %27 = getelementptr inbounds %struct.move_s, %struct.move_s* %26, i32 0, i32 4
  store i32 %22, i32* %27, align 4
  %28 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %29 = load i32, i32* @numb_moves, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.move_s, %struct.move_s* %28, i64 %30
  %32 = getelementptr inbounds %struct.move_s, %struct.move_s* %31, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %34 = load i32, i32* @numb_moves, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.move_s, %struct.move_s* %33, i64 %35
  %37 = getelementptr inbounds %struct.move_s, %struct.move_s* %36, i32 0, i32 5
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @numb_moves, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @numb_moves, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @try_drop(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %4 = load i32, i32* @numb_moves, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.move_s, %struct.move_s* %3, i64 %5
  %7 = getelementptr inbounds %struct.move_s, %struct.move_s* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @gfrom, align 4
  %9 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %10 = load i32, i32* @numb_moves, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.move_s, %struct.move_s* %9, i64 %11
  %13 = getelementptr inbounds %struct.move_s, %struct.move_s* %12, i32 0, i32 1
  store i32 %8, i32* %13, align 4
  %14 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %15 = load i32, i32* @numb_moves, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.move_s, %struct.move_s* %14, i64 %16
  %18 = getelementptr inbounds %struct.move_s, %struct.move_s* %17, i32 0, i32 2
  store i32 13, i32* %18, align 4
  %19 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %20 = load i32, i32* @numb_moves, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.move_s, %struct.move_s* %19, i64 %21
  %23 = getelementptr inbounds %struct.move_s, %struct.move_s* %22, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %26 = load i32, i32* @numb_moves, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.move_s, %struct.move_s* %25, i64 %27
  %29 = getelementptr inbounds %struct.move_s, %struct.move_s* %28, i32 0, i32 3
  store i32 %24, i32* %29, align 4
  %30 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %31 = load i32, i32* @numb_moves, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.move_s, %struct.move_s* %30, i64 %32
  %34 = getelementptr inbounds %struct.move_s, %struct.move_s* %33, i32 0, i32 5
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @numb_moves, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @numb_moves, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @in_check() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @Variant, align 4
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @white_to_move, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* @wking_loc, align 4
  %10 = call i32 @is_attacked(i32 %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %1, align 4
  br label %21

; <label>:13:                                     ; preds = %8
  br label %20

; <label>:14:                                     ; preds = %5
  %15 = load i32, i32* @bking_loc, align 4
  %16 = call i32 @is_attacked(i32 %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14
  store i32 1, i32* %1, align 4
  br label %21

; <label>:19:                                     ; preds = %14
  br label %20

; <label>:20:                                     ; preds = %19, %13
  store i32 0, i32* %1, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %18, %12, %4
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @f_in_check(%struct.move_s*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.move_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.move_s* %0, %struct.move_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.move_s*, %struct.move_s** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.move_s, %struct.move_s* %9, i64 %11
  %13 = getelementptr inbounds %struct.move_s, %struct.move_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.move_s*, %struct.move_s** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.move_s, %struct.move_s* %15, i64 %17
  %19 = getelementptr inbounds %struct.move_s, %struct.move_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @Variant, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %1569

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* @white_to_move, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %798

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %514 [
    i32 2, label %32
    i32 12, label %48
    i32 8, label %156
    i32 4, label %264
    i32 10, label %283
    i32 6, label %499
  ]

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 11
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %46, label %39

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 13
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %39, %32
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:47:                                     ; preds = %39
  br label %514

; <label>:48:                                     ; preds = %27
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @wking_loc, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %101

; <label>:58:                                     ; preds = %48
  %59 = load i32, i32* @wking_loc, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %81

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* @wking_loc, align 4
  %64 = add nsw i32 %63, 13
  store i32 %64, i32* %8, align 4
  br label %65

; <label>:65:                                     ; preds = %72, %62
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 13
  br i1 %70, label %71, label %75

; <label>:71:                                     ; preds = %65
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 13
  store i32 %74, i32* %8, align 4
  br label %65

; <label>:75:                                     ; preds = %65
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %75
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:80:                                     ; preds = %75
  br label %100

; <label>:81:                                     ; preds = %58
  %82 = load i32, i32* @wking_loc, align 4
  %83 = sub nsw i32 %82, 13
  store i32 %83, i32* %8, align 4
  br label %84

; <label>:84:                                     ; preds = %91, %81
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 13
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %84
  br label %91

; <label>:91:                                     ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, 13
  store i32 %93, i32* %8, align 4
  br label %84

; <label>:94:                                     ; preds = %84
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %94
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:99:                                     ; preds = %94
  br label %100

; <label>:100:                                    ; preds = %99, %80
  br label %155

; <label>:101:                                    ; preds = %48
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @wking_loc, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %105, %109
  br i1 %110, label %111, label %154

; <label>:111:                                    ; preds = %101
  %112 = load i32, i32* @wking_loc, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %134

; <label>:115:                                    ; preds = %111
  %116 = load i32, i32* @wking_loc, align 4
  %117 = add nsw i32 %116, 11
  store i32 %117, i32* %8, align 4
  br label %118

; <label>:118:                                    ; preds = %125, %115
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 13
  br i1 %123, label %124, label %128

; <label>:124:                                    ; preds = %118
  br label %125

; <label>:125:                                    ; preds = %124
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 11
  store i32 %127, i32* %8, align 4
  br label %118

; <label>:128:                                    ; preds = %118
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

; <label>:132:                                    ; preds = %128
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:133:                                    ; preds = %128
  br label %153

; <label>:134:                                    ; preds = %111
  %135 = load i32, i32* @wking_loc, align 4
  %136 = sub nsw i32 %135, 11
  store i32 %136, i32* %8, align 4
  br label %137

; <label>:137:                                    ; preds = %144, %134
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 13
  br i1 %142, label %143, label %147

; <label>:143:                                    ; preds = %137
  br label %144

; <label>:144:                                    ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = sub nsw i32 %145, 11
  store i32 %146, i32* %8, align 4
  br label %137

; <label>:147:                                    ; preds = %137
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

; <label>:151:                                    ; preds = %147
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:152:                                    ; preds = %147
  br label %153

; <label>:153:                                    ; preds = %152, %133
  br label %154

; <label>:154:                                    ; preds = %153, %101
  br label %155

; <label>:155:                                    ; preds = %154, %100
  br label %514

; <label>:156:                                    ; preds = %27
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @wking_loc, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %160, %164
  br i1 %165, label %166, label %209

; <label>:166:                                    ; preds = %156
  %167 = load i32, i32* @wking_loc, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %189

; <label>:170:                                    ; preds = %166
  %171 = load i32, i32* @wking_loc, align 4
  %172 = add nsw i32 %171, 12
  store i32 %172, i32* %8, align 4
  br label %173

; <label>:173:                                    ; preds = %180, %170
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 13
  br i1 %178, label %179, label %183

; <label>:179:                                    ; preds = %173
  br label %180

; <label>:180:                                    ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 12
  store i32 %182, i32* %8, align 4
  br label %173

; <label>:183:                                    ; preds = %173
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

; <label>:187:                                    ; preds = %183
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:188:                                    ; preds = %183
  br label %208

; <label>:189:                                    ; preds = %166
  %190 = load i32, i32* @wking_loc, align 4
  %191 = sub nsw i32 %190, 12
  store i32 %191, i32* %8, align 4
  br label %192

; <label>:192:                                    ; preds = %199, %189
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 13
  br i1 %197, label %198, label %202

; <label>:198:                                    ; preds = %192
  br label %199

; <label>:199:                                    ; preds = %198
  %200 = load i32, i32* %8, align 4
  %201 = sub nsw i32 %200, 12
  store i32 %201, i32* %8, align 4
  br label %192

; <label>:202:                                    ; preds = %192
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %207

; <label>:206:                                    ; preds = %202
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:207:                                    ; preds = %202
  br label %208

; <label>:208:                                    ; preds = %207, %188
  br label %263

; <label>:209:                                    ; preds = %156
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @wking_loc, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %213, %217
  br i1 %218, label %219, label %262

; <label>:219:                                    ; preds = %209
  %220 = load i32, i32* @wking_loc, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %242

; <label>:223:                                    ; preds = %219
  %224 = load i32, i32* @wking_loc, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  br label %226

; <label>:226:                                    ; preds = %233, %223
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 13
  br i1 %231, label %232, label %236

; <label>:232:                                    ; preds = %226
  br label %233

; <label>:233:                                    ; preds = %232
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %226

; <label>:236:                                    ; preds = %226
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %241

; <label>:240:                                    ; preds = %236
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:241:                                    ; preds = %236
  br label %261

; <label>:242:                                    ; preds = %219
  %243 = load i32, i32* @wking_loc, align 4
  %244 = sub nsw i32 %243, 1
  store i32 %244, i32* %8, align 4
  br label %245

; <label>:245:                                    ; preds = %252, %242
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 13
  br i1 %250, label %251, label %255

; <label>:251:                                    ; preds = %245
  br label %252

; <label>:252:                                    ; preds = %251
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %8, align 4
  br label %245

; <label>:255:                                    ; preds = %245
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* %6, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %260

; <label>:259:                                    ; preds = %255
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:260:                                    ; preds = %255
  br label %261

; <label>:261:                                    ; preds = %260, %241
  br label %262

; <label>:262:                                    ; preds = %261, %209
  br label %263

; <label>:263:                                    ; preds = %262, %208
  br label %514

; <label>:264:                                    ; preds = %27
  store i32 0, i32* %8, align 4
  br label %265

; <label>:265:                                    ; preds = %279, %264
  %266 = load i32, i32* %8, align 4
  %267 = icmp slt i32 %266, 8
  br i1 %267, label %268, label %282

; <label>:268:                                    ; preds = %265
  %269 = load i32, i32* @wking_loc, align 4
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [8 x i32], [8 x i32]* @f_in_check.knight_o, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %269, %273
  %275 = load i32, i32* %6, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %278

; <label>:277:                                    ; preds = %268
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:278:                                    ; preds = %268
  br label %279

; <label>:279:                                    ; preds = %278
  %280 = load i32, i32* %8, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %8, align 4
  br label %265

; <label>:282:                                    ; preds = %265
  br label %514

; <label>:283:                                    ; preds = %27
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @wking_loc, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %287, %291
  br i1 %292, label %293, label %336

; <label>:293:                                    ; preds = %283
  %294 = load i32, i32* @wking_loc, align 4
  %295 = load i32, i32* %6, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %316

; <label>:297:                                    ; preds = %293
  %298 = load i32, i32* @wking_loc, align 4
  %299 = add nsw i32 %298, 12
  store i32 %299, i32* %8, align 4
  br label %300

; <label>:300:                                    ; preds = %307, %297
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 13
  br i1 %305, label %306, label %310

; <label>:306:                                    ; preds = %300
  br label %307

; <label>:307:                                    ; preds = %306
  %308 = load i32, i32* %8, align 4
  %309 = add nsw i32 %308, 12
  store i32 %309, i32* %8, align 4
  br label %300

; <label>:310:                                    ; preds = %300
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %6, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %315

; <label>:314:                                    ; preds = %310
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:315:                                    ; preds = %310
  br label %335

; <label>:316:                                    ; preds = %293
  %317 = load i32, i32* @wking_loc, align 4
  %318 = sub nsw i32 %317, 12
  store i32 %318, i32* %8, align 4
  br label %319

; <label>:319:                                    ; preds = %326, %316
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %323, 13
  br i1 %324, label %325, label %329

; <label>:325:                                    ; preds = %319
  br label %326

; <label>:326:                                    ; preds = %325
  %327 = load i32, i32* %8, align 4
  %328 = sub nsw i32 %327, 12
  store i32 %328, i32* %8, align 4
  br label %319

; <label>:329:                                    ; preds = %319
  %330 = load i32, i32* %8, align 4
  %331 = load i32, i32* %6, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %334

; <label>:333:                                    ; preds = %329
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:334:                                    ; preds = %329
  br label %335

; <label>:335:                                    ; preds = %334, %315
  br label %498

; <label>:336:                                    ; preds = %283
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @wking_loc, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %340, %344
  br i1 %345, label %346, label %389

; <label>:346:                                    ; preds = %336
  %347 = load i32, i32* @wking_loc, align 4
  %348 = load i32, i32* %6, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %369

; <label>:350:                                    ; preds = %346
  %351 = load i32, i32* @wking_loc, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %8, align 4
  br label %353

; <label>:353:                                    ; preds = %360, %350
  %354 = load i32, i32* %8, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 13
  br i1 %358, label %359, label %363

; <label>:359:                                    ; preds = %353
  br label %360

; <label>:360:                                    ; preds = %359
  %361 = load i32, i32* %8, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %8, align 4
  br label %353

; <label>:363:                                    ; preds = %353
  %364 = load i32, i32* %8, align 4
  %365 = load i32, i32* %6, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %368

; <label>:367:                                    ; preds = %363
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:368:                                    ; preds = %363
  br label %388

; <label>:369:                                    ; preds = %346
  %370 = load i32, i32* @wking_loc, align 4
  %371 = sub nsw i32 %370, 1
  store i32 %371, i32* %8, align 4
  br label %372

; <label>:372:                                    ; preds = %379, %369
  %373 = load i32, i32* %8, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, 13
  br i1 %377, label %378, label %382

; <label>:378:                                    ; preds = %372
  br label %379

; <label>:379:                                    ; preds = %378
  %380 = load i32, i32* %8, align 4
  %381 = sub nsw i32 %380, 1
  store i32 %381, i32* %8, align 4
  br label %372

; <label>:382:                                    ; preds = %372
  %383 = load i32, i32* %8, align 4
  %384 = load i32, i32* %6, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %387

; <label>:386:                                    ; preds = %382
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:387:                                    ; preds = %382
  br label %388

; <label>:388:                                    ; preds = %387, %368
  br label %497

; <label>:389:                                    ; preds = %336
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* @wking_loc, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %393, %397
  br i1 %398, label %399, label %442

; <label>:399:                                    ; preds = %389
  %400 = load i32, i32* @wking_loc, align 4
  %401 = load i32, i32* %6, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %422

; <label>:403:                                    ; preds = %399
  %404 = load i32, i32* @wking_loc, align 4
  %405 = add nsw i32 %404, 13
  store i32 %405, i32* %8, align 4
  br label %406

; <label>:406:                                    ; preds = %413, %403
  %407 = load i32, i32* %8, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = icmp eq i32 %410, 13
  br i1 %411, label %412, label %416

; <label>:412:                                    ; preds = %406
  br label %413

; <label>:413:                                    ; preds = %412
  %414 = load i32, i32* %8, align 4
  %415 = add nsw i32 %414, 13
  store i32 %415, i32* %8, align 4
  br label %406

; <label>:416:                                    ; preds = %406
  %417 = load i32, i32* %8, align 4
  %418 = load i32, i32* %6, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %420, label %421

; <label>:420:                                    ; preds = %416
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:421:                                    ; preds = %416
  br label %441

; <label>:422:                                    ; preds = %399
  %423 = load i32, i32* @wking_loc, align 4
  %424 = sub nsw i32 %423, 13
  store i32 %424, i32* %8, align 4
  br label %425

; <label>:425:                                    ; preds = %432, %422
  %426 = load i32, i32* %8, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = icmp eq i32 %429, 13
  br i1 %430, label %431, label %435

; <label>:431:                                    ; preds = %425
  br label %432

; <label>:432:                                    ; preds = %431
  %433 = load i32, i32* %8, align 4
  %434 = sub nsw i32 %433, 13
  store i32 %434, i32* %8, align 4
  br label %425

; <label>:435:                                    ; preds = %425
  %436 = load i32, i32* %8, align 4
  %437 = load i32, i32* %6, align 4
  %438 = icmp eq i32 %436, %437
  br i1 %438, label %439, label %440

; <label>:439:                                    ; preds = %435
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:440:                                    ; preds = %435
  br label %441

; <label>:441:                                    ; preds = %440, %421
  br label %496

; <label>:442:                                    ; preds = %389
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @wking_loc, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = icmp eq i32 %446, %450
  br i1 %451, label %452, label %495

; <label>:452:                                    ; preds = %442
  %453 = load i32, i32* @wking_loc, align 4
  %454 = load i32, i32* %6, align 4
  %455 = icmp slt i32 %453, %454
  br i1 %455, label %456, label %475

; <label>:456:                                    ; preds = %452
  %457 = load i32, i32* @wking_loc, align 4
  %458 = add nsw i32 %457, 11
  store i32 %458, i32* %8, align 4
  br label %459

; <label>:459:                                    ; preds = %466, %456
  %460 = load i32, i32* %8, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = icmp eq i32 %463, 13
  br i1 %464, label %465, label %469

; <label>:465:                                    ; preds = %459
  br label %466

; <label>:466:                                    ; preds = %465
  %467 = load i32, i32* %8, align 4
  %468 = add nsw i32 %467, 11
  store i32 %468, i32* %8, align 4
  br label %459

; <label>:469:                                    ; preds = %459
  %470 = load i32, i32* %8, align 4
  %471 = load i32, i32* %6, align 4
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %474

; <label>:473:                                    ; preds = %469
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:474:                                    ; preds = %469
  br label %494

; <label>:475:                                    ; preds = %452
  %476 = load i32, i32* @wking_loc, align 4
  %477 = sub nsw i32 %476, 11
  store i32 %477, i32* %8, align 4
  br label %478

; <label>:478:                                    ; preds = %485, %475
  %479 = load i32, i32* %8, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = icmp eq i32 %482, 13
  br i1 %483, label %484, label %488

; <label>:484:                                    ; preds = %478
  br label %485

; <label>:485:                                    ; preds = %484
  %486 = load i32, i32* %8, align 4
  %487 = sub nsw i32 %486, 11
  store i32 %487, i32* %8, align 4
  br label %478

; <label>:488:                                    ; preds = %478
  %489 = load i32, i32* %8, align 4
  %490 = load i32, i32* %6, align 4
  %491 = icmp eq i32 %489, %490
  br i1 %491, label %492, label %493

; <label>:492:                                    ; preds = %488
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:493:                                    ; preds = %488
  br label %494

; <label>:494:                                    ; preds = %493, %474
  br label %495

; <label>:495:                                    ; preds = %494, %442
  br label %496

; <label>:496:                                    ; preds = %495, %441
  br label %497

; <label>:497:                                    ; preds = %496, %388
  br label %498

; <label>:498:                                    ; preds = %497, %335
  br label %514

; <label>:499:                                    ; preds = %27
  %500 = load %struct.move_s*, %struct.move_s** %4, align 8
  %501 = load i32, i32* %5, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.move_s, %struct.move_s* %500, i64 %502
  %504 = getelementptr inbounds %struct.move_s, %struct.move_s* %503, i32 0, i32 4
  %505 = load i32, i32* %504, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %513

; <label>:507:                                    ; preds = %499
  %508 = load i32, i32* @wking_loc, align 4
  %509 = call i32 @is_attacked(i32 %508, i32 0)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %512

; <label>:511:                                    ; preds = %507
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:512:                                    ; preds = %507
  store i32 0, i32* %3, align 4
  br label %1569

; <label>:513:                                    ; preds = %499
  br label %514

; <label>:514:                                    ; preds = %27, %513, %498, %282, %263, %155, %47
  %515 = load i32, i32* %7, align 4
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %518

; <label>:517:                                    ; preds = %514
  store i32 0, i32* %3, align 4
  br label %1569

; <label>:518:                                    ; preds = %514
  %519 = load i32, i32* %7, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = load i32, i32* @wking_loc, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = icmp eq i32 %522, %526
  br i1 %527, label %528, label %587

; <label>:528:                                    ; preds = %518
  %529 = load i32, i32* @wking_loc, align 4
  %530 = load i32, i32* %7, align 4
  %531 = icmp sgt i32 %529, %530
  br i1 %531, label %532, label %559

; <label>:532:                                    ; preds = %528
  %533 = load i32, i32* @wking_loc, align 4
  %534 = sub nsw i32 %533, 1
  store i32 %534, i32* %8, align 4
  br label %535

; <label>:535:                                    ; preds = %542, %532
  %536 = load i32, i32* %8, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = icmp eq i32 %539, 13
  br i1 %540, label %541, label %545

; <label>:541:                                    ; preds = %535
  br label %542

; <label>:542:                                    ; preds = %541
  %543 = load i32, i32* %8, align 4
  %544 = add nsw i32 %543, -1
  store i32 %544, i32* %8, align 4
  br label %535

; <label>:545:                                    ; preds = %535
  %546 = load i32, i32* %8, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, 8
  br i1 %550, label %557, label %551

; <label>:551:                                    ; preds = %545
  %552 = load i32, i32* %8, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = icmp eq i32 %555, 10
  br i1 %556, label %557, label %558

; <label>:557:                                    ; preds = %551, %545
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:558:                                    ; preds = %551
  br label %586

; <label>:559:                                    ; preds = %528
  %560 = load i32, i32* @wking_loc, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %8, align 4
  br label %562

; <label>:562:                                    ; preds = %569, %559
  %563 = load i32, i32* %8, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = icmp eq i32 %566, 13
  br i1 %567, label %568, label %572

; <label>:568:                                    ; preds = %562
  br label %569

; <label>:569:                                    ; preds = %568
  %570 = load i32, i32* %8, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %8, align 4
  br label %562

; <label>:572:                                    ; preds = %562
  %573 = load i32, i32* %8, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = icmp eq i32 %576, 8
  br i1 %577, label %584, label %578

; <label>:578:                                    ; preds = %572
  %579 = load i32, i32* %8, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %580
  %582 = load i32, i32* %581, align 4
  %583 = icmp eq i32 %582, 10
  br i1 %583, label %584, label %585

; <label>:584:                                    ; preds = %578, %572
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:585:                                    ; preds = %578
  br label %586

; <label>:586:                                    ; preds = %585, %558
  br label %797

; <label>:587:                                    ; preds = %518
  %588 = load i32, i32* %7, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = load i32, i32* @wking_loc, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = icmp eq i32 %591, %595
  br i1 %596, label %597, label %656

; <label>:597:                                    ; preds = %587
  %598 = load i32, i32* @wking_loc, align 4
  %599 = load i32, i32* %7, align 4
  %600 = icmp sgt i32 %598, %599
  br i1 %600, label %601, label %628

; <label>:601:                                    ; preds = %597
  %602 = load i32, i32* @wking_loc, align 4
  %603 = sub nsw i32 %602, 12
  store i32 %603, i32* %8, align 4
  br label %604

; <label>:604:                                    ; preds = %611, %601
  %605 = load i32, i32* %8, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = icmp eq i32 %608, 13
  br i1 %609, label %610, label %614

; <label>:610:                                    ; preds = %604
  br label %611

; <label>:611:                                    ; preds = %610
  %612 = load i32, i32* %8, align 4
  %613 = sub nsw i32 %612, 12
  store i32 %613, i32* %8, align 4
  br label %604

; <label>:614:                                    ; preds = %604
  %615 = load i32, i32* %8, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %616
  %618 = load i32, i32* %617, align 4
  %619 = icmp eq i32 %618, 8
  br i1 %619, label %626, label %620

; <label>:620:                                    ; preds = %614
  %621 = load i32, i32* %8, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %622
  %624 = load i32, i32* %623, align 4
  %625 = icmp eq i32 %624, 10
  br i1 %625, label %626, label %627

; <label>:626:                                    ; preds = %620, %614
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:627:                                    ; preds = %620
  br label %655

; <label>:628:                                    ; preds = %597
  %629 = load i32, i32* @wking_loc, align 4
  %630 = add nsw i32 %629, 12
  store i32 %630, i32* %8, align 4
  br label %631

; <label>:631:                                    ; preds = %638, %628
  %632 = load i32, i32* %8, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = icmp eq i32 %635, 13
  br i1 %636, label %637, label %641

; <label>:637:                                    ; preds = %631
  br label %638

; <label>:638:                                    ; preds = %637
  %639 = load i32, i32* %8, align 4
  %640 = add nsw i32 %639, 12
  store i32 %640, i32* %8, align 4
  br label %631

; <label>:641:                                    ; preds = %631
  %642 = load i32, i32* %8, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = icmp eq i32 %645, 8
  br i1 %646, label %653, label %647

; <label>:647:                                    ; preds = %641
  %648 = load i32, i32* %8, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = icmp eq i32 %651, 10
  br i1 %652, label %653, label %654

; <label>:653:                                    ; preds = %647, %641
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:654:                                    ; preds = %647
  br label %655

; <label>:655:                                    ; preds = %654, %627
  br label %796

; <label>:656:                                    ; preds = %587
  %657 = load i32, i32* %7, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %658
  %660 = load i32, i32* %659, align 4
  %661 = load i32, i32* @wking_loc, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %662
  %664 = load i32, i32* %663, align 4
  %665 = icmp eq i32 %660, %664
  br i1 %665, label %666, label %725

; <label>:666:                                    ; preds = %656
  %667 = load i32, i32* @wking_loc, align 4
  %668 = load i32, i32* %7, align 4
  %669 = icmp sgt i32 %667, %668
  br i1 %669, label %670, label %697

; <label>:670:                                    ; preds = %666
  %671 = load i32, i32* @wking_loc, align 4
  %672 = sub nsw i32 %671, 13
  store i32 %672, i32* %8, align 4
  br label %673

; <label>:673:                                    ; preds = %680, %670
  %674 = load i32, i32* %8, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %675
  %677 = load i32, i32* %676, align 4
  %678 = icmp eq i32 %677, 13
  br i1 %678, label %679, label %683

; <label>:679:                                    ; preds = %673
  br label %680

; <label>:680:                                    ; preds = %679
  %681 = load i32, i32* %8, align 4
  %682 = sub nsw i32 %681, 13
  store i32 %682, i32* %8, align 4
  br label %673

; <label>:683:                                    ; preds = %673
  %684 = load i32, i32* %8, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %685
  %687 = load i32, i32* %686, align 4
  %688 = icmp eq i32 %687, 12
  br i1 %688, label %695, label %689

; <label>:689:                                    ; preds = %683
  %690 = load i32, i32* %8, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = icmp eq i32 %693, 10
  br i1 %694, label %695, label %696

; <label>:695:                                    ; preds = %689, %683
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:696:                                    ; preds = %689
  br label %724

; <label>:697:                                    ; preds = %666
  %698 = load i32, i32* @wking_loc, align 4
  %699 = add nsw i32 %698, 13
  store i32 %699, i32* %8, align 4
  br label %700

; <label>:700:                                    ; preds = %707, %697
  %701 = load i32, i32* %8, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %702
  %704 = load i32, i32* %703, align 4
  %705 = icmp eq i32 %704, 13
  br i1 %705, label %706, label %710

; <label>:706:                                    ; preds = %700
  br label %707

; <label>:707:                                    ; preds = %706
  %708 = load i32, i32* %8, align 4
  %709 = add nsw i32 %708, 13
  store i32 %709, i32* %8, align 4
  br label %700

; <label>:710:                                    ; preds = %700
  %711 = load i32, i32* %8, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %712
  %714 = load i32, i32* %713, align 4
  %715 = icmp eq i32 %714, 12
  br i1 %715, label %722, label %716

; <label>:716:                                    ; preds = %710
  %717 = load i32, i32* %8, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %718
  %720 = load i32, i32* %719, align 4
  %721 = icmp eq i32 %720, 10
  br i1 %721, label %722, label %723

; <label>:722:                                    ; preds = %716, %710
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:723:                                    ; preds = %716
  br label %724

; <label>:724:                                    ; preds = %723, %696
  br label %795

; <label>:725:                                    ; preds = %656
  %726 = load i32, i32* %7, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %727
  %729 = load i32, i32* %728, align 4
  %730 = load i32, i32* @wking_loc, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %731
  %733 = load i32, i32* %732, align 4
  %734 = icmp eq i32 %729, %733
  br i1 %734, label %735, label %794

; <label>:735:                                    ; preds = %725
  %736 = load i32, i32* @wking_loc, align 4
  %737 = load i32, i32* %7, align 4
  %738 = icmp sgt i32 %736, %737
  br i1 %738, label %739, label %766

; <label>:739:                                    ; preds = %735
  %740 = load i32, i32* @wking_loc, align 4
  %741 = sub nsw i32 %740, 11
  store i32 %741, i32* %8, align 4
  br label %742

; <label>:742:                                    ; preds = %749, %739
  %743 = load i32, i32* %8, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %744
  %746 = load i32, i32* %745, align 4
  %747 = icmp eq i32 %746, 13
  br i1 %747, label %748, label %752

; <label>:748:                                    ; preds = %742
  br label %749

; <label>:749:                                    ; preds = %748
  %750 = load i32, i32* %8, align 4
  %751 = sub nsw i32 %750, 11
  store i32 %751, i32* %8, align 4
  br label %742

; <label>:752:                                    ; preds = %742
  %753 = load i32, i32* %8, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %754
  %756 = load i32, i32* %755, align 4
  %757 = icmp eq i32 %756, 12
  br i1 %757, label %764, label %758

; <label>:758:                                    ; preds = %752
  %759 = load i32, i32* %8, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %760
  %762 = load i32, i32* %761, align 4
  %763 = icmp eq i32 %762, 10
  br i1 %763, label %764, label %765

; <label>:764:                                    ; preds = %758, %752
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:765:                                    ; preds = %758
  br label %793

; <label>:766:                                    ; preds = %735
  %767 = load i32, i32* @wking_loc, align 4
  %768 = add nsw i32 %767, 11
  store i32 %768, i32* %8, align 4
  br label %769

; <label>:769:                                    ; preds = %776, %766
  %770 = load i32, i32* %8, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %771
  %773 = load i32, i32* %772, align 4
  %774 = icmp eq i32 %773, 13
  br i1 %774, label %775, label %779

; <label>:775:                                    ; preds = %769
  br label %776

; <label>:776:                                    ; preds = %775
  %777 = load i32, i32* %8, align 4
  %778 = add nsw i32 %777, 11
  store i32 %778, i32* %8, align 4
  br label %769

; <label>:779:                                    ; preds = %769
  %780 = load i32, i32* %8, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %781
  %783 = load i32, i32* %782, align 4
  %784 = icmp eq i32 %783, 12
  br i1 %784, label %791, label %785

; <label>:785:                                    ; preds = %779
  %786 = load i32, i32* %8, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %787
  %789 = load i32, i32* %788, align 4
  %790 = icmp eq i32 %789, 10
  br i1 %790, label %791, label %792

; <label>:791:                                    ; preds = %785, %779
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:792:                                    ; preds = %785
  br label %793

; <label>:793:                                    ; preds = %792, %765
  br label %794

; <label>:794:                                    ; preds = %793, %725
  br label %795

; <label>:795:                                    ; preds = %794, %724
  br label %796

; <label>:796:                                    ; preds = %795, %655
  br label %797

; <label>:797:                                    ; preds = %796, %586
  store i32 0, i32* %3, align 4
  br label %1569

; <label>:798:                                    ; preds = %24
  %799 = load i32, i32* %6, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %800
  %802 = load i32, i32* %801, align 4
  switch i32 %802, label %1285 [
    i32 1, label %803
    i32 11, label %819
    i32 7, label %927
    i32 3, label %1035
    i32 9, label %1054
    i32 5, label %1270
  ]

; <label>:803:                                    ; preds = %798
  %804 = load i32, i32* %6, align 4
  %805 = add nsw i32 %804, 11
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %806
  %808 = load i32, i32* %807, align 4
  %809 = icmp eq i32 %808, 6
  br i1 %809, label %817, label %810

; <label>:810:                                    ; preds = %803
  %811 = load i32, i32* %6, align 4
  %812 = add nsw i32 %811, 13
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %813
  %815 = load i32, i32* %814, align 4
  %816 = icmp eq i32 %815, 6
  br i1 %816, label %817, label %818

; <label>:817:                                    ; preds = %810, %803
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:818:                                    ; preds = %810
  br label %1285

; <label>:819:                                    ; preds = %798
  %820 = load i32, i32* %6, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %821
  %823 = load i32, i32* %822, align 4
  %824 = load i32, i32* @bking_loc, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %825
  %827 = load i32, i32* %826, align 4
  %828 = icmp eq i32 %823, %827
  br i1 %828, label %829, label %872

; <label>:829:                                    ; preds = %819
  %830 = load i32, i32* @bking_loc, align 4
  %831 = load i32, i32* %6, align 4
  %832 = icmp slt i32 %830, %831
  br i1 %832, label %833, label %852

; <label>:833:                                    ; preds = %829
  %834 = load i32, i32* @bking_loc, align 4
  %835 = add nsw i32 %834, 13
  store i32 %835, i32* %8, align 4
  br label %836

; <label>:836:                                    ; preds = %843, %833
  %837 = load i32, i32* %8, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %838
  %840 = load i32, i32* %839, align 4
  %841 = icmp eq i32 %840, 13
  br i1 %841, label %842, label %846

; <label>:842:                                    ; preds = %836
  br label %843

; <label>:843:                                    ; preds = %842
  %844 = load i32, i32* %8, align 4
  %845 = add nsw i32 %844, 13
  store i32 %845, i32* %8, align 4
  br label %836

; <label>:846:                                    ; preds = %836
  %847 = load i32, i32* %8, align 4
  %848 = load i32, i32* %6, align 4
  %849 = icmp eq i32 %847, %848
  br i1 %849, label %850, label %851

; <label>:850:                                    ; preds = %846
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:851:                                    ; preds = %846
  br label %871

; <label>:852:                                    ; preds = %829
  %853 = load i32, i32* @bking_loc, align 4
  %854 = sub nsw i32 %853, 13
  store i32 %854, i32* %8, align 4
  br label %855

; <label>:855:                                    ; preds = %862, %852
  %856 = load i32, i32* %8, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %857
  %859 = load i32, i32* %858, align 4
  %860 = icmp eq i32 %859, 13
  br i1 %860, label %861, label %865

; <label>:861:                                    ; preds = %855
  br label %862

; <label>:862:                                    ; preds = %861
  %863 = load i32, i32* %8, align 4
  %864 = sub nsw i32 %863, 13
  store i32 %864, i32* %8, align 4
  br label %855

; <label>:865:                                    ; preds = %855
  %866 = load i32, i32* %8, align 4
  %867 = load i32, i32* %6, align 4
  %868 = icmp eq i32 %866, %867
  br i1 %868, label %869, label %870

; <label>:869:                                    ; preds = %865
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:870:                                    ; preds = %865
  br label %871

; <label>:871:                                    ; preds = %870, %851
  br label %926

; <label>:872:                                    ; preds = %819
  %873 = load i32, i32* %6, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %874
  %876 = load i32, i32* %875, align 4
  %877 = load i32, i32* @bking_loc, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %878
  %880 = load i32, i32* %879, align 4
  %881 = icmp eq i32 %876, %880
  br i1 %881, label %882, label %925

; <label>:882:                                    ; preds = %872
  %883 = load i32, i32* @bking_loc, align 4
  %884 = load i32, i32* %6, align 4
  %885 = icmp slt i32 %883, %884
  br i1 %885, label %886, label %905

; <label>:886:                                    ; preds = %882
  %887 = load i32, i32* @bking_loc, align 4
  %888 = add nsw i32 %887, 11
  store i32 %888, i32* %8, align 4
  br label %889

; <label>:889:                                    ; preds = %896, %886
  %890 = load i32, i32* %8, align 4
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %891
  %893 = load i32, i32* %892, align 4
  %894 = icmp eq i32 %893, 13
  br i1 %894, label %895, label %899

; <label>:895:                                    ; preds = %889
  br label %896

; <label>:896:                                    ; preds = %895
  %897 = load i32, i32* %8, align 4
  %898 = add nsw i32 %897, 11
  store i32 %898, i32* %8, align 4
  br label %889

; <label>:899:                                    ; preds = %889
  %900 = load i32, i32* %8, align 4
  %901 = load i32, i32* %6, align 4
  %902 = icmp eq i32 %900, %901
  br i1 %902, label %903, label %904

; <label>:903:                                    ; preds = %899
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:904:                                    ; preds = %899
  br label %924

; <label>:905:                                    ; preds = %882
  %906 = load i32, i32* @bking_loc, align 4
  %907 = sub nsw i32 %906, 11
  store i32 %907, i32* %8, align 4
  br label %908

; <label>:908:                                    ; preds = %915, %905
  %909 = load i32, i32* %8, align 4
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %910
  %912 = load i32, i32* %911, align 4
  %913 = icmp eq i32 %912, 13
  br i1 %913, label %914, label %918

; <label>:914:                                    ; preds = %908
  br label %915

; <label>:915:                                    ; preds = %914
  %916 = load i32, i32* %8, align 4
  %917 = sub nsw i32 %916, 11
  store i32 %917, i32* %8, align 4
  br label %908

; <label>:918:                                    ; preds = %908
  %919 = load i32, i32* %8, align 4
  %920 = load i32, i32* %6, align 4
  %921 = icmp eq i32 %919, %920
  br i1 %921, label %922, label %923

; <label>:922:                                    ; preds = %918
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:923:                                    ; preds = %918
  br label %924

; <label>:924:                                    ; preds = %923, %904
  br label %925

; <label>:925:                                    ; preds = %924, %872
  br label %926

; <label>:926:                                    ; preds = %925, %871
  br label %1285

; <label>:927:                                    ; preds = %798
  %928 = load i32, i32* %6, align 4
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %929
  %931 = load i32, i32* %930, align 4
  %932 = load i32, i32* @bking_loc, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %933
  %935 = load i32, i32* %934, align 4
  %936 = icmp eq i32 %931, %935
  br i1 %936, label %937, label %980

; <label>:937:                                    ; preds = %927
  %938 = load i32, i32* @bking_loc, align 4
  %939 = load i32, i32* %6, align 4
  %940 = icmp slt i32 %938, %939
  br i1 %940, label %941, label %960

; <label>:941:                                    ; preds = %937
  %942 = load i32, i32* @bking_loc, align 4
  %943 = add nsw i32 %942, 12
  store i32 %943, i32* %8, align 4
  br label %944

; <label>:944:                                    ; preds = %951, %941
  %945 = load i32, i32* %8, align 4
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %946
  %948 = load i32, i32* %947, align 4
  %949 = icmp eq i32 %948, 13
  br i1 %949, label %950, label %954

; <label>:950:                                    ; preds = %944
  br label %951

; <label>:951:                                    ; preds = %950
  %952 = load i32, i32* %8, align 4
  %953 = add nsw i32 %952, 12
  store i32 %953, i32* %8, align 4
  br label %944

; <label>:954:                                    ; preds = %944
  %955 = load i32, i32* %8, align 4
  %956 = load i32, i32* %6, align 4
  %957 = icmp eq i32 %955, %956
  br i1 %957, label %958, label %959

; <label>:958:                                    ; preds = %954
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:959:                                    ; preds = %954
  br label %979

; <label>:960:                                    ; preds = %937
  %961 = load i32, i32* @bking_loc, align 4
  %962 = sub nsw i32 %961, 12
  store i32 %962, i32* %8, align 4
  br label %963

; <label>:963:                                    ; preds = %970, %960
  %964 = load i32, i32* %8, align 4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %965
  %967 = load i32, i32* %966, align 4
  %968 = icmp eq i32 %967, 13
  br i1 %968, label %969, label %973

; <label>:969:                                    ; preds = %963
  br label %970

; <label>:970:                                    ; preds = %969
  %971 = load i32, i32* %8, align 4
  %972 = sub nsw i32 %971, 12
  store i32 %972, i32* %8, align 4
  br label %963

; <label>:973:                                    ; preds = %963
  %974 = load i32, i32* %8, align 4
  %975 = load i32, i32* %6, align 4
  %976 = icmp eq i32 %974, %975
  br i1 %976, label %977, label %978

; <label>:977:                                    ; preds = %973
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:978:                                    ; preds = %973
  br label %979

; <label>:979:                                    ; preds = %978, %959
  br label %1034

; <label>:980:                                    ; preds = %927
  %981 = load i32, i32* %6, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %982
  %984 = load i32, i32* %983, align 4
  %985 = load i32, i32* @bking_loc, align 4
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %986
  %988 = load i32, i32* %987, align 4
  %989 = icmp eq i32 %984, %988
  br i1 %989, label %990, label %1033

; <label>:990:                                    ; preds = %980
  %991 = load i32, i32* @bking_loc, align 4
  %992 = load i32, i32* %6, align 4
  %993 = icmp slt i32 %991, %992
  br i1 %993, label %994, label %1013

; <label>:994:                                    ; preds = %990
  %995 = load i32, i32* @bking_loc, align 4
  %996 = add nsw i32 %995, 1
  store i32 %996, i32* %8, align 4
  br label %997

; <label>:997:                                    ; preds = %1004, %994
  %998 = load i32, i32* %8, align 4
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %999
  %1001 = load i32, i32* %1000, align 4
  %1002 = icmp eq i32 %1001, 13
  br i1 %1002, label %1003, label %1007

; <label>:1003:                                   ; preds = %997
  br label %1004

; <label>:1004:                                   ; preds = %1003
  %1005 = load i32, i32* %8, align 4
  %1006 = add nsw i32 %1005, 1
  store i32 %1006, i32* %8, align 4
  br label %997

; <label>:1007:                                   ; preds = %997
  %1008 = load i32, i32* %8, align 4
  %1009 = load i32, i32* %6, align 4
  %1010 = icmp eq i32 %1008, %1009
  br i1 %1010, label %1011, label %1012

; <label>:1011:                                   ; preds = %1007
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1012:                                   ; preds = %1007
  br label %1032

; <label>:1013:                                   ; preds = %990
  %1014 = load i32, i32* @bking_loc, align 4
  %1015 = sub nsw i32 %1014, 1
  store i32 %1015, i32* %8, align 4
  br label %1016

; <label>:1016:                                   ; preds = %1023, %1013
  %1017 = load i32, i32* %8, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1018
  %1020 = load i32, i32* %1019, align 4
  %1021 = icmp eq i32 %1020, 13
  br i1 %1021, label %1022, label %1026

; <label>:1022:                                   ; preds = %1016
  br label %1023

; <label>:1023:                                   ; preds = %1022
  %1024 = load i32, i32* %8, align 4
  %1025 = add nsw i32 %1024, -1
  store i32 %1025, i32* %8, align 4
  br label %1016

; <label>:1026:                                   ; preds = %1016
  %1027 = load i32, i32* %8, align 4
  %1028 = load i32, i32* %6, align 4
  %1029 = icmp eq i32 %1027, %1028
  br i1 %1029, label %1030, label %1031

; <label>:1030:                                   ; preds = %1026
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1031:                                   ; preds = %1026
  br label %1032

; <label>:1032:                                   ; preds = %1031, %1012
  br label %1033

; <label>:1033:                                   ; preds = %1032, %980
  br label %1034

; <label>:1034:                                   ; preds = %1033, %979
  br label %1285

; <label>:1035:                                   ; preds = %798
  store i32 0, i32* %8, align 4
  br label %1036

; <label>:1036:                                   ; preds = %1050, %1035
  %1037 = load i32, i32* %8, align 4
  %1038 = icmp slt i32 %1037, 8
  br i1 %1038, label %1039, label %1053

; <label>:1039:                                   ; preds = %1036
  %1040 = load i32, i32* @bking_loc, align 4
  %1041 = load i32, i32* %8, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds [8 x i32], [8 x i32]* @f_in_check.knight_o, i64 0, i64 %1042
  %1044 = load i32, i32* %1043, align 4
  %1045 = add nsw i32 %1040, %1044
  %1046 = load i32, i32* %6, align 4
  %1047 = icmp eq i32 %1045, %1046
  br i1 %1047, label %1048, label %1049

; <label>:1048:                                   ; preds = %1039
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1049:                                   ; preds = %1039
  br label %1050

; <label>:1050:                                   ; preds = %1049
  %1051 = load i32, i32* %8, align 4
  %1052 = add nsw i32 %1051, 1
  store i32 %1052, i32* %8, align 4
  br label %1036

; <label>:1053:                                   ; preds = %1036
  br label %1285

; <label>:1054:                                   ; preds = %798
  %1055 = load i32, i32* %6, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1056
  %1058 = load i32, i32* %1057, align 4
  %1059 = load i32, i32* @bking_loc, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1060
  %1062 = load i32, i32* %1061, align 4
  %1063 = icmp eq i32 %1058, %1062
  br i1 %1063, label %1064, label %1107

; <label>:1064:                                   ; preds = %1054
  %1065 = load i32, i32* @bking_loc, align 4
  %1066 = load i32, i32* %6, align 4
  %1067 = icmp slt i32 %1065, %1066
  br i1 %1067, label %1068, label %1087

; <label>:1068:                                   ; preds = %1064
  %1069 = load i32, i32* @bking_loc, align 4
  %1070 = add nsw i32 %1069, 12
  store i32 %1070, i32* %8, align 4
  br label %1071

; <label>:1071:                                   ; preds = %1078, %1068
  %1072 = load i32, i32* %8, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1073
  %1075 = load i32, i32* %1074, align 4
  %1076 = icmp eq i32 %1075, 13
  br i1 %1076, label %1077, label %1081

; <label>:1077:                                   ; preds = %1071
  br label %1078

; <label>:1078:                                   ; preds = %1077
  %1079 = load i32, i32* %8, align 4
  %1080 = add nsw i32 %1079, 12
  store i32 %1080, i32* %8, align 4
  br label %1071

; <label>:1081:                                   ; preds = %1071
  %1082 = load i32, i32* %8, align 4
  %1083 = load i32, i32* %6, align 4
  %1084 = icmp eq i32 %1082, %1083
  br i1 %1084, label %1085, label %1086

; <label>:1085:                                   ; preds = %1081
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1086:                                   ; preds = %1081
  br label %1106

; <label>:1087:                                   ; preds = %1064
  %1088 = load i32, i32* @bking_loc, align 4
  %1089 = sub nsw i32 %1088, 12
  store i32 %1089, i32* %8, align 4
  br label %1090

; <label>:1090:                                   ; preds = %1097, %1087
  %1091 = load i32, i32* %8, align 4
  %1092 = sext i32 %1091 to i64
  %1093 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1092
  %1094 = load i32, i32* %1093, align 4
  %1095 = icmp eq i32 %1094, 13
  br i1 %1095, label %1096, label %1100

; <label>:1096:                                   ; preds = %1090
  br label %1097

; <label>:1097:                                   ; preds = %1096
  %1098 = load i32, i32* %8, align 4
  %1099 = sub nsw i32 %1098, 12
  store i32 %1099, i32* %8, align 4
  br label %1090

; <label>:1100:                                   ; preds = %1090
  %1101 = load i32, i32* %8, align 4
  %1102 = load i32, i32* %6, align 4
  %1103 = icmp eq i32 %1101, %1102
  br i1 %1103, label %1104, label %1105

; <label>:1104:                                   ; preds = %1100
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1105:                                   ; preds = %1100
  br label %1106

; <label>:1106:                                   ; preds = %1105, %1086
  br label %1269

; <label>:1107:                                   ; preds = %1054
  %1108 = load i32, i32* %6, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1109
  %1111 = load i32, i32* %1110, align 4
  %1112 = load i32, i32* @bking_loc, align 4
  %1113 = sext i32 %1112 to i64
  %1114 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1113
  %1115 = load i32, i32* %1114, align 4
  %1116 = icmp eq i32 %1111, %1115
  br i1 %1116, label %1117, label %1160

; <label>:1117:                                   ; preds = %1107
  %1118 = load i32, i32* @bking_loc, align 4
  %1119 = load i32, i32* %6, align 4
  %1120 = icmp slt i32 %1118, %1119
  br i1 %1120, label %1121, label %1140

; <label>:1121:                                   ; preds = %1117
  %1122 = load i32, i32* @bking_loc, align 4
  %1123 = add nsw i32 %1122, 1
  store i32 %1123, i32* %8, align 4
  br label %1124

; <label>:1124:                                   ; preds = %1131, %1121
  %1125 = load i32, i32* %8, align 4
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1126
  %1128 = load i32, i32* %1127, align 4
  %1129 = icmp eq i32 %1128, 13
  br i1 %1129, label %1130, label %1134

; <label>:1130:                                   ; preds = %1124
  br label %1131

; <label>:1131:                                   ; preds = %1130
  %1132 = load i32, i32* %8, align 4
  %1133 = add nsw i32 %1132, 1
  store i32 %1133, i32* %8, align 4
  br label %1124

; <label>:1134:                                   ; preds = %1124
  %1135 = load i32, i32* %8, align 4
  %1136 = load i32, i32* %6, align 4
  %1137 = icmp eq i32 %1135, %1136
  br i1 %1137, label %1138, label %1139

; <label>:1138:                                   ; preds = %1134
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1139:                                   ; preds = %1134
  br label %1159

; <label>:1140:                                   ; preds = %1117
  %1141 = load i32, i32* @bking_loc, align 4
  %1142 = sub nsw i32 %1141, 1
  store i32 %1142, i32* %8, align 4
  br label %1143

; <label>:1143:                                   ; preds = %1150, %1140
  %1144 = load i32, i32* %8, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1145
  %1147 = load i32, i32* %1146, align 4
  %1148 = icmp eq i32 %1147, 13
  br i1 %1148, label %1149, label %1153

; <label>:1149:                                   ; preds = %1143
  br label %1150

; <label>:1150:                                   ; preds = %1149
  %1151 = load i32, i32* %8, align 4
  %1152 = sub nsw i32 %1151, 1
  store i32 %1152, i32* %8, align 4
  br label %1143

; <label>:1153:                                   ; preds = %1143
  %1154 = load i32, i32* %8, align 4
  %1155 = load i32, i32* %6, align 4
  %1156 = icmp eq i32 %1154, %1155
  br i1 %1156, label %1157, label %1158

; <label>:1157:                                   ; preds = %1153
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1158:                                   ; preds = %1153
  br label %1159

; <label>:1159:                                   ; preds = %1158, %1139
  br label %1268

; <label>:1160:                                   ; preds = %1107
  %1161 = load i32, i32* %6, align 4
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1162
  %1164 = load i32, i32* %1163, align 4
  %1165 = load i32, i32* @bking_loc, align 4
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1166
  %1168 = load i32, i32* %1167, align 4
  %1169 = icmp eq i32 %1164, %1168
  br i1 %1169, label %1170, label %1213

; <label>:1170:                                   ; preds = %1160
  %1171 = load i32, i32* @bking_loc, align 4
  %1172 = load i32, i32* %6, align 4
  %1173 = icmp slt i32 %1171, %1172
  br i1 %1173, label %1174, label %1193

; <label>:1174:                                   ; preds = %1170
  %1175 = load i32, i32* @bking_loc, align 4
  %1176 = add nsw i32 %1175, 13
  store i32 %1176, i32* %8, align 4
  br label %1177

; <label>:1177:                                   ; preds = %1184, %1174
  %1178 = load i32, i32* %8, align 4
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1179
  %1181 = load i32, i32* %1180, align 4
  %1182 = icmp eq i32 %1181, 13
  br i1 %1182, label %1183, label %1187

; <label>:1183:                                   ; preds = %1177
  br label %1184

; <label>:1184:                                   ; preds = %1183
  %1185 = load i32, i32* %8, align 4
  %1186 = add nsw i32 %1185, 13
  store i32 %1186, i32* %8, align 4
  br label %1177

; <label>:1187:                                   ; preds = %1177
  %1188 = load i32, i32* %8, align 4
  %1189 = load i32, i32* %6, align 4
  %1190 = icmp eq i32 %1188, %1189
  br i1 %1190, label %1191, label %1192

; <label>:1191:                                   ; preds = %1187
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1192:                                   ; preds = %1187
  br label %1212

; <label>:1193:                                   ; preds = %1170
  %1194 = load i32, i32* @bking_loc, align 4
  %1195 = sub nsw i32 %1194, 13
  store i32 %1195, i32* %8, align 4
  br label %1196

; <label>:1196:                                   ; preds = %1203, %1193
  %1197 = load i32, i32* %8, align 4
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1198
  %1200 = load i32, i32* %1199, align 4
  %1201 = icmp eq i32 %1200, 13
  br i1 %1201, label %1202, label %1206

; <label>:1202:                                   ; preds = %1196
  br label %1203

; <label>:1203:                                   ; preds = %1202
  %1204 = load i32, i32* %8, align 4
  %1205 = sub nsw i32 %1204, 13
  store i32 %1205, i32* %8, align 4
  br label %1196

; <label>:1206:                                   ; preds = %1196
  %1207 = load i32, i32* %8, align 4
  %1208 = load i32, i32* %6, align 4
  %1209 = icmp eq i32 %1207, %1208
  br i1 %1209, label %1210, label %1211

; <label>:1210:                                   ; preds = %1206
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1211:                                   ; preds = %1206
  br label %1212

; <label>:1212:                                   ; preds = %1211, %1192
  br label %1267

; <label>:1213:                                   ; preds = %1160
  %1214 = load i32, i32* %6, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1215
  %1217 = load i32, i32* %1216, align 4
  %1218 = load i32, i32* @bking_loc, align 4
  %1219 = sext i32 %1218 to i64
  %1220 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1219
  %1221 = load i32, i32* %1220, align 4
  %1222 = icmp eq i32 %1217, %1221
  br i1 %1222, label %1223, label %1266

; <label>:1223:                                   ; preds = %1213
  %1224 = load i32, i32* @bking_loc, align 4
  %1225 = load i32, i32* %6, align 4
  %1226 = icmp slt i32 %1224, %1225
  br i1 %1226, label %1227, label %1246

; <label>:1227:                                   ; preds = %1223
  %1228 = load i32, i32* @bking_loc, align 4
  %1229 = add nsw i32 %1228, 11
  store i32 %1229, i32* %8, align 4
  br label %1230

; <label>:1230:                                   ; preds = %1237, %1227
  %1231 = load i32, i32* %8, align 4
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1232
  %1234 = load i32, i32* %1233, align 4
  %1235 = icmp eq i32 %1234, 13
  br i1 %1235, label %1236, label %1240

; <label>:1236:                                   ; preds = %1230
  br label %1237

; <label>:1237:                                   ; preds = %1236
  %1238 = load i32, i32* %8, align 4
  %1239 = add nsw i32 %1238, 11
  store i32 %1239, i32* %8, align 4
  br label %1230

; <label>:1240:                                   ; preds = %1230
  %1241 = load i32, i32* %8, align 4
  %1242 = load i32, i32* %6, align 4
  %1243 = icmp eq i32 %1241, %1242
  br i1 %1243, label %1244, label %1245

; <label>:1244:                                   ; preds = %1240
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1245:                                   ; preds = %1240
  br label %1265

; <label>:1246:                                   ; preds = %1223
  %1247 = load i32, i32* @bking_loc, align 4
  %1248 = sub nsw i32 %1247, 11
  store i32 %1248, i32* %8, align 4
  br label %1249

; <label>:1249:                                   ; preds = %1256, %1246
  %1250 = load i32, i32* %8, align 4
  %1251 = sext i32 %1250 to i64
  %1252 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1251
  %1253 = load i32, i32* %1252, align 4
  %1254 = icmp eq i32 %1253, 13
  br i1 %1254, label %1255, label %1259

; <label>:1255:                                   ; preds = %1249
  br label %1256

; <label>:1256:                                   ; preds = %1255
  %1257 = load i32, i32* %8, align 4
  %1258 = sub nsw i32 %1257, 11
  store i32 %1258, i32* %8, align 4
  br label %1249

; <label>:1259:                                   ; preds = %1249
  %1260 = load i32, i32* %8, align 4
  %1261 = load i32, i32* %6, align 4
  %1262 = icmp eq i32 %1260, %1261
  br i1 %1262, label %1263, label %1264

; <label>:1263:                                   ; preds = %1259
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1264:                                   ; preds = %1259
  br label %1265

; <label>:1265:                                   ; preds = %1264, %1245
  br label %1266

; <label>:1266:                                   ; preds = %1265, %1213
  br label %1267

; <label>:1267:                                   ; preds = %1266, %1212
  br label %1268

; <label>:1268:                                   ; preds = %1267, %1159
  br label %1269

; <label>:1269:                                   ; preds = %1268, %1106
  br label %1285

; <label>:1270:                                   ; preds = %798
  %1271 = load %struct.move_s*, %struct.move_s** %4, align 8
  %1272 = load i32, i32* %5, align 4
  %1273 = sext i32 %1272 to i64
  %1274 = getelementptr inbounds %struct.move_s, %struct.move_s* %1271, i64 %1273
  %1275 = getelementptr inbounds %struct.move_s, %struct.move_s* %1274, i32 0, i32 4
  %1276 = load i32, i32* %1275, align 4
  %1277 = icmp ne i32 %1276, 0
  br i1 %1277, label %1278, label %1284

; <label>:1278:                                   ; preds = %1270
  %1279 = load i32, i32* @bking_loc, align 4
  %1280 = call i32 @is_attacked(i32 %1279, i32 1)
  %1281 = icmp ne i32 %1280, 0
  br i1 %1281, label %1282, label %1283

; <label>:1282:                                   ; preds = %1278
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1283:                                   ; preds = %1278
  store i32 0, i32* %3, align 4
  br label %1569

; <label>:1284:                                   ; preds = %1270
  br label %1285

; <label>:1285:                                   ; preds = %798, %1284, %1269, %1053, %1034, %926, %818
  %1286 = load i32, i32* %7, align 4
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1288, label %1289

; <label>:1288:                                   ; preds = %1285
  store i32 0, i32* %3, align 4
  br label %1569

; <label>:1289:                                   ; preds = %1285
  %1290 = load i32, i32* %7, align 4
  %1291 = sext i32 %1290 to i64
  %1292 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1291
  %1293 = load i32, i32* %1292, align 4
  %1294 = load i32, i32* @bking_loc, align 4
  %1295 = sext i32 %1294 to i64
  %1296 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1295
  %1297 = load i32, i32* %1296, align 4
  %1298 = icmp eq i32 %1293, %1297
  br i1 %1298, label %1299, label %1358

; <label>:1299:                                   ; preds = %1289
  %1300 = load i32, i32* @bking_loc, align 4
  %1301 = load i32, i32* %7, align 4
  %1302 = icmp sgt i32 %1300, %1301
  br i1 %1302, label %1303, label %1330

; <label>:1303:                                   ; preds = %1299
  %1304 = load i32, i32* @bking_loc, align 4
  %1305 = sub nsw i32 %1304, 1
  store i32 %1305, i32* %8, align 4
  br label %1306

; <label>:1306:                                   ; preds = %1313, %1303
  %1307 = load i32, i32* %8, align 4
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1308
  %1310 = load i32, i32* %1309, align 4
  %1311 = icmp eq i32 %1310, 13
  br i1 %1311, label %1312, label %1316

; <label>:1312:                                   ; preds = %1306
  br label %1313

; <label>:1313:                                   ; preds = %1312
  %1314 = load i32, i32* %8, align 4
  %1315 = add nsw i32 %1314, -1
  store i32 %1315, i32* %8, align 4
  br label %1306

; <label>:1316:                                   ; preds = %1306
  %1317 = load i32, i32* %8, align 4
  %1318 = sext i32 %1317 to i64
  %1319 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1318
  %1320 = load i32, i32* %1319, align 4
  %1321 = icmp eq i32 %1320, 7
  br i1 %1321, label %1328, label %1322

; <label>:1322:                                   ; preds = %1316
  %1323 = load i32, i32* %8, align 4
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1324
  %1326 = load i32, i32* %1325, align 4
  %1327 = icmp eq i32 %1326, 9
  br i1 %1327, label %1328, label %1329

; <label>:1328:                                   ; preds = %1322, %1316
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1329:                                   ; preds = %1322
  br label %1357

; <label>:1330:                                   ; preds = %1299
  %1331 = load i32, i32* @bking_loc, align 4
  %1332 = add nsw i32 %1331, 1
  store i32 %1332, i32* %8, align 4
  br label %1333

; <label>:1333:                                   ; preds = %1340, %1330
  %1334 = load i32, i32* %8, align 4
  %1335 = sext i32 %1334 to i64
  %1336 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1335
  %1337 = load i32, i32* %1336, align 4
  %1338 = icmp eq i32 %1337, 13
  br i1 %1338, label %1339, label %1343

; <label>:1339:                                   ; preds = %1333
  br label %1340

; <label>:1340:                                   ; preds = %1339
  %1341 = load i32, i32* %8, align 4
  %1342 = add nsw i32 %1341, 1
  store i32 %1342, i32* %8, align 4
  br label %1333

; <label>:1343:                                   ; preds = %1333
  %1344 = load i32, i32* %8, align 4
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1345
  %1347 = load i32, i32* %1346, align 4
  %1348 = icmp eq i32 %1347, 7
  br i1 %1348, label %1355, label %1349

; <label>:1349:                                   ; preds = %1343
  %1350 = load i32, i32* %8, align 4
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1351
  %1353 = load i32, i32* %1352, align 4
  %1354 = icmp eq i32 %1353, 9
  br i1 %1354, label %1355, label %1356

; <label>:1355:                                   ; preds = %1349, %1343
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1356:                                   ; preds = %1349
  br label %1357

; <label>:1357:                                   ; preds = %1356, %1329
  br label %1568

; <label>:1358:                                   ; preds = %1289
  %1359 = load i32, i32* %7, align 4
  %1360 = sext i32 %1359 to i64
  %1361 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1360
  %1362 = load i32, i32* %1361, align 4
  %1363 = load i32, i32* @bking_loc, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1364
  %1366 = load i32, i32* %1365, align 4
  %1367 = icmp eq i32 %1362, %1366
  br i1 %1367, label %1368, label %1427

; <label>:1368:                                   ; preds = %1358
  %1369 = load i32, i32* @bking_loc, align 4
  %1370 = load i32, i32* %7, align 4
  %1371 = icmp sgt i32 %1369, %1370
  br i1 %1371, label %1372, label %1399

; <label>:1372:                                   ; preds = %1368
  %1373 = load i32, i32* @bking_loc, align 4
  %1374 = sub nsw i32 %1373, 12
  store i32 %1374, i32* %8, align 4
  br label %1375

; <label>:1375:                                   ; preds = %1382, %1372
  %1376 = load i32, i32* %8, align 4
  %1377 = sext i32 %1376 to i64
  %1378 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1377
  %1379 = load i32, i32* %1378, align 4
  %1380 = icmp eq i32 %1379, 13
  br i1 %1380, label %1381, label %1385

; <label>:1381:                                   ; preds = %1375
  br label %1382

; <label>:1382:                                   ; preds = %1381
  %1383 = load i32, i32* %8, align 4
  %1384 = sub nsw i32 %1383, 12
  store i32 %1384, i32* %8, align 4
  br label %1375

; <label>:1385:                                   ; preds = %1375
  %1386 = load i32, i32* %8, align 4
  %1387 = sext i32 %1386 to i64
  %1388 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1387
  %1389 = load i32, i32* %1388, align 4
  %1390 = icmp eq i32 %1389, 7
  br i1 %1390, label %1397, label %1391

; <label>:1391:                                   ; preds = %1385
  %1392 = load i32, i32* %8, align 4
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1393
  %1395 = load i32, i32* %1394, align 4
  %1396 = icmp eq i32 %1395, 9
  br i1 %1396, label %1397, label %1398

; <label>:1397:                                   ; preds = %1391, %1385
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1398:                                   ; preds = %1391
  br label %1426

; <label>:1399:                                   ; preds = %1368
  %1400 = load i32, i32* @bking_loc, align 4
  %1401 = add nsw i32 %1400, 12
  store i32 %1401, i32* %8, align 4
  br label %1402

; <label>:1402:                                   ; preds = %1409, %1399
  %1403 = load i32, i32* %8, align 4
  %1404 = sext i32 %1403 to i64
  %1405 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1404
  %1406 = load i32, i32* %1405, align 4
  %1407 = icmp eq i32 %1406, 13
  br i1 %1407, label %1408, label %1412

; <label>:1408:                                   ; preds = %1402
  br label %1409

; <label>:1409:                                   ; preds = %1408
  %1410 = load i32, i32* %8, align 4
  %1411 = add nsw i32 %1410, 12
  store i32 %1411, i32* %8, align 4
  br label %1402

; <label>:1412:                                   ; preds = %1402
  %1413 = load i32, i32* %8, align 4
  %1414 = sext i32 %1413 to i64
  %1415 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1414
  %1416 = load i32, i32* %1415, align 4
  %1417 = icmp eq i32 %1416, 7
  br i1 %1417, label %1424, label %1418

; <label>:1418:                                   ; preds = %1412
  %1419 = load i32, i32* %8, align 4
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1420
  %1422 = load i32, i32* %1421, align 4
  %1423 = icmp eq i32 %1422, 9
  br i1 %1423, label %1424, label %1425

; <label>:1424:                                   ; preds = %1418, %1412
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1425:                                   ; preds = %1418
  br label %1426

; <label>:1426:                                   ; preds = %1425, %1398
  br label %1567

; <label>:1427:                                   ; preds = %1358
  %1428 = load i32, i32* %7, align 4
  %1429 = sext i32 %1428 to i64
  %1430 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1429
  %1431 = load i32, i32* %1430, align 4
  %1432 = load i32, i32* @bking_loc, align 4
  %1433 = sext i32 %1432 to i64
  %1434 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i64 0, i64 %1433
  %1435 = load i32, i32* %1434, align 4
  %1436 = icmp eq i32 %1431, %1435
  br i1 %1436, label %1437, label %1496

; <label>:1437:                                   ; preds = %1427
  %1438 = load i32, i32* @bking_loc, align 4
  %1439 = load i32, i32* %7, align 4
  %1440 = icmp sgt i32 %1438, %1439
  br i1 %1440, label %1441, label %1468

; <label>:1441:                                   ; preds = %1437
  %1442 = load i32, i32* @bking_loc, align 4
  %1443 = sub nsw i32 %1442, 13
  store i32 %1443, i32* %8, align 4
  br label %1444

; <label>:1444:                                   ; preds = %1451, %1441
  %1445 = load i32, i32* %8, align 4
  %1446 = sext i32 %1445 to i64
  %1447 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1446
  %1448 = load i32, i32* %1447, align 4
  %1449 = icmp eq i32 %1448, 13
  br i1 %1449, label %1450, label %1454

; <label>:1450:                                   ; preds = %1444
  br label %1451

; <label>:1451:                                   ; preds = %1450
  %1452 = load i32, i32* %8, align 4
  %1453 = sub nsw i32 %1452, 13
  store i32 %1453, i32* %8, align 4
  br label %1444

; <label>:1454:                                   ; preds = %1444
  %1455 = load i32, i32* %8, align 4
  %1456 = sext i32 %1455 to i64
  %1457 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1456
  %1458 = load i32, i32* %1457, align 4
  %1459 = icmp eq i32 %1458, 11
  br i1 %1459, label %1466, label %1460

; <label>:1460:                                   ; preds = %1454
  %1461 = load i32, i32* %8, align 4
  %1462 = sext i32 %1461 to i64
  %1463 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1462
  %1464 = load i32, i32* %1463, align 4
  %1465 = icmp eq i32 %1464, 9
  br i1 %1465, label %1466, label %1467

; <label>:1466:                                   ; preds = %1460, %1454
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1467:                                   ; preds = %1460
  br label %1495

; <label>:1468:                                   ; preds = %1437
  %1469 = load i32, i32* @bking_loc, align 4
  %1470 = add nsw i32 %1469, 13
  store i32 %1470, i32* %8, align 4
  br label %1471

; <label>:1471:                                   ; preds = %1478, %1468
  %1472 = load i32, i32* %8, align 4
  %1473 = sext i32 %1472 to i64
  %1474 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1473
  %1475 = load i32, i32* %1474, align 4
  %1476 = icmp eq i32 %1475, 13
  br i1 %1476, label %1477, label %1481

; <label>:1477:                                   ; preds = %1471
  br label %1478

; <label>:1478:                                   ; preds = %1477
  %1479 = load i32, i32* %8, align 4
  %1480 = add nsw i32 %1479, 13
  store i32 %1480, i32* %8, align 4
  br label %1471

; <label>:1481:                                   ; preds = %1471
  %1482 = load i32, i32* %8, align 4
  %1483 = sext i32 %1482 to i64
  %1484 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1483
  %1485 = load i32, i32* %1484, align 4
  %1486 = icmp eq i32 %1485, 11
  br i1 %1486, label %1493, label %1487

; <label>:1487:                                   ; preds = %1481
  %1488 = load i32, i32* %8, align 4
  %1489 = sext i32 %1488 to i64
  %1490 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1489
  %1491 = load i32, i32* %1490, align 4
  %1492 = icmp eq i32 %1491, 9
  br i1 %1492, label %1493, label %1494

; <label>:1493:                                   ; preds = %1487, %1481
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1494:                                   ; preds = %1487
  br label %1495

; <label>:1495:                                   ; preds = %1494, %1467
  br label %1566

; <label>:1496:                                   ; preds = %1427
  %1497 = load i32, i32* %7, align 4
  %1498 = sext i32 %1497 to i64
  %1499 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1498
  %1500 = load i32, i32* %1499, align 4
  %1501 = load i32, i32* @bking_loc, align 4
  %1502 = sext i32 %1501 to i64
  %1503 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i64 0, i64 %1502
  %1504 = load i32, i32* %1503, align 4
  %1505 = icmp eq i32 %1500, %1504
  br i1 %1505, label %1506, label %1565

; <label>:1506:                                   ; preds = %1496
  %1507 = load i32, i32* @bking_loc, align 4
  %1508 = load i32, i32* %7, align 4
  %1509 = icmp sgt i32 %1507, %1508
  br i1 %1509, label %1510, label %1537

; <label>:1510:                                   ; preds = %1506
  %1511 = load i32, i32* @bking_loc, align 4
  %1512 = sub nsw i32 %1511, 11
  store i32 %1512, i32* %8, align 4
  br label %1513

; <label>:1513:                                   ; preds = %1520, %1510
  %1514 = load i32, i32* %8, align 4
  %1515 = sext i32 %1514 to i64
  %1516 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1515
  %1517 = load i32, i32* %1516, align 4
  %1518 = icmp eq i32 %1517, 13
  br i1 %1518, label %1519, label %1523

; <label>:1519:                                   ; preds = %1513
  br label %1520

; <label>:1520:                                   ; preds = %1519
  %1521 = load i32, i32* %8, align 4
  %1522 = sub nsw i32 %1521, 11
  store i32 %1522, i32* %8, align 4
  br label %1513

; <label>:1523:                                   ; preds = %1513
  %1524 = load i32, i32* %8, align 4
  %1525 = sext i32 %1524 to i64
  %1526 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1525
  %1527 = load i32, i32* %1526, align 4
  %1528 = icmp eq i32 %1527, 11
  br i1 %1528, label %1535, label %1529

; <label>:1529:                                   ; preds = %1523
  %1530 = load i32, i32* %8, align 4
  %1531 = sext i32 %1530 to i64
  %1532 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1531
  %1533 = load i32, i32* %1532, align 4
  %1534 = icmp eq i32 %1533, 9
  br i1 %1534, label %1535, label %1536

; <label>:1535:                                   ; preds = %1529, %1523
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1536:                                   ; preds = %1529
  br label %1564

; <label>:1537:                                   ; preds = %1506
  %1538 = load i32, i32* @bking_loc, align 4
  %1539 = add nsw i32 %1538, 11
  store i32 %1539, i32* %8, align 4
  br label %1540

; <label>:1540:                                   ; preds = %1547, %1537
  %1541 = load i32, i32* %8, align 4
  %1542 = sext i32 %1541 to i64
  %1543 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1542
  %1544 = load i32, i32* %1543, align 4
  %1545 = icmp eq i32 %1544, 13
  br i1 %1545, label %1546, label %1550

; <label>:1546:                                   ; preds = %1540
  br label %1547

; <label>:1547:                                   ; preds = %1546
  %1548 = load i32, i32* %8, align 4
  %1549 = add nsw i32 %1548, 11
  store i32 %1549, i32* %8, align 4
  br label %1540

; <label>:1550:                                   ; preds = %1540
  %1551 = load i32, i32* %8, align 4
  %1552 = sext i32 %1551 to i64
  %1553 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1552
  %1554 = load i32, i32* %1553, align 4
  %1555 = icmp eq i32 %1554, 11
  br i1 %1555, label %1562, label %1556

; <label>:1556:                                   ; preds = %1550
  %1557 = load i32, i32* %8, align 4
  %1558 = sext i32 %1557 to i64
  %1559 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1558
  %1560 = load i32, i32* %1559, align 4
  %1561 = icmp eq i32 %1560, 9
  br i1 %1561, label %1562, label %1563

; <label>:1562:                                   ; preds = %1556, %1550
  store i32 1, i32* %3, align 4
  br label %1569

; <label>:1563:                                   ; preds = %1556
  br label %1564

; <label>:1564:                                   ; preds = %1563, %1536
  br label %1565

; <label>:1565:                                   ; preds = %1564, %1496
  br label %1566

; <label>:1566:                                   ; preds = %1565, %1495
  br label %1567

; <label>:1567:                                   ; preds = %1566, %1426
  br label %1568

; <label>:1568:                                   ; preds = %1567, %1357
  store i32 0, i32* %3, align 4
  br label %1569

; <label>:1569:                                   ; preds = %1568, %1562, %1535, %1493, %1466, %1424, %1397, %1355, %1328, %1288, %1283, %1282, %1263, %1244, %1210, %1191, %1157, %1138, %1104, %1085, %1048, %1030, %1011, %977, %958, %922, %903, %869, %850, %817, %797, %791, %764, %722, %695, %653, %626, %584, %557, %517, %512, %511, %492, %473, %439, %420, %386, %367, %333, %314, %277, %259, %240, %206, %187, %151, %132, %98, %79, %46, %23
  %1570 = load i32, i32* %3, align 4
  ret i32 %1570
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @extended_in_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @Variant, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %0
  store i32 0, i32* %1, align 4
  br label %280

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* @white_to_move, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %144

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* @wking_loc, align 4
  %11 = sub nsw i32 %10, 12
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17, %9
  store i32 2, i32* %1, align 4
  br label %280

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* @wking_loc, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %21
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29, %21
  store i32 2, i32* %1, align 4
  br label %280

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* @wking_loc, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41, %33
  store i32 2, i32* %1, align 4
  br label %280

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* @wking_loc, align 4
  %47 = add nsw i32 %46, 12
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %56, label %53

; <label>:53:                                     ; preds = %45
  %54 = load i32, i32* %2, align 4
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53, %45
  store i32 2, i32* %1, align 4
  br label %280

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* @wking_loc, align 4
  %59 = add nsw i32 %58, 13
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %71, label %65

; <label>:65:                                     ; preds = %57
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %71, label %68

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %2, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68, %65, %57
  store i32 2, i32* %1, align 4
  br label %280

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* @wking_loc, align 4
  %74 = add nsw i32 %73, 11
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  %79 = icmp eq i32 %78, 12
  br i1 %79, label %86, label %80

; <label>:80:                                     ; preds = %72
  %81 = load i32, i32* %2, align 4
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %2, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83, %80, %72
  store i32 2, i32* %1, align 4
  br label %280

; <label>:87:                                     ; preds = %83
  %88 = load i32, i32* @wking_loc, align 4
  %89 = sub nsw i32 %88, 11
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %2, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp eq i32 %93, 12
  br i1 %94, label %98, label %95

; <label>:95:                                     ; preds = %87
  %96 = load i32, i32* %2, align 4
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %95, %87
  store i32 2, i32* %1, align 4
  br label %280

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* @wking_loc, align 4
  %101 = sub nsw i32 %100, 13
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %2, align 4
  %105 = load i32, i32* %2, align 4
  %106 = icmp eq i32 %105, 12
  br i1 %106, label %110, label %107

; <label>:107:                                    ; preds = %99
  %108 = load i32, i32* %2, align 4
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %107, %99
  store i32 2, i32* %1, align 4
  br label %280

; <label>:111:                                    ; preds = %107
  store i32 0, i32* %2, align 4
  br label %112

; <label>:112:                                    ; preds = %128, %111
  %113 = load i32, i32* %2, align 4
  %114 = icmp slt i32 %113, 8
  br i1 %114, label %115, label %131

; <label>:115:                                    ; preds = %112
  %116 = load i32, i32* @wking_loc, align 4
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %116, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %127

; <label>:126:                                    ; preds = %115
  store i32 2, i32* %1, align 4
  br label %280

; <label>:127:                                    ; preds = %115
  br label %128

; <label>:128:                                    ; preds = %127
  %129 = load i32, i32* %2, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %2, align 4
  br label %112

; <label>:131:                                    ; preds = %112
  %132 = load i32, i32* @wking_loc, align 4
  %133 = call i32 @is_attacked(i32 %132, i32 0)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

; <label>:135:                                    ; preds = %131
  %136 = load i32, i32* @Variant, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %141, label %138

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* @Variant, align 4
  %140 = icmp eq i32 %139, 4
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %138, %135
  store i32 2, i32* %1, align 4
  br label %280

; <label>:142:                                    ; preds = %138
  store i32 1, i32* %1, align 4
  br label %280

; <label>:143:                                    ; preds = %131
  br label %279

; <label>:144:                                    ; preds = %6
  %145 = load i32, i32* @bking_loc, align 4
  %146 = sub nsw i32 %145, 12
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %2, align 4
  %150 = load i32, i32* %2, align 4
  %151 = icmp eq i32 %150, 7
  br i1 %151, label %155, label %152

; <label>:152:                                    ; preds = %144
  %153 = load i32, i32* %2, align 4
  %154 = icmp eq i32 %153, 9
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %152, %144
  store i32 2, i32* %1, align 4
  br label %280

; <label>:156:                                    ; preds = %152
  %157 = load i32, i32* @bking_loc, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %2, align 4
  %162 = load i32, i32* %2, align 4
  %163 = icmp eq i32 %162, 7
  br i1 %163, label %167, label %164

; <label>:164:                                    ; preds = %156
  %165 = load i32, i32* %2, align 4
  %166 = icmp eq i32 %165, 9
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %164, %156
  store i32 2, i32* %1, align 4
  br label %280

; <label>:168:                                    ; preds = %164
  %169 = load i32, i32* @bking_loc, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %2, align 4
  %174 = load i32, i32* %2, align 4
  %175 = icmp eq i32 %174, 7
  br i1 %175, label %179, label %176

; <label>:176:                                    ; preds = %168
  %177 = load i32, i32* %2, align 4
  %178 = icmp eq i32 %177, 9
  br i1 %178, label %179, label %180

; <label>:179:                                    ; preds = %176, %168
  store i32 2, i32* %1, align 4
  br label %280

; <label>:180:                                    ; preds = %176
  %181 = load i32, i32* @bking_loc, align 4
  %182 = add nsw i32 %181, 12
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %2, align 4
  %186 = load i32, i32* %2, align 4
  %187 = icmp eq i32 %186, 7
  br i1 %187, label %191, label %188

; <label>:188:                                    ; preds = %180
  %189 = load i32, i32* %2, align 4
  %190 = icmp eq i32 %189, 9
  br i1 %190, label %191, label %192

; <label>:191:                                    ; preds = %188, %180
  store i32 2, i32* %1, align 4
  br label %280

; <label>:192:                                    ; preds = %188
  %193 = load i32, i32* @bking_loc, align 4
  %194 = sub nsw i32 %193, 13
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %2, align 4
  %198 = load i32, i32* %2, align 4
  %199 = icmp eq i32 %198, 11
  br i1 %199, label %206, label %200

; <label>:200:                                    ; preds = %192
  %201 = load i32, i32* %2, align 4
  %202 = icmp eq i32 %201, 9
  br i1 %202, label %206, label %203

; <label>:203:                                    ; preds = %200
  %204 = load i32, i32* %2, align 4
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %207

; <label>:206:                                    ; preds = %203, %200, %192
  store i32 2, i32* %1, align 4
  br label %280

; <label>:207:                                    ; preds = %203
  %208 = load i32, i32* @bking_loc, align 4
  %209 = sub nsw i32 %208, 11
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %2, align 4
  %213 = load i32, i32* %2, align 4
  %214 = icmp eq i32 %213, 11
  br i1 %214, label %221, label %215

; <label>:215:                                    ; preds = %207
  %216 = load i32, i32* %2, align 4
  %217 = icmp eq i32 %216, 9
  br i1 %217, label %221, label %218

; <label>:218:                                    ; preds = %215
  %219 = load i32, i32* %2, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %222

; <label>:221:                                    ; preds = %218, %215, %207
  store i32 2, i32* %1, align 4
  br label %280

; <label>:222:                                    ; preds = %218
  %223 = load i32, i32* @bking_loc, align 4
  %224 = add nsw i32 %223, 11
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %2, align 4
  %228 = load i32, i32* %2, align 4
  %229 = icmp eq i32 %228, 11
  br i1 %229, label %233, label %230

; <label>:230:                                    ; preds = %222
  %231 = load i32, i32* %2, align 4
  %232 = icmp eq i32 %231, 9
  br i1 %232, label %233, label %234

; <label>:233:                                    ; preds = %230, %222
  store i32 2, i32* %1, align 4
  br label %280

; <label>:234:                                    ; preds = %230
  %235 = load i32, i32* @bking_loc, align 4
  %236 = add nsw i32 %235, 13
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %2, align 4
  %240 = load i32, i32* %2, align 4
  %241 = icmp eq i32 %240, 11
  br i1 %241, label %245, label %242

; <label>:242:                                    ; preds = %234
  %243 = load i32, i32* %2, align 4
  %244 = icmp eq i32 %243, 9
  br i1 %244, label %245, label %246

; <label>:245:                                    ; preds = %242, %234
  store i32 2, i32* %1, align 4
  br label %280

; <label>:246:                                    ; preds = %242
  store i32 0, i32* %2, align 4
  br label %247

; <label>:247:                                    ; preds = %263, %246
  %248 = load i32, i32* %2, align 4
  %249 = icmp slt i32 %248, 8
  br i1 %249, label %250, label %266

; <label>:250:                                    ; preds = %247
  %251 = load i32, i32* @bking_loc, align 4
  %252 = load i32, i32* %2, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [8 x i32], [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %251, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 3
  br i1 %260, label %261, label %262

; <label>:261:                                    ; preds = %250
  store i32 2, i32* %1, align 4
  br label %280

; <label>:262:                                    ; preds = %250
  br label %263

; <label>:263:                                    ; preds = %262
  %264 = load i32, i32* %2, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %2, align 4
  br label %247

; <label>:266:                                    ; preds = %247
  %267 = load i32, i32* @bking_loc, align 4
  %268 = call i32 @is_attacked(i32 %267, i32 1)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

; <label>:270:                                    ; preds = %266
  %271 = load i32, i32* @Variant, align 4
  %272 = icmp eq i32 %271, 2
  br i1 %272, label %276, label %273

; <label>:273:                                    ; preds = %270
  %274 = load i32, i32* @Variant, align 4
  %275 = icmp eq i32 %274, 4
  br i1 %275, label %276, label %277

; <label>:276:                                    ; preds = %273, %270
  store i32 2, i32* %1, align 4
  br label %280

; <label>:277:                                    ; preds = %273
  store i32 1, i32* %1, align 4
  br label %280

; <label>:278:                                    ; preds = %266
  br label %279

; <label>:279:                                    ; preds = %278, %143
  store i32 0, i32* %1, align 4
  br label %280

; <label>:280:                                    ; preds = %279, %277, %276, %261, %245, %233, %221, %206, %191, %179, %167, %155, %142, %141, %126, %110, %98, %86, %71, %56, %44, %32, %20, %5
  %281 = load i32, i32* %1, align 4
  ret i32 %281
}

; Function Attrs: noinline nounwind optnone uwtable
define void @make(%struct.move_s*, i32) #0 {
  %3 = alloca %struct.move_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.move_s* %0, %struct.move_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.move_s*, %struct.move_s** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.move_s, %struct.move_s* %12, i64 %14
  %16 = getelementptr inbounds %struct.move_s, %struct.move_s* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.move_s*, %struct.move_s** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.move_s, %struct.move_s* %18, i64 %20
  %22 = getelementptr inbounds %struct.move_s, %struct.move_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.move_s*, %struct.move_s** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.move_s, %struct.move_s* %24, i64 %26
  %28 = getelementptr inbounds %struct.move_s, %struct.move_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.move_s*, %struct.move_s** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.move_s, %struct.move_s* %30, i64 %32
  %34 = getelementptr inbounds %struct.move_s, %struct.move_s* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.move_s*, %struct.move_s** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.move_s, %struct.move_s* %36, i64 %38
  %40 = getelementptr inbounds %struct.move_s, %struct.move_s* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.move_s*, %struct.move_s** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.move_s, %struct.move_s* %42, i64 %44
  %46 = getelementptr inbounds %struct.move_s, %struct.move_s* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @ep_square, align 4
  %49 = load i32, i32* @ply, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.move_x, %struct.move_x* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 8
  store i32 0, i32* @ep_square, align 4
  %53 = load i32, i32* @fifty, align 4
  %54 = load i32, i32* @ply, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.move_x, %struct.move_x* %56, i32 0, i32 3
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %75, label %63

; <label>:63:                                     ; preds = %2
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %75, label %69

; <label>:69:                                     ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 13
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %69, %63, %2
  store i32 0, i32* @fifty, align 4
  br label %79

; <label>:76:                                     ; preds = %69
  %77 = load i32, i32* @fifty, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @fifty, align 4
  br label %79

; <label>:79:                                     ; preds = %76, %75
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %143

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* @piece_count, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @piece_count, align 4
  store i32 1, i32* %11, align 4
  br label %85

; <label>:85:                                     ; preds = %92, %82
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

; <label>:91:                                     ; preds = %85
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %85

; <label>:95:                                     ; preds = %85
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %98
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ply, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.move_x, %struct.move_x* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %109
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @white_to_move, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 1
  call void @DropremoveHolding(i32 %115, i32 %119)
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @Material, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* @Material, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %128
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %131
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [144 x i32], [144 x i32]* %132, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @hash, align 4
  %138 = xor i32 %137, %136
  store i32 %138, i32* @hash, align 4
  %139 = load i32, i32* @white_to_move, align 4
  %140 = xor i32 %139, 1
  store i32 %140, i32* @white_to_move, align 4
  %141 = load i32, i32* @ply, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @ply, align 4
  br label %831

; <label>:143:                                    ; preds = %79
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @ply, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %152
  %154 = getelementptr inbounds %struct.move_x, %struct.move_x* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ply, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %160
  %162 = getelementptr inbounds %struct.move_x, %struct.move_x* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 16
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %167
  store i32 0, i32* %168, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %174
  store i32 %169, i32* %175, align 4
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %181
  store i32 %179, i32* %182, align 4
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %184
  store i32 0, i32* %185, align 4
  %186 = load i32, i32* %5, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %253, label %188

; <label>:188:                                    ; preds = %143
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  switch i32 %192, label %194 [
    i32 13, label %193
  ]

; <label>:193:                                    ; preds = %188
  br label %252

; <label>:194:                                    ; preds = %188
  %195 = load i32, i32* @Variant, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %200, label %197

; <label>:197:                                    ; preds = %194
  %198 = load i32, i32* @Variant, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %228

; <label>:200:                                    ; preds = %197, %194
  %201 = load i32, i32* @ply, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %202
  %204 = getelementptr inbounds %struct.move_x, %struct.move_x* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

; <label>:207:                                    ; preds = %200
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @SwitchPromoted(i32 %211)
  %213 = load i32, i32* @white_to_move, align 4
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 0, i32 1
  call void @addHolding(i32 %212, i32 %216)
  br label %227

; <label>:217:                                    ; preds = %200
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @SwitchColor(i32 %221)
  %223 = load i32, i32* @white_to_move, align 4
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i32 0, i32 1
  call void @addHolding(i32 %222, i32 %226)
  br label %227

; <label>:227:                                    ; preds = %217, %207
  br label %228

; <label>:228:                                    ; preds = %227, %197
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @Material, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* @Material, align 4
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %242
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [144 x i32], [144 x i32]* %243, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @hash, align 4
  %249 = xor i32 %248, %247
  store i32 %249, i32* @hash, align 4
  %250 = load i32, i32* @piece_count, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* @piece_count, align 4
  br label %252

; <label>:252:                                    ; preds = %228, %193
  br label %253

; <label>:253:                                    ; preds = %252, %143
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %259, label %433

; <label>:259:                                    ; preds = %253
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %314

; <label>:262:                                    ; preds = %259
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %265
  store i32 %263, i32* %266, align 4
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %268
  store i32 13, i32* %269, align 4
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 4
  %280 = load i32, i32* @white_to_move, align 4
  %281 = xor i32 %280, 1
  store i32 %281, i32* @white_to_move, align 4
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %286
  store i32 1, i32* %287, align 4
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @hash, align 4
  %293 = xor i32 %292, %291
  store i32 %293, i32* @hash, align 4
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %295
  %297 = load i32, i32* %7, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [144 x i32], [144 x i32]* %296, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @hash, align 4
  %302 = xor i32 %301, %300
  store i32 %302, i32* @hash, align 4
  %303 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i64 0, i64 1), align 4
  %304 = load i32, i32* @Material, align 4
  %305 = sub nsw i32 %304, %303
  store i32 %305, i32* @Material, align 4
  %306 = load i32, i32* %9, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @Material, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* @Material, align 4
  %312 = load i32, i32* @ply, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* @ply, align 4
  br label %831

; <label>:314:                                    ; preds = %259
  %315 = load i32, i32* %5, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %392

; <label>:317:                                    ; preds = %314
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @hash, align 4
  %323 = xor i32 %322, %321
  store i32 %323, i32* @hash, align 4
  %324 = load i32, i32* %7, align 4
  %325 = sub nsw i32 %324, 12
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @hash, align 4
  %330 = xor i32 %329, %328
  store i32 %330, i32* @hash, align 4
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @hash, align 4
  %336 = xor i32 %335, %334
  store i32 %336, i32* @hash, align 4
  %337 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i64 0, i64 2), align 8
  %338 = load i32, i32* @Material, align 4
  %339 = sub nsw i32 %338, %337
  store i32 %339, i32* @Material, align 4
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %341
  store i32 1, i32* %342, align 4
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %344
  store i32 13, i32* %345, align 4
  call void @addHolding(i32 1, i32 0)
  %346 = load i32, i32* @piece_count, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* @piece_count, align 4
  %348 = load i32, i32* %7, align 4
  %349 = sub nsw i32 %348, 12
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %350
  store i32 13, i32* %351, align 4
  %352 = load i32, i32* %7, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %354, align 4
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 4
  %362 = load i32, i32* %7, align 4
  %363 = sub nsw i32 %362, 12
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %365, align 4
  %368 = load i32, i32* @white_to_move, align 4
  %369 = xor i32 %368, 1
  store i32 %369, i32* @white_to_move, align 4
  %370 = load i32, i32* %7, align 4
  %371 = sub nsw i32 %370, 12
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @ply, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %376
  %378 = getelementptr inbounds %struct.move_x, %struct.move_x* %377, i32 0, i32 0
  store i32 %374, i32* %378, align 16
  %379 = load i32, i32* %7, align 4
  %380 = sub nsw i32 %379, 12
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %384
  store i32 0, i32* %385, align 4
  %386 = load i32, i32* %7, align 4
  %387 = sub nsw i32 %386, 12
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %388
  store i32 0, i32* %389, align 4
  %390 = load i32, i32* @ply, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* @ply, align 4
  br label %831

; <label>:392:                                    ; preds = %314
  %393 = load i32, i32* %7, align 4
  %394 = load i32, i32* %6, align 4
  %395 = add nsw i32 %394, 24
  %396 = icmp eq i32 %393, %395
  br i1 %396, label %397, label %400

; <label>:397:                                    ; preds = %392
  %398 = load i32, i32* %6, align 4
  %399 = add nsw i32 %398, 12
  store i32 %399, i32* @ep_square, align 4
  br label %400

; <label>:400:                                    ; preds = %397, %392
  %401 = load i32, i32* %6, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @hash, align 4
  %406 = xor i32 %405, %404
  store i32 %406, i32* @hash, align 4
  %407 = load i32, i32* %7, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @hash, align 4
  %412 = xor i32 %411, %410
  store i32 %412, i32* @hash, align 4
  %413 = load i32, i32* %7, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %414
  store i32 1, i32* %415, align 4
  %416 = load i32, i32* %6, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %417
  store i32 13, i32* %418, align 4
  %419 = load i32, i32* %7, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %421, align 4
  %424 = load i32, i32* %6, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %426, align 4
  %429 = load i32, i32* @white_to_move, align 4
  %430 = xor i32 %429, 1
  store i32 %430, i32* @white_to_move, align 4
  %431 = load i32, i32* @ply, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* @ply, align 4
  br label %831

; <label>:433:                                    ; preds = %253
  %434 = load i32, i32* %6, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %437, 2
  br i1 %438, label %439, label %613

; <label>:439:                                    ; preds = %433
  %440 = load i32, i32* %9, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %494

; <label>:442:                                    ; preds = %439
  %443 = load i32, i32* %9, align 4
  %444 = load i32, i32* %7, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %445
  store i32 %443, i32* %446, align 4
  %447 = load i32, i32* %6, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %448
  store i32 13, i32* %449, align 4
  %450 = load i32, i32* %7, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %452, align 4
  %455 = load i32, i32* %6, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %457, align 4
  %460 = load i32, i32* @white_to_move, align 4
  %461 = xor i32 %460, 1
  store i32 %461, i32* @white_to_move, align 4
  %462 = load i32, i32* %7, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %466
  store i32 1, i32* %467, align 4
  %468 = load i32, i32* %6, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* @hash, align 4
  %473 = xor i32 %472, %471
  store i32 %473, i32* @hash, align 4
  %474 = load i32, i32* %9, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %475
  %477 = load i32, i32* %7, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [144 x i32], [144 x i32]* %476, i64 0, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* @hash, align 4
  %482 = xor i32 %481, %480
  store i32 %482, i32* @hash, align 4
  %483 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i64 0, i64 2), align 8
  %484 = load i32, i32* @Material, align 4
  %485 = sub nsw i32 %484, %483
  store i32 %485, i32* @Material, align 4
  %486 = load i32, i32* %9, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* @Material, align 4
  %491 = add nsw i32 %490, %489
  store i32 %491, i32* @Material, align 4
  %492 = load i32, i32* @ply, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* @ply, align 4
  br label %831

; <label>:494:                                    ; preds = %439
  %495 = load i32, i32* %5, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %572

; <label>:497:                                    ; preds = %494
  %498 = load i32, i32* %6, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* @hash, align 4
  %503 = xor i32 %502, %501
  store i32 %503, i32* @hash, align 4
  %504 = load i32, i32* %7, align 4
  %505 = add nsw i32 %504, 12
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* @hash, align 4
  %510 = xor i32 %509, %508
  store i32 %510, i32* @hash, align 4
  %511 = load i32, i32* %7, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* @hash, align 4
  %516 = xor i32 %515, %514
  store i32 %516, i32* @hash, align 4
  %517 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i64 0, i64 1), align 4
  %518 = load i32, i32* @Material, align 4
  %519 = sub nsw i32 %518, %517
  store i32 %519, i32* @Material, align 4
  %520 = load i32, i32* %7, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %521
  store i32 2, i32* %522, align 4
  %523 = load i32, i32* %6, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %524
  store i32 13, i32* %525, align 4
  call void @addHolding(i32 2, i32 1)
  %526 = load i32, i32* @piece_count, align 4
  %527 = add nsw i32 %526, -1
  store i32 %527, i32* @piece_count, align 4
  %528 = load i32, i32* %7, align 4
  %529 = add nsw i32 %528, 12
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %530
  store i32 13, i32* %531, align 4
  %532 = load i32, i32* %7, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %534, align 4
  %537 = load i32, i32* %6, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %539, align 4
  %542 = load i32, i32* %7, align 4
  %543 = add nsw i32 %542, 12
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %544
  %546 = load i32, i32* %545, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %545, align 4
  %548 = load i32, i32* @white_to_move, align 4
  %549 = xor i32 %548, 1
  store i32 %549, i32* @white_to_move, align 4
  %550 = load i32, i32* %7, align 4
  %551 = add nsw i32 %550, 12
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = load i32, i32* @ply, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %556
  %558 = getelementptr inbounds %struct.move_x, %struct.move_x* %557, i32 0, i32 0
  store i32 %554, i32* %558, align 16
  %559 = load i32, i32* %7, align 4
  %560 = add nsw i32 %559, 12
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %564
  store i32 0, i32* %565, align 4
  %566 = load i32, i32* %7, align 4
  %567 = add nsw i32 %566, 12
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %568
  store i32 0, i32* %569, align 4
  %570 = load i32, i32* @ply, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* @ply, align 4
  br label %831

; <label>:572:                                    ; preds = %494
  %573 = load i32, i32* %7, align 4
  %574 = load i32, i32* %6, align 4
  %575 = sub nsw i32 %574, 24
  %576 = icmp eq i32 %573, %575
  br i1 %576, label %577, label %580

; <label>:577:                                    ; preds = %572
  %578 = load i32, i32* %6, align 4
  %579 = sub nsw i32 %578, 12
  store i32 %579, i32* @ep_square, align 4
  br label %580

; <label>:580:                                    ; preds = %577, %572
  %581 = load i32, i32* %7, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %582
  store i32 2, i32* %583, align 4
  %584 = load i32, i32* %6, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %585
  store i32 13, i32* %586, align 4
  %587 = load i32, i32* %7, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %589, align 4
  %592 = load i32, i32* %6, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %594, align 4
  %597 = load i32, i32* @white_to_move, align 4
  %598 = xor i32 %597, 1
  store i32 %598, i32* @white_to_move, align 4
  %599 = load i32, i32* %6, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = load i32, i32* @hash, align 4
  %604 = xor i32 %603, %602
  store i32 %604, i32* @hash, align 4
  %605 = load i32, i32* %7, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @hash, align 4
  %610 = xor i32 %609, %608
  store i32 %610, i32* @hash, align 4
  %611 = load i32, i32* @ply, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* @ply, align 4
  br label %831

; <label>:613:                                    ; preds = %433
  %614 = load i32, i32* %6, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %615
  %617 = load i32, i32* %616, align 4
  %618 = icmp ne i32 %617, 5
  br i1 %618, label %619, label %674

; <label>:619:                                    ; preds = %613
  %620 = load i32, i32* %6, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %621
  %623 = load i32, i32* %622, align 4
  %624 = icmp ne i32 %623, 6
  br i1 %624, label %625, label %674

; <label>:625:                                    ; preds = %619
  %626 = load i32, i32* %6, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %627
  %629 = load i32, i32* %628, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %630
  %632 = load i32, i32* %6, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds [144 x i32], [144 x i32]* %631, i64 0, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* @hash, align 4
  %637 = xor i32 %636, %635
  store i32 %637, i32* @hash, align 4
  %638 = load i32, i32* %6, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %639
  %641 = load i32, i32* %640, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %642
  %644 = load i32, i32* %7, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [144 x i32], [144 x i32]* %643, i64 0, i64 %645
  %647 = load i32, i32* %646, align 4
  %648 = load i32, i32* @hash, align 4
  %649 = xor i32 %648, %647
  store i32 %649, i32* @hash, align 4
  %650 = load i32, i32* %6, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %651
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* %7, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %655
  store i32 %653, i32* %656, align 4
  %657 = load i32, i32* %6, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %658
  store i32 13, i32* %659, align 4
  %660 = load i32, i32* %7, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %661
  %663 = load i32, i32* %662, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %662, align 4
  %665 = load i32, i32* %6, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %666
  %668 = load i32, i32* %667, align 4
  %669 = add nsw i32 %668, 1
  store i32 %669, i32* %667, align 4
  %670 = load i32, i32* @white_to_move, align 4
  %671 = xor i32 %670, 1
  store i32 %671, i32* @white_to_move, align 4
  %672 = load i32, i32* @ply, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* @ply, align 4
  br label %831

; <label>:674:                                    ; preds = %619, %613
  %675 = load i32, i32* %6, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %676
  %678 = load i32, i32* %677, align 4
  %679 = icmp eq i32 %678, 5
  br i1 %679, label %680, label %755

; <label>:680:                                    ; preds = %674
  %681 = load i32, i32* %7, align 4
  store i32 %681, i32* @wking_loc, align 4
  %682 = load i32, i32* %7, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %683
  store i32 5, i32* %684, align 4
  %685 = load i32, i32* %6, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %686
  store i32 13, i32* %687, align 4
  %688 = load i32, i32* %7, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %690, align 4
  %693 = load i32, i32* %6, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %695, align 4
  %698 = load i32, i32* @white_to_move, align 4
  %699 = xor i32 %698, 1
  store i32 %699, i32* @white_to_move, align 4
  %700 = load i32, i32* %6, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 5), i64 0, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = load i32, i32* @hash, align 4
  %705 = xor i32 %704, %703
  store i32 %705, i32* @hash, align 4
  %706 = load i32, i32* %7, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 5), i64 0, i64 %707
  %709 = load i32, i32* %708, align 4
  %710 = load i32, i32* @hash, align 4
  %711 = xor i32 %710, %709
  store i32 %711, i32* @hash, align 4
  %712 = load i32, i32* %10, align 4
  %713 = icmp eq i32 %712, 1
  br i1 %713, label %714, label %731

; <label>:714:                                    ; preds = %680
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 33), align 4
  store i32 7, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 31), align 4
  %715 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 33), align 4
  %716 = add nsw i32 %715, 1
  store i32 %716, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 33), align 4
  %717 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 31), align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 31), align 4
  store i32 1, i32* @white_castled, align 4
  %719 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 33), align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %720
  store i32 31, i32* %721, align 4
  %722 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 33), align 4
  store i32 %722, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 31), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 33), align 4
  %723 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 33), align 4
  %724 = load i32, i32* @hash, align 4
  %725 = xor i32 %724, %723
  store i32 %725, i32* @hash, align 4
  %726 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 31), align 4
  %727 = load i32, i32* @hash, align 4
  %728 = xor i32 %727, %726
  store i32 %728, i32* @hash, align 4
  %729 = load i32, i32* @ply, align 4
  %730 = add nsw i32 %729, 1
  store i32 %730, i32* @ply, align 4
  br label %831

; <label>:731:                                    ; preds = %680
  %732 = load i32, i32* %10, align 4
  %733 = icmp eq i32 %732, 2
  br i1 %733, label %734, label %751

; <label>:734:                                    ; preds = %731
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 26), align 8
  store i32 7, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 29), align 4
  %735 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 26), align 8
  %736 = add nsw i32 %735, 1
  store i32 %736, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 26), align 8
  %737 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 29), align 4
  %738 = add nsw i32 %737, 1
  store i32 %738, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 29), align 4
  store i32 2, i32* @white_castled, align 4
  %739 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 26), align 8
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %740
  store i32 29, i32* %741, align 4
  %742 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 26), align 8
  store i32 %742, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 29), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 26), align 8
  %743 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 26), align 8
  %744 = load i32, i32* @hash, align 4
  %745 = xor i32 %744, %743
  store i32 %745, i32* @hash, align 4
  %746 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 29), align 4
  %747 = load i32, i32* @hash, align 4
  %748 = xor i32 %747, %746
  store i32 %748, i32* @hash, align 4
  %749 = load i32, i32* @ply, align 4
  %750 = add nsw i32 %749, 1
  store i32 %750, i32* @ply, align 4
  br label %831

; <label>:751:                                    ; preds = %731
  br label %752

; <label>:752:                                    ; preds = %751
  %753 = load i32, i32* @ply, align 4
  %754 = add nsw i32 %753, 1
  store i32 %754, i32* @ply, align 4
  br label %831

; <label>:755:                                    ; preds = %674
  %756 = load i32, i32* %7, align 4
  store i32 %756, i32* @bking_loc, align 4
  %757 = load i32, i32* %7, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %758
  store i32 6, i32* %759, align 4
  %760 = load i32, i32* %6, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %761
  store i32 13, i32* %762, align 4
  %763 = load i32, i32* %7, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %764
  %766 = load i32, i32* %765, align 4
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %765, align 4
  %768 = load i32, i32* %6, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %769
  %771 = load i32, i32* %770, align 4
  %772 = add nsw i32 %771, 1
  store i32 %772, i32* %770, align 4
  %773 = load i32, i32* @white_to_move, align 4
  %774 = xor i32 %773, 1
  store i32 %774, i32* @white_to_move, align 4
  %775 = load i32, i32* %6, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 6), i64 0, i64 %776
  %778 = load i32, i32* %777, align 4
  %779 = load i32, i32* @hash, align 4
  %780 = xor i32 %779, %778
  store i32 %780, i32* @hash, align 4
  %781 = load i32, i32* %7, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 6), i64 0, i64 %782
  %784 = load i32, i32* %783, align 4
  %785 = load i32, i32* @hash, align 4
  %786 = xor i32 %785, %784
  store i32 %786, i32* @hash, align 4
  %787 = load i32, i32* %10, align 4
  %788 = icmp eq i32 %787, 3
  br i1 %788, label %789, label %806

; <label>:789:                                    ; preds = %755
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 117), align 4
  store i32 8, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 115), align 4
  %790 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 117), align 4
  %791 = add nsw i32 %790, 1
  store i32 %791, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 117), align 4
  %792 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 115), align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 115), align 4
  store i32 3, i32* @black_castled, align 4
  %794 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 117), align 4
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %795
  store i32 115, i32* %796, align 4
  %797 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 117), align 4
  store i32 %797, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 115), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 117), align 4
  %798 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 117), align 4
  %799 = load i32, i32* @hash, align 4
  %800 = xor i32 %799, %798
  store i32 %800, i32* @hash, align 4
  %801 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 115), align 4
  %802 = load i32, i32* @hash, align 4
  %803 = xor i32 %802, %801
  store i32 %803, i32* @hash, align 4
  %804 = load i32, i32* @ply, align 4
  %805 = add nsw i32 %804, 1
  store i32 %805, i32* @ply, align 4
  br label %831

; <label>:806:                                    ; preds = %755
  %807 = load i32, i32* %10, align 4
  %808 = icmp eq i32 %807, 4
  br i1 %808, label %809, label %826

; <label>:809:                                    ; preds = %806
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 110), align 8
  store i32 8, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 113), align 4
  %810 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 110), align 8
  %811 = add nsw i32 %810, 1
  store i32 %811, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 110), align 8
  %812 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 113), align 4
  %813 = add nsw i32 %812, 1
  store i32 %813, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 113), align 4
  store i32 4, i32* @black_castled, align 4
  %814 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 110), align 8
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %815
  store i32 113, i32* %816, align 4
  %817 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 110), align 8
  store i32 %817, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 113), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 110), align 8
  %818 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 110), align 8
  %819 = load i32, i32* @hash, align 4
  %820 = xor i32 %819, %818
  store i32 %820, i32* @hash, align 4
  %821 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 113), align 4
  %822 = load i32, i32* @hash, align 4
  %823 = xor i32 %822, %821
  store i32 %823, i32* @hash, align 4
  %824 = load i32, i32* @ply, align 4
  %825 = add nsw i32 %824, 1
  store i32 %825, i32* @ply, align 4
  br label %831

; <label>:826:                                    ; preds = %806
  br label %827

; <label>:827:                                    ; preds = %826
  br label %828

; <label>:828:                                    ; preds = %827
  %829 = load i32, i32* @ply, align 4
  %830 = add nsw i32 %829, 1
  store i32 %830, i32* @ply, align 4
  br label %831

; <label>:831:                                    ; preds = %828, %809, %789, %752, %734, %714, %625, %580, %497, %442, %400, %317, %262, %95
  ret void
}

declare void @DropremoveHolding(i32, i32) #1

declare void @addHolding(i32, i32) #1

declare i32 @SwitchPromoted(i32) #1

declare i32 @SwitchColor(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @add_move(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @gfrom, align 4
  %6 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %7 = load i32, i32* @numb_moves, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.move_s, %struct.move_s* %6, i64 %8
  %10 = getelementptr inbounds %struct.move_s, %struct.move_s* %9, i32 0, i32 0
  store i32 %5, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %13 = load i32, i32* @numb_moves, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.move_s, %struct.move_s* %12, i64 %14
  %16 = getelementptr inbounds %struct.move_s, %struct.move_s* %15, i32 0, i32 1
  store i32 %11, i32* %16, align 4
  %17 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %18 = load i32, i32* @numb_moves, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.move_s, %struct.move_s* %17, i64 %19
  %21 = getelementptr inbounds %struct.move_s, %struct.move_s* %20, i32 0, i32 2
  store i32 13, i32* %21, align 4
  %22 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %23 = load i32, i32* @numb_moves, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.move_s, %struct.move_s* %22, i64 %24
  %26 = getelementptr inbounds %struct.move_s, %struct.move_s* %25, i32 0, i32 4
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %29 = load i32, i32* @numb_moves, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.move_s, %struct.move_s* %28, i64 %30
  %32 = getelementptr inbounds %struct.move_s, %struct.move_s* %31, i32 0, i32 3
  store i32 %27, i32* %32, align 4
  %33 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %34 = load i32, i32* @numb_moves, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.move_s, %struct.move_s* %33, i64 %35
  %37 = getelementptr inbounds %struct.move_s, %struct.move_s* %36, i32 0, i32 5
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @numb_moves, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @numb_moves, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @add_capture(i32, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @Variant, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14, %11
  store i32 1, i32* @kingcap, align 4
  br label %61

; <label>:18:                                     ; preds = %14, %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 13
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18
  store i32 1, i32* @fcaptures, align 4
  br label %22

; <label>:22:                                     ; preds = %21, %18
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* @gfrom, align 4
  %25 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %26 = load i32, i32* @numb_moves, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.move_s, %struct.move_s* %25, i64 %27
  %29 = getelementptr inbounds %struct.move_s, %struct.move_s* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %32 = load i32, i32* @numb_moves, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.move_s, %struct.move_s* %31, i64 %33
  %35 = getelementptr inbounds %struct.move_s, %struct.move_s* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %38 = load i32, i32* @numb_moves, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.move_s, %struct.move_s* %37, i64 %39
  %41 = getelementptr inbounds %struct.move_s, %struct.move_s* %40, i32 0, i32 2
  store i32 %36, i32* %41, align 4
  %42 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %43 = load i32, i32* @numb_moves, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.move_s, %struct.move_s* %42, i64 %44
  %46 = getelementptr inbounds %struct.move_s, %struct.move_s* %45, i32 0, i32 4
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %49 = load i32, i32* @numb_moves, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.move_s, %struct.move_s* %48, i64 %50
  %52 = getelementptr inbounds %struct.move_s, %struct.move_s* %51, i32 0, i32 3
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %55 = load i32, i32* @numb_moves, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.move_s, %struct.move_s* %54, i64 %56
  %58 = getelementptr inbounds %struct.move_s, %struct.move_s* %57, i32 0, i32 5
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* @numb_moves, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @numb_moves, align 4
  br label %61

; <label>:61:                                     ; preds = %23, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @unmake(%struct.move_s*, i32) #0 {
  %3 = alloca %struct.move_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.move_s* %0, %struct.move_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.move_s*, %struct.move_s** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i64 %13
  %15 = getelementptr inbounds %struct.move_s, %struct.move_s* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.move_s*, %struct.move_s** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.move_s, %struct.move_s* %17, i64 %19
  %21 = getelementptr inbounds %struct.move_s, %struct.move_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.move_s*, %struct.move_s** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.move_s, %struct.move_s* %23, i64 %25
  %27 = getelementptr inbounds %struct.move_s, %struct.move_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.move_s*, %struct.move_s** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.move_s, %struct.move_s* %29, i64 %31
  %33 = getelementptr inbounds %struct.move_s, %struct.move_s* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.move_s*, %struct.move_s** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.move_s, %struct.move_s* %35, i64 %37
  %39 = getelementptr inbounds %struct.move_s, %struct.move_s* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.move_s*, %struct.move_s** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.move_s, %struct.move_s* %41, i64 %43
  %45 = getelementptr inbounds %struct.move_s, %struct.move_s* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @ply, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* @ply, align 4
  %49 = load i32, i32* @ply, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.move_x, %struct.move_x* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* @ep_square, align 4
  %54 = load i32, i32* @ply, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.move_x, %struct.move_x* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* @fifty, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %110

; <label>:61:                                     ; preds = %2
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* @ply, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.move_x, %struct.move_x* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %80
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* @piece_count, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @piece_count, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @white_to_move, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  call void @DropaddHolding(i32 %84, i32 %88)
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @Material, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* @Material, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %97
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %100
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [144 x i32], [144 x i32]* %101, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @hash, align 4
  %107 = xor i32 %106, %105
  store i32 %107, i32* @hash, align 4
  %108 = load i32, i32* @white_to_move, align 4
  %109 = xor i32 %108, 1
  store i32 %109, i32* @white_to_move, align 4
  br label %744

; <label>:110:                                    ; preds = %2
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @ply, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.move_x, %struct.move_x* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 16
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %124
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %131
  store i32 %126, i32* %132, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %138
  store i32 %133, i32* %139, align 4
  %140 = load i32, i32* @ply, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.move_x, %struct.move_x* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %205, label %153

; <label>:153:                                    ; preds = %110
  %154 = load i32, i32* %8, align 4
  switch i32 %154, label %156 [
    i32 13, label %155
  ]

; <label>:155:                                    ; preds = %153
  br label %204

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* @Variant, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %162, label %159

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* @Variant, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %186

; <label>:162:                                    ; preds = %159, %156
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

; <label>:171:                                    ; preds = %162
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @SwitchPromoted(i32 %172)
  %174 = load i32, i32* @white_to_move, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  call void @removeHolding(i32 %173, i32 %177)
  br label %185

; <label>:178:                                    ; preds = %162
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @SwitchColor(i32 %179)
  %181 = load i32, i32* @white_to_move, align 4
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 1, i32 0
  call void @removeHolding(i32 %180, i32 %184)
  br label %185

; <label>:185:                                    ; preds = %178, %171
  br label %186

; <label>:186:                                    ; preds = %185, %159
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %188
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [144 x i32], [144 x i32]* %189, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @hash, align 4
  %195 = xor i32 %194, %193
  store i32 %195, i32* @hash, align 4
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @Material, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* @Material, align 4
  %202 = load i32, i32* @piece_count, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* @piece_count, align 4
  br label %204

; <label>:204:                                    ; preds = %186, %155
  br label %205

; <label>:205:                                    ; preds = %204, %110
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %320

; <label>:211:                                    ; preds = %205
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %288

; <label>:214:                                    ; preds = %211
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @hash, align 4
  %220 = xor i32 %219, %218
  store i32 %220, i32* @hash, align 4
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @hash, align 4
  %226 = xor i32 %225, %224
  store i32 %226, i32* @hash, align 4
  %227 = load i32, i32* %7, align 4
  %228 = sub nsw i32 %227, 12
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @hash, align 4
  %233 = xor i32 %232, %231
  store i32 %233, i32* @hash, align 4
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %235
  store i32 13, i32* %236, align 4
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %238
  store i32 1, i32* %239, align 4
  %240 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i64 0, i64 2), align 8
  %241 = load i32, i32* @Material, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* @Material, align 4
  call void @removeHolding(i32 1, i32 0)
  %243 = load i32, i32* @piece_count, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* @piece_count, align 4
  %245 = load i32, i32* %7, align 4
  %246 = sub nsw i32 %245, 12
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %247
  store i32 2, i32* %248, align 4
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %251, align 4
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %7, align 4
  %260 = sub nsw i32 %259, 12
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %262, align 4
  %265 = load i32, i32* @white_to_move, align 4
  %266 = xor i32 %265, 1
  store i32 %266, i32* @white_to_move, align 4
  %267 = load i32, i32* @ply, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %268
  %270 = getelementptr inbounds %struct.move_x, %struct.move_x* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 16
  %272 = load i32, i32* %7, align 4
  %273 = sub nsw i32 %272, 12
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %274
  store i32 %271, i32* %275, align 4
  %276 = load i32, i32* %7, align 4
  %277 = sub nsw i32 %276, 12
  %278 = load i32, i32* @ply, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.move_x, %struct.move_x* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 16
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %283
  store i32 %277, i32* %284, align 4
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %286
  store i32 0, i32* %287, align 4
  br label %744

; <label>:288:                                    ; preds = %211
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @hash, align 4
  %294 = xor i32 %293, %292
  store i32 %294, i32* @hash, align 4
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @hash, align 4
  %300 = xor i32 %299, %298
  store i32 %300, i32* @hash, align 4
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %303
  store i32 %301, i32* %304, align 4
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %306
  store i32 1, i32* %307, align 4
  %308 = load i32, i32* %7, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %310, align 4
  %313 = load i32, i32* %6, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, -1
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* @white_to_move, align 4
  %319 = xor i32 %318, 1
  store i32 %319, i32* @white_to_move, align 4
  br label %744

; <label>:320:                                    ; preds = %205
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 2
  br i1 %325, label %326, label %435

; <label>:326:                                    ; preds = %320
  %327 = load i32, i32* %5, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %403

; <label>:329:                                    ; preds = %326
  %330 = load i32, i32* %7, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @hash, align 4
  %335 = xor i32 %334, %333
  store i32 %335, i32* @hash, align 4
  %336 = load i32, i32* %6, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @hash, align 4
  %341 = xor i32 %340, %339
  store i32 %341, i32* @hash, align 4
  %342 = load i32, i32* %7, align 4
  %343 = add nsw i32 %342, 12
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @hash, align 4
  %348 = xor i32 %347, %346
  store i32 %348, i32* @hash, align 4
  %349 = load i32, i32* %7, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %350
  store i32 13, i32* %351, align 4
  %352 = load i32, i32* %6, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %353
  store i32 2, i32* %354, align 4
  %355 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i64 0, i64 1), align 4
  %356 = load i32, i32* @Material, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* @Material, align 4
  call void @removeHolding(i32 2, i32 1)
  %358 = load i32, i32* @piece_count, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* @piece_count, align 4
  %360 = load i32, i32* %7, align 4
  %361 = add nsw i32 %360, 12
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %362
  store i32 1, i32* %363, align 4
  %364 = load i32, i32* %7, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %367, -1
  store i32 %368, i32* %366, align 4
  %369 = load i32, i32* %6, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %372, -1
  store i32 %373, i32* %371, align 4
  %374 = load i32, i32* %7, align 4
  %375 = add nsw i32 %374, 12
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %377, align 4
  %380 = load i32, i32* @white_to_move, align 4
  %381 = xor i32 %380, 1
  store i32 %381, i32* @white_to_move, align 4
  %382 = load i32, i32* @ply, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %383
  %385 = getelementptr inbounds %struct.move_x, %struct.move_x* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 16
  %387 = load i32, i32* %7, align 4
  %388 = add nsw i32 %387, 12
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %389
  store i32 %386, i32* %390, align 4
  %391 = load i32, i32* %7, align 4
  %392 = add nsw i32 %391, 12
  %393 = load i32, i32* @ply, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i64 0, i64 %394
  %396 = getelementptr inbounds %struct.move_x, %struct.move_x* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 16
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %398
  store i32 %392, i32* %399, align 4
  %400 = load i32, i32* %7, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %401
  store i32 0, i32* %402, align 4
  br label %744

; <label>:403:                                    ; preds = %326
  %404 = load i32, i32* %6, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @hash, align 4
  %409 = xor i32 %408, %407
  store i32 %409, i32* @hash, align 4
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @hash, align 4
  %415 = xor i32 %414, %413
  store i32 %415, i32* @hash, align 4
  %416 = load i32, i32* %8, align 4
  %417 = load i32, i32* %7, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %418
  store i32 %416, i32* %419, align 4
  %420 = load i32, i32* %6, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %421
  store i32 2, i32* %422, align 4
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %426, -1
  store i32 %427, i32* %425, align 4
  %428 = load i32, i32* %6, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %431, -1
  store i32 %432, i32* %430, align 4
  %433 = load i32, i32* @white_to_move, align 4
  %434 = xor i32 %433, 1
  store i32 %434, i32* @white_to_move, align 4
  br label %744

; <label>:435:                                    ; preds = %320
  %436 = load i32, i32* %7, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = icmp ne i32 %439, 5
  br i1 %440, label %441, label %498

; <label>:441:                                    ; preds = %435
  %442 = load i32, i32* %7, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %445, 6
  br i1 %446, label %447, label %498

; <label>:447:                                    ; preds = %441
  %448 = load i32, i32* %9, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %498, label %450

; <label>:450:                                    ; preds = %447
  %451 = load i32, i32* %7, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* %6, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %456
  store i32 %454, i32* %457, align 4
  %458 = load i32, i32* %8, align 4
  %459 = load i32, i32* %7, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %460
  store i32 %458, i32* %461, align 4
  %462 = load i32, i32* %7, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = add nsw i32 %465, -1
  store i32 %466, i32* %464, align 4
  %467 = load i32, i32* %6, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = add nsw i32 %470, -1
  store i32 %471, i32* %469, align 4
  %472 = load i32, i32* @white_to_move, align 4
  %473 = xor i32 %472, 1
  store i32 %473, i32* @white_to_move, align 4
  %474 = load i32, i32* %6, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %475
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %478
  %480 = load i32, i32* %7, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [144 x i32], [144 x i32]* %479, i64 0, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @hash, align 4
  %485 = xor i32 %484, %483
  store i32 %485, i32* @hash, align 4
  %486 = load i32, i32* %6, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %490
  %492 = load i32, i32* %6, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [144 x i32], [144 x i32]* %491, i64 0, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* @hash, align 4
  %497 = xor i32 %496, %495
  store i32 %497, i32* @hash, align 4
  br label %744

; <label>:498:                                    ; preds = %447, %441, %435
  %499 = load i32, i32* %9, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %596

; <label>:501:                                    ; preds = %498
  %502 = load i32, i32* %7, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = srem i32 %505, 2
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %552

; <label>:508:                                    ; preds = %501
  %509 = load i32, i32* %8, align 4
  %510 = load i32, i32* %7, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %511
  store i32 %509, i32* %512, align 4
  %513 = load i32, i32* %6, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %514
  store i32 1, i32* %515, align 4
  %516 = load i32, i32* %7, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %517
  %519 = load i32, i32* %518, align 4
  %520 = add nsw i32 %519, -1
  store i32 %520, i32* %518, align 4
  %521 = load i32, i32* %6, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = add nsw i32 %524, -1
  store i32 %525, i32* %523, align 4
  %526 = load i32, i32* @white_to_move, align 4
  %527 = xor i32 %526, 1
  store i32 %527, i32* @white_to_move, align 4
  %528 = load i32, i32* %6, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 1), i64 0, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* @hash, align 4
  %533 = xor i32 %532, %531
  store i32 %533, i32* @hash, align 4
  %534 = load i32, i32* %9, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %535
  %537 = load i32, i32* %7, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [144 x i32], [144 x i32]* %536, i64 0, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* @hash, align 4
  %542 = xor i32 %541, %540
  store i32 %542, i32* @hash, align 4
  %543 = load i32, i32* %9, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %544
  %546 = load i32, i32* %545, align 4
  %547 = load i32, i32* @Material, align 4
  %548 = sub nsw i32 %547, %546
  store i32 %548, i32* @Material, align 4
  %549 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i64 0, i64 1), align 4
  %550 = load i32, i32* @Material, align 4
  %551 = add nsw i32 %550, %549
  store i32 %551, i32* @Material, align 4
  br label %744

; <label>:552:                                    ; preds = %501
  %553 = load i32, i32* %8, align 4
  %554 = load i32, i32* %7, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %555
  store i32 %553, i32* %556, align 4
  %557 = load i32, i32* %6, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %558
  store i32 2, i32* %559, align 4
  %560 = load i32, i32* %7, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = add nsw i32 %563, -1
  store i32 %564, i32* %562, align 4
  %565 = load i32, i32* %6, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %566
  %568 = load i32, i32* %567, align 4
  %569 = add nsw i32 %568, -1
  store i32 %569, i32* %567, align 4
  %570 = load i32, i32* @white_to_move, align 4
  %571 = xor i32 %570, 1
  store i32 %571, i32* @white_to_move, align 4
  %572 = load i32, i32* %6, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 2), i64 0, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = load i32, i32* @hash, align 4
  %577 = xor i32 %576, %575
  store i32 %577, i32* @hash, align 4
  %578 = load i32, i32* %9, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %579
  %581 = load i32, i32* %7, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds [144 x i32], [144 x i32]* %580, i64 0, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = load i32, i32* @hash, align 4
  %586 = xor i32 %585, %584
  store i32 %586, i32* @hash, align 4
  %587 = load i32, i32* %9, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* @Material, align 4
  %592 = sub nsw i32 %591, %590
  store i32 %592, i32* @Material, align 4
  %593 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i64 0, i64 2), align 8
  %594 = load i32, i32* @Material, align 4
  %595 = add nsw i32 %594, %593
  store i32 %595, i32* @Material, align 4
  br label %744

; <label>:596:                                    ; preds = %498
  %597 = load i32, i32* %7, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = icmp eq i32 %600, 5
  br i1 %601, label %602, label %672

; <label>:602:                                    ; preds = %596
  %603 = load i32, i32* %6, align 4
  store i32 %603, i32* @wking_loc, align 4
  %604 = load i32, i32* %8, align 4
  %605 = load i32, i32* %7, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %606
  store i32 %604, i32* %607, align 4
  %608 = load i32, i32* %6, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %609
  store i32 5, i32* %610, align 4
  %611 = load i32, i32* %7, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = add nsw i32 %614, -1
  store i32 %615, i32* %613, align 4
  %616 = load i32, i32* %6, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %617
  %619 = load i32, i32* %618, align 4
  %620 = add nsw i32 %619, -1
  store i32 %620, i32* %618, align 4
  %621 = load i32, i32* @white_to_move, align 4
  %622 = xor i32 %621, 1
  store i32 %622, i32* @white_to_move, align 4
  %623 = load i32, i32* %6, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 5), i64 0, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* @hash, align 4
  %628 = xor i32 %627, %626
  store i32 %628, i32* @hash, align 4
  %629 = load i32, i32* %7, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 5), i64 0, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = load i32, i32* @hash, align 4
  %634 = xor i32 %633, %632
  store i32 %634, i32* @hash, align 4
  %635 = load i32, i32* %10, align 4
  %636 = icmp eq i32 %635, 1
  br i1 %636, label %637, label %652

; <label>:637:                                    ; preds = %602
  store i32 7, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 33), align 4
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 31), align 4
  %638 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 33), align 4
  %639 = add nsw i32 %638, -1
  store i32 %639, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 33), align 4
  %640 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 31), align 4
  %641 = add nsw i32 %640, -1
  store i32 %641, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 31), align 4
  store i32 0, i32* @white_castled, align 4
  %642 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 31), align 4
  store i32 %642, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 33), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 31), align 4
  %643 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 33), align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %644
  store i32 33, i32* %645, align 4
  %646 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 33), align 4
  %647 = load i32, i32* @hash, align 4
  %648 = xor i32 %647, %646
  store i32 %648, i32* @hash, align 4
  %649 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 31), align 4
  %650 = load i32, i32* @hash, align 4
  %651 = xor i32 %650, %649
  store i32 %651, i32* @hash, align 4
  br label %744

; <label>:652:                                    ; preds = %602
  %653 = load i32, i32* %10, align 4
  %654 = icmp eq i32 %653, 2
  br i1 %654, label %655, label %670

; <label>:655:                                    ; preds = %652
  store i32 7, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 26), align 8
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 29), align 4
  %656 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 26), align 8
  %657 = add nsw i32 %656, -1
  store i32 %657, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 26), align 8
  %658 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 29), align 4
  %659 = add nsw i32 %658, -1
  store i32 %659, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 29), align 4
  store i32 0, i32* @white_castled, align 4
  %660 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 29), align 4
  store i32 %660, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 26), align 8
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 29), align 4
  %661 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 26), align 8
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %662
  store i32 26, i32* %663, align 4
  %664 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 29), align 4
  %665 = load i32, i32* @hash, align 4
  %666 = xor i32 %665, %664
  store i32 %666, i32* @hash, align 4
  %667 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 26), align 8
  %668 = load i32, i32* @hash, align 4
  %669 = xor i32 %668, %667
  store i32 %669, i32* @hash, align 4
  br label %744

; <label>:670:                                    ; preds = %652
  br label %671

; <label>:671:                                    ; preds = %670
  br label %744

; <label>:672:                                    ; preds = %596
  %673 = load i32, i32* %6, align 4
  store i32 %673, i32* @bking_loc, align 4
  %674 = load i32, i32* %8, align 4
  %675 = load i32, i32* %7, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %676
  store i32 %674, i32* %677, align 4
  %678 = load i32, i32* %6, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %679
  store i32 6, i32* %680, align 4
  %681 = load i32, i32* %7, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %682
  %684 = load i32, i32* %683, align 4
  %685 = add nsw i32 %684, -1
  store i32 %685, i32* %683, align 4
  %686 = load i32, i32* %6, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %687
  %689 = load i32, i32* %688, align 4
  %690 = add nsw i32 %689, -1
  store i32 %690, i32* %688, align 4
  %691 = load i32, i32* @white_to_move, align 4
  %692 = xor i32 %691, 1
  store i32 %692, i32* @white_to_move, align 4
  %693 = load i32, i32* %6, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 6), i64 0, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* @hash, align 4
  %698 = xor i32 %697, %696
  store i32 %698, i32* @hash, align 4
  %699 = load i32, i32* %7, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 6), i64 0, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = load i32, i32* @hash, align 4
  %704 = xor i32 %703, %702
  store i32 %704, i32* @hash, align 4
  %705 = load i32, i32* %10, align 4
  %706 = icmp eq i32 %705, 3
  br i1 %706, label %707, label %722

; <label>:707:                                    ; preds = %672
  store i32 8, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 117), align 4
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 115), align 4
  %708 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 117), align 4
  %709 = add nsw i32 %708, -1
  store i32 %709, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 117), align 4
  %710 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 115), align 4
  %711 = add nsw i32 %710, -1
  store i32 %711, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 115), align 4
  store i32 0, i32* @black_castled, align 4
  %712 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 115), align 4
  store i32 %712, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 117), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 115), align 4
  %713 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 117), align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %714
  store i32 117, i32* %715, align 4
  %716 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 117), align 4
  %717 = load i32, i32* @hash, align 4
  %718 = xor i32 %717, %716
  store i32 %718, i32* @hash, align 4
  %719 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 115), align 4
  %720 = load i32, i32* @hash, align 4
  %721 = xor i32 %720, %719
  store i32 %721, i32* @hash, align 4
  br label %744

; <label>:722:                                    ; preds = %672
  %723 = load i32, i32* %10, align 4
  %724 = icmp eq i32 %723, 4
  br i1 %724, label %725, label %740

; <label>:725:                                    ; preds = %722
  store i32 8, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 110), align 8
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 113), align 4
  %726 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 110), align 8
  %727 = add nsw i32 %726, -1
  store i32 %727, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 110), align 8
  %728 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 113), align 4
  %729 = add nsw i32 %728, -1
  store i32 %729, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 113), align 4
  store i32 0, i32* @black_castled, align 4
  %730 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 113), align 4
  store i32 %730, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 110), align 8
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 113), align 4
  %731 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i64 0, i64 110), align 8
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %732
  store i32 110, i32* %733, align 4
  %734 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 110), align 8
  %735 = load i32, i32* @hash, align 4
  %736 = xor i32 %735, %734
  store i32 %736, i32* @hash, align 4
  %737 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 113), align 4
  %738 = load i32, i32* @hash, align 4
  %739 = xor i32 %738, %737
  store i32 %739, i32* @hash, align 4
  br label %744

; <label>:740:                                    ; preds = %722
  br label %741

; <label>:741:                                    ; preds = %740
  br label %742

; <label>:742:                                    ; preds = %741
  br label %743

; <label>:743:                                    ; preds = %742
  br label %744

; <label>:744:                                    ; preds = %743, %725, %707, %671, %655, %637, %552, %508, %450, %403, %329, %288, %214, %61
  ret void
}

declare void @DropaddHolding(i32, i32) #1

declare void @removeHolding(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
