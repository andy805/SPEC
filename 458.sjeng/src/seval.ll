; ModuleID = 'seval.c'
source_filename = "seval.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@white_to_move = external global i32, align 4
@Material = external global i32, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@Xfile = external constant [144 x i32], align 16
@Xrank = external constant [144 x i32], align 16
@board = external global [144 x i32], align 16
@scentral = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 2, i32 15, i32 15, i32 15, i32 15, i32 2, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 7, i32 15, i32 25, i32 25, i32 15, i32 7, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 7, i32 15, i32 25, i32 25, i32 15, i32 7, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 2, i32 15, i32 15, i32 15, i32 15, i32 2, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sqcolor = external constant [144 x i32], align 16
@knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@king_o = internal constant [8 x i32] [i32 13, i32 12, i32 11, i32 1, i32 -1, i32 -11, i32 -12, i32 -13], align 16

; Function Attrs: noinline nounwind optnone uwtable
define i32 @suicide_eval() #0 {
  %1 = call i32 @suicide_mid_eval()
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @suicide_mid_eval() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x [11 x i32]], align 16
  %5 = alloca [11 x i32], align 16
  %6 = alloca [11 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %13, align 4
  call void @checkECache(i32* %12, i32* %13)
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

; <label>:28:                                     ; preds = %0
  %29 = load i32, i32* @white_to_move, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %1, align 4
  br label %695

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %1, align 4
  br label %695

; <label>:36:                                     ; preds = %0
  %37 = load i32, i32* @Material, align 4
  store i32 %37, i32* %12, align 4
  %38 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i32 0, i32 0
  %39 = bitcast [11 x i32]* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 88, i32 16, i1 false)
  store i32 0, i32* %9, align 4
  br label %40

; <label>:40:                                     ; preds = %50, %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 11
  br i1 %42, label %43, label %53

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %45
  store i32 7, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %48
  store i32 2, i32* %49, align 4
  br label %50

; <label>:50:                                     ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %40

; <label>:53:                                     ; preds = %40
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %54

; <label>:54:                                     ; preds = %130, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @piece_count, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %133

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

; <label>:65:                                     ; preds = %58
  br label %130

; <label>:66:                                     ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %69

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %103

; <label>:84:                                     ; preds = %69
  %85 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [11 x i32], [11 x i32]* %85, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %102

; <label>:97:                                     ; preds = %84
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %100
  store i32 %98, i32* %101, align 4
  br label %102

; <label>:102:                                    ; preds = %97, %84
  br label %129

; <label>:103:                                    ; preds = %69
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %128

; <label>:109:                                    ; preds = %103
  %110 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [11 x i32], [11 x i32]* %110, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %116, %120
  br i1 %121, label %122, label %127

; <label>:122:                                    ; preds = %109
  %123 = load i32, i32* %2, align 4
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %125
  store i32 %123, i32* %126, align 4
  br label %127

; <label>:127:                                    ; preds = %122, %109
  br label %128

; <label>:128:                                    ; preds = %127, %103
  br label %129

; <label>:129:                                    ; preds = %128, %102
  br label %130

; <label>:130:                                    ; preds = %129, %65
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %54

; <label>:133:                                    ; preds = %54
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %134

; <label>:134:                                    ; preds = %660, %133
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @piece_count, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %663

; <label>:138:                                    ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

; <label>:145:                                    ; preds = %138
  br label %660

; <label>:146:                                    ; preds = %138
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %149

; <label>:149:                                    ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %2, align 4
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  switch i32 %162, label %659 [
    i32 1, label %163
    i32 2, label %327
    i32 7, label %491
    i32 8, label %504
    i32 11, label %517
    i32 12, label %546
    i32 3, label %575
    i32 4, label %588
    i32 9, label %601
    i32 10, label %616
    i32 5, label %631
    i32 6, label %645
  ]

; <label>:163:                                    ; preds = %149
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @s_pawn_mobility(i32 %170)
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @black_saccers(i32 %174)
  %176 = load i32, i32* %12, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %24, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %24, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %180 = load i32, i32* %3, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %2, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %217

; <label>:187:                                    ; preds = %163
  %188 = load i32, i32* %3, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %2, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %217

; <label>:195:                                    ; preds = %187
  %196 = load i32, i32* %12, align 4
  %197 = sub nsw i32 %196, 8
  store i32 %197, i32* %12, align 4
  store i32 1, i32* %8, align 4
  %198 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [11 x i32], [11 x i32]* %198, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %216, label %205

; <label>:205:                                    ; preds = %195
  %206 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %207 = load i32, i32* %3, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [11 x i32], [11 x i32]* %206, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

; <label>:213:                                    ; preds = %205
  %214 = load i32, i32* %12, align 4
  %215 = sub nsw i32 %214, 12
  store i32 %215, i32* %12, align 4
  store i32 1, i32* %7, align 4
  br label %216

; <label>:216:                                    ; preds = %213, %205, %195
  br label %217

; <label>:217:                                    ; preds = %216, %187, %163
  %218 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [11 x i32], [11 x i32]* %218, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %237, label %224

; <label>:224:                                    ; preds = %217
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

; <label>:227:                                    ; preds = %224
  %228 = load i32, i32* %12, align 4
  %229 = sub nsw i32 %228, 5
  store i32 %229, i32* %12, align 4
  br label %230

; <label>:230:                                    ; preds = %227, %224
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

; <label>:233:                                    ; preds = %230
  %234 = load i32, i32* %12, align 4
  %235 = sub nsw i32 %234, 8
  store i32 %235, i32* %12, align 4
  br label %236

; <label>:236:                                    ; preds = %233, %230
  br label %237

; <label>:237:                                    ; preds = %236, %217
  %238 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [11 x i32], [11 x i32]* %238, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = icmp sgt i32 %242, 1
  br i1 %243, label %244, label %254

; <label>:244:                                    ; preds = %237
  %245 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [11 x i32], [11 x i32]* %245, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %249, 1
  %251 = mul nsw i32 15, %250
  %252 = load i32, i32* %12, align 4
  %253 = sub nsw i32 %252, %251
  store i32 %253, i32* %12, align 4
  br label %254

; <label>:254:                                    ; preds = %244, %237
  %255 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %256 = load i32, i32* %3, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [11 x i32], [11 x i32]* %255, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %315, label %261

; <label>:261:                                    ; preds = %254
  %262 = load i32, i32* %2, align 4
  %263 = load i32, i32* %3, align 4
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = icmp sge i32 %262, %267
  br i1 %268, label %269, label %315

; <label>:269:                                    ; preds = %261
  %270 = load i32, i32* %2, align 4
  %271 = load i32, i32* %3, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp sge i32 %270, %275
  br i1 %276, label %277, label %315

; <label>:277:                                    ; preds = %269
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 %281, 2
  %283 = mul nsw i32 3, %282
  %284 = add nsw i32 30, %283
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %12, align 4
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %298, label %292

; <label>:292:                                    ; preds = %277
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, 8
  br i1 %297, label %298, label %308

; <label>:298:                                    ; preds = %292, %277
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %302, 2
  %304 = mul nsw i32 2, %303
  %305 = add nsw i32 4, %304
  %306 = load i32, i32* %12, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %12, align 4
  br label %308

; <label>:308:                                    ; preds = %298, %292
  %309 = load i32, i32* %7, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %314, label %311

; <label>:311:                                    ; preds = %308
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %312, 6
  store i32 %313, i32* %12, align 4
  br label %314

; <label>:314:                                    ; preds = %311, %308
  br label %315

; <label>:315:                                    ; preds = %314, %269, %261, %254
  %316 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %317 = load i32, i32* %3, align 4
  %318 = sub nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [11 x i32], [11 x i32]* %316, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %326, label %323

; <label>:323:                                    ; preds = %315
  %324 = load i32, i32* %12, align 4
  %325 = sub nsw i32 %324, 20
  store i32 %325, i32* %12, align 4
  br label %326

; <label>:326:                                    ; preds = %323, %315
  br label %659

; <label>:327:                                    ; preds = %149
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %12, align 4
  %333 = sub nsw i32 %332, %331
  store i32 %333, i32* %12, align 4
  %334 = load i32, i32* %9, align 4
  %335 = call i32 @s_pawn_mobility(i32 %334)
  %336 = load i32, i32* %12, align 4
  %337 = sub nsw i32 %336, %335
  store i32 %337, i32* %12, align 4
  %338 = load i32, i32* %9, align 4
  %339 = call i32 @white_saccers(i32 %338)
  %340 = load i32, i32* %12, align 4
  %341 = add nsw i32 %340, %339
  store i32 %341, i32* %12, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %342 = load i32, i32* %25, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %25, align 4
  %344 = load i32, i32* %3, align 4
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %2, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %381

; <label>:351:                                    ; preds = %327
  %352 = load i32, i32* %3, align 4
  %353 = sub nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %2, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %381

; <label>:359:                                    ; preds = %351
  %360 = load i32, i32* %12, align 4
  %361 = add nsw i32 %360, 8
  store i32 %361, i32* %12, align 4
  store i32 1, i32* %8, align 4
  %362 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %363 = load i32, i32* %3, align 4
  %364 = add nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [11 x i32], [11 x i32]* %362, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %380, label %369

; <label>:369:                                    ; preds = %359
  %370 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %371 = load i32, i32* %3, align 4
  %372 = sub nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [11 x i32], [11 x i32]* %370, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %380, label %377

; <label>:377:                                    ; preds = %369
  %378 = load i32, i32* %12, align 4
  %379 = add nsw i32 %378, 12
  store i32 %379, i32* %12, align 4
  store i32 1, i32* %7, align 4
  br label %380

; <label>:380:                                    ; preds = %377, %369, %359
  br label %381

; <label>:381:                                    ; preds = %380, %351, %327
  %382 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %383 = load i32, i32* %3, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [11 x i32], [11 x i32]* %382, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %401, label %388

; <label>:388:                                    ; preds = %381
  %389 = load i32, i32* %8, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %394

; <label>:391:                                    ; preds = %388
  %392 = load i32, i32* %12, align 4
  %393 = add nsw i32 %392, 5
  store i32 %393, i32* %12, align 4
  br label %394

; <label>:394:                                    ; preds = %391, %388
  %395 = load i32, i32* %7, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %400

; <label>:397:                                    ; preds = %394
  %398 = load i32, i32* %12, align 4
  %399 = add nsw i32 %398, 8
  store i32 %399, i32* %12, align 4
  br label %400

; <label>:400:                                    ; preds = %397, %394
  br label %401

; <label>:401:                                    ; preds = %400, %381
  %402 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %403 = load i32, i32* %3, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [11 x i32], [11 x i32]* %402, i64 0, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = icmp sgt i32 %406, 1
  br i1 %407, label %408, label %418

; <label>:408:                                    ; preds = %401
  %409 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %410 = load i32, i32* %3, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [11 x i32], [11 x i32]* %409, i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = sub nsw i32 %413, 1
  %415 = mul nsw i32 15, %414
  %416 = load i32, i32* %12, align 4
  %417 = add nsw i32 %416, %415
  store i32 %417, i32* %12, align 4
  br label %418

; <label>:418:                                    ; preds = %408, %401
  %419 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %420 = load i32, i32* %3, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [11 x i32], [11 x i32]* %419, i64 0, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %479, label %425

; <label>:425:                                    ; preds = %418
  %426 = load i32, i32* %2, align 4
  %427 = load i32, i32* %3, align 4
  %428 = sub nsw i32 %427, 1
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = icmp sle i32 %426, %431
  br i1 %432, label %433, label %479

; <label>:433:                                    ; preds = %425
  %434 = load i32, i32* %2, align 4
  %435 = load i32, i32* %3, align 4
  %436 = add nsw i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = icmp sle i32 %434, %439
  br i1 %440, label %441, label %479

; <label>:441:                                    ; preds = %433
  %442 = load i32, i32* %9, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = sub nsw i32 7, %445
  %447 = mul nsw i32 3, %446
  %448 = add nsw i32 30, %447
  %449 = load i32, i32* %12, align 4
  %450 = sub nsw i32 %449, %448
  store i32 %450, i32* %12, align 4
  %451 = load i32, i32* %9, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %462, label %456

; <label>:456:                                    ; preds = %441
  %457 = load i32, i32* %9, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = icmp eq i32 %460, 8
  br i1 %461, label %462, label %472

; <label>:462:                                    ; preds = %456, %441
  %463 = load i32, i32* %9, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = sub nsw i32 7, %466
  %468 = mul nsw i32 2, %467
  %469 = add nsw i32 4, %468
  %470 = load i32, i32* %12, align 4
  %471 = sub nsw i32 %470, %469
  store i32 %471, i32* %12, align 4
  br label %472

; <label>:472:                                    ; preds = %462, %456
  %473 = load i32, i32* %7, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %478, label %475

; <label>:475:                                    ; preds = %472
  %476 = load i32, i32* %12, align 4
  %477 = sub nsw i32 %476, 6
  store i32 %477, i32* %12, align 4
  br label %478

; <label>:478:                                    ; preds = %475, %472
  br label %479

; <label>:479:                                    ; preds = %478, %433, %425, %418
  %480 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %481 = load i32, i32* %3, align 4
  %482 = sub nsw i32 %481, 1
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [11 x i32], [11 x i32]* %480, i64 0, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %490, label %487

; <label>:487:                                    ; preds = %479
  %488 = load i32, i32* %12, align 4
  %489 = add nsw i32 %488, 20
  store i32 %489, i32* %12, align 4
  br label %490

; <label>:490:                                    ; preds = %487, %479
  br label %659

; <label>:491:                                    ; preds = %149
  %492 = load i32, i32* %9, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* %12, align 4
  %497 = add nsw i32 %496, %495
  store i32 %497, i32* %12, align 4
  %498 = load i32, i32* %9, align 4
  %499 = call i32 @s_rook_mobility(i32 %498)
  %500 = load i32, i32* %12, align 4
  %501 = add nsw i32 %500, %499
  store i32 %501, i32* %12, align 4
  %502 = load i32, i32* %20, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %20, align 4
  br label %659

; <label>:504:                                    ; preds = %149
  %505 = load i32, i32* %9, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* %12, align 4
  %510 = sub nsw i32 %509, %508
  store i32 %510, i32* %12, align 4
  %511 = load i32, i32* %9, align 4
  %512 = call i32 @s_rook_mobility(i32 %511)
  %513 = load i32, i32* %12, align 4
  %514 = sub nsw i32 %513, %512
  store i32 %514, i32* %12, align 4
  %515 = load i32, i32* %21, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %21, align 4
  br label %659

; <label>:517:                                    ; preds = %149
  %518 = load i32, i32* %9, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* %12, align 4
  %523 = add nsw i32 %522, %521
  store i32 %523, i32* %12, align 4
  %524 = load i32, i32* %9, align 4
  %525 = call i32 @s_bishop_mobility(i32 %524)
  %526 = load i32, i32* %12, align 4
  %527 = add nsw i32 %526, %525
  store i32 %527, i32* %12, align 4
  %528 = load i32, i32* %14, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %539

; <label>:530:                                    ; preds = %517
  %531 = load i32, i32* %9, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [144 x i32], [144 x i32]* @sqcolor, i64 0, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* %16, align 4
  %536 = icmp ne i32 %534, %535
  br i1 %536, label %537, label %538

; <label>:537:                                    ; preds = %530
  store i32 99, i32* %14, align 4
  br label %538

; <label>:538:                                    ; preds = %537, %530
  br label %539

; <label>:539:                                    ; preds = %538, %517
  %540 = load i32, i32* %14, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %14, align 4
  %542 = load i32, i32* %9, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [144 x i32], [144 x i32]* @sqcolor, i64 0, i64 %543
  %545 = load i32, i32* %544, align 4
  store i32 %545, i32* %16, align 4
  br label %659

; <label>:546:                                    ; preds = %149
  %547 = load i32, i32* %9, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = load i32, i32* %12, align 4
  %552 = sub nsw i32 %551, %550
  store i32 %552, i32* %12, align 4
  %553 = load i32, i32* %9, align 4
  %554 = call i32 @s_bishop_mobility(i32 %553)
  %555 = load i32, i32* %12, align 4
  %556 = sub nsw i32 %555, %554
  store i32 %556, i32* %12, align 4
  %557 = load i32, i32* %15, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %568

; <label>:559:                                    ; preds = %546
  %560 = load i32, i32* %9, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [144 x i32], [144 x i32]* @sqcolor, i64 0, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* %17, align 4
  %565 = icmp ne i32 %563, %564
  br i1 %565, label %566, label %567

; <label>:566:                                    ; preds = %559
  store i32 99, i32* %15, align 4
  br label %567

; <label>:567:                                    ; preds = %566, %559
  br label %568

; <label>:568:                                    ; preds = %567, %546
  %569 = load i32, i32* %15, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %15, align 4
  %571 = load i32, i32* %9, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [144 x i32], [144 x i32]* @sqcolor, i64 0, i64 %572
  %574 = load i32, i32* %573, align 4
  store i32 %574, i32* %17, align 4
  br label %659

; <label>:575:                                    ; preds = %149
  %576 = load i32, i32* %9, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = load i32, i32* %12, align 4
  %581 = add nsw i32 %580, %579
  store i32 %581, i32* %12, align 4
  %582 = load i32, i32* %9, align 4
  %583 = call i32 @s_knight_mobility(i32 %582)
  %584 = load i32, i32* %12, align 4
  %585 = add nsw i32 %584, %583
  store i32 %585, i32* %12, align 4
  %586 = load i32, i32* %22, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %22, align 4
  br label %659

; <label>:588:                                    ; preds = %149
  %589 = load i32, i32* %9, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = load i32, i32* %12, align 4
  %594 = sub nsw i32 %593, %592
  store i32 %594, i32* %12, align 4
  %595 = load i32, i32* %9, align 4
  %596 = call i32 @s_knight_mobility(i32 %595)
  %597 = load i32, i32* %12, align 4
  %598 = sub nsw i32 %597, %596
  store i32 %598, i32* %12, align 4
  %599 = load i32, i32* %23, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %23, align 4
  br label %659

; <label>:601:                                    ; preds = %149
  %602 = load i32, i32* %9, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = load i32, i32* %12, align 4
  %607 = add nsw i32 %606, %605
  store i32 %607, i32* %12, align 4
  %608 = load i32, i32* %9, align 4
  %609 = call i32 @s_rook_mobility(i32 %608)
  %610 = load i32, i32* %12, align 4
  %611 = add nsw i32 %610, %609
  store i32 %611, i32* %12, align 4
  %612 = load i32, i32* %9, align 4
  %613 = call i32 @s_bishop_mobility(i32 %612)
  %614 = load i32, i32* %12, align 4
  %615 = add nsw i32 %614, %613
  store i32 %615, i32* %12, align 4
  br label %659

; <label>:616:                                    ; preds = %149
  %617 = load i32, i32* %9, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = load i32, i32* %12, align 4
  %622 = sub nsw i32 %621, %620
  store i32 %622, i32* %12, align 4
  %623 = load i32, i32* %9, align 4
  %624 = call i32 @s_rook_mobility(i32 %623)
  %625 = load i32, i32* %12, align 4
  %626 = sub nsw i32 %625, %624
  store i32 %626, i32* %12, align 4
  %627 = load i32, i32* %9, align 4
  %628 = call i32 @s_bishop_mobility(i32 %627)
  %629 = load i32, i32* %12, align 4
  %630 = sub nsw i32 %629, %628
  store i32 %630, i32* %12, align 4
  br label %659

; <label>:631:                                    ; preds = %149
  %632 = load i32, i32* %9, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = ashr i32 %635, 1
  %637 = load i32, i32* %12, align 4
  %638 = add nsw i32 %637, %636
  store i32 %638, i32* %12, align 4
  %639 = load i32, i32* %9, align 4
  %640 = call i32 @s_king_mobility(i32 %639)
  %641 = load i32, i32* %12, align 4
  %642 = add nsw i32 %641, %640
  store i32 %642, i32* %12, align 4
  %643 = load i32, i32* %18, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %18, align 4
  br label %659

; <label>:645:                                    ; preds = %149
  %646 = load i32, i32* %9, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i64 0, i64 %647
  %649 = load i32, i32* %648, align 4
  %650 = ashr i32 %649, 1
  %651 = load i32, i32* %12, align 4
  %652 = sub nsw i32 %651, %650
  store i32 %652, i32* %12, align 4
  %653 = load i32, i32* %9, align 4
  %654 = call i32 @s_king_mobility(i32 %653)
  %655 = load i32, i32* %12, align 4
  %656 = sub nsw i32 %655, %654
  store i32 %656, i32* %12, align 4
  %657 = load i32, i32* %19, align 4
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %19, align 4
  br label %659

; <label>:659:                                    ; preds = %149, %645, %631, %616, %601, %588, %575, %568, %539, %504, %491, %490, %326
  br label %660

; <label>:660:                                    ; preds = %659, %145
  %661 = load i32, i32* %11, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %11, align 4
  br label %134

; <label>:663:                                    ; preds = %134
  %664 = load i32, i32* %14, align 4
  %665 = icmp slt i32 %664, 99
  br i1 %665, label %666, label %686

; <label>:666:                                    ; preds = %663
  %667 = load i32, i32* %15, align 4
  %668 = icmp slt i32 %667, 99
  br i1 %668, label %669, label %686

; <label>:669:                                    ; preds = %666
  %670 = load i32, i32* %16, align 4
  %671 = load i32, i32* %17, align 4
  %672 = icmp ne i32 %670, %671
  br i1 %672, label %673, label %686

; <label>:673:                                    ; preds = %669
  %674 = load i32, i32* @piece_count, align 4
  %675 = icmp slt i32 %674, 32
  br i1 %675, label %676, label %686

; <label>:676:                                    ; preds = %673
  %677 = load i32, i32* %12, align 4
  %678 = sitofp i32 %677 to float
  %679 = load i32, i32* @piece_count, align 4
  %680 = sitofp i32 %679 to float
  %681 = fpext float %680 to double
  %682 = fdiv double %681, 3.200000e+01
  %683 = fptrunc double %682 to float
  %684 = fmul float %678, %683
  %685 = fptosi float %684 to i32
  store i32 %685, i32* %12, align 4
  br label %686

; <label>:686:                                    ; preds = %676, %673, %669, %666, %663
  %687 = load i32, i32* %12, align 4
  call void @storeECache(i32 %687)
  %688 = load i32, i32* @white_to_move, align 4
  %689 = icmp eq i32 %688, 1
  br i1 %689, label %690, label %692

; <label>:690:                                    ; preds = %686
  %691 = load i32, i32* %12, align 4
  store i32 %691, i32* %1, align 4
  br label %695

; <label>:692:                                    ; preds = %686
  %693 = load i32, i32* %12, align 4
  %694 = sub nsw i32 0, %693
  store i32 %694, i32* %1, align 4
  br label %695

; <label>:695:                                    ; preds = %692, %690, %33, %31
  %696 = load i32, i32* %1, align 4
  ret i32 %696
}

declare void @checkECache(i32*, i32*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_pawn_mobility(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %20

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 12
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 13
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %16, %9
  br label %31

; <label>:20:                                     ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 12
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 13
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %20
  br label %31

; <label>:31:                                     ; preds = %30, %19
  %32 = load i32, i32* %3, align 4
  %33 = shl i32 %32, 3
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @black_saccers(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 24
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %25, label %11

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 22
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %25, label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 26
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %18, %11, %1
  store i32 0, i32* %2, align 4
  br label %110

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %47

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 25
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %46, label %39

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 23
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %39, %32
  store i32 1, i32* %4, align 4
  br label %69

; <label>:47:                                     ; preds = %39, %26
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %68

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 35
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %67, label %60

; <label>:60:                                     ; preds = %53
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 37
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %60, %53
  store i32 1, i32* %4, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %60, %47
  br label %69

; <label>:69:                                     ; preds = %68, %46
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 11
  %75 = call i32 @is_attacked(i32 %74, i32 0)
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  store i32 %78, i32* %4, align 4
  br label %79

; <label>:79:                                     ; preds = %72, %69
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 13
  %85 = call i32 @is_attacked(i32 %84, i32 0)
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 2, i32 0
  store i32 %88, i32* %4, align 4
  br label %89

; <label>:89:                                     ; preds = %82, %79
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

; <label>:92:                                     ; preds = %89
  store i32 0, i32* %2, align 4
  br label %110

; <label>:93:                                     ; preds = %89
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %103

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 11
  %99 = call i32 @calc_attackers(i32 %98, i32 0)
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %96
  store i32 0, i32* %2, align 4
  br label %110

; <label>:102:                                    ; preds = %96
  store i32 30, i32* %2, align 4
  br label %110

; <label>:103:                                    ; preds = %93
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 13
  %106 = call i32 @calc_attackers(i32 %105, i32 0)
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %109

; <label>:108:                                    ; preds = %103
  store i32 0, i32* %2, align 4
  br label %110

; <label>:109:                                    ; preds = %103
  store i32 30, i32* %2, align 4
  br label %110

; <label>:110:                                    ; preds = %109, %108, %102, %101, %92, %25
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @white_saccers(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sub nsw i32 %5, 24
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %25, label %11

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 22
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %25, label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 26
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %18, %11, %1
  store i32 0, i32* %2, align 4
  br label %110

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %47

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 25
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %46, label %39

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %40, 23
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %39, %32
  store i32 1, i32* %4, align 4
  br label %69

; <label>:47:                                     ; preds = %39, %26
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 5
  br i1 %52, label %53, label %68

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = sub nsw i32 %54, 35
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %67, label %60

; <label>:60:                                     ; preds = %53
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 %61, 37
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %60, %53
  store i32 1, i32* %4, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %60, %47
  br label %69

; <label>:69:                                     ; preds = %68, %46
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = sub nsw i32 %73, 11
  %75 = call i32 @is_attacked(i32 %74, i32 1)
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  store i32 %78, i32* %4, align 4
  br label %79

; <label>:79:                                     ; preds = %72, %69
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = sub nsw i32 %83, 13
  %85 = call i32 @is_attacked(i32 %84, i32 1)
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 2, i32 0
  store i32 %88, i32* %4, align 4
  br label %89

; <label>:89:                                     ; preds = %82, %79
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

; <label>:92:                                     ; preds = %89
  store i32 0, i32* %2, align 4
  br label %110

; <label>:93:                                     ; preds = %89
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %103

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = sub nsw i32 %97, 11
  %99 = call i32 @calc_attackers(i32 %98, i32 1)
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %96
  store i32 0, i32* %2, align 4
  br label %110

; <label>:102:                                    ; preds = %96
  store i32 30, i32* %2, align 4
  br label %110

; <label>:103:                                    ; preds = %93
  %104 = load i32, i32* %3, align 4
  %105 = sub nsw i32 %104, 13
  %106 = call i32 @calc_attackers(i32 %105, i32 1)
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %109

; <label>:108:                                    ; preds = %103
  store i32 0, i32* %2, align 4
  br label %110

; <label>:109:                                    ; preds = %103
  store i32 30, i32* %2, align 4
  br label %110

; <label>:110:                                    ; preds = %109, %108, %102, %101, %92, %25
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_rook_mobility(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sub nsw i32 %5, 12
  store i32 %6, i32* %3, align 4
  br label %7

; <label>:7:                                      ; preds = %16, %1
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %16

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 12
  store i32 %18, i32* %3, align 4
  br label %7

; <label>:19:                                     ; preds = %7
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %22

; <label>:22:                                     ; preds = %31, %19
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %22

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %37

; <label>:37:                                     ; preds = %46, %34
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 13
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %46

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %37

; <label>:49:                                     ; preds = %37
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 12
  store i32 %51, i32* %3, align 4
  br label %52

; <label>:52:                                     ; preds = %61, %49
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %58, label %64

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 12
  store i32 %63, i32* %3, align 4
  br label %52

; <label>:64:                                     ; preds = %52
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 %65, 2
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_bishop_mobility(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sub nsw i32 %5, 13
  store i32 %6, i32* %3, align 4
  br label %7

; <label>:7:                                      ; preds = %16, %1
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %16

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 13
  store i32 %18, i32* %3, align 4
  br label %7

; <label>:19:                                     ; preds = %7
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 %20, 11
  store i32 %21, i32* %3, align 4
  br label %22

; <label>:22:                                     ; preds = %31, %19
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 11
  store i32 %33, i32* %3, align 4
  br label %22

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 11
  store i32 %36, i32* %3, align 4
  br label %37

; <label>:37:                                     ; preds = %46, %34
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 13
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %46

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 11
  store i32 %48, i32* %3, align 4
  br label %37

; <label>:49:                                     ; preds = %37
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 13
  store i32 %51, i32* %3, align 4
  br label %52

; <label>:52:                                     ; preds = %61, %49
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %58, label %64

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 13
  store i32 %63, i32* %3, align 4
  br label %52

; <label>:64:                                     ; preds = %52
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 %65, 2
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_knight_mobility(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %26

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* @knight_o, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %9, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 13
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %22

; <label>:22:                                     ; preds = %19, %8
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

; <label>:26:                                     ; preds = %5
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 2
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_king_mobility(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %26

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* @king_o, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %9, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 13
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %22

; <label>:22:                                     ; preds = %19, %8
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

; <label>:26:                                     ; preds = %5
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 2
  ret i32 %28
}

declare void @storeECache(i32) #1

declare i32 @is_attacked(i32, i32) #1

declare i32 @calc_attackers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
