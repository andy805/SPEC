; ModuleID = 'epd.c'
source_filename = "epd.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@setup_epd_line.rankoffsets = internal global [8 x i32] [i32 110, i32 98, i32 86, i32 74, i32 62, i32 50, i32 38, i32 26], align 16
@board = external global [144 x i32], align 16
@white_castled = external global i32, align 4
@black_castled = external global i32, align 4
@book_ply = external global i32, align 4
@bking_loc = external global i32, align 4
@wking_loc = external global i32, align 4
@white_to_move = external global i32, align 4
@moved = external global [144 x i32], align 16
@ep_square = external global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"bm\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"No best-move or avoid-move found!\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0AName of EPD testsuite: \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"\0ATime per move (s): \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@root_to_move = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@forcedwin = external global i32, align 4
@fixed_time = external global i32, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"\0ANodes: %i (%0.2f%% qnodes)\0A\00", align 1
@nodes = external global i32, align 4
@qnodes = external global i32, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\0A\00", align 1
@ECacheProbes = external global i32, align 4
@ECacheHits = external global i32, align 4
@.str.9 = private unnamed_addr constant [60 x i8] c"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\0A\00", align 1
@TTStores = external global i32, align 4
@TTProbes = external global i32, align 4
@TTHits = external global i32, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\0A\00", align 1
@NTries = external global i32, align 4
@NCuts = external global i32, align 4
@TExt = external global i32, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"Check extensions: %u  Razor drops : %u  Razor Material : %u\0A\00", align 1
@ext_check = external global i32, align 4
@razor_drop = external global i32, align 4
@razor_material = external global i32, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"Move ordering : %f%%\0A\00", align 1
@FHF = external global i32, align 4
@FH = external global i32, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"Material score: %d  Eval : %d  MaxPosDiff: %d\0A\00", align 1
@Material = external global i32, align 4
@maxposdiff = external global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"Solution found.\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Solution not found.\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Solved: %d/%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"EPD: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Searching to %d ply\0A\00", align 1
@maxdepth = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define void @setup_epd_line(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 97, i32* %9, align 4
  store i32 49, i32* %10, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8 0, i64 576, i32 16, i1 false)
  store i32 0, i32* @white_castled, align 4
  store i32 0, i32* @black_castled, align 4
  store i32 50, i32* @book_ply, align 4
  %15 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @setup_epd_line.rankoffsets, i64 0, i64 0), align 16
  store i32 %15, i32* %5, align 4
  br label %16

; <label>:16:                                     ; preds = %24, %1
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %16

; <label>:27:                                     ; preds = %16
  br label %28

; <label>:28:                                     ; preds = %362, %27
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %36, label %44

; <label>:36:                                     ; preds = %28
  %37 = load i8*, i8** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br label %44

; <label>:44:                                     ; preds = %36, %28
  %45 = phi i1 [ false, %28 ], [ %43, %36 ]
  br i1 %45, label %46, label %365

; <label>:46:                                     ; preds = %44
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %92

; <label>:49:                                     ; preds = %46
  %50 = call i16** @__ctype_b_loc() #6
  %51 = load i16*, i16** %50, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %51, i64 %58
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 %61, 2048
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %92

; <label>:64:                                     ; preds = %49
  store i32 0, i32* %7, align 4
  br label %65

; <label>:65:                                     ; preds = %81, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = call i32 @atoi(i8* %70) #7
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %84

; <label>:73:                                     ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %79
  store i32 13, i32* %80, align 4
  br label %81

; <label>:81:                                     ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %65

; <label>:84:                                     ; preds = %65
  %85 = load i8*, i8** %2, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = call i32 @atoi(i8* %88) #7
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %362

; <label>:92:                                     ; preds = %49, %46
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %110

; <label>:95:                                     ; preds = %92
  %96 = load i8*, i8** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 47
  br i1 %102, label %103, label %110

; <label>:103:                                    ; preds = %95
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* @setup_epd_line.rankoffsets, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %361

; <label>:110:                                    ; preds = %95, %92
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %212

; <label>:113:                                    ; preds = %110
  %114 = call i16** @__ctype_b_loc() #6
  %115 = load i16*, i16** %114, align 8
  %116 = load i8*, i8** %2, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16, i16* %115, i64 %122
  %124 = load i16, i16* %123, align 2
  %125 = zext i16 %124 to i32
  %126 = and i32 %125, 1024
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %212

; <label>:128:                                    ; preds = %113
  %129 = load i8*, i8** %2, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  switch i32 %134, label %209 [
    i32 112, label %135
    i32 80, label %141
    i32 110, label %147
    i32 78, label %153
    i32 98, label %159
    i32 66, label %165
    i32 114, label %171
    i32 82, label %177
    i32 113, label %183
    i32 81, label %189
    i32 107, label %195
    i32 75, label %202
  ]

; <label>:135:                                    ; preds = %128
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %139
  store i32 2, i32* %140, align 4
  br label %209

; <label>:141:                                    ; preds = %128
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %145
  store i32 1, i32* %146, align 4
  br label %209

; <label>:147:                                    ; preds = %128
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %151
  store i32 4, i32* %152, align 4
  br label %209

; <label>:153:                                    ; preds = %128
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %157
  store i32 3, i32* %158, align 4
  br label %209

; <label>:159:                                    ; preds = %128
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %163
  store i32 12, i32* %164, align 4
  br label %209

; <label>:165:                                    ; preds = %128
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %169
  store i32 11, i32* %170, align 4
  br label %209

; <label>:171:                                    ; preds = %128
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %175
  store i32 8, i32* %176, align 4
  br label %209

; <label>:177:                                    ; preds = %128
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %181
  store i32 7, i32* %182, align 4
  br label %209

; <label>:183:                                    ; preds = %128
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %187
  store i32 10, i32* %188, align 4
  br label %209

; <label>:189:                                    ; preds = %128
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %193
  store i32 9, i32* %194, align 4
  br label %209

; <label>:195:                                    ; preds = %128
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %196, %197
  store i32 %198, i32* @bking_loc, align 4
  %199 = load i32, i32* @bking_loc, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %200
  store i32 6, i32* %201, align 4
  br label %209

; <label>:202:                                    ; preds = %128
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %203, %204
  store i32 %205, i32* @wking_loc, align 4
  %206 = load i32, i32* @wking_loc, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %207
  store i32 5, i32* %208, align 4
  br label %209

; <label>:209:                                    ; preds = %128, %202, %195, %189, %183, %177, %171, %165, %159, %153, %147, %141, %135
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %360

; <label>:212:                                    ; preds = %113, %110
  %213 = load i8*, i8** %2, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 32
  br i1 %219, label %220, label %359

; <label>:220:                                    ; preds = %212
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %248

; <label>:225:                                    ; preds = %220
  br label %226

; <label>:226:                                    ; preds = %234, %225
  %227 = load i8*, i8** %2, align 8
  %228 = load i32, i32* %3, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 32
  br i1 %233, label %234, label %237

; <label>:234:                                    ; preds = %226
  %235 = load i32, i32* %3, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %3, align 4
  br label %226

; <label>:237:                                    ; preds = %226
  %238 = load i8*, i8** %2, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 119
  br i1 %244, label %245, label %246

; <label>:245:                                    ; preds = %237
  store i32 1, i32* @white_to_move, align 4
  br label %247

; <label>:246:                                    ; preds = %237
  store i32 0, i32* @white_to_move, align 4
  br label %247

; <label>:247:                                    ; preds = %246, %245
  br label %358

; <label>:248:                                    ; preds = %220
  %249 = load i32, i32* %8, align 4
  %250 = icmp eq i32 %249, 2
  br i1 %250, label %251, label %290

; <label>:251:                                    ; preds = %248
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 30), align 8
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 33), align 4
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 26), align 8
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 117), align 4
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 114), align 8
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 110), align 8
  br label %252

; <label>:252:                                    ; preds = %260, %251
  %253 = load i8*, i8** %2, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 32
  br i1 %259, label %260, label %263

; <label>:260:                                    ; preds = %252
  %261 = load i32, i32* %3, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %3, align 4
  br label %252

; <label>:263:                                    ; preds = %252
  br label %264

; <label>:264:                                    ; preds = %284, %263
  %265 = load i8*, i8** %2, align 8
  %266 = load i32, i32* %3, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 32
  br i1 %271, label %272, label %287

; <label>:272:                                    ; preds = %264
  %273 = load i8*, i8** %2, align 8
  %274 = load i32, i32* %3, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  switch i32 %278, label %284 [
    i32 45, label %279
    i32 75, label %280
    i32 81, label %281
    i32 107, label %282
    i32 113, label %283
  ]

; <label>:279:                                    ; preds = %272
  br label %284

; <label>:280:                                    ; preds = %272
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 33), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 30), align 8
  br label %284

; <label>:281:                                    ; preds = %272
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 26), align 8
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 30), align 8
  br label %284

; <label>:282:                                    ; preds = %272
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 117), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 114), align 8
  br label %284

; <label>:283:                                    ; preds = %272
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 110), align 8
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 114), align 8
  br label %284

; <label>:284:                                    ; preds = %272, %283, %282, %281, %280, %279
  %285 = load i32, i32* %3, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %3, align 4
  br label %264

; <label>:287:                                    ; preds = %264
  %288 = load i32, i32* %3, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %3, align 4
  br label %357

; <label>:290:                                    ; preds = %248
  %291 = load i32, i32* %8, align 4
  %292 = icmp eq i32 %291, 3
  br i1 %292, label %293, label %341

; <label>:293:                                    ; preds = %290
  br label %294

; <label>:294:                                    ; preds = %302, %293
  %295 = load i8*, i8** %2, align 8
  %296 = load i32, i32* %3, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 32
  br i1 %301, label %302, label %305

; <label>:302:                                    ; preds = %294
  %303 = load i32, i32* %3, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %3, align 4
  br label %294

; <label>:305:                                    ; preds = %294
  %306 = load i8*, i8** %2, align 8
  %307 = load i32, i32* %3, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 45
  br i1 %312, label %313, label %314

; <label>:313:                                    ; preds = %305
  store i32 0, i32* @ep_square, align 4
  br label %340

; <label>:314:                                    ; preds = %305
  %315 = load i8*, i8** %2, align 8
  %316 = load i32, i32* %3, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %3, align 4
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i8, i8* %315, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  store i32 %321, i32* %11, align 4
  %322 = load i8*, i8** %2, align 8
  %323 = load i32, i32* %3, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %3, align 4
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  store i32 %328, i32* %12, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* %9, align 4
  %331 = sub nsw i32 %329, %330
  store i32 %331, i32* %13, align 4
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %10, align 4
  %334 = sub nsw i32 %332, %333
  store i32 %334, i32* %14, align 4
  %335 = load i32, i32* %14, align 4
  %336 = mul nsw i32 %335, 12
  %337 = add nsw i32 %336, 26
  %338 = load i32, i32* %13, align 4
  %339 = add nsw i32 %337, %338
  store i32 %339, i32* @ep_square, align 4
  br label %340

; <label>:340:                                    ; preds = %314, %313
  br label %356

; <label>:341:                                    ; preds = %290
  %342 = load i32, i32* %8, align 4
  %343 = icmp eq i32 %342, 4
  br i1 %343, label %344, label %345

; <label>:344:                                    ; preds = %341
  br label %355

; <label>:345:                                    ; preds = %341
  %346 = load i32, i32* %8, align 4
  %347 = icmp eq i32 %346, 5
  br i1 %347, label %348, label %349

; <label>:348:                                    ; preds = %345
  br label %354

; <label>:349:                                    ; preds = %345
  %350 = load i32, i32* %8, align 4
  %351 = icmp eq i32 %350, 6
  br i1 %351, label %352, label %353

; <label>:352:                                    ; preds = %349
  br label %353

; <label>:353:                                    ; preds = %352, %349
  br label %354

; <label>:354:                                    ; preds = %353, %348
  br label %355

; <label>:355:                                    ; preds = %354, %344
  br label %356

; <label>:356:                                    ; preds = %355, %340
  br label %357

; <label>:357:                                    ; preds = %356, %287
  br label %358

; <label>:358:                                    ; preds = %357, %247
  br label %359

; <label>:359:                                    ; preds = %358, %212
  br label %360

; <label>:360:                                    ; preds = %359, %209
  br label %361

; <label>:361:                                    ; preds = %360, %103
  br label %362

; <label>:362:                                    ; preds = %361, %84
  %363 = load i32, i32* %3, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %3, align 4
  br label %28

; <label>:365:                                    ; preds = %44
  call void @reset_piece_square()
  call void @initialize_hash()
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare void @reset_piece_square() #4

declare void @initialize_hash() #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @check_solution(i8*, %struct.move_s* byval align 8) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  store i8* %0, i8** %4, align 8
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %1, i8* %6)
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @strstr(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #7
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0
  %13 = call i8* @strstr(i8* %11, i8* %12) #7
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %10
  store i32 1, i32* %3, align 4
  br label %32

; <label>:16:                                     ; preds = %10
  store i32 0, i32* %3, align 4
  br label %32

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strstr(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #7
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0
  %24 = call i8* @strstr(i8* %22, i8* %23) #7
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  store i32 0, i32* %3, align 4
  br label %32

; <label>:27:                                     ; preds = %21
  store i32 1, i32* %3, align 4
  br label %32

; <label>:28:                                     ; preds = %17
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %30

; <label>:30:                                     ; preds = %28
  br label %31

; <label>:31:                                     ; preds = %30
  store i32 0, i32* %3, align 4
  br label %32

; <label>:32:                                     ; preds = %31, %27, %26, %16, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @run_epd_testsuite() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca [2000 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [2000 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.move_s, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.move_s, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %12, i32 256, %struct._IO_FILE* %13)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  %15 = getelementptr inbounds [2000 x i8], [2000 x i8]* %2, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %15, i32 256, %struct._IO_FILE* %16)
  %17 = getelementptr inbounds [2000 x i8], [2000 x i8]* %2, i32 0, i32 0
  %18 = call i64 @atol(i8* %17) #7
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 100
  store i32 %22, i32* %6, align 4
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  %24 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %1, align 8
  br label %25

; <label>:25:                                     ; preds = %128, %0
  %26 = getelementptr inbounds [2000 x i8], [2000 x i8]* %2, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %28 = call i8* @fgets(i8* %26, i32 2000, %struct._IO_FILE* %27)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %132

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = getelementptr inbounds [2000 x i8], [2000 x i8]* %2, i32 0, i32 0
  call void @setup_epd_line(i8* %33)
  %34 = load i32, i32* @white_to_move, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  store i32 %37, i32* @root_to_move, align 4
  call void @clear_tt()
  call void @initialize_hash()
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %38, i32 1)
  store i32 0, i32* @forcedwin, align 4
  %39 = call i32 @interrupt()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %30
  %42 = getelementptr inbounds [2000 x i8], [2000 x i8]* %4, i32 0, i32 0
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %42, i32 256, %struct._IO_FILE* %43)
  br label %44

; <label>:44:                                     ; preds = %41, %30
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @fixed_time, align 4
  call void @think(%struct.move_s* sret %10)
  %46 = bitcast %struct.move_s* %7 to i8*
  %47 = bitcast %struct.move_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 24, i32 4, i1 false)
  %48 = load i32, i32* @nodes, align 4
  %49 = load i32, i32* @qnodes, align 4
  %50 = sitofp i32 %49 to float
  %51 = load i32, i32* @nodes, align 4
  %52 = sitofp i32 %51 to float
  %53 = fdiv float %50, %52
  %54 = fpext float %53 to double
  %55 = fmul double %54, 1.000000e+02
  %56 = fptrunc double %55 to float
  %57 = fpext float %56 to double
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i32 %48, double %57)
  %59 = load i32, i32* @ECacheProbes, align 4
  %60 = load i32, i32* @ECacheHits, align 4
  %61 = load i32, i32* @ECacheHits, align 4
  %62 = uitofp i32 %61 to float
  %63 = load i32, i32* @ECacheProbes, align 4
  %64 = uitofp i32 %63 to float
  %65 = fadd float %64, 1.000000e+00
  %66 = fdiv float %62, %65
  %67 = fmul float %66, 1.000000e+02
  %68 = fpext float %67 to double
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %59, i32 %60, double %68)
  %70 = load i32, i32* @TTStores, align 4
  %71 = load i32, i32* @TTProbes, align 4
  %72 = load i32, i32* @TTHits, align 4
  %73 = load i32, i32* @TTHits, align 4
  %74 = uitofp i32 %73 to float
  %75 = load i32, i32* @TTProbes, align 4
  %76 = uitofp i32 %75 to float
  %77 = fadd float %76, 1.000000e+00
  %78 = fdiv float %74, %77
  %79 = fmul float %78, 1.000000e+02
  %80 = fpext float %79 to double
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i32 0, i32 0), i32 %70, i32 %71, i32 %72, double %80)
  %82 = load i32, i32* @NTries, align 4
  %83 = load i32, i32* @NCuts, align 4
  %84 = load i32, i32* @NCuts, align 4
  %85 = uitofp i32 %84 to float
  %86 = fmul float %85, 1.000000e+02
  %87 = load i32, i32* @NTries, align 4
  %88 = uitofp i32 %87 to float
  %89 = fadd float %88, 1.000000e+00
  %90 = fdiv float %86, %89
  %91 = fpext float %90 to double
  %92 = load i32, i32* @TExt, align 4
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0), i32 %82, i32 %83, double %91, i32 %92)
  %94 = load i32, i32* @ext_check, align 4
  %95 = load i32, i32* @razor_drop, align 4
  %96 = load i32, i32* @razor_material, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i32 0, i32 0), i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* @FHF, align 4
  %99 = uitofp i32 %98 to float
  %100 = fmul float %99, 1.000000e+02
  %101 = load i32, i32* @FH, align 4
  %102 = uitofp i32 %101 to float
  %103 = fdiv float %100, %102
  %104 = fadd float %103, 1.000000e+00
  %105 = fpext float %104 to double
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), double %105)
  %107 = load i32, i32* @Material, align 4
  %108 = call i32 @eval(i32 -1000000, i32 1000000)
  %109 = load i32, i32* @maxposdiff, align 4
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i32 %107, i32 %108, i32 %109)
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %112 = load i32, i32* @forcedwin, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

; <label>:114:                                    ; preds = %44
  %115 = getelementptr inbounds [2000 x i8], [2000 x i8]* %2, i32 0, i32 0
  %116 = call i32 @check_solution(i8* %115, %struct.move_s* byval align 8 %7)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

; <label>:118:                                    ; preds = %114
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  br label %124

; <label>:122:                                    ; preds = %114
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0))
  br label %124

; <label>:124:                                    ; preds = %122, %118
  br label %128

; <label>:125:                                    ; preds = %44
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %128

; <label>:128:                                    ; preds = %125, %124
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 %129, i32 %130)
  br label %25

; <label>:132:                                    ; preds = %25
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

declare void @rinput(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare void @clear_tt() #4

declare void @display_board(%struct._IO_FILE*, i32) #4

declare i32 @interrupt() #4

declare void @think(%struct.move_s* sret) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @eval(i32, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @run_autotest(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.move_s, align 4
  %9 = alloca %struct.move_s, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** %3, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  call void @exit(i32 1) #8
  unreachable

; <label>:15:                                     ; preds = %1
  %16 = call i64 @rtime()
  store i64 %16, i64* %6, align 8
  br label %17

; <label>:17:                                     ; preds = %37, %15
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %20 = call i8* @fgets(i8* %18, i32 256, %struct._IO_FILE* %19)
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %45

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0
  call void @setup_epd_line(i8* %23)
  %24 = load i32, i32* @white_to_move, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  store i32 %27, i32* @root_to_move, align 4
  call void @clear_tt()
  call void @initialize_hash()
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %29, i32 1)
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* %30)
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %34 = call i8* @fgets(i8* %32, i32 256, %struct._IO_FILE* %33)
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %22
  call void @exit(i32 1) #8
  unreachable

; <label>:37:                                     ; preds = %22
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0
  %39 = call i32 @atoi(i8* %38) #7
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* @maxdepth, align 4
  store i32 1000000, i32* @fixed_time, align 4
  call void @think(%struct.move_s* sret %9)
  %43 = bitcast %struct.move_s* %8 to i8*
  %44 = bitcast %struct.move_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 24, i32 4, i1 false)
  br label %17

; <label>:45:                                     ; preds = %17
  %46 = call i64 @rtime()
  store i64 %46, i64* %7, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %48 = call i32 @fclose(%struct._IO_FILE* %47)
  call void @exit(i32 0) #8
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i64 @rtime() #4

declare i32 @fclose(%struct._IO_FILE*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
