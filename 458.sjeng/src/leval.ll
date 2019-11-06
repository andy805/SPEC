; ModuleID = 'leval.c'
source_filename = "leval.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@white_to_move = external global i32, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@Xfile = external constant [144 x i32], align 16
@Xrank = external constant [144 x i32], align 16
@board = external global [144 x i32], align 16
@lcentral = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 30, i32 30, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 30, i32 30, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Material = external global i32, align 4
@comp_color = external global i32, align 4
@l_knight_mobility.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@l_king_mobility.king_o = internal constant [8 x i32] [i32 13, i32 12, i32 11, i32 1, i32 -1, i32 -11, i32 -12, i32 -13], align 16

; Function Attrs: noinline nounwind optnone uwtable
define i32 @losers_eval() #0 {
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
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %13, align 4
  call void @checkECache(i32* %12, i32* %13)
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %0
  %25 = load i32, i32* @white_to_move, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %1, align 4
  br label %746

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %1, align 4
  br label %746

; <label>:32:                                     ; preds = %0
  %33 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i32 0, i32 0
  %34 = bitcast [11 x i32]* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 88, i32 16, i1 false)
  store i32 0, i32* %9, align 4
  br label %35

; <label>:35:                                     ; preds = %45, %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 11
  br i1 %37, label %38, label %48

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %40
  store i32 7, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %43
  store i32 2, i32* %44, align 4
  br label %45

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %35

; <label>:48:                                     ; preds = %35
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %49

; <label>:49:                                     ; preds = %125, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @piece_count, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %128

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %53
  br label %125

; <label>:61:                                     ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %64

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %98

; <label>:79:                                     ; preds = %64
  %80 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [11 x i32], [11 x i32]* %80, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %97

; <label>:92:                                     ; preds = %79
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %95
  store i32 %93, i32* %96, align 4
  br label %97

; <label>:97:                                     ; preds = %92, %79
  br label %124

; <label>:98:                                     ; preds = %64
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %123

; <label>:104:                                    ; preds = %98
  %105 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [11 x i32], [11 x i32]* %105, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %111, %115
  br i1 %116, label %117, label %122

; <label>:117:                                    ; preds = %104
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %120
  store i32 %118, i32* %121, align 4
  br label %122

; <label>:122:                                    ; preds = %117, %104
  br label %123

; <label>:123:                                    ; preds = %122, %98
  br label %124

; <label>:124:                                    ; preds = %123, %97
  br label %125

; <label>:125:                                    ; preds = %124, %60
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %49

; <label>:128:                                    ; preds = %49
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %129

; <label>:129:                                    ; preds = %658, %128
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @piece_count, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %661

; <label>:133:                                    ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

; <label>:140:                                    ; preds = %133
  br label %658

; <label>:141:                                    ; preds = %133
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %144

; <label>:144:                                    ; preds = %141
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %657 [
    i32 1, label %149
    i32 2, label %331
    i32 7, label %513
    i32 8, label %527
    i32 11, label %541
    i32 12, label %555
    i32 3, label %569
    i32 4, label %584
    i32 9, label %599
    i32 10, label %618
    i32 5, label %637
    i32 6, label %647
  ]

; <label>:149:                                    ; preds = %144
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %20, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @l_pawn_mobility(i32 %160)
  %162 = shl i32 %161, 2
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 2
  %170 = mul nsw i32 %169, 8
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %12, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %2, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %210

; <label>:180:                                    ; preds = %149
  %181 = load i32, i32* %3, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %2, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %210

; <label>:188:                                    ; preds = %180
  %189 = load i32, i32* %12, align 4
  %190 = sub nsw i32 %189, 8
  store i32 %190, i32* %12, align 4
  store i32 1, i32* %8, align 4
  %191 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %192 = load i32, i32* %3, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [11 x i32], [11 x i32]* %191, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %209, label %198

; <label>:198:                                    ; preds = %188
  %199 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %200 = load i32, i32* %3, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [11 x i32], [11 x i32]* %199, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

; <label>:206:                                    ; preds = %198
  %207 = load i32, i32* %12, align 4
  %208 = sub nsw i32 %207, 12
  store i32 %208, i32* %12, align 4
  store i32 1, i32* %7, align 4
  br label %209

; <label>:209:                                    ; preds = %206, %198, %188
  br label %210

; <label>:210:                                    ; preds = %209, %180, %149
  %211 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %212 = load i32, i32* %3, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [11 x i32], [11 x i32]* %211, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %230, label %217

; <label>:217:                                    ; preds = %210
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

; <label>:220:                                    ; preds = %217
  %221 = load i32, i32* %12, align 4
  %222 = sub nsw i32 %221, 5
  store i32 %222, i32* %12, align 4
  br label %223

; <label>:223:                                    ; preds = %220, %217
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

; <label>:226:                                    ; preds = %223
  %227 = load i32, i32* %12, align 4
  %228 = sub nsw i32 %227, 8
  store i32 %228, i32* %12, align 4
  br label %229

; <label>:229:                                    ; preds = %226, %223
  br label %230

; <label>:230:                                    ; preds = %229, %210
  %231 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [11 x i32], [11 x i32]* %231, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp sgt i32 %235, 1
  br i1 %236, label %237, label %247

; <label>:237:                                    ; preds = %230
  %238 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [11 x i32], [11 x i32]* %238, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %242, 1
  %244 = mul nsw i32 8, %243
  %245 = load i32, i32* %12, align 4
  %246 = sub nsw i32 %245, %244
  store i32 %246, i32* %12, align 4
  br label %247

; <label>:247:                                    ; preds = %237, %230
  %248 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %249 = load i32, i32* %3, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [11 x i32], [11 x i32]* %248, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %319, label %254

; <label>:254:                                    ; preds = %247
  %255 = load i32, i32* %2, align 4
  %256 = load i32, i32* %3, align 4
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = icmp sge i32 %255, %260
  br i1 %261, label %262, label %319

; <label>:262:                                    ; preds = %254
  %263 = load i32, i32* %2, align 4
  %264 = load i32, i32* %3, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp sge i32 %263, %268
  br i1 %269, label %270, label %319

; <label>:270:                                    ; preds = %262
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %274, 2
  %276 = mul nsw i32 10, %275
  %277 = add nsw i32 25, %276
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %12, align 4
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 7
  br i1 %284, label %285, label %288

; <label>:285:                                    ; preds = %270
  %286 = load i32, i32* %12, align 4
  %287 = add nsw i32 %286, 50
  store i32 %287, i32* %12, align 4
  br label %288

; <label>:288:                                    ; preds = %285, %270
  %289 = load i32, i32* %18, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %18, align 4
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %302, label %296

; <label>:296:                                    ; preds = %288
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 8
  br i1 %301, label %302, label %312

; <label>:302:                                    ; preds = %296, %288
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = sub nsw i32 %306, 2
  %308 = mul nsw i32 2, %307
  %309 = add nsw i32 4, %308
  %310 = load i32, i32* %12, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* %12, align 4
  br label %312

; <label>:312:                                    ; preds = %302, %296
  %313 = load i32, i32* %7, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %318, label %315

; <label>:315:                                    ; preds = %312
  %316 = load i32, i32* %12, align 4
  %317 = add nsw i32 %316, 24
  store i32 %317, i32* %12, align 4
  br label %318

; <label>:318:                                    ; preds = %315, %312
  br label %319

; <label>:319:                                    ; preds = %318, %262, %254, %247
  %320 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %321 = load i32, i32* %3, align 4
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [11 x i32], [11 x i32]* %320, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %330, label %327

; <label>:327:                                    ; preds = %319
  %328 = load i32, i32* %12, align 4
  %329 = sub nsw i32 %328, 5
  store i32 %329, i32* %12, align 4
  br label %330

; <label>:330:                                    ; preds = %327, %319
  br label %657

; <label>:331:                                    ; preds = %144
  %332 = load i32, i32* %15, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %15, align 4
  %334 = load i32, i32* %21, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %21, align 4
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %12, align 4
  %341 = sub nsw i32 %340, %339
  store i32 %341, i32* %12, align 4
  %342 = load i32, i32* %9, align 4
  %343 = call i32 @l_pawn_mobility(i32 %342)
  %344 = shl i32 %343, 2
  %345 = load i32, i32* %12, align 4
  %346 = sub nsw i32 %345, %344
  store i32 %346, i32* %12, align 4
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = sub nsw i32 7, %350
  %352 = mul nsw i32 %351, 8
  %353 = load i32, i32* %12, align 4
  %354 = sub nsw i32 %353, %352
  store i32 %354, i32* %12, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %355 = load i32, i32* %3, align 4
  %356 = add nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %2, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %392

; <label>:362:                                    ; preds = %331
  %363 = load i32, i32* %3, align 4
  %364 = sub nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %2, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %392

; <label>:370:                                    ; preds = %362
  %371 = load i32, i32* %12, align 4
  %372 = add nsw i32 %371, 8
  store i32 %372, i32* %12, align 4
  store i32 1, i32* %8, align 4
  %373 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %374 = load i32, i32* %3, align 4
  %375 = add nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [11 x i32], [11 x i32]* %373, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %391, label %380

; <label>:380:                                    ; preds = %370
  %381 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %382 = load i32, i32* %3, align 4
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [11 x i32], [11 x i32]* %381, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %391, label %388

; <label>:388:                                    ; preds = %380
  %389 = load i32, i32* %12, align 4
  %390 = add nsw i32 %389, 12
  store i32 %390, i32* %12, align 4
  store i32 1, i32* %7, align 4
  br label %391

; <label>:391:                                    ; preds = %388, %380, %370
  br label %392

; <label>:392:                                    ; preds = %391, %362, %331
  %393 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %394 = load i32, i32* %3, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [11 x i32], [11 x i32]* %393, i64 0, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %412, label %399

; <label>:399:                                    ; preds = %392
  %400 = load i32, i32* %8, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

; <label>:402:                                    ; preds = %399
  %403 = load i32, i32* %12, align 4
  %404 = add nsw i32 %403, 5
  store i32 %404, i32* %12, align 4
  br label %405

; <label>:405:                                    ; preds = %402, %399
  %406 = load i32, i32* %7, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %411

; <label>:408:                                    ; preds = %405
  %409 = load i32, i32* %12, align 4
  %410 = add nsw i32 %409, 8
  store i32 %410, i32* %12, align 4
  br label %411

; <label>:411:                                    ; preds = %408, %405
  br label %412

; <label>:412:                                    ; preds = %411, %392
  %413 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %414 = load i32, i32* %3, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [11 x i32], [11 x i32]* %413, i64 0, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = icmp sgt i32 %417, 1
  br i1 %418, label %419, label %429

; <label>:419:                                    ; preds = %412
  %420 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %421 = load i32, i32* %3, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [11 x i32], [11 x i32]* %420, i64 0, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = sub nsw i32 %424, 1
  %426 = mul nsw i32 8, %425
  %427 = load i32, i32* %12, align 4
  %428 = add nsw i32 %427, %426
  store i32 %428, i32* %12, align 4
  br label %429

; <label>:429:                                    ; preds = %419, %412
  %430 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 1
  %431 = load i32, i32* %3, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [11 x i32], [11 x i32]* %430, i64 0, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %501, label %436

; <label>:436:                                    ; preds = %429
  %437 = load i32, i32* %2, align 4
  %438 = load i32, i32* %3, align 4
  %439 = sub nsw i32 %438, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = icmp sle i32 %437, %442
  br i1 %443, label %444, label %501

; <label>:444:                                    ; preds = %436
  %445 = load i32, i32* %2, align 4
  %446 = load i32, i32* %3, align 4
  %447 = add nsw i32 %446, 1
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = icmp sle i32 %445, %450
  br i1 %451, label %452, label %501

; <label>:452:                                    ; preds = %444
  %453 = load i32, i32* %9, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = sub nsw i32 7, %456
  %458 = mul nsw i32 10, %457
  %459 = add nsw i32 25, %458
  %460 = load i32, i32* %12, align 4
  %461 = sub nsw i32 %460, %459
  store i32 %461, i32* %12, align 4
  %462 = load i32, i32* %9, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = icmp eq i32 %465, 2
  br i1 %466, label %467, label %470

; <label>:467:                                    ; preds = %452
  %468 = load i32, i32* %12, align 4
  %469 = sub nsw i32 %468, 50
  store i32 %469, i32* %12, align 4
  br label %470

; <label>:470:                                    ; preds = %467, %452
  %471 = load i32, i32* %19, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %19, align 4
  %473 = load i32, i32* %9, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %484, label %478

; <label>:478:                                    ; preds = %470
  %479 = load i32, i32* %9, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = icmp eq i32 %482, 8
  br i1 %483, label %484, label %494

; <label>:484:                                    ; preds = %478, %470
  %485 = load i32, i32* %9, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = sub nsw i32 7, %488
  %490 = mul nsw i32 2, %489
  %491 = add nsw i32 4, %490
  %492 = load i32, i32* %12, align 4
  %493 = sub nsw i32 %492, %491
  store i32 %493, i32* %12, align 4
  br label %494

; <label>:494:                                    ; preds = %484, %478
  %495 = load i32, i32* %7, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %500, label %497

; <label>:497:                                    ; preds = %494
  %498 = load i32, i32* %12, align 4
  %499 = sub nsw i32 %498, 24
  store i32 %499, i32* %12, align 4
  br label %500

; <label>:500:                                    ; preds = %497, %494
  br label %501

; <label>:501:                                    ; preds = %500, %444, %436, %429
  %502 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %4, i64 0, i64 0
  %503 = load i32, i32* %3, align 4
  %504 = sub nsw i32 %503, 1
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [11 x i32], [11 x i32]* %502, i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %512, label %509

; <label>:509:                                    ; preds = %501
  %510 = load i32, i32* %12, align 4
  %511 = add nsw i32 %510, 5
  store i32 %511, i32* %12, align 4
  br label %512

; <label>:512:                                    ; preds = %509, %501
  br label %657

; <label>:513:                                    ; preds = %144
  %514 = load i32, i32* %14, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %14, align 4
  %516 = load i32, i32* %9, align 4
  %517 = call i32 @l_rook_mobility(i32 %516)
  %518 = shl i32 %517, 2
  %519 = load i32, i32* %12, align 4
  %520 = add nsw i32 %519, %518
  store i32 %520, i32* %12, align 4
  %521 = load i32, i32* %9, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* %12, align 4
  %526 = add nsw i32 %525, %524
  store i32 %526, i32* %12, align 4
  br label %657

; <label>:527:                                    ; preds = %144
  %528 = load i32, i32* %15, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %15, align 4
  %530 = load i32, i32* %9, align 4
  %531 = call i32 @l_rook_mobility(i32 %530)
  %532 = shl i32 %531, 2
  %533 = load i32, i32* %12, align 4
  %534 = sub nsw i32 %533, %532
  store i32 %534, i32* %12, align 4
  %535 = load i32, i32* %9, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* %12, align 4
  %540 = sub nsw i32 %539, %538
  store i32 %540, i32* %12, align 4
  br label %657

; <label>:541:                                    ; preds = %144
  %542 = load i32, i32* %14, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %14, align 4
  %544 = load i32, i32* %9, align 4
  %545 = call i32 @l_bishop_mobility(i32 %544)
  %546 = shl i32 %545, 2
  %547 = load i32, i32* %12, align 4
  %548 = add nsw i32 %547, %546
  store i32 %548, i32* %12, align 4
  %549 = load i32, i32* %9, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* %12, align 4
  %554 = add nsw i32 %553, %552
  store i32 %554, i32* %12, align 4
  br label %657

; <label>:555:                                    ; preds = %144
  %556 = load i32, i32* %15, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %15, align 4
  %558 = load i32, i32* %9, align 4
  %559 = call i32 @l_bishop_mobility(i32 %558)
  %560 = shl i32 %559, 2
  %561 = load i32, i32* %12, align 4
  %562 = sub nsw i32 %561, %560
  store i32 %562, i32* %12, align 4
  %563 = load i32, i32* %9, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = load i32, i32* %12, align 4
  %568 = sub nsw i32 %567, %566
  store i32 %568, i32* %12, align 4
  br label %657

; <label>:569:                                    ; preds = %144
  %570 = load i32, i32* %14, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %14, align 4
  %572 = load i32, i32* %9, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = shl i32 %575, 1
  %577 = load i32, i32* %12, align 4
  %578 = add nsw i32 %577, %576
  store i32 %578, i32* %12, align 4
  %579 = load i32, i32* %9, align 4
  %580 = call i32 @l_knight_mobility(i32 %579)
  %581 = shl i32 %580, 2
  %582 = load i32, i32* %12, align 4
  %583 = add nsw i32 %582, %581
  store i32 %583, i32* %12, align 4
  br label %657

; <label>:584:                                    ; preds = %144
  %585 = load i32, i32* %15, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %15, align 4
  %587 = load i32, i32* %9, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = shl i32 %590, 1
  %592 = load i32, i32* %12, align 4
  %593 = sub nsw i32 %592, %591
  store i32 %593, i32* %12, align 4
  %594 = load i32, i32* %9, align 4
  %595 = call i32 @l_knight_mobility(i32 %594)
  %596 = shl i32 %595, 2
  %597 = load i32, i32* %12, align 4
  %598 = sub nsw i32 %597, %596
  store i32 %598, i32* %12, align 4
  br label %657

; <label>:599:                                    ; preds = %144
  %600 = load i32, i32* %14, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %14, align 4
  %602 = load i32, i32* %9, align 4
  %603 = call i32 @l_bishop_mobility(i32 %602)
  %604 = shl i32 %603, 1
  %605 = load i32, i32* %12, align 4
  %606 = add nsw i32 %605, %604
  store i32 %606, i32* %12, align 4
  %607 = load i32, i32* %9, align 4
  %608 = call i32 @l_rook_mobility(i32 %607)
  %609 = shl i32 %608, 1
  %610 = load i32, i32* %12, align 4
  %611 = add nsw i32 %610, %609
  store i32 %611, i32* %12, align 4
  %612 = load i32, i32* %9, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %613
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* %12, align 4
  %617 = add nsw i32 %616, %615
  store i32 %617, i32* %12, align 4
  br label %657

; <label>:618:                                    ; preds = %144
  %619 = load i32, i32* %15, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %15, align 4
  %621 = load i32, i32* %9, align 4
  %622 = call i32 @l_bishop_mobility(i32 %621)
  %623 = shl i32 %622, 1
  %624 = load i32, i32* %12, align 4
  %625 = sub nsw i32 %624, %623
  store i32 %625, i32* %12, align 4
  %626 = load i32, i32* %9, align 4
  %627 = call i32 @l_rook_mobility(i32 %626)
  %628 = shl i32 %627, 1
  %629 = load i32, i32* %12, align 4
  %630 = sub nsw i32 %629, %628
  store i32 %630, i32* %12, align 4
  %631 = load i32, i32* %9, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %632
  %634 = load i32, i32* %633, align 4
  %635 = load i32, i32* %12, align 4
  %636 = sub nsw i32 %635, %634
  store i32 %636, i32* %12, align 4
  br label %657

; <label>:637:                                    ; preds = %144
  %638 = load i32, i32* %9, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %639
  %641 = load i32, i32* %640, align 4
  %642 = shl i32 %641, 1
  store i32 %642, i32* %16, align 4
  %643 = load i32, i32* %9, align 4
  %644 = call i32 @l_king_mobility(i32 %643)
  %645 = load i32, i32* %12, align 4
  %646 = add nsw i32 %645, %644
  store i32 %646, i32* %12, align 4
  br label %657

; <label>:647:                                    ; preds = %144
  %648 = load i32, i32* %9, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i64 0, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = shl i32 %651, 1
  store i32 %652, i32* %17, align 4
  %653 = load i32, i32* %9, align 4
  %654 = call i32 @l_king_mobility(i32 %653)
  %655 = load i32, i32* %12, align 4
  %656 = sub nsw i32 %655, %654
  store i32 %656, i32* %12, align 4
  br label %657

; <label>:657:                                    ; preds = %144, %647, %637, %618, %599, %584, %569, %555, %541, %527, %513, %512, %330
  br label %658

; <label>:658:                                    ; preds = %657, %140
  %659 = load i32, i32* %11, align 4
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %11, align 4
  br label %129

; <label>:661:                                    ; preds = %129
  %662 = load i32, i32* %14, align 4
  %663 = load i32, i32* %15, align 4
  %664 = add nsw i32 %662, %663
  %665 = icmp sgt i32 %664, 10
  br i1 %665, label %666, label %672

; <label>:666:                                    ; preds = %661
  %667 = load i32, i32* %16, align 4
  %668 = load i32, i32* %17, align 4
  %669 = sub nsw i32 %667, %668
  %670 = load i32, i32* %12, align 4
  %671 = sub nsw i32 %670, %669
  store i32 %671, i32* %12, align 4
  br label %672

; <label>:672:                                    ; preds = %666, %661
  %673 = load i32, i32* @Material, align 4
  %674 = call i32 @abs(i32 %673) #4
  %675 = icmp sle i32 %674, 900
  br i1 %675, label %676, label %680

; <label>:676:                                    ; preds = %672
  %677 = load i32, i32* @Material, align 4
  %678 = load i32, i32* %12, align 4
  %679 = add nsw i32 %678, %677
  store i32 %679, i32* %12, align 4
  br label %715

; <label>:680:                                    ; preds = %672
  %681 = load i32, i32* @Material, align 4
  %682 = icmp sgt i32 %681, 0
  br i1 %682, label %683, label %694

; <label>:683:                                    ; preds = %680
  %684 = load i32, i32* @comp_color, align 4
  %685 = icmp eq i32 %684, 1
  br i1 %685, label %686, label %694

; <label>:686:                                    ; preds = %683
  %687 = load i32, i32* %18, align 4
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %694, label %689

; <label>:689:                                    ; preds = %686
  %690 = load i32, i32* @Material, align 4
  %691 = sub nsw i32 1800, %690
  %692 = load i32, i32* %12, align 4
  %693 = add nsw i32 %692, %691
  store i32 %693, i32* %12, align 4
  br label %714

; <label>:694:                                    ; preds = %686, %683, %680
  %695 = load i32, i32* @Material, align 4
  %696 = icmp slt i32 %695, 0
  br i1 %696, label %697, label %709

; <label>:697:                                    ; preds = %694
  %698 = load i32, i32* @comp_color, align 4
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %709

; <label>:700:                                    ; preds = %697
  %701 = load i32, i32* %19, align 4
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %709, label %703

; <label>:703:                                    ; preds = %700
  %704 = load i32, i32* @Material, align 4
  %705 = add nsw i32 1800, %704
  %706 = sub nsw i32 0, %705
  %707 = load i32, i32* %12, align 4
  %708 = add nsw i32 %707, %706
  store i32 %708, i32* %12, align 4
  br label %713

; <label>:709:                                    ; preds = %700, %697, %694
  %710 = load i32, i32* @Material, align 4
  %711 = load i32, i32* %12, align 4
  %712 = add nsw i32 %711, %710
  store i32 %712, i32* %12, align 4
  br label %713

; <label>:713:                                    ; preds = %709, %703
  br label %714

; <label>:714:                                    ; preds = %713, %689
  br label %715

; <label>:715:                                    ; preds = %714, %676
  %716 = load i32, i32* %20, align 4
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %721, label %718

; <label>:718:                                    ; preds = %715
  %719 = load i32, i32* %12, align 4
  %720 = add nsw i32 %719, 200
  store i32 %720, i32* %12, align 4
  br label %728

; <label>:721:                                    ; preds = %715
  %722 = load i32, i32* %21, align 4
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %727, label %724

; <label>:724:                                    ; preds = %721
  %725 = load i32, i32* %12, align 4
  %726 = sub nsw i32 %725, 200
  store i32 %726, i32* %12, align 4
  br label %727

; <label>:727:                                    ; preds = %724, %721
  br label %728

; <label>:728:                                    ; preds = %727, %718
  %729 = load i32, i32* %14, align 4
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %732, label %731

; <label>:731:                                    ; preds = %728
  store i32 1000000, i32* %12, align 4
  br label %737

; <label>:732:                                    ; preds = %728
  %733 = load i32, i32* %15, align 4
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %736, label %735

; <label>:735:                                    ; preds = %732
  store i32 -1000000, i32* %12, align 4
  br label %736

; <label>:736:                                    ; preds = %735, %732
  br label %737

; <label>:737:                                    ; preds = %736, %731
  %738 = load i32, i32* %12, align 4
  call void @storeECache(i32 %738)
  %739 = load i32, i32* @white_to_move, align 4
  %740 = icmp eq i32 %739, 1
  br i1 %740, label %741, label %743

; <label>:741:                                    ; preds = %737
  %742 = load i32, i32* %12, align 4
  store i32 %742, i32* %1, align 4
  br label %746

; <label>:743:                                    ; preds = %737
  %744 = load i32, i32* %12, align 4
  %745 = sub nsw i32 0, %744
  store i32 %745, i32* %1, align 4
  br label %746

; <label>:746:                                    ; preds = %743, %741, %29, %27
  %747 = load i32, i32* %1, align 4
  ret i32 %747
}

declare void @checkECache(i32*, i32*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_pawn_mobility(i32) #0 {
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
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_rook_mobility(i32) #0 {
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
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_bishop_mobility(i32) #0 {
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
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_knight_mobility(i32) #0 {
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
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* @l_knight_mobility.knight_o, i64 0, i64 %11
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
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_king_mobility(i32) #0 {
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
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* @l_king_mobility.king_o, i64 0, i64 %11
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
  ret i32 %27
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare void @storeECache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
