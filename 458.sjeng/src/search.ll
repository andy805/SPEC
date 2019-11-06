; ModuleID = 'search.c'
source_filename = "search.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@searching_pv = external global i32, align 4
@material = external global [14 x i32], align 16
@board = external global [144 x i32], align 16
@white_to_move = external global i32, align 4
@pv = external global [300 x [300 x %struct.move_s]], align 16
@ply = external global i32, align 4
@i_depth = external global i32, align 4
@history_h = external global [144 x [144 x i32]], align 16
@killer1 = external global [300 x %struct.move_s], align 16
@killer2 = external global [300 x %struct.move_s], align 16
@killer3 = external global [300 x %struct.move_s], align 16
@nodes = external global i32, align 4
@rootnodecount = common global [512 x i32] zeroinitializer, align 16
@raw_nodes = external global i32, align 4
@numb_moves = external global i32, align 4
@pv_length = external global [300 x i32], align 16
@time_exit = external global i32, align 4
@start_time = external global i64, align 8
@time_for_move = external global i32, align 4
@failed = common global i32 0, align 4
@extendedtime = common global i32 0, align 4
@fixed_time = external global i32, align 4
@go_fast = external global i32, align 4
@Variant = external global i32, align 4
@time_left = external global i32, align 4
@.str = private unnamed_addr constant [38 x i8] c"Extended from %d to %d, time left %d\0A\00", align 1
@qnodes = external global i32, align 4
@kingcap = external global i32, align 4
@search.rc_index = internal constant [14 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 5, i32 5, i32 3, i32 3, i32 4, i32 4, i32 2, i32 2, i32 0], align 16
@checks = common global [300 x i32] zeroinitializer, align 16
@singular = common global [300 x i32] zeroinitializer, align 16
@recaps = common global [300 x i32] zeroinitializer, align 16
@ext_check = external global i32, align 4
@cfg_recap = external global i32, align 4
@path = external global [300 x %struct.move_s], align 16
@ext_recap = common global i32 0, align 4
@captures = external global i32, align 4
@ep_square = external global i32, align 4
@phase = external global i32, align 4
@fifty = external global i32, align 4
@hash = external global i32, align 4
@NTries = external global i32, align 4
@NCuts = external global i32, align 4
@TExt = external global i32, align 4
@ext_onerep = common global i32 0, align 4
@cfg_onerep = external global i32, align 4
@cfg_futprune = external global i32, align 4
@Material = external global i32, align 4
@hash_history = external global [600 x i32], align 16
@move_number = external global i32, align 4
@Xrank = external constant [144 x i32], align 16
@cfg_razordrop = external global i32, align 4
@razor_drop = common global i32 0, align 4
@cfg_cutdrop = external global i32, align 4
@drop_cuts = common global i32 0, align 4
@FULL = external global i32, align 4
@PVS = external global i32, align 4
@PVSF = external global i32, align 4
@razor_material = common global i32 0, align 4
@killer_scores = external global [300 x i32], align 16
@killer_scores2 = external global [300 x i32], align 16
@killer_scores3 = external global [300 x i32], align 16
@FHF = common global i32 0, align 4
@FH = common global i32 0, align 4
@dummy = external global %struct.move_s, align 4
@time_failure = external global i32, align 4
@cur_score = external global i32, align 4
@result = external global i32, align 4
@legals = common global i32 0, align 4
@movetotal = common global i32 0, align 4
@alllosers = external global i32, align 4
@rootlosers = external global [300 x i32], align 16
@moveleft = common global i32 0, align 4
@searching_move = common global [20 x i8] zeroinitializer, align 16
@post = external global i32, align 4
@xb_mode = external global i32, align 4
@bestmovenum = common global i32 0, align 4
@is_pondering = external global i32, align 4
@userealholdings = external global i32, align 4
@ECacheProbes = external global i32, align 4
@ECacheHits = external global i32, align 4
@TTProbes = external global i32, align 4
@TTHits = external global i32, align 4
@TTStores = external global i32, align 4
@forcedwin = external global i32, align 4
@maxposdiff = external global i32, align 4
@true_i_depth = common global i8 0, align 1
@is_analyzing = external global i32, align 4
@inc = external global i32, align 4
@time_cushion = external global i32, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Opening phase.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Middlegame phase.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Endgame phase.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Time for move : %d\0A\00", align 1
@piece_count = external global i32, align 4
@pn_time = external global i32, align 4
@pn_move = external global %struct.move_s, align 4
@maxdepth = external global i32, align 4
@postpv = common global [256 x i8] zeroinitializer, align 16
@s_threat = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"tellics whisper %d restart(s), ended up with %s\0A\00", align 1
@moves_to_tc = external global i32, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"tellics kibitz Mate in %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"tellics ptell Mate in %d, give him no more pieces.\0A\00", align 1
@tradefreely = common global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"tellics ptell You can trade freely.\0A\00", align 1
@must_sit = external global i32, align 4
@realholdings = external global [255 x i8], align 16
@.str.9 = private unnamed_addr constant [25 x i8] c"tellics ptell ---trades\0A\00", align 1
@partnerdead = external global i32, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"tellics kibitz Both players dead...resigning...\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"tellics resign\0A\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"tellics ptell I am forcedly mated (dead). Tell me 'go' to start moving into it.\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"tellics ptell I'll have to sit...(lose piece that mates you)\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ugly_ep_hack = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define void @order_moves(%struct.move_s*, i32*, i32*, i32, i32) #0 {
  %6 = alloca %struct.move_s*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.move_s* %0, %struct.move_s** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @searching_pv, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %531

; <label>:19:                                     ; preds = %5
  store i32 0, i32* @searching_pv, align 4
  store i32 0, i32* %13, align 4
  br label %20

; <label>:20:                                     ; preds = %527, %19
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %530

; <label>:24:                                     ; preds = %20
  %25 = load %struct.move_s*, %struct.move_s** %6, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.move_s, %struct.move_s* %25, i64 %27
  %29 = getelementptr inbounds %struct.move_s, %struct.move_s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.move_s*, %struct.move_s** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.move_s, %struct.move_s* %31, i64 %33
  %35 = getelementptr inbounds %struct.move_s, %struct.move_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.move_s*, %struct.move_s** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.move_s, %struct.move_s* %37, i64 %39
  %41 = getelementptr inbounds %struct.move_s, %struct.move_s* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.move_s*, %struct.move_s** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.move_s, %struct.move_s* %43, i64 %45
  %47 = getelementptr inbounds %struct.move_s, %struct.move_s* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 13
  br i1 %50, label %51, label %127

; <label>:51:                                     ; preds = %24
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @abs(i32 %55) #4
  %57 = add nsw i32 %56, 15
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @abs(i32 %64) #4
  %66 = icmp sge i32 %57, %65
  br i1 %66, label %67, label %97

; <label>:67:                                     ; preds = %51
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @abs(i32 %71) #4
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @abs(i32 %79) #4
  %81 = ashr i32 %80, 4
  %82 = sub nsw i32 %72, %81
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 50000000, %91
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %126

; <label>:97:                                     ; preds = %51
  %98 = load i32, i32* @white_to_move, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 0, i32 1
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @see(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp sge i32 %105, -50
  br i1 %106, label %107, label %114

; <label>:107:                                    ; preds = %97
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 50000000, %108
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %120

; <label>:114:                                    ; preds = %97
  %115 = load i32, i32* %16, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  br label %120

; <label>:120:                                    ; preds = %114, %107
  %121 = load i32, i32* %16, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

; <label>:126:                                    ; preds = %120, %67
  br label %132

; <label>:127:                                    ; preds = %24
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 0, i32* %131, align 4
  br label %132

; <label>:132:                                    ; preds = %127, %126
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @ply, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1), i64 0, i64 %135
  %137 = getelementptr inbounds %struct.move_s, %struct.move_s* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %133, %138
  br i1 %139, label %140, label %214

; <label>:140:                                    ; preds = %132
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @ply, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1), i64 0, i64 %143
  %145 = getelementptr inbounds %struct.move_s, %struct.move_s* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %141, %146
  br i1 %147, label %148, label %214

; <label>:148:                                    ; preds = %140
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @ply, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1), i64 0, i64 %151
  %153 = getelementptr inbounds %struct.move_s, %struct.move_s* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %149, %154
  br i1 %155, label %156, label %214

; <label>:156:                                    ; preds = %148
  store i32 1, i32* @searching_pv, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 100000000, i32* %160, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 13
  br i1 %162, label %163, label %213

; <label>:163:                                    ; preds = %156
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @abs(i32 %167) #4
  %169 = add nsw i32 %168, 15
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @abs(i32 %176) #4
  %178 = icmp sge i32 %169, %177
  br i1 %178, label %179, label %199

; <label>:179:                                    ; preds = %163
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @abs(i32 %183) #4
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @abs(i32 %191) #4
  %193 = ashr i32 %192, 4
  %194 = sub nsw i32 %184, %193
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %194, i32* %198, align 4
  br label %212

; <label>:199:                                    ; preds = %163
  %200 = load i32, i32* @white_to_move, align 4
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 0, i32 1
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %14, align 4
  %206 = call i32 @see(i32 %203, i32 %204, i32 %205)
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %207, i32* %211, align 4
  br label %212

; <label>:212:                                    ; preds = %199, %179
  br label %213

; <label>:213:                                    ; preds = %212, %156
  br label %526

; <label>:214:                                    ; preds = %148, %140, %132
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, -1
  br i1 %216, label %217, label %282

; <label>:217:                                    ; preds = %214
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, -2
  br i1 %219, label %220, label %282

; <label>:220:                                    ; preds = %217
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %282

; <label>:224:                                    ; preds = %220
  %225 = load i32*, i32** %7, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 100000000, i32* %228, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 13
  br i1 %230, label %231, label %281

; <label>:231:                                    ; preds = %224
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @abs(i32 %235) #4
  %237 = add nsw i32 %236, 15
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @abs(i32 %244) #4
  %246 = icmp sge i32 %237, %245
  br i1 %246, label %247, label %267

; <label>:247:                                    ; preds = %231
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @abs(i32 %251) #4
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @abs(i32 %259) #4
  %261 = ashr i32 %260, 4
  %262 = sub nsw i32 %252, %261
  %263 = load i32*, i32** %8, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  store i32 %262, i32* %266, align 4
  br label %280

; <label>:267:                                    ; preds = %231
  %268 = load i32, i32* @white_to_move, align 4
  %269 = icmp ne i32 %268, 0
  %270 = zext i1 %269 to i64
  %271 = select i1 %269, i32 0, i32 1
  %272 = load i32, i32* %15, align 4
  %273 = load i32, i32* %14, align 4
  %274 = call i32 @see(i32 %271, i32 %272, i32 %273)
  store i32 %274, i32* %16, align 4
  %275 = load i32, i32* %16, align 4
  %276 = load i32*, i32** %8, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %275, i32* %279, align 4
  br label %280

; <label>:280:                                    ; preds = %267, %247
  br label %281

; <label>:281:                                    ; preds = %280, %224
  br label %525

; <label>:282:                                    ; preds = %220, %217, %214
  %283 = load i32, i32* %10, align 4
  %284 = icmp eq i32 %283, -2
  br i1 %284, label %285, label %383

; <label>:285:                                    ; preds = %282
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* @ply, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %289
  %291 = load i32, i32* @ply, align 4
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %290, i64 0, i64 %293
  %295 = getelementptr inbounds %struct.move_s, %struct.move_s* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp eq i32 %286, %296
  br i1 %297, label %298, label %382

; <label>:298:                                    ; preds = %285
  %299 = load i32, i32* %15, align 4
  %300 = load i32, i32* @ply, align 4
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %302
  %304 = load i32, i32* @ply, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %303, i64 0, i64 %306
  %308 = getelementptr inbounds %struct.move_s, %struct.move_s* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %299, %309
  br i1 %310, label %311, label %382

; <label>:311:                                    ; preds = %298
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* @ply, align 4
  %314 = add nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %315
  %317 = load i32, i32* @ply, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %316, i64 0, i64 %319
  %321 = getelementptr inbounds %struct.move_s, %struct.move_s* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %312, %322
  br i1 %323, label %324, label %382

; <label>:324:                                    ; preds = %311
  %325 = load i32*, i32** %7, align 8
  %326 = load i32, i32* %13, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 100000000, i32* %328, align 4
  %329 = load i32, i32* %12, align 4
  %330 = icmp ne i32 %329, 13
  br i1 %330, label %331, label %381

; <label>:331:                                    ; preds = %324
  %332 = load i32, i32* %12, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @abs(i32 %335) #4
  %337 = add nsw i32 %336, 15
  %338 = load i32, i32* %14, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @abs(i32 %344) #4
  %346 = icmp sge i32 %337, %345
  br i1 %346, label %347, label %367

; <label>:347:                                    ; preds = %331
  %348 = load i32, i32* %12, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @abs(i32 %351) #4
  %353 = load i32, i32* %14, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @abs(i32 %359) #4
  %361 = ashr i32 %360, 4
  %362 = sub nsw i32 %352, %361
  %363 = load i32*, i32** %8, align 8
  %364 = load i32, i32* %13, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  store i32 %362, i32* %366, align 4
  br label %380

; <label>:367:                                    ; preds = %331
  %368 = load i32, i32* @white_to_move, align 4
  %369 = icmp ne i32 %368, 0
  %370 = zext i1 %369 to i64
  %371 = select i1 %369, i32 0, i32 1
  %372 = load i32, i32* %15, align 4
  %373 = load i32, i32* %14, align 4
  %374 = call i32 @see(i32 %371, i32 %372, i32 %373)
  store i32 %374, i32* %16, align 4
  %375 = load i32, i32* %16, align 4
  %376 = load i32*, i32** %8, align 8
  %377 = load i32, i32* %13, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  store i32 %375, i32* %379, align 4
  br label %380

; <label>:380:                                    ; preds = %367, %347
  br label %381

; <label>:381:                                    ; preds = %380, %324
  br label %382

; <label>:382:                                    ; preds = %381, %311, %298, %285
  br label %524

; <label>:383:                                    ; preds = %282
  %384 = load i32, i32* @ply, align 4
  %385 = icmp ne i32 %384, 1
  br i1 %385, label %389, label %386

; <label>:386:                                    ; preds = %383
  %387 = load i32, i32* @i_depth, align 4
  %388 = icmp slt i32 %387, 2
  br i1 %388, label %389, label %498

; <label>:389:                                    ; preds = %386, %383
  %390 = load i32, i32* %14, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @history_h, i64 0, i64 %391
  %393 = load i32, i32* %15, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [144 x i32], [144 x i32]* %392, i64 0, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = load i32*, i32** %7, align 8
  %398 = load i32, i32* %13, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = add i32 %401, %396
  store i32 %402, i32* %400, align 4
  %403 = load i32, i32* %14, align 4
  %404 = load i32, i32* @ply, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %405
  %407 = getelementptr inbounds %struct.move_s, %struct.move_s* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp eq i32 %403, %408
  br i1 %409, label %410, label %433

; <label>:410:                                    ; preds = %389
  %411 = load i32, i32* %15, align 4
  %412 = load i32, i32* @ply, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %413
  %415 = getelementptr inbounds %struct.move_s, %struct.move_s* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = icmp eq i32 %411, %416
  br i1 %417, label %418, label %433

; <label>:418:                                    ; preds = %410
  %419 = load i32, i32* %11, align 4
  %420 = load i32, i32* @ply, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %421
  %423 = getelementptr inbounds %struct.move_s, %struct.move_s* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = icmp eq i32 %419, %424
  br i1 %425, label %426, label %433

; <label>:426:                                    ; preds = %418
  %427 = load i32*, i32** %7, align 8
  %428 = load i32, i32* %13, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %431, 25000000
  store i32 %432, i32* %430, align 4
  br label %497

; <label>:433:                                    ; preds = %418, %410, %389
  %434 = load i32, i32* %14, align 4
  %435 = load i32, i32* @ply, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %436
  %438 = getelementptr inbounds %struct.move_s, %struct.move_s* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = icmp eq i32 %434, %439
  br i1 %440, label %441, label %464

; <label>:441:                                    ; preds = %433
  %442 = load i32, i32* %15, align 4
  %443 = load i32, i32* @ply, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %444
  %446 = getelementptr inbounds %struct.move_s, %struct.move_s* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = icmp eq i32 %442, %447
  br i1 %448, label %449, label %464

; <label>:449:                                    ; preds = %441
  %450 = load i32, i32* %11, align 4
  %451 = load i32, i32* @ply, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %452
  %454 = getelementptr inbounds %struct.move_s, %struct.move_s* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 4
  %456 = icmp eq i32 %450, %455
  br i1 %456, label %457, label %464

; <label>:457:                                    ; preds = %449
  %458 = load i32*, i32** %7, align 8
  %459 = load i32, i32* %13, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = add nsw i32 %462, 20000000
  store i32 %463, i32* %461, align 4
  br label %496

; <label>:464:                                    ; preds = %449, %441, %433
  %465 = load i32, i32* %14, align 4
  %466 = load i32, i32* @ply, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %467
  %469 = getelementptr inbounds %struct.move_s, %struct.move_s* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = icmp eq i32 %465, %470
  br i1 %471, label %472, label %495

; <label>:472:                                    ; preds = %464
  %473 = load i32, i32* %15, align 4
  %474 = load i32, i32* @ply, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %475
  %477 = getelementptr inbounds %struct.move_s, %struct.move_s* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = icmp eq i32 %473, %478
  br i1 %479, label %480, label %495

; <label>:480:                                    ; preds = %472
  %481 = load i32, i32* %11, align 4
  %482 = load i32, i32* @ply, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %483
  %485 = getelementptr inbounds %struct.move_s, %struct.move_s* %484, i32 0, i32 3
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %481, %486
  br i1 %487, label %488, label %495

; <label>:488:                                    ; preds = %480
  %489 = load i32*, i32** %7, align 8
  %490 = load i32, i32* %13, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %489, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = add nsw i32 %493, 15000000
  store i32 %494, i32* %492, align 4
  br label %495

; <label>:495:                                    ; preds = %488, %480, %472, %464
  br label %496

; <label>:496:                                    ; preds = %495, %457
  br label %497

; <label>:497:                                    ; preds = %496, %426
  br label %523

; <label>:498:                                    ; preds = %386
  %499 = load i32, i32* @nodes, align 4
  %500 = sdiv i32 %499, 100
  %501 = icmp sgt i32 %500, 100000000
  br i1 %501, label %502, label %512

; <label>:502:                                    ; preds = %498
  %503 = load i32, i32* %13, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [512 x i32], [512 x i32]* @rootnodecount, i64 0, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = udiv i32 %506, 1000
  %508 = load i32*, i32** %7, align 8
  %509 = load i32, i32* %13, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %508, i64 %510
  store i32 %507, i32* %511, align 4
  br label %522

; <label>:512:                                    ; preds = %498
  %513 = load i32, i32* %13, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [512 x i32], [512 x i32]* @rootnodecount, i64 0, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = udiv i32 %516, 100
  %518 = load i32*, i32** %7, align 8
  %519 = load i32, i32* %13, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  store i32 %517, i32* %521, align 4
  br label %522

; <label>:522:                                    ; preds = %512, %502
  br label %523

; <label>:523:                                    ; preds = %522, %497
  br label %524

; <label>:524:                                    ; preds = %523, %382
  br label %525

; <label>:525:                                    ; preds = %524, %281
  br label %526

; <label>:526:                                    ; preds = %525, %213
  br label %527

; <label>:527:                                    ; preds = %526
  %528 = load i32, i32* %13, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %13, align 4
  br label %20

; <label>:530:                                    ; preds = %20
  br label %925

; <label>:531:                                    ; preds = %5
  store i32 0, i32* %13, align 4
  br label %532

; <label>:532:                                    ; preds = %921, %531
  %533 = load i32, i32* %13, align 4
  %534 = load i32, i32* %9, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %924

; <label>:536:                                    ; preds = %532
  %537 = load %struct.move_s*, %struct.move_s** %6, align 8
  %538 = load i32, i32* %13, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.move_s, %struct.move_s* %537, i64 %539
  %541 = getelementptr inbounds %struct.move_s, %struct.move_s* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  store i32 %542, i32* %14, align 4
  %543 = load %struct.move_s*, %struct.move_s** %6, align 8
  %544 = load i32, i32* %13, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.move_s, %struct.move_s* %543, i64 %545
  %547 = getelementptr inbounds %struct.move_s, %struct.move_s* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  store i32 %548, i32* %15, align 4
  %549 = load %struct.move_s*, %struct.move_s** %6, align 8
  %550 = load i32, i32* %13, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.move_s, %struct.move_s* %549, i64 %551
  %553 = getelementptr inbounds %struct.move_s, %struct.move_s* %552, i32 0, i32 3
  %554 = load i32, i32* %553, align 4
  store i32 %554, i32* %11, align 4
  %555 = load %struct.move_s*, %struct.move_s** %6, align 8
  %556 = load i32, i32* %13, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.move_s, %struct.move_s* %555, i64 %557
  %559 = getelementptr inbounds %struct.move_s, %struct.move_s* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 4
  store i32 %560, i32* %12, align 4
  %561 = load i32, i32* %10, align 4
  %562 = icmp ne i32 %561, -1
  br i1 %562, label %563, label %625

; <label>:563:                                    ; preds = %536
  %564 = load i32, i32* %13, align 4
  %565 = load i32, i32* %10, align 4
  %566 = icmp eq i32 %564, %565
  br i1 %566, label %567, label %625

; <label>:567:                                    ; preds = %563
  %568 = load i32*, i32** %7, align 8
  %569 = load i32, i32* %13, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %568, i64 %570
  store i32 100000000, i32* %571, align 4
  %572 = load i32, i32* %12, align 4
  %573 = icmp ne i32 %572, 13
  br i1 %573, label %574, label %624

; <label>:574:                                    ; preds = %567
  %575 = load i32, i32* %12, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %576
  %578 = load i32, i32* %577, align 4
  %579 = call i32 @abs(i32 %578) #4
  %580 = add nsw i32 %579, 15
  %581 = load i32, i32* %14, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %585
  %587 = load i32, i32* %586, align 4
  %588 = call i32 @abs(i32 %587) #4
  %589 = icmp sge i32 %580, %588
  br i1 %589, label %590, label %610

; <label>:590:                                    ; preds = %574
  %591 = load i32, i32* %12, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = call i32 @abs(i32 %594) #4
  %596 = load i32, i32* %14, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %597
  %599 = load i32, i32* %598, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = call i32 @abs(i32 %602) #4
  %604 = ashr i32 %603, 4
  %605 = sub nsw i32 %595, %604
  %606 = load i32*, i32** %8, align 8
  %607 = load i32, i32* %13, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i32, i32* %606, i64 %608
  store i32 %605, i32* %609, align 4
  br label %623

; <label>:610:                                    ; preds = %574
  %611 = load i32, i32* @white_to_move, align 4
  %612 = icmp ne i32 %611, 0
  %613 = zext i1 %612 to i64
  %614 = select i1 %612, i32 0, i32 1
  %615 = load i32, i32* %15, align 4
  %616 = load i32, i32* %14, align 4
  %617 = call i32 @see(i32 %614, i32 %615, i32 %616)
  store i32 %617, i32* %16, align 4
  %618 = load i32, i32* %16, align 4
  %619 = load i32*, i32** %8, align 8
  %620 = load i32, i32* %13, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32, i32* %619, i64 %621
  store i32 %618, i32* %622, align 4
  br label %623

; <label>:623:                                    ; preds = %610, %590
  br label %624

; <label>:624:                                    ; preds = %623, %567
  br label %812

; <label>:625:                                    ; preds = %563, %536
  %626 = load i32, i32* %10, align 4
  %627 = icmp eq i32 %626, -2
  br i1 %627, label %628, label %726

; <label>:628:                                    ; preds = %625
  %629 = load i32, i32* %14, align 4
  %630 = load i32, i32* @ply, align 4
  %631 = add nsw i32 %630, 1
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %632
  %634 = load i32, i32* @ply, align 4
  %635 = add nsw i32 %634, 1
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %633, i64 0, i64 %636
  %638 = getelementptr inbounds %struct.move_s, %struct.move_s* %637, i32 0, i32 0
  %639 = load i32, i32* %638, align 8
  %640 = icmp eq i32 %629, %639
  br i1 %640, label %641, label %725

; <label>:641:                                    ; preds = %628
  %642 = load i32, i32* %15, align 4
  %643 = load i32, i32* @ply, align 4
  %644 = add nsw i32 %643, 1
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %645
  %647 = load i32, i32* @ply, align 4
  %648 = add nsw i32 %647, 1
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %646, i64 0, i64 %649
  %651 = getelementptr inbounds %struct.move_s, %struct.move_s* %650, i32 0, i32 1
  %652 = load i32, i32* %651, align 4
  %653 = icmp eq i32 %642, %652
  br i1 %653, label %654, label %725

; <label>:654:                                    ; preds = %641
  %655 = load i32, i32* %11, align 4
  %656 = load i32, i32* @ply, align 4
  %657 = add nsw i32 %656, 1
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %658
  %660 = load i32, i32* @ply, align 4
  %661 = add nsw i32 %660, 1
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %659, i64 0, i64 %662
  %664 = getelementptr inbounds %struct.move_s, %struct.move_s* %663, i32 0, i32 3
  %665 = load i32, i32* %664, align 4
  %666 = icmp eq i32 %655, %665
  br i1 %666, label %667, label %725

; <label>:667:                                    ; preds = %654
  %668 = load i32*, i32** %7, align 8
  %669 = load i32, i32* %13, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i32, i32* %668, i64 %670
  store i32 100000000, i32* %671, align 4
  %672 = load i32, i32* %12, align 4
  %673 = icmp ne i32 %672, 13
  br i1 %673, label %674, label %724

; <label>:674:                                    ; preds = %667
  %675 = load i32, i32* %12, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %676
  %678 = load i32, i32* %677, align 4
  %679 = call i32 @abs(i32 %678) #4
  %680 = add nsw i32 %679, 15
  %681 = load i32, i32* %14, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %682
  %684 = load i32, i32* %683, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %685
  %687 = load i32, i32* %686, align 4
  %688 = call i32 @abs(i32 %687) #4
  %689 = icmp sge i32 %680, %688
  br i1 %689, label %690, label %710

; <label>:690:                                    ; preds = %674
  %691 = load i32, i32* %12, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %692
  %694 = load i32, i32* %693, align 4
  %695 = call i32 @abs(i32 %694) #4
  %696 = load i32, i32* %14, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %697
  %699 = load i32, i32* %698, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = call i32 @abs(i32 %702) #4
  %704 = ashr i32 %703, 4
  %705 = sub nsw i32 %695, %704
  %706 = load i32*, i32** %8, align 8
  %707 = load i32, i32* %13, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i32, i32* %706, i64 %708
  store i32 %705, i32* %709, align 4
  br label %723

; <label>:710:                                    ; preds = %674
  %711 = load i32, i32* @white_to_move, align 4
  %712 = icmp ne i32 %711, 0
  %713 = zext i1 %712 to i64
  %714 = select i1 %712, i32 0, i32 1
  %715 = load i32, i32* %15, align 4
  %716 = load i32, i32* %14, align 4
  %717 = call i32 @see(i32 %714, i32 %715, i32 %716)
  store i32 %717, i32* %16, align 4
  %718 = load i32, i32* %16, align 4
  %719 = load i32*, i32** %8, align 8
  %720 = load i32, i32* %13, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i32, i32* %719, i64 %721
  store i32 %718, i32* %722, align 4
  br label %723

; <label>:723:                                    ; preds = %710, %690
  br label %724

; <label>:724:                                    ; preds = %723, %667
  br label %725

; <label>:725:                                    ; preds = %724, %654, %641, %628
  br label %811

; <label>:726:                                    ; preds = %625
  %727 = load i32, i32* %12, align 4
  %728 = icmp ne i32 %727, 13
  br i1 %728, label %729, label %805

; <label>:729:                                    ; preds = %726
  %730 = load i32, i32* %12, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %731
  %733 = load i32, i32* %732, align 4
  %734 = call i32 @abs(i32 %733) #4
  %735 = add nsw i32 %734, 15
  %736 = load i32, i32* %14, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %737
  %739 = load i32, i32* %738, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %740
  %742 = load i32, i32* %741, align 4
  %743 = call i32 @abs(i32 %742) #4
  %744 = icmp sge i32 %735, %743
  br i1 %744, label %745, label %775

; <label>:745:                                    ; preds = %729
  %746 = load i32, i32* %12, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %747
  %749 = load i32, i32* %748, align 4
  %750 = call i32 @abs(i32 %749) #4
  %751 = load i32, i32* %14, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %752
  %754 = load i32, i32* %753, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %755
  %757 = load i32, i32* %756, align 4
  %758 = call i32 @abs(i32 %757) #4
  %759 = ashr i32 %758, 4
  %760 = sub nsw i32 %750, %759
  %761 = load i32*, i32** %8, align 8
  %762 = load i32, i32* %13, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds i32, i32* %761, i64 %763
  store i32 %760, i32* %764, align 4
  %765 = load i32*, i32** %8, align 8
  %766 = load i32, i32* %13, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i32, i32* %765, i64 %767
  %769 = load i32, i32* %768, align 4
  %770 = add nsw i32 50000000, %769
  %771 = load i32*, i32** %7, align 8
  %772 = load i32, i32* %13, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i32, i32* %771, i64 %773
  store i32 %770, i32* %774, align 4
  br label %804

; <label>:775:                                    ; preds = %729
  %776 = load i32, i32* @white_to_move, align 4
  %777 = icmp ne i32 %776, 0
  %778 = zext i1 %777 to i64
  %779 = select i1 %777, i32 0, i32 1
  %780 = load i32, i32* %15, align 4
  %781 = load i32, i32* %14, align 4
  %782 = call i32 @see(i32 %779, i32 %780, i32 %781)
  store i32 %782, i32* %16, align 4
  %783 = load i32, i32* %16, align 4
  %784 = icmp sge i32 %783, -50
  br i1 %784, label %785, label %792

; <label>:785:                                    ; preds = %775
  %786 = load i32, i32* %16, align 4
  %787 = add nsw i32 50000000, %786
  %788 = load i32*, i32** %7, align 8
  %789 = load i32, i32* %13, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds i32, i32* %788, i64 %790
  store i32 %787, i32* %791, align 4
  br label %798

; <label>:792:                                    ; preds = %775
  %793 = load i32, i32* %16, align 4
  %794 = load i32*, i32** %7, align 8
  %795 = load i32, i32* %13, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds i32, i32* %794, i64 %796
  store i32 %793, i32* %797, align 4
  br label %798

; <label>:798:                                    ; preds = %792, %785
  %799 = load i32, i32* %16, align 4
  %800 = load i32*, i32** %8, align 8
  %801 = load i32, i32* %13, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds i32, i32* %800, i64 %802
  store i32 %799, i32* %803, align 4
  br label %804

; <label>:804:                                    ; preds = %798, %745
  br label %810

; <label>:805:                                    ; preds = %726
  %806 = load i32*, i32** %7, align 8
  %807 = load i32, i32* %13, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds i32, i32* %806, i64 %808
  store i32 0, i32* %809, align 4
  br label %810

; <label>:810:                                    ; preds = %805, %804
  br label %811

; <label>:811:                                    ; preds = %810, %725
  br label %812

; <label>:812:                                    ; preds = %811, %624
  %813 = load i32, i32* %14, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @history_h, i64 0, i64 %814
  %816 = load i32, i32* %15, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [144 x i32], [144 x i32]* %815, i64 0, i64 %817
  %819 = load i32, i32* %818, align 4
  %820 = load i32*, i32** %7, align 8
  %821 = load i32, i32* %13, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds i32, i32* %820, i64 %822
  %824 = load i32, i32* %823, align 4
  %825 = add i32 %824, %819
  store i32 %825, i32* %823, align 4
  %826 = load i32, i32* %14, align 4
  %827 = load i32, i32* @ply, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %828
  %830 = getelementptr inbounds %struct.move_s, %struct.move_s* %829, i32 0, i32 0
  %831 = load i32, i32* %830, align 8
  %832 = icmp eq i32 %826, %831
  br i1 %832, label %833, label %856

; <label>:833:                                    ; preds = %812
  %834 = load i32, i32* %15, align 4
  %835 = load i32, i32* @ply, align 4
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %836
  %838 = getelementptr inbounds %struct.move_s, %struct.move_s* %837, i32 0, i32 1
  %839 = load i32, i32* %838, align 4
  %840 = icmp eq i32 %834, %839
  br i1 %840, label %841, label %856

; <label>:841:                                    ; preds = %833
  %842 = load i32, i32* %11, align 4
  %843 = load i32, i32* @ply, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %844
  %846 = getelementptr inbounds %struct.move_s, %struct.move_s* %845, i32 0, i32 3
  %847 = load i32, i32* %846, align 4
  %848 = icmp eq i32 %842, %847
  br i1 %848, label %849, label %856

; <label>:849:                                    ; preds = %841
  %850 = load i32*, i32** %7, align 8
  %851 = load i32, i32* %13, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i32, i32* %850, i64 %852
  %854 = load i32, i32* %853, align 4
  %855 = add nsw i32 %854, 25000000
  store i32 %855, i32* %853, align 4
  br label %920

; <label>:856:                                    ; preds = %841, %833, %812
  %857 = load i32, i32* %14, align 4
  %858 = load i32, i32* @ply, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %859
  %861 = getelementptr inbounds %struct.move_s, %struct.move_s* %860, i32 0, i32 0
  %862 = load i32, i32* %861, align 8
  %863 = icmp eq i32 %857, %862
  br i1 %863, label %864, label %887

; <label>:864:                                    ; preds = %856
  %865 = load i32, i32* %15, align 4
  %866 = load i32, i32* @ply, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %867
  %869 = getelementptr inbounds %struct.move_s, %struct.move_s* %868, i32 0, i32 1
  %870 = load i32, i32* %869, align 4
  %871 = icmp eq i32 %865, %870
  br i1 %871, label %872, label %887

; <label>:872:                                    ; preds = %864
  %873 = load i32, i32* %11, align 4
  %874 = load i32, i32* @ply, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %875
  %877 = getelementptr inbounds %struct.move_s, %struct.move_s* %876, i32 0, i32 3
  %878 = load i32, i32* %877, align 4
  %879 = icmp eq i32 %873, %878
  br i1 %879, label %880, label %887

; <label>:880:                                    ; preds = %872
  %881 = load i32*, i32** %7, align 8
  %882 = load i32, i32* %13, align 4
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds i32, i32* %881, i64 %883
  %885 = load i32, i32* %884, align 4
  %886 = add nsw i32 %885, 20000000
  store i32 %886, i32* %884, align 4
  br label %919

; <label>:887:                                    ; preds = %872, %864, %856
  %888 = load i32, i32* %14, align 4
  %889 = load i32, i32* @ply, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %890
  %892 = getelementptr inbounds %struct.move_s, %struct.move_s* %891, i32 0, i32 0
  %893 = load i32, i32* %892, align 8
  %894 = icmp eq i32 %888, %893
  br i1 %894, label %895, label %918

; <label>:895:                                    ; preds = %887
  %896 = load i32, i32* %15, align 4
  %897 = load i32, i32* @ply, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %898
  %900 = getelementptr inbounds %struct.move_s, %struct.move_s* %899, i32 0, i32 1
  %901 = load i32, i32* %900, align 4
  %902 = icmp eq i32 %896, %901
  br i1 %902, label %903, label %918

; <label>:903:                                    ; preds = %895
  %904 = load i32, i32* %11, align 4
  %905 = load i32, i32* @ply, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %906
  %908 = getelementptr inbounds %struct.move_s, %struct.move_s* %907, i32 0, i32 3
  %909 = load i32, i32* %908, align 4
  %910 = icmp eq i32 %904, %909
  br i1 %910, label %911, label %918

; <label>:911:                                    ; preds = %903
  %912 = load i32*, i32** %7, align 8
  %913 = load i32, i32* %13, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds i32, i32* %912, i64 %914
  %916 = load i32, i32* %915, align 4
  %917 = add nsw i32 %916, 15000000
  store i32 %917, i32* %915, align 4
  br label %918

; <label>:918:                                    ; preds = %911, %903, %895, %887
  br label %919

; <label>:919:                                    ; preds = %918, %880
  br label %920

; <label>:920:                                    ; preds = %919, %849
  br label %921

; <label>:921:                                    ; preds = %920
  %922 = load i32, i32* %13, align 4
  %923 = add nsw i32 %922, 1
  store i32 %923, i32* %13, align 4
  br label %532

; <label>:924:                                    ; preds = %532
  br label %925

; <label>:925:                                    ; preds = %924, %530
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

declare i32 @see(i32, i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @perft(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [512 x %struct.move_s], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* @raw_nodes, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @raw_nodes, align 4
  br label %37

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  call void @gen(%struct.move_s* %13)
  %14 = load i32, i32* @numb_moves, align 4
  store i32 %14, i32* %4, align 4
  %15 = call i32 @in_check()
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %16

; <label>:16:                                     ; preds = %34, %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  call void @make(%struct.move_s* %21, i32 %22)
  %23 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @check_legal(%struct.move_s* %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %2, align 4
  %30 = sub nsw i32 %29, 1
  call void @perft(i32 %30)
  br label %31

; <label>:31:                                     ; preds = %28, %20
  %32 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  call void @unmake(%struct.move_s* %32, i32 %33)
  br label %34

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %16

; <label>:37:                                     ; preds = %9, %16
  ret void
}

declare void @gen(%struct.move_s*) #2

declare i32 @in_check() #2

declare void @make(%struct.move_s*, i32) #2

declare i32 @check_legal(%struct.move_s*, i32, i32) #2

declare void @unmake(%struct.move_s*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @qsearch(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x %struct.move_s], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [512 x i32], align 16
  %15 = alloca [512 x i32], align 16
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1000000, i32* %12, align 4
  store i32 1, i32* %17, align 4
  %26 = load i32, i32* @ply, align 4
  %27 = load i32, i32* @ply, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @nodes, align 4
  %31 = and i32 %30, 65535
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %86, label %33

; <label>:33:                                     ; preds = %3
  %34 = call i32 @interrupt()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33
  store i32 1, i32* @time_exit, align 4
  store i32 0, i32* %4, align 4
  br label %283

; <label>:37:                                     ; preds = %33
  %38 = call i64 @rtime()
  %39 = load i64, i64* @start_time, align 8
  %40 = call i32 @rdifftime(i64 %38, i64 %39)
  %41 = load i32, i32* @time_for_move, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %84

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* @i_depth, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %84

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* @failed, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %82

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* @extendedtime, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %82, label %52

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* @fixed_time, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %82, label %55

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* @go_fast, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %82, label %58

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* @Variant, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %82

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* @time_left, align 4
  %63 = load i32, i32* @time_for_move, align 4
  %64 = mul nsw i32 %63, 4
  %65 = icmp sgt i32 %64, 1000
  br i1 %65, label %66, label %69

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* @time_for_move, align 4
  %68 = mul nsw i32 %67, 4
  br label %70

; <label>:69:                                     ; preds = %61
  br label %70

; <label>:70:                                     ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 1000, %69 ]
  %72 = icmp sgt i32 %62, %71
  br i1 %72, label %73, label %82

; <label>:73:                                     ; preds = %70
  store i32 1, i32* @extendedtime, align 4
  %74 = load i32, i32* @time_for_move, align 4
  store i32 %74, i32* %24, align 4
  %75 = call i32 @allocate_time()
  %76 = load i32, i32* @time_for_move, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* @time_for_move, align 4
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* @time_for_move, align 4
  %80 = load i32, i32* @time_left, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %78, i32 %79, i32 %80)
  br label %83

; <label>:82:                                     ; preds = %70, %58, %55, %52, %49, %46
  store i32 1, i32* @time_exit, align 4
  store i32 0, i32* %4, align 4
  br label %283

; <label>:83:                                     ; preds = %73
  br label %84

; <label>:84:                                     ; preds = %83, %43, %37
  br label %85

; <label>:85:                                     ; preds = %84
  br label %86

; <label>:86:                                     ; preds = %85, %3
  %87 = load i32, i32* %7, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %92, label %89

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* @ply, align 4
  %91 = icmp sge i32 %90, 300
  br i1 %91, label %92, label %97

; <label>:92:                                     ; preds = %89, %86
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @eval(i32 %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %4, align 4
  br label %283

; <label>:97:                                     ; preds = %89
  %98 = load i32, i32* @qnodes, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @qnodes, align 4
  %100 = load i32, i32* @nodes, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @nodes, align 4
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %23, align 4
  %103 = call i32 @QProbeTT(i32* %22, i32* %20)
  switch i32 %103, label %122 [
    i32 3, label %104
    i32 1, label %106
    i32 2, label %113
    i32 0, label %120
    i32 4, label %121
  ]

; <label>:104:                                    ; preds = %97
  %105 = load i32, i32* %22, align 4
  store i32 %105, i32* %4, align 4
  br label %283

; <label>:106:                                    ; preds = %97
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %106
  %111 = load i32, i32* %22, align 4
  store i32 %111, i32* %4, align 4
  br label %283

; <label>:112:                                    ; preds = %106
  br label %122

; <label>:113:                                    ; preds = %97
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %119

; <label>:117:                                    ; preds = %113
  %118 = load i32, i32* %22, align 4
  store i32 %118, i32* %4, align 4
  br label %283

; <label>:119:                                    ; preds = %113
  br label %122

; <label>:120:                                    ; preds = %97
  br label %122

; <label>:121:                                    ; preds = %97
  store i32 -1, i32* %20, align 4
  br label %122

; <label>:122:                                    ; preds = %97, %121, %120, %119, %112
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @eval(i32 %123, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %134

; <label>:129:                                    ; preds = %122
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %6, align 4
  call void @QStoreTT(i32 %130, i32 %131, i32 %132, i32 500)
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %4, align 4
  br label %283

; <label>:134:                                    ; preds = %122
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %140

; <label>:138:                                    ; preds = %134
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %5, align 4
  br label %140

; <label>:140:                                    ; preds = %138, %134
  br label %141

; <label>:141:                                    ; preds = %140
  store i32 -1, i32* %18, align 4
  store i32 -1000000, i32* %19, align 4
  store i32 0, i32* %9, align 4
  %142 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  call void @gen(%struct.move_s* %142)
  %143 = load i32, i32* @numb_moves, align 4
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* @kingcap, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

; <label>:146:                                    ; preds = %141
  store i32 50000, i32* %4, align 4
  br label %283

; <label>:147:                                    ; preds = %141
  %148 = load i32, i32* %5, align 4
  %149 = sub nsw i32 %148, 150
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %21, align 4
  %152 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %153 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %154 = getelementptr inbounds [512 x i32], [512 x i32]* %15, i64 0, i64 0
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %20, align 4
  call void @order_moves(%struct.move_s* %152, i32* %153, i32* %154, i32 %155, i32 %156)
  br label %157

; <label>:157:                                    ; preds = %276, %180, %147
  %158 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @remove_one(i32* %10, i32* %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %277

; <label>:162:                                    ; preds = %157
  store i32 0, i32* %16, align 4
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.move_s, %struct.move_s* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %182, label %169

; <label>:169:                                    ; preds = %162
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [512 x i32], [512 x i32]* %15, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %25, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %21, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %180, label %177

; <label>:177:                                    ; preds = %169
  %178 = load i32, i32* %25, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

; <label>:180:                                    ; preds = %177, %169
  br label %157

; <label>:181:                                    ; preds = %177
  br label %182

; <label>:182:                                    ; preds = %181, %162
  %183 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %184 = load i32, i32* %10, align 4
  call void @make(%struct.move_s* %183, i32 %184)
  %185 = load i32, i32* %6, align 4
  %186 = sub nsw i32 0, %185
  %187 = load i32, i32* %5, align 4
  %188 = sub nsw i32 0, %187
  %189 = load i32, i32* %7, align 4
  %190 = sub nsw i32 %189, 1
  %191 = call i32 @qsearch(i32 %186, i32 %188, i32 %190)
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, -50000
  br i1 %194, label %195, label %196

; <label>:195:                                    ; preds = %182
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %196

; <label>:196:                                    ; preds = %195, %182
  %197 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %198 = load i32, i32* %10, align 4
  call void @unmake(%struct.move_s* %197, i32 %198)
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %19, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %207

; <label>:202:                                    ; preds = %196
  %203 = load i32, i32* %16, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

; <label>:205:                                    ; preds = %202
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %19, align 4
  br label %207

; <label>:207:                                    ; preds = %205, %202, %196
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %276

; <label>:211:                                    ; preds = %207
  %212 = load i32, i32* %16, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %276

; <label>:214:                                    ; preds = %211
  %215 = load i32, i32* %10, align 4
  store i32 %215, i32* %20, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %219, label %225

; <label>:219:                                    ; preds = %214
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %23, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %10, align 4
  call void @QStoreTT(i32 %220, i32 %221, i32 %222, i32 %223)
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %4, align 4
  br label %283

; <label>:225:                                    ; preds = %214
  %226 = load i32, i32* %12, align 4
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* @ply, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %228
  %230 = load i32, i32* @ply, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %229, i64 0, i64 %231
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %234
  %236 = bitcast %struct.move_s* %232 to i8*
  %237 = bitcast %struct.move_s* %235 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %236, i8* %237, i64 24, i32 8, i1 false)
  %238 = load i32, i32* @ply, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %11, align 4
  br label %240

; <label>:240:                                    ; preds = %264, %225
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @ply, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %241, %246
  br i1 %247, label %248, label %267

; <label>:248:                                    ; preds = %240
  %249 = load i32, i32* @ply, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %250
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %251, i64 0, i64 %253
  %255 = load i32, i32* @ply, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %257
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %258, i64 0, i64 %260
  %262 = bitcast %struct.move_s* %254 to i8*
  %263 = bitcast %struct.move_s* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %262, i8* %263, i64 24, i32 8, i1 false)
  br label %264

; <label>:264:                                    ; preds = %248
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %11, align 4
  br label %240

; <label>:267:                                    ; preds = %240
  %268 = load i32, i32* @ply, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @ply, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %274
  store i32 %272, i32* %275, align 4
  br label %276

; <label>:276:                                    ; preds = %267, %211, %207
  br label %157

; <label>:277:                                    ; preds = %157
  %278 = load i32, i32* %5, align 4
  %279 = load i32, i32* %23, align 4
  %280 = load i32, i32* %6, align 4
  %281 = load i32, i32* %20, align 4
  call void @QStoreTT(i32 %278, i32 %279, i32 %280, i32 %281)
  %282 = load i32, i32* %5, align 4
  store i32 %282, i32* %4, align 4
  br label %283

; <label>:283:                                    ; preds = %277, %219, %146, %129, %117, %110, %104, %92, %82, %36
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare i32 @interrupt() #2

declare i32 @rdifftime(i64, i64) #2

declare i64 @rtime() #2

declare i32 @allocate_time() #2

declare i32 @printf(i8*, ...) #2

declare i32 @eval(i32, i32) #2

declare i32 @QProbeTT(i32*, i32*) #2

declare void @QStoreTT(i32, i32, i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @remove_one(i32*, i32*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1000000, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 -1000000, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %11

; <label>:11:                                     ; preds = %32, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %35

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  br label %31

; <label>:31:                                     ; preds = %23, %15
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %11

; <label>:35:                                     ; preds = %11
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, -1000000
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 -1000000, i32* %44, align 4
  store i32 1, i32* %4, align 4
  br label %46

; <label>:45:                                     ; preds = %35
  store i32 0, i32* %4, align 4
  br label %46

; <label>:46:                                     ; preds = %45, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @search(i32, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [512 x %struct.move_s], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [512 x i32], align 16
  %16 = alloca [512 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.move_s, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1000000, i32* %14, align 4
  %39 = load i32, i32* @nodes, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @nodes, align 4
  %41 = load i32, i32* @nodes, align 4
  %42 = and i32 %41, 65535
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %97, label %44

; <label>:44:                                     ; preds = %4
  %45 = call i32 @interrupt()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %44
  store i32 1, i32* @time_exit, align 4
  store i32 0, i32* %5, align 4
  br label %1375

; <label>:48:                                     ; preds = %44
  %49 = call i64 @rtime()
  %50 = load i64, i64* @start_time, align 8
  %51 = call i32 @rdifftime(i64 %49, i64 %50)
  %52 = load i32, i32* @time_for_move, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %95

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* @i_depth, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %95

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* @failed, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %93

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* @extendedtime, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %93, label %63

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* @fixed_time, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %93, label %66

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* @go_fast, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %93, label %69

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* @Variant, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %93

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* @time_left, align 4
  %74 = load i32, i32* @time_for_move, align 4
  %75 = mul nsw i32 %74, 4
  %76 = icmp sgt i32 %75, 1000
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %72
  %78 = load i32, i32* @time_for_move, align 4
  %79 = mul nsw i32 %78, 4
  br label %81

; <label>:80:                                     ; preds = %72
  br label %81

; <label>:81:                                     ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 1000, %80 ]
  %83 = icmp sgt i32 %73, %82
  br i1 %83, label %84, label %93

; <label>:84:                                     ; preds = %81
  store i32 1, i32* @extendedtime, align 4
  %85 = load i32, i32* @time_for_move, align 4
  store i32 %85, i32* %38, align 4
  %86 = call i32 @allocate_time()
  %87 = load i32, i32* @time_for_move, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* @time_for_move, align 4
  %89 = load i32, i32* %38, align 4
  %90 = load i32, i32* @time_for_move, align 4
  %91 = load i32, i32* @time_left, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %89, i32 %90, i32 %91)
  br label %94

; <label>:93:                                     ; preds = %81, %69, %66, %63, %60, %57
  store i32 1, i32* @time_exit, align 4
  store i32 0, i32* %5, align 4
  br label %1375

; <label>:94:                                     ; preds = %84
  br label %95

; <label>:95:                                     ; preds = %94, %54, %48
  br label %96

; <label>:96:                                     ; preds = %95
  br label %97

; <label>:97:                                     ; preds = %96, %4
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %34, align 4
  store i32 -1000000, i32* %30, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %28, align 4
  %99 = load i32, i32* @ply, align 4
  %100 = load i32, i32* @ply, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %101
  store i32 %99, i32* %102, align 4
  %103 = call i32 @is_draw()
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %97
  store i32 0, i32* %5, align 4
  br label %1375

; <label>:106:                                    ; preds = %97
  %107 = load i32, i32* @ply, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [300 x i32], [300 x i32]* @checks, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %26, align 4
  %111 = load i32, i32* @ply, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i64 0, i64 %112
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* @ply, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i64 0, i64 %115
  store i32 0, i32* %116, align 4
  %117 = load i32, i32* @ply, align 4
  %118 = icmp slt i32 %117, 300
  br i1 %118, label %119, label %137

; <label>:119:                                    ; preds = %106
  %120 = load i32, i32* %26, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

; <label>:122:                                    ; preds = %119
  %123 = load i32, i32* @ply, align 4
  %124 = load i32, i32* @i_depth, align 4
  %125 = mul nsw i32 %124, 2
  %126 = icmp sle i32 %123, %125
  br i1 %126, label %130, label %127

; <label>:127:                                    ; preds = %122
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %137

; <label>:130:                                    ; preds = %127, %122
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* @ext_check, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* @ext_check, align 4
  %135 = load i32, i32* %28, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %28, align 4
  br label %197

; <label>:137:                                    ; preds = %127, %119, %106
  %138 = load i32, i32* @ply, align 4
  %139 = icmp slt i32 %138, 300
  br i1 %139, label %140, label %196

; <label>:140:                                    ; preds = %137
  %141 = load i32, i32* @ply, align 4
  %142 = icmp sgt i32 %141, 2
  br i1 %142, label %143, label %196

; <label>:143:                                    ; preds = %140
  %144 = load i32, i32* @ply, align 4
  %145 = load i32, i32* @i_depth, align 4
  %146 = mul nsw i32 %145, 2
  %147 = icmp sle i32 %144, %146
  br i1 %147, label %148, label %196

; <label>:148:                                    ; preds = %143
  %149 = load i32, i32* @ply, align 4
  %150 = sub nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %196, label %155

; <label>:155:                                    ; preds = %148
  %156 = load i32, i32* @cfg_recap, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %196

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* @ply, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i64 0, i64 %161
  %163 = getelementptr inbounds %struct.move_s, %struct.move_s* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 13
  br i1 %165, label %166, label %196

; <label>:166:                                    ; preds = %158
  %167 = load i32, i32* @ply, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i64 0, i64 %169
  %171 = getelementptr inbounds %struct.move_s, %struct.move_s* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [14 x i32], [14 x i32]* @search.rc_index, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ply, align 4
  %177 = sub nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.move_s, %struct.move_s* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [14 x i32], [14 x i32]* @search.rc_index, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %175, %184
  br i1 %185, label %186, label %196

; <label>:186:                                    ; preds = %166
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* @ext_recap, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* @ext_recap, align 4
  %191 = load i32, i32* %28, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %28, align 4
  %193 = load i32, i32* @ply, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i64 0, i64 %194
  store i32 1, i32* %195, align 4
  br label %196

; <label>:196:                                    ; preds = %186, %166, %158, %155, %148, %143, %140, %137
  br label %197

; <label>:197:                                    ; preds = %196, %130
  %198 = load i32, i32* %8, align 4
  %199 = icmp sle i32 %198, 0
  br i1 %199, label %203, label %200

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* @ply, align 4
  %202 = icmp sge i32 %201, 300
  br i1 %202, label %203, label %245

; <label>:203:                                    ; preds = %200, %197
  %204 = load i32, i32* @Variant, align 4
  %205 = icmp ne i32 %204, 3
  br i1 %205, label %206, label %216

; <label>:206:                                    ; preds = %203
  %207 = load i32, i32* @Variant, align 4
  %208 = icmp ne i32 %207, 4
  br i1 %208, label %209, label %216

; <label>:209:                                    ; preds = %206
  store i32 1, i32* @captures, align 4
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @ply, align 4
  %213 = sub nsw i32 300, %212
  %214 = call i32 @qsearch(i32 %210, i32 %211, i32 %213)
  store i32 %214, i32* %14, align 4
  store i32 0, i32* @captures, align 4
  %215 = load i32, i32* %14, align 4
  store i32 %215, i32* %5, align 4
  br label %1375

; <label>:216:                                    ; preds = %206, %203
  %217 = load i32, i32* @Variant, align 4
  %218 = icmp eq i32 %217, 3
  br i1 %218, label %219, label %221

; <label>:219:                                    ; preds = %216
  %220 = call i32 @suicide_eval()
  store i32 %220, i32* %5, align 4
  br label %1375

; <label>:221:                                    ; preds = %216
  %222 = load i32, i32* @Variant, align 4
  %223 = icmp eq i32 %222, 4
  br i1 %223, label %224, label %242

; <label>:224:                                    ; preds = %221
  %225 = call i32 @losers_eval()
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @abs(i32 %226) #4
  %228 = icmp eq i32 %227, 1000000
  br i1 %228, label %229, label %240

; <label>:229:                                    ; preds = %224
  %230 = load i32, i32* %12, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %235

; <label>:232:                                    ; preds = %229
  %233 = load i32, i32* @ply, align 4
  %234 = sub nsw i32 1000000, %233
  br label %238

; <label>:235:                                    ; preds = %229
  %236 = load i32, i32* @ply, align 4
  %237 = add nsw i32 -1000000, %236
  br label %238

; <label>:238:                                    ; preds = %235, %232
  %239 = phi i32 [ %234, %232 ], [ %237, %235 ]
  store i32 %239, i32* %5, align 4
  br label %1375

; <label>:240:                                    ; preds = %224
  %241 = load i32, i32* %12, align 4
  store i32 %241, i32* %5, align 4
  br label %1375

; <label>:242:                                    ; preds = %221
  br label %243

; <label>:243:                                    ; preds = %242
  br label %244

; <label>:244:                                    ; preds = %243
  br label %245

; <label>:245:                                    ; preds = %244, %200
  store i32 0, i32* %11, align 4
  store i32 1, i32* %17, align 4
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @ProbeTT(i32* %19, i32 %246, i32* %22, i32* %20, i32* %21, i32 %247)
  switch i32 %248, label %267 [
    i32 3, label %249
    i32 1, label %251
    i32 2, label %258
    i32 0, label %265
    i32 4, label %266
  ]

; <label>:249:                                    ; preds = %245
  %250 = load i32, i32* %19, align 4
  store i32 %250, i32* %5, align 4
  br label %1375

; <label>:251:                                    ; preds = %245
  %252 = load i32, i32* %19, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp sle i32 %252, %253
  br i1 %254, label %255, label %257

; <label>:255:                                    ; preds = %251
  %256 = load i32, i32* %19, align 4
  store i32 %256, i32* %5, align 4
  br label %1375

; <label>:257:                                    ; preds = %251
  br label %267

; <label>:258:                                    ; preds = %245
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp sge i32 %259, %260
  br i1 %261, label %262, label %264

; <label>:262:                                    ; preds = %258
  %263 = load i32, i32* %19, align 4
  store i32 %263, i32* %5, align 4
  br label %1375

; <label>:264:                                    ; preds = %258
  br label %267

; <label>:265:                                    ; preds = %245
  br label %267

; <label>:266:                                    ; preds = %245
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %267

; <label>:267:                                    ; preds = %245, %266, %265, %264, %257
  %268 = load i32, i32* %22, align 4
  %269 = icmp eq i32 %268, 500
  br i1 %269, label %270, label %271

; <label>:270:                                    ; preds = %267
  store i32 -1, i32* %22, align 4
  br label %271

; <label>:271:                                    ; preds = %270, %267
  store i32 -1, i32* %23, align 4
  store i32 -1000000, i32* %24, align 4
  %272 = load i32, i32* @ep_square, align 4
  store i32 %272, i32* %25, align 4
  store i32 0, i32* %36, align 4
  %273 = load i32, i32* @Variant, align 4
  %274 = icmp eq i32 %273, 4
  br i1 %274, label %275, label %328

; <label>:275:                                    ; preds = %271
  %276 = call i32 @losers_eval()
  store i32 %276, i32* %12, align 4
  %277 = load i32, i32* %12, align 4
  %278 = call i32 @abs(i32 %277) #4
  %279 = icmp eq i32 %278, 1000000
  br i1 %279, label %280, label %293

; <label>:280:                                    ; preds = %275
  %281 = load i32, i32* %12, align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %287

; <label>:283:                                    ; preds = %280
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* @ply, align 4
  %286 = sub nsw i32 %284, %285
  br label %291

; <label>:287:                                    ; preds = %280
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* @ply, align 4
  %290 = add nsw i32 %288, %289
  br label %291

; <label>:291:                                    ; preds = %287, %283
  %292 = phi i32 [ %286, %283 ], [ %290, %287 ]
  store i32 %292, i32* %5, align 4
  br label %1375

; <label>:293:                                    ; preds = %275
  store i32 1, i32* @captures, align 4
  %294 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  call void @gen(%struct.move_s* %294)
  %295 = load i32, i32* @numb_moves, align 4
  store i32 %295, i32* %11, align 4
  store i32 0, i32* @captures, align 4
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %321

; <label>:298:                                    ; preds = %293
  store i32 0, i32* %12, align 4
  br label %299

; <label>:299:                                    ; preds = %317, %298
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %11, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %320

; <label>:303:                                    ; preds = %299
  %304 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %305 = load i32, i32* %12, align 4
  call void @make(%struct.move_s* %304, i32 %305)
  %306 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* %26, align 4
  %309 = call i32 @check_legal(%struct.move_s* %306, i32 %307, i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

; <label>:311:                                    ; preds = %303
  %312 = load i32, i32* %36, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %36, align 4
  br label %314

; <label>:314:                                    ; preds = %311, %303
  %315 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %316 = load i32, i32* %12, align 4
  call void @unmake(%struct.move_s* %315, i32 %316)
  br label %317

; <label>:317:                                    ; preds = %314
  %318 = load i32, i32* %12, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %12, align 4
  br label %299

; <label>:320:                                    ; preds = %299
  br label %321

; <label>:321:                                    ; preds = %320, %293
  %322 = load i32, i32* %36, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %327, label %324

; <label>:324:                                    ; preds = %321
  store i32 0, i32* @captures, align 4
  %325 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  call void @gen(%struct.move_s* %325)
  %326 = load i32, i32* @numb_moves, align 4
  store i32 %326, i32* %11, align 4
  br label %327

; <label>:327:                                    ; preds = %324, %321
  store i32 0, i32* %36, align 4
  br label %328

; <label>:328:                                    ; preds = %327, %271
  %329 = load i32, i32* %9, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %452

; <label>:331:                                    ; preds = %328
  %332 = load i32, i32* @phase, align 4
  %333 = icmp ne i32 %332, 2
  br i1 %333, label %340, label %334

; <label>:334:                                    ; preds = %331
  %335 = load i32, i32* @phase, align 4
  %336 = icmp eq i32 %335, 2
  br i1 %336, label %337, label %452

; <label>:337:                                    ; preds = %334
  %338 = load i32, i32* %8, align 4
  %339 = icmp sle i32 %338, 6
  br i1 %339, label %340, label %452

; <label>:340:                                    ; preds = %337, %331
  %341 = load i32, i32* %26, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %452, label %343

; <label>:343:                                    ; preds = %340
  %344 = load i32, i32* %21, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %452

; <label>:346:                                    ; preds = %343
  %347 = load i32, i32* @searching_pv, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %452, label %349

; <label>:349:                                    ; preds = %346
  %350 = load i32, i32* %20, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %452

; <label>:352:                                    ; preds = %349
  %353 = load i32, i32* @Variant, align 4
  %354 = icmp ne i32 %353, 3
  br i1 %354, label %355, label %358

; <label>:355:                                    ; preds = %352
  %356 = load i32, i32* @Variant, align 4
  %357 = icmp ne i32 %356, 4
  br i1 %357, label %366, label %358

; <label>:358:                                    ; preds = %355, %352
  %359 = load i32, i32* @Variant, align 4
  %360 = icmp eq i32 %359, 4
  br i1 %360, label %361, label %452

; <label>:361:                                    ; preds = %358
  %362 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %363 = getelementptr inbounds %struct.move_s, %struct.move_s* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = icmp eq i32 %364, 13
  br i1 %365, label %366, label %452

; <label>:366:                                    ; preds = %361, %355
  store i32 0, i32* @ep_square, align 4
  %367 = load i32, i32* @white_to_move, align 4
  %368 = xor i32 %367, 1
  store i32 %368, i32* @white_to_move, align 4
  %369 = load i32, i32* @ply, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* @ply, align 4
  %371 = load i32, i32* @fifty, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* @fifty, align 4
  %373 = load i32, i32* @hash, align 4
  %374 = xor i32 %373, -559038737
  store i32 %374, i32* @hash, align 4
  %375 = load i32, i32* @Variant, align 4
  %376 = icmp ne i32 %375, 2
  br i1 %376, label %377, label %400

; <label>:377:                                    ; preds = %366
  %378 = load i32, i32* @Variant, align 4
  %379 = icmp ne i32 %378, 4
  br i1 %379, label %380, label %400

; <label>:380:                                    ; preds = %377
  %381 = load i32, i32* %7, align 4
  %382 = sub nsw i32 0, %381
  %383 = load i32, i32* %7, align 4
  %384 = sub nsw i32 0, %383
  %385 = add nsw i32 %384, 1
  %386 = load i32, i32* %8, align 4
  %387 = icmp sgt i32 %386, 3
  br i1 %387, label %388, label %392

; <label>:388:                                    ; preds = %380
  %389 = load i32, i32* %8, align 4
  %390 = sub nsw i32 %389, 2
  %391 = sub nsw i32 %390, 1
  br label %396

; <label>:392:                                    ; preds = %380
  %393 = load i32, i32* %8, align 4
  %394 = sub nsw i32 %393, 1
  %395 = sub nsw i32 %394, 1
  br label %396

; <label>:396:                                    ; preds = %392, %388
  %397 = phi i32 [ %391, %388 ], [ %395, %392 ]
  %398 = call i32 @search(i32 %382, i32 %385, i32 %397, i32 1)
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %14, align 4
  br label %411

; <label>:400:                                    ; preds = %377, %366
  %401 = load i32, i32* %7, align 4
  %402 = sub nsw i32 0, %401
  %403 = load i32, i32* %7, align 4
  %404 = sub nsw i32 0, %403
  %405 = add nsw i32 %404, 1
  %406 = load i32, i32* %8, align 4
  %407 = sub nsw i32 %406, 3
  %408 = sub nsw i32 %407, 1
  %409 = call i32 @search(i32 %402, i32 %405, i32 %408, i32 1)
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %14, align 4
  br label %411

; <label>:411:                                    ; preds = %400, %396
  %412 = load i32, i32* @hash, align 4
  %413 = xor i32 %412, -559038737
  store i32 %413, i32* @hash, align 4
  %414 = load i32, i32* @fifty, align 4
  %415 = add nsw i32 %414, -1
  store i32 %415, i32* @fifty, align 4
  %416 = load i32, i32* @ply, align 4
  %417 = add nsw i32 %416, -1
  store i32 %417, i32* @ply, align 4
  %418 = load i32, i32* @white_to_move, align 4
  %419 = xor i32 %418, 1
  store i32 %419, i32* @white_to_move, align 4
  %420 = load i32, i32* %25, align 4
  store i32 %420, i32* @ep_square, align 4
  %421 = load i32, i32* @time_exit, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %424

; <label>:423:                                    ; preds = %411
  store i32 0, i32* %5, align 4
  br label %1375

; <label>:424:                                    ; preds = %411
  %425 = load i32, i32* @NTries, align 4
  %426 = add i32 %425, 1
  store i32 %426, i32* @NTries, align 4
  %427 = load i32, i32* %14, align 4
  %428 = load i32, i32* %7, align 4
  %429 = icmp sge i32 %427, %428
  br i1 %429, label %430, label %438

; <label>:430:                                    ; preds = %424
  %431 = load i32, i32* @NCuts, align 4
  %432 = add i32 %431, 1
  store i32 %432, i32* @NCuts, align 4
  %433 = load i32, i32* %14, align 4
  %434 = load i32, i32* %6, align 4
  %435 = load i32, i32* %7, align 4
  %436 = load i32, i32* %8, align 4
  call void @StoreTT(i32 %433, i32 %434, i32 %435, i32 500, i32 0, i32 %436)
  %437 = load i32, i32* %14, align 4
  store i32 %437, i32* %5, align 4
  br label %1375

; <label>:438:                                    ; preds = %424
  %439 = load i32, i32* %14, align 4
  %440 = icmp slt i32 %439, -999900
  br i1 %440, label %441, label %450

; <label>:441:                                    ; preds = %438
  store i32 1, i32* %20, align 4
  %442 = load i32, i32* @TExt, align 4
  %443 = add i32 %442, 1
  store i32 %443, i32* @TExt, align 4
  %444 = load i32, i32* %8, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %8, align 4
  %446 = load i32, i32* %28, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %28, align 4
  %448 = load i32, i32* @ext_onerep, align 4
  %449 = add i32 %448, 1
  store i32 %449, i32* @ext_onerep, align 4
  br label %450

; <label>:450:                                    ; preds = %441, %438
  br label %451

; <label>:451:                                    ; preds = %450
  br label %465

; <label>:452:                                    ; preds = %361, %358, %349, %346, %343, %340, %337, %334, %328
  %453 = load i32, i32* %20, align 4
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %455, label %464

; <label>:455:                                    ; preds = %452
  %456 = load i32, i32* @TExt, align 4
  %457 = add i32 %456, 1
  store i32 %457, i32* @TExt, align 4
  %458 = load i32, i32* %8, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %8, align 4
  %460 = load i32, i32* %28, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %28, align 4
  %462 = load i32, i32* @ext_onerep, align 4
  %463 = add i32 %462, 1
  store i32 %463, i32* @ext_onerep, align 4
  br label %464

; <label>:464:                                    ; preds = %455, %452
  br label %465

; <label>:465:                                    ; preds = %464, %451
  store i32 -1000000, i32* %14, align 4
  %466 = load i32, i32* @Variant, align 4
  %467 = icmp ne i32 %466, 4
  br i1 %467, label %468, label %471

; <label>:468:                                    ; preds = %465
  %469 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  call void @gen(%struct.move_s* %469)
  %470 = load i32, i32* @numb_moves, align 4
  store i32 %470, i32* %11, align 4
  br label %471

; <label>:471:                                    ; preds = %468, %465
  %472 = load i32, i32* @cfg_onerep, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %509

; <label>:474:                                    ; preds = %471
  %475 = load i32, i32* %26, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %509

; <label>:477:                                    ; preds = %474
  %478 = load i32, i32* %11, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %508

; <label>:480:                                    ; preds = %477
  store i32 0, i32* %12, align 4
  br label %481

; <label>:481:                                    ; preds = %504, %480
  %482 = load i32, i32* %12, align 4
  %483 = load i32, i32* %11, align 4
  %484 = icmp slt i32 %482, %483
  br i1 %484, label %485, label %488

; <label>:485:                                    ; preds = %481
  %486 = load i32, i32* %36, align 4
  %487 = icmp slt i32 %486, 2
  br label %488

; <label>:488:                                    ; preds = %485, %481
  %489 = phi i1 [ false, %481 ], [ %487, %485 ]
  br i1 %489, label %490, label %507

; <label>:490:                                    ; preds = %488
  %491 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %492 = load i32, i32* %12, align 4
  call void @make(%struct.move_s* %491, i32 %492)
  %493 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %494 = load i32, i32* %12, align 4
  %495 = load i32, i32* %26, align 4
  %496 = call i32 @check_legal(%struct.move_s* %493, i32 %494, i32 %495)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %501

; <label>:498:                                    ; preds = %490
  %499 = load i32, i32* %36, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %36, align 4
  br label %501

; <label>:501:                                    ; preds = %498, %490
  %502 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %503 = load i32, i32* %12, align 4
  call void @unmake(%struct.move_s* %502, i32 %503)
  br label %504

; <label>:504:                                    ; preds = %501
  %505 = load i32, i32* %12, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %12, align 4
  br label %481

; <label>:507:                                    ; preds = %488
  br label %508

; <label>:508:                                    ; preds = %507, %477
  br label %509

; <label>:509:                                    ; preds = %508, %474, %471
  %510 = load i32, i32* @ply, align 4
  %511 = icmp slt i32 %510, 300
  br i1 %511, label %512, label %546

; <label>:512:                                    ; preds = %509
  %513 = load i32, i32* @Variant, align 4
  %514 = icmp eq i32 %513, 3
  br i1 %514, label %515, label %526

; <label>:515:                                    ; preds = %512
  %516 = load i32, i32* %11, align 4
  %517 = icmp eq i32 %516, 1
  br i1 %517, label %518, label %526

; <label>:518:                                    ; preds = %515
  %519 = load i32, i32* %8, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %8, align 4
  %521 = load i32, i32* @ext_onerep, align 4
  %522 = add i32 %521, 1
  store i32 %522, i32* @ext_onerep, align 4
  %523 = load i32, i32* @ply, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i64 0, i64 %524
  store i32 1, i32* %525, align 4
  br label %545

; <label>:526:                                    ; preds = %515, %512
  %527 = load i32, i32* %36, align 4
  %528 = icmp eq i32 %527, 1
  br i1 %528, label %529, label %544

; <label>:529:                                    ; preds = %526
  %530 = load i32, i32* @ply, align 4
  %531 = sub nsw i32 %530, 2
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i64 0, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %544, label %536

; <label>:536:                                    ; preds = %529
  %537 = load i32, i32* %8, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %8, align 4
  %539 = load i32, i32* @ext_onerep, align 4
  %540 = add i32 %539, 1
  store i32 %540, i32* @ext_onerep, align 4
  %541 = load i32, i32* @ply, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i64 0, i64 %542
  store i32 1, i32* %543, align 4
  br label %544

; <label>:544:                                    ; preds = %536, %529, %526
  br label %545

; <label>:545:                                    ; preds = %544, %518
  br label %546

; <label>:546:                                    ; preds = %545, %509
  store i32 1, i32* %27, align 4
  store i32 0, i32* %31, align 4
  %547 = load i32, i32* @phase, align 4
  %548 = icmp ne i32 %547, 2
  br i1 %548, label %549, label %625

; <label>:549:                                    ; preds = %546
  %550 = load i32, i32* @Variant, align 4
  %551 = icmp ne i32 %550, 3
  br i1 %551, label %552, label %625

; <label>:552:                                    ; preds = %549
  %553 = load i32, i32* @cfg_futprune, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %625

; <label>:555:                                    ; preds = %552
  %556 = load i32, i32* @white_to_move, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %560

; <label>:558:                                    ; preds = %555
  %559 = load i32, i32* @Material, align 4
  br label %563

; <label>:560:                                    ; preds = %555
  %561 = load i32, i32* @Material, align 4
  %562 = sub nsw i32 0, %561
  br label %563

; <label>:563:                                    ; preds = %560, %558
  %564 = phi i32 [ %559, %558 ], [ %562, %560 ]
  %565 = add nsw i32 %564, 900
  store i32 %565, i32* %29, align 4
  %566 = load i32, i32* %28, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %576, label %568

; <label>:568:                                    ; preds = %563
  %569 = load i32, i32* %8, align 4
  %570 = icmp eq i32 %569, 3
  br i1 %570, label %571, label %576

; <label>:571:                                    ; preds = %568
  %572 = load i32, i32* %29, align 4
  %573 = load i32, i32* %6, align 4
  %574 = icmp sle i32 %572, %573
  br i1 %574, label %575, label %576

; <label>:575:                                    ; preds = %571
  store i32 2, i32* %8, align 4
  br label %576

; <label>:576:                                    ; preds = %575, %571, %568, %563
  %577 = load i32, i32* @white_to_move, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %581

; <label>:579:                                    ; preds = %576
  %580 = load i32, i32* @Material, align 4
  br label %584

; <label>:581:                                    ; preds = %576
  %582 = load i32, i32* @Material, align 4
  %583 = sub nsw i32 0, %582
  br label %584

; <label>:584:                                    ; preds = %581, %579
  %585 = phi i32 [ %580, %579 ], [ %583, %581 ]
  %586 = add nsw i32 %585, 500
  store i32 %586, i32* %29, align 4
  %587 = load i32, i32* %28, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %598, label %589

; <label>:589:                                    ; preds = %584
  %590 = load i32, i32* %8, align 4
  %591 = icmp eq i32 %590, 2
  br i1 %591, label %592, label %598

; <label>:592:                                    ; preds = %589
  %593 = load i32, i32* %29, align 4
  %594 = load i32, i32* %6, align 4
  %595 = icmp sle i32 %593, %594
  br i1 %595, label %596, label %598

; <label>:596:                                    ; preds = %592
  store i32 1, i32* %31, align 4
  %597 = load i32, i32* %29, align 4
  store i32 %597, i32* %30, align 4
  store i32 %597, i32* %24, align 4
  br label %598

; <label>:598:                                    ; preds = %596, %592, %589, %584
  %599 = load i32, i32* @white_to_move, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %603

; <label>:601:                                    ; preds = %598
  %602 = load i32, i32* @Material, align 4
  br label %606

; <label>:603:                                    ; preds = %598
  %604 = load i32, i32* @Material, align 4
  %605 = sub nsw i32 0, %604
  br label %606

; <label>:606:                                    ; preds = %603, %601
  %607 = phi i32 [ %602, %601 ], [ %605, %603 ]
  %608 = load i32, i32* @Variant, align 4
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i64
  %611 = select i1 %609, i32 150, i32 200
  %612 = add nsw i32 %607, %611
  store i32 %612, i32* %29, align 4
  %613 = load i32, i32* %28, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %624, label %615

; <label>:615:                                    ; preds = %606
  %616 = load i32, i32* %8, align 4
  %617 = icmp eq i32 %616, 1
  br i1 %617, label %618, label %624

; <label>:618:                                    ; preds = %615
  %619 = load i32, i32* %29, align 4
  %620 = load i32, i32* %6, align 4
  %621 = icmp sle i32 %619, %620
  br i1 %621, label %622, label %624

; <label>:622:                                    ; preds = %618
  store i32 1, i32* %31, align 4
  %623 = load i32, i32* %29, align 4
  store i32 %623, i32* %30, align 4
  store i32 %623, i32* %24, align 4
  br label %624

; <label>:624:                                    ; preds = %622, %618, %615, %606
  br label %625

; <label>:625:                                    ; preds = %624, %552, %549, %546
  %626 = load i32, i32* %11, align 4
  %627 = icmp sgt i32 %626, 0
  br i1 %627, label %628, label %1289

; <label>:628:                                    ; preds = %625
  %629 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %630 = getelementptr inbounds [512 x i32], [512 x i32]* %15, i64 0, i64 0
  %631 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 0
  %632 = load i32, i32* %11, align 4
  %633 = load i32, i32* %22, align 4
  call void @order_moves(%struct.move_s* %629, i32* %630, i32* %631, i32 %632, i32 %633)
  br label %634

; <label>:634:                                    ; preds = %1287, %628
  %635 = getelementptr inbounds [512 x i32], [512 x i32]* %15, i64 0, i64 0
  %636 = load i32, i32* %11, align 4
  %637 = call i32 @remove_one(i32* %12, i32* %635, i32 %636)
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %1288

; <label>:639:                                    ; preds = %634
  %640 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %641 = load i32, i32* %12, align 4
  call void @make(%struct.move_s* %640, i32 %641)
  store i32 0, i32* %18, align 4
  %642 = load i32, i32* @hash, align 4
  %643 = load i32, i32* @move_number, align 4
  %644 = load i32, i32* @ply, align 4
  %645 = add nsw i32 %643, %644
  %646 = sub nsw i32 %645, 1
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %647
  store i32 %642, i32* %648, align 4
  %649 = load i32, i32* @ply, align 4
  %650 = sub nsw i32 %649, 1
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i64 0, i64 %651
  %653 = load i32, i32* %12, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %654
  %656 = bitcast %struct.move_s* %652 to i8*
  %657 = bitcast %struct.move_s* %655 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %656, i8* %657, i64 24, i32 8, i1 false)
  store i32 0, i32* %28, align 4
  %658 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %659 = load i32, i32* %12, align 4
  %660 = load i32, i32* %26, align 4
  %661 = call i32 @check_legal(%struct.move_s* %658, i32 %659, i32 %660)
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %937

; <label>:663:                                    ; preds = %639
  %664 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %665 = load i32, i32* %12, align 4
  %666 = call i32 @f_in_check(%struct.move_s* %664, i32 %665)
  store i32 %666, i32* %35, align 4
  %667 = load i32, i32* %35, align 4
  %668 = load i32, i32* @ply, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [300 x i32], [300 x i32]* @checks, i64 0, i64 %669
  store i32 %667, i32* %670, align 4
  %671 = load i32, i32* %35, align 4
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %728, label %673

; <label>:673:                                    ; preds = %663
  %674 = load i32, i32* @Variant, align 4
  %675 = icmp eq i32 %674, 2
  br i1 %675, label %682, label %676

; <label>:676:                                    ; preds = %673
  %677 = load i32, i32* @Variant, align 4
  %678 = icmp eq i32 %677, 3
  br i1 %678, label %682, label %679

; <label>:679:                                    ; preds = %676
  %680 = load i32, i32* @Variant, align 4
  %681 = icmp eq i32 %680, 4
  br i1 %681, label %682, label %728

; <label>:682:                                    ; preds = %679, %676, %673
  %683 = load i32, i32* %8, align 4
  %684 = icmp slt i32 %683, 3
  br i1 %684, label %685, label %728

; <label>:685:                                    ; preds = %682
  %686 = load i32, i32* %12, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %687
  %689 = getelementptr inbounds %struct.move_s, %struct.move_s* %688, i32 0, i32 1
  %690 = load i32, i32* %689, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = icmp eq i32 %693, 1
  br i1 %694, label %695, label %705

; <label>:695:                                    ; preds = %685
  %696 = load i32, i32* %12, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %697
  %699 = getelementptr inbounds %struct.move_s, %struct.move_s* %698, i32 0, i32 1
  %700 = load i32, i32* %699, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = icmp sge i32 %703, 6
  br i1 %704, label %725, label %705

; <label>:705:                                    ; preds = %695, %685
  %706 = load i32, i32* %12, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %707
  %709 = getelementptr inbounds %struct.move_s, %struct.move_s* %708, i32 0, i32 1
  %710 = load i32, i32* %709, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %711
  %713 = load i32, i32* %712, align 4
  %714 = icmp eq i32 %713, 2
  br i1 %714, label %715, label %728

; <label>:715:                                    ; preds = %705
  %716 = load i32, i32* %12, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %717
  %719 = getelementptr inbounds %struct.move_s, %struct.move_s* %718, i32 0, i32 1
  %720 = load i32, i32* %719, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %721
  %723 = load i32, i32* %722, align 4
  %724 = icmp sle i32 %723, 3
  br i1 %724, label %725, label %728

; <label>:725:                                    ; preds = %715, %695
  %726 = load i32, i32* %28, align 4
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %28, align 4
  br label %728

; <label>:728:                                    ; preds = %725, %715, %705, %682, %679, %663
  store i32 0, i32* %37, align 4
  %729 = load i32, i32* %12, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %730
  %732 = getelementptr inbounds %struct.move_s, %struct.move_s* %731, i32 0, i32 0
  %733 = load i32, i32* %732, align 8
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %755

; <label>:735:                                    ; preds = %728
  %736 = load i32, i32* %8, align 4
  %737 = icmp sgt i32 %736, 1
  br i1 %737, label %738, label %755

; <label>:738:                                    ; preds = %735
  %739 = load i32, i32* %35, align 4
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %755

; <label>:741:                                    ; preds = %738
  %742 = load i32, i32* %26, align 4
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %755

; <label>:744:                                    ; preds = %741
  %745 = load i32, i32* @searching_pv, align 4
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %755, label %747

; <label>:747:                                    ; preds = %744
  %748 = load i32, i32* @cfg_razordrop, align 4
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %755

; <label>:750:                                    ; preds = %747
  %751 = load i32, i32* @razor_drop, align 4
  %752 = add i32 %751, 1
  store i32 %752, i32* @razor_drop, align 4
  %753 = load i32, i32* %28, align 4
  %754 = add nsw i32 %753, -1
  store i32 %754, i32* %28, align 4
  br label %820

; <label>:755:                                    ; preds = %747, %744, %741, %738, %735, %728
  %756 = load i32, i32* %12, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %757
  %759 = getelementptr inbounds %struct.move_s, %struct.move_s* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 8
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %819

; <label>:762:                                    ; preds = %755
  %763 = load i32, i32* %8, align 4
  %764 = icmp eq i32 %763, 1
  br i1 %764, label %765, label %819

; <label>:765:                                    ; preds = %762
  %766 = load i32, i32* %26, align 4
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %819

; <label>:768:                                    ; preds = %765
  %769 = load i32, i32* @cfg_cutdrop, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %819

; <label>:771:                                    ; preds = %768
  %772 = load i32, i32* @white_to_move, align 4
  %773 = icmp ne i32 %772, 0
  br i1 %773, label %774, label %796

; <label>:774:                                    ; preds = %771
  %775 = load i32, i32* %12, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %776
  %778 = getelementptr inbounds %struct.move_s, %struct.move_s* %777, i32 0, i32 1
  %779 = load i32, i32* %778, align 4
  %780 = call i32 @calc_attackers(i32 %779, i32 1)
  %781 = load i32, i32* %12, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %782
  %784 = getelementptr inbounds %struct.move_s, %struct.move_s* %783, i32 0, i32 1
  %785 = load i32, i32* %784, align 4
  %786 = call i32 @calc_attackers(i32 %785, i32 0)
  %787 = sub nsw i32 %780, %786
  %788 = icmp sgt i32 %787, 0
  %789 = zext i1 %788 to i32
  store i32 %789, i32* %37, align 4
  %790 = load i32, i32* %37, align 4
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %795

; <label>:792:                                    ; preds = %774
  %793 = load i32, i32* @drop_cuts, align 4
  %794 = add i32 %793, 1
  store i32 %794, i32* @drop_cuts, align 4
  br label %795

; <label>:795:                                    ; preds = %792, %774
  br label %818

; <label>:796:                                    ; preds = %771
  %797 = load i32, i32* %12, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %798
  %800 = getelementptr inbounds %struct.move_s, %struct.move_s* %799, i32 0, i32 1
  %801 = load i32, i32* %800, align 4
  %802 = call i32 @calc_attackers(i32 %801, i32 0)
  %803 = load i32, i32* %12, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %804
  %806 = getelementptr inbounds %struct.move_s, %struct.move_s* %805, i32 0, i32 1
  %807 = load i32, i32* %806, align 4
  %808 = call i32 @calc_attackers(i32 %807, i32 1)
  %809 = sub nsw i32 %802, %808
  %810 = icmp sgt i32 %809, 0
  %811 = zext i1 %810 to i32
  store i32 %811, i32* %37, align 4
  %812 = load i32, i32* %37, align 4
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %817

; <label>:814:                                    ; preds = %796
  %815 = load i32, i32* @drop_cuts, align 4
  %816 = add i32 %815, 1
  store i32 %816, i32* @drop_cuts, align 4
  br label %817

; <label>:817:                                    ; preds = %814, %796
  br label %818

; <label>:818:                                    ; preds = %817, %795
  br label %819

; <label>:819:                                    ; preds = %818, %768, %765, %762, %755
  br label %820

; <label>:820:                                    ; preds = %819, %750
  %821 = load i32, i32* %37, align 4
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %931, label %823

; <label>:823:                                    ; preds = %820
  %824 = load i32, i32* %31, align 4
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %860

; <label>:826:                                    ; preds = %823
  %827 = load i32, i32* %35, align 4
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %860, label %829

; <label>:829:                                    ; preds = %826
  %830 = load i32, i32* %30, align 4
  %831 = load i32, i32* %12, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %832
  %834 = getelementptr inbounds %struct.move_s, %struct.move_s* %833, i32 0, i32 2
  %835 = load i32, i32* %834, align 8
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %836
  %838 = load i32, i32* %837, align 4
  %839 = call i32 @abs(i32 %838) #4
  %840 = load i32, i32* @Variant, align 4
  %841 = icmp eq i32 %840, 2
  br i1 %841, label %845, label %842

; <label>:842:                                    ; preds = %829
  %843 = load i32, i32* @Variant, align 4
  %844 = icmp eq i32 %843, 4
  br label %845

; <label>:845:                                    ; preds = %842, %829
  %846 = phi i1 [ true, %829 ], [ %844, %842 ]
  %847 = zext i1 %846 to i64
  %848 = select i1 %846, i32 1, i32 2
  %849 = mul nsw i32 %839, %848
  %850 = add nsw i32 %830, %849
  %851 = load i32, i32* %6, align 4
  %852 = icmp sgt i32 %850, %851
  br i1 %852, label %860, label %853

; <label>:853:                                    ; preds = %845
  %854 = load i32, i32* %12, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %855
  %857 = getelementptr inbounds %struct.move_s, %struct.move_s* %856, i32 0, i32 3
  %858 = load i32, i32* %857, align 4
  %859 = icmp ne i32 %858, 0
  br i1 %859, label %860, label %931

; <label>:860:                                    ; preds = %853, %845, %826, %823
  %861 = load i32, i32* %27, align 4
  %862 = icmp eq i32 %861, 1
  br i1 %862, label %863, label %876

; <label>:863:                                    ; preds = %860
  %864 = load i32, i32* %7, align 4
  %865 = sub nsw i32 0, %864
  %866 = load i32, i32* %6, align 4
  %867 = sub nsw i32 0, %866
  %868 = load i32, i32* %8, align 4
  %869 = load i32, i32* %28, align 4
  %870 = add nsw i32 %868, %869
  %871 = sub nsw i32 %870, 1
  %872 = call i32 @search(i32 %865, i32 %867, i32 %871, i32 0)
  %873 = sub nsw i32 0, %872
  store i32 %873, i32* %14, align 4
  %874 = load i32, i32* @FULL, align 4
  %875 = add i32 %874, 1
  store i32 %875, i32* @FULL, align 4
  br label %930

; <label>:876:                                    ; preds = %860
  %877 = load i32, i32* %6, align 4
  %878 = sub nsw i32 0, %877
  %879 = sub nsw i32 %878, 1
  %880 = load i32, i32* %6, align 4
  %881 = sub nsw i32 0, %880
  %882 = load i32, i32* %8, align 4
  %883 = load i32, i32* %28, align 4
  %884 = add nsw i32 %882, %883
  %885 = sub nsw i32 %884, 1
  %886 = call i32 @search(i32 %879, i32 %881, i32 %885, i32 0)
  %887 = sub nsw i32 0, %886
  store i32 %887, i32* %14, align 4
  %888 = load i32, i32* @PVS, align 4
  %889 = add i32 %888, 1
  store i32 %889, i32* @PVS, align 4
  %890 = load i32, i32* %14, align 4
  %891 = load i32, i32* %24, align 4
  %892 = icmp sgt i32 %890, %891
  br i1 %892, label %893, label %929

; <label>:893:                                    ; preds = %876
  %894 = load i32, i32* @time_exit, align 4
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %929, label %896

; <label>:896:                                    ; preds = %893
  %897 = load i32, i32* %14, align 4
  %898 = icmp ne i32 %897, -50000
  br i1 %898, label %899, label %929

; <label>:899:                                    ; preds = %896
  %900 = load i32, i32* %14, align 4
  %901 = load i32, i32* %6, align 4
  %902 = icmp sgt i32 %900, %901
  br i1 %902, label %903, label %926

; <label>:903:                                    ; preds = %899
  %904 = load i32, i32* %14, align 4
  %905 = load i32, i32* %7, align 4
  %906 = icmp slt i32 %904, %905
  br i1 %906, label %907, label %926

; <label>:907:                                    ; preds = %903
  %908 = load i32, i32* %7, align 4
  %909 = sub nsw i32 0, %908
  %910 = load i32, i32* %6, align 4
  %911 = sub nsw i32 0, %910
  %912 = load i32, i32* %8, align 4
  %913 = load i32, i32* %28, align 4
  %914 = add nsw i32 %912, %913
  %915 = sub nsw i32 %914, 1
  %916 = call i32 @search(i32 %909, i32 %911, i32 %915, i32 0)
  %917 = sub nsw i32 0, %916
  store i32 %917, i32* %14, align 4
  %918 = load i32, i32* @PVSF, align 4
  %919 = add i32 %918, 1
  store i32 %919, i32* @PVSF, align 4
  %920 = load i32, i32* %14, align 4
  %921 = load i32, i32* %24, align 4
  %922 = icmp sgt i32 %920, %921
  br i1 %922, label %923, label %925

; <label>:923:                                    ; preds = %907
  %924 = load i32, i32* %14, align 4
  store i32 %924, i32* %24, align 4
  br label %925

; <label>:925:                                    ; preds = %923, %907
  br label %928

; <label>:926:                                    ; preds = %903, %899
  %927 = load i32, i32* %14, align 4
  store i32 %927, i32* %24, align 4
  br label %928

; <label>:928:                                    ; preds = %926, %925
  br label %929

; <label>:929:                                    ; preds = %928, %896, %893, %876
  br label %930

; <label>:930:                                    ; preds = %929, %863
  store i32 1, i32* %18, align 4
  br label %934

; <label>:931:                                    ; preds = %853, %820
  %932 = load i32, i32* @razor_material, align 4
  %933 = add i32 %932, 1
  store i32 %933, i32* @razor_material, align 4
  br label %934

; <label>:934:                                    ; preds = %931, %930
  %935 = load i32, i32* %36, align 4
  %936 = add nsw i32 %935, 1
  store i32 %936, i32* %36, align 4
  store i32 0, i32* %17, align 4
  br label %937

; <label>:937:                                    ; preds = %934, %639
  %938 = load i32, i32* %14, align 4
  %939 = load i32, i32* %24, align 4
  %940 = icmp sgt i32 %938, %939
  br i1 %940, label %941, label %946

; <label>:941:                                    ; preds = %937
  %942 = load i32, i32* %18, align 4
  %943 = icmp ne i32 %942, 0
  br i1 %943, label %944, label %946

; <label>:944:                                    ; preds = %941
  %945 = load i32, i32* %14, align 4
  store i32 %945, i32* %24, align 4
  br label %946

; <label>:946:                                    ; preds = %944, %941, %937
  %947 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 0
  %948 = load i32, i32* %12, align 4
  call void @unmake(%struct.move_s* %947, i32 %948)
  %949 = load i32, i32* @time_exit, align 4
  %950 = icmp ne i32 %949, 0
  br i1 %950, label %951, label %952

; <label>:951:                                    ; preds = %946
  store i32 0, i32* %5, align 4
  br label %1375

; <label>:952:                                    ; preds = %946
  %953 = load i32, i32* %14, align 4
  %954 = load i32, i32* %6, align 4
  %955 = icmp sgt i32 %953, %954
  br i1 %955, label %956, label %1283

; <label>:956:                                    ; preds = %952
  %957 = load i32, i32* %18, align 4
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %959, label %1283

; <label>:959:                                    ; preds = %956
  %960 = load i32, i32* %14, align 4
  %961 = load i32, i32* %7, align 4
  %962 = icmp sge i32 %960, %961
  br i1 %962, label %963, label %1231

; <label>:963:                                    ; preds = %959
  %964 = load i32, i32* %12, align 4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %965
  %967 = getelementptr inbounds %struct.move_s, %struct.move_s* %966, i32 0, i32 0
  %968 = load i32, i32* %967, align 8
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @history_h, i64 0, i64 %969
  %971 = load i32, i32* %12, align 4
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %972
  %974 = getelementptr inbounds %struct.move_s, %struct.move_s* %973, i32 0, i32 1
  %975 = load i32, i32* %974, align 4
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds [144 x i32], [144 x i32]* %970, i64 0, i64 %976
  %978 = load i32, i32* %977, align 4
  %979 = add i32 %978, 1
  store i32 %979, i32* %977, align 4
  %980 = load i32, i32* %12, align 4
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %981
  %983 = getelementptr inbounds %struct.move_s, %struct.move_s* %982, i32 0, i32 2
  %984 = load i32, i32* %983, align 8
  %985 = icmp eq i32 %984, 13
  br i1 %985, label %986, label %1215

; <label>:986:                                    ; preds = %963
  %987 = load i32, i32* %12, align 4
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %988
  %990 = getelementptr inbounds %struct.move_s, %struct.move_s* %989, i32 0, i32 0
  %991 = load i32, i32* %990, align 8
  %992 = load i32, i32* @ply, align 4
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %993
  %995 = getelementptr inbounds %struct.move_s, %struct.move_s* %994, i32 0, i32 0
  %996 = load i32, i32* %995, align 8
  %997 = icmp eq i32 %991, %996
  br i1 %997, label %998, label %1028

; <label>:998:                                    ; preds = %986
  %999 = load i32, i32* %12, align 4
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1000
  %1002 = getelementptr inbounds %struct.move_s, %struct.move_s* %1001, i32 0, i32 1
  %1003 = load i32, i32* %1002, align 4
  %1004 = load i32, i32* @ply, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %1005
  %1007 = getelementptr inbounds %struct.move_s, %struct.move_s* %1006, i32 0, i32 1
  %1008 = load i32, i32* %1007, align 4
  %1009 = icmp eq i32 %1003, %1008
  br i1 %1009, label %1010, label %1028

; <label>:1010:                                   ; preds = %998
  %1011 = load i32, i32* %12, align 4
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1012
  %1014 = getelementptr inbounds %struct.move_s, %struct.move_s* %1013, i32 0, i32 3
  %1015 = load i32, i32* %1014, align 4
  %1016 = load i32, i32* @ply, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %1017
  %1019 = getelementptr inbounds %struct.move_s, %struct.move_s* %1018, i32 0, i32 3
  %1020 = load i32, i32* %1019, align 4
  %1021 = icmp eq i32 %1015, %1020
  br i1 %1021, label %1022, label %1028

; <label>:1022:                                   ; preds = %1010
  %1023 = load i32, i32* @ply, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %1024
  %1026 = load i32, i32* %1025, align 4
  %1027 = add nsw i32 %1026, 1
  store i32 %1027, i32* %1025, align 4
  br label %1214

; <label>:1028:                                   ; preds = %1010, %998, %986
  %1029 = load i32, i32* %12, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1030
  %1032 = getelementptr inbounds %struct.move_s, %struct.move_s* %1031, i32 0, i32 0
  %1033 = load i32, i32* %1032, align 8
  %1034 = load i32, i32* @ply, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %1035
  %1037 = getelementptr inbounds %struct.move_s, %struct.move_s* %1036, i32 0, i32 0
  %1038 = load i32, i32* %1037, align 8
  %1039 = icmp eq i32 %1033, %1038
  br i1 %1039, label %1040, label %1114

; <label>:1040:                                   ; preds = %1028
  %1041 = load i32, i32* %12, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1042
  %1044 = getelementptr inbounds %struct.move_s, %struct.move_s* %1043, i32 0, i32 1
  %1045 = load i32, i32* %1044, align 4
  %1046 = load i32, i32* @ply, align 4
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %1047
  %1049 = getelementptr inbounds %struct.move_s, %struct.move_s* %1048, i32 0, i32 1
  %1050 = load i32, i32* %1049, align 4
  %1051 = icmp eq i32 %1045, %1050
  br i1 %1051, label %1052, label %1114

; <label>:1052:                                   ; preds = %1040
  %1053 = load i32, i32* %12, align 4
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1054
  %1056 = getelementptr inbounds %struct.move_s, %struct.move_s* %1055, i32 0, i32 3
  %1057 = load i32, i32* %1056, align 4
  %1058 = load i32, i32* @ply, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %1059
  %1061 = getelementptr inbounds %struct.move_s, %struct.move_s* %1060, i32 0, i32 3
  %1062 = load i32, i32* %1061, align 4
  %1063 = icmp eq i32 %1057, %1062
  br i1 %1063, label %1064, label %1114

; <label>:1064:                                   ; preds = %1052
  %1065 = load i32, i32* @ply, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %1066
  %1068 = load i32, i32* %1067, align 4
  %1069 = add nsw i32 %1068, 1
  store i32 %1069, i32* %1067, align 4
  %1070 = load i32, i32* @ply, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %1071
  %1073 = load i32, i32* %1072, align 4
  %1074 = load i32, i32* @ply, align 4
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %1075
  %1077 = load i32, i32* %1076, align 4
  %1078 = icmp sgt i32 %1073, %1077
  br i1 %1078, label %1079, label %1113

; <label>:1079:                                   ; preds = %1064
  %1080 = load i32, i32* @ply, align 4
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %1081
  %1083 = bitcast %struct.move_s* %32 to i8*
  %1084 = bitcast %struct.move_s* %1082 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1083, i8* %1084, i64 24, i32 4, i1 false)
  %1085 = load i32, i32* @ply, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %1086
  %1088 = load i32, i32* @ply, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %1089
  %1091 = bitcast %struct.move_s* %1087 to i8*
  %1092 = bitcast %struct.move_s* %1090 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1091, i8* %1092, i64 24, i32 8, i1 false)
  %1093 = load i32, i32* @ply, align 4
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %1094
  %1096 = bitcast %struct.move_s* %1095 to i8*
  %1097 = bitcast %struct.move_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1096, i8* %1097, i64 24, i32 4, i1 false)
  %1098 = load i32, i32* @ply, align 4
  %1099 = sext i32 %1098 to i64
  %1100 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %1099
  %1101 = load i32, i32* %1100, align 4
  store i32 %1101, i32* %33, align 4
  %1102 = load i32, i32* @ply, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %1103
  %1105 = load i32, i32* %1104, align 4
  %1106 = load i32, i32* @ply, align 4
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %1107
  store i32 %1105, i32* %1108, align 4
  %1109 = load i32, i32* %33, align 4
  %1110 = load i32, i32* @ply, align 4
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %1111
  store i32 %1109, i32* %1112, align 4
  br label %1113

; <label>:1113:                                   ; preds = %1079, %1064
  br label %1213

; <label>:1114:                                   ; preds = %1052, %1040, %1028
  %1115 = load i32, i32* %12, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1116
  %1118 = getelementptr inbounds %struct.move_s, %struct.move_s* %1117, i32 0, i32 0
  %1119 = load i32, i32* %1118, align 8
  %1120 = load i32, i32* @ply, align 4
  %1121 = sext i32 %1120 to i64
  %1122 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %1121
  %1123 = getelementptr inbounds %struct.move_s, %struct.move_s* %1122, i32 0, i32 0
  %1124 = load i32, i32* %1123, align 8
  %1125 = icmp eq i32 %1119, %1124
  br i1 %1125, label %1126, label %1200

; <label>:1126:                                   ; preds = %1114
  %1127 = load i32, i32* %12, align 4
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1128
  %1130 = getelementptr inbounds %struct.move_s, %struct.move_s* %1129, i32 0, i32 1
  %1131 = load i32, i32* %1130, align 4
  %1132 = load i32, i32* @ply, align 4
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %1133
  %1135 = getelementptr inbounds %struct.move_s, %struct.move_s* %1134, i32 0, i32 1
  %1136 = load i32, i32* %1135, align 4
  %1137 = icmp eq i32 %1131, %1136
  br i1 %1137, label %1138, label %1200

; <label>:1138:                                   ; preds = %1126
  %1139 = load i32, i32* %12, align 4
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1140
  %1142 = getelementptr inbounds %struct.move_s, %struct.move_s* %1141, i32 0, i32 3
  %1143 = load i32, i32* %1142, align 4
  %1144 = load i32, i32* @ply, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %1145
  %1147 = getelementptr inbounds %struct.move_s, %struct.move_s* %1146, i32 0, i32 3
  %1148 = load i32, i32* %1147, align 4
  %1149 = icmp eq i32 %1143, %1148
  br i1 %1149, label %1150, label %1200

; <label>:1150:                                   ; preds = %1138
  %1151 = load i32, i32* @ply, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %1152
  %1154 = load i32, i32* %1153, align 4
  %1155 = add nsw i32 %1154, 1
  store i32 %1155, i32* %1153, align 4
  %1156 = load i32, i32* @ply, align 4
  %1157 = sext i32 %1156 to i64
  %1158 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %1157
  %1159 = load i32, i32* %1158, align 4
  %1160 = load i32, i32* @ply, align 4
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %1161
  %1163 = load i32, i32* %1162, align 4
  %1164 = icmp sgt i32 %1159, %1163
  br i1 %1164, label %1165, label %1199

; <label>:1165:                                   ; preds = %1150
  %1166 = load i32, i32* @ply, align 4
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %1167
  %1169 = bitcast %struct.move_s* %32 to i8*
  %1170 = bitcast %struct.move_s* %1168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1169, i8* %1170, i64 24, i32 4, i1 false)
  %1171 = load i32, i32* @ply, align 4
  %1172 = sext i32 %1171 to i64
  %1173 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %1172
  %1174 = load i32, i32* @ply, align 4
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %1175
  %1177 = bitcast %struct.move_s* %1173 to i8*
  %1178 = bitcast %struct.move_s* %1176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1177, i8* %1178, i64 24, i32 8, i1 false)
  %1179 = load i32, i32* @ply, align 4
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %1180
  %1182 = bitcast %struct.move_s* %1181 to i8*
  %1183 = bitcast %struct.move_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1182, i8* %1183, i64 24, i32 4, i1 false)
  %1184 = load i32, i32* @ply, align 4
  %1185 = sext i32 %1184 to i64
  %1186 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %1185
  %1187 = load i32, i32* %1186, align 4
  store i32 %1187, i32* %33, align 4
  %1188 = load i32, i32* @ply, align 4
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %1189
  %1191 = load i32, i32* %1190, align 4
  %1192 = load i32, i32* @ply, align 4
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %1193
  store i32 %1191, i32* %1194, align 4
  %1195 = load i32, i32* %33, align 4
  %1196 = load i32, i32* @ply, align 4
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %1197
  store i32 %1195, i32* %1198, align 4
  br label %1199

; <label>:1199:                                   ; preds = %1165, %1150
  br label %1212

; <label>:1200:                                   ; preds = %1138, %1126, %1114
  %1201 = load i32, i32* @ply, align 4
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %1202
  store i32 1, i32* %1203, align 4
  %1204 = load i32, i32* @ply, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %1205
  %1207 = load i32, i32* %12, align 4
  %1208 = sext i32 %1207 to i64
  %1209 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1208
  %1210 = bitcast %struct.move_s* %1206 to i8*
  %1211 = bitcast %struct.move_s* %1209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1210, i8* %1211, i64 24, i32 8, i1 false)
  br label %1212

; <label>:1212:                                   ; preds = %1200, %1199
  br label %1213

; <label>:1213:                                   ; preds = %1212, %1113
  br label %1214

; <label>:1214:                                   ; preds = %1213, %1022
  br label %1215

; <label>:1215:                                   ; preds = %1214, %963
  %1216 = load i32, i32* %27, align 4
  %1217 = icmp eq i32 %1216, 1
  br i1 %1217, label %1218, label %1221

; <label>:1218:                                   ; preds = %1215
  %1219 = load i32, i32* @FHF, align 4
  %1220 = add i32 %1219, 1
  store i32 %1220, i32* @FHF, align 4
  br label %1221

; <label>:1221:                                   ; preds = %1218, %1215
  %1222 = load i32, i32* @FH, align 4
  %1223 = add i32 %1222, 1
  store i32 %1223, i32* @FH, align 4
  %1224 = load i32, i32* %14, align 4
  %1225 = load i32, i32* %34, align 4
  %1226 = load i32, i32* %7, align 4
  %1227 = load i32, i32* %12, align 4
  %1228 = load i32, i32* %20, align 4
  %1229 = load i32, i32* %8, align 4
  call void @StoreTT(i32 %1224, i32 %1225, i32 %1226, i32 %1227, i32 %1228, i32 %1229)
  %1230 = load i32, i32* %14, align 4
  store i32 %1230, i32* %5, align 4
  br label %1375

; <label>:1231:                                   ; preds = %959
  %1232 = load i32, i32* %14, align 4
  store i32 %1232, i32* %6, align 4
  %1233 = load i32, i32* %12, align 4
  store i32 %1233, i32* %23, align 4
  %1234 = load i32, i32* @ply, align 4
  %1235 = sext i32 %1234 to i64
  %1236 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %1235
  %1237 = load i32, i32* @ply, align 4
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %1236, i64 0, i64 %1238
  %1240 = load i32, i32* %12, align 4
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %10, i64 0, i64 %1241
  %1243 = bitcast %struct.move_s* %1239 to i8*
  %1244 = bitcast %struct.move_s* %1242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1243, i8* %1244, i64 24, i32 8, i1 false)
  %1245 = load i32, i32* @ply, align 4
  %1246 = add nsw i32 %1245, 1
  store i32 %1246, i32* %13, align 4
  br label %1247

; <label>:1247:                                   ; preds = %1271, %1231
  %1248 = load i32, i32* %13, align 4
  %1249 = load i32, i32* @ply, align 4
  %1250 = add nsw i32 %1249, 1
  %1251 = sext i32 %1250 to i64
  %1252 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %1251
  %1253 = load i32, i32* %1252, align 4
  %1254 = icmp slt i32 %1248, %1253
  br i1 %1254, label %1255, label %1274

; <label>:1255:                                   ; preds = %1247
  %1256 = load i32, i32* @ply, align 4
  %1257 = sext i32 %1256 to i64
  %1258 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %1257
  %1259 = load i32, i32* %13, align 4
  %1260 = sext i32 %1259 to i64
  %1261 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %1258, i64 0, i64 %1260
  %1262 = load i32, i32* @ply, align 4
  %1263 = add nsw i32 %1262, 1
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %1264
  %1266 = load i32, i32* %13, align 4
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %1265, i64 0, i64 %1267
  %1269 = bitcast %struct.move_s* %1261 to i8*
  %1270 = bitcast %struct.move_s* %1268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1269, i8* %1270, i64 24, i32 8, i1 false)
  br label %1271

; <label>:1271:                                   ; preds = %1255
  %1272 = load i32, i32* %13, align 4
  %1273 = add nsw i32 %1272, 1
  store i32 %1273, i32* %13, align 4
  br label %1247

; <label>:1274:                                   ; preds = %1247
  %1275 = load i32, i32* @ply, align 4
  %1276 = add nsw i32 %1275, 1
  %1277 = sext i32 %1276 to i64
  %1278 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %1277
  %1279 = load i32, i32* %1278, align 4
  %1280 = load i32, i32* @ply, align 4
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %1281
  store i32 %1279, i32* %1282, align 4
  br label %1283

; <label>:1283:                                   ; preds = %1274, %956, %952
  %1284 = load i32, i32* %18, align 4
  %1285 = icmp ne i32 %1284, 0
  br i1 %1285, label %1286, label %1287

; <label>:1286:                                   ; preds = %1283
  store i32 0, i32* %27, align 4
  br label %1287

; <label>:1287:                                   ; preds = %1286, %1283
  br label %634

; <label>:1288:                                   ; preds = %634
  br label %1298

; <label>:1289:                                   ; preds = %625
  %1290 = load i32, i32* @ply, align 4
  %1291 = sub nsw i32 1000000, %1290
  %1292 = load i32, i32* %34, align 4
  %1293 = load i32, i32* %7, align 4
  %1294 = load i32, i32* %20, align 4
  %1295 = load i32, i32* %8, align 4
  call void @StoreTT(i32 %1291, i32 %1292, i32 %1293, i32 0, i32 %1294, i32 %1295)
  %1296 = load i32, i32* @ply, align 4
  %1297 = sub nsw i32 1000000, %1296
  store i32 %1297, i32* %5, align 4
  br label %1375

; <label>:1298:                                   ; preds = %1288
  %1299 = load i32, i32* %17, align 4
  %1300 = icmp ne i32 %1299, 0
  br i1 %1300, label %1301, label %1333

; <label>:1301:                                   ; preds = %1298
  %1302 = load i32, i32* @Variant, align 4
  %1303 = icmp ne i32 %1302, 4
  br i1 %1303, label %1304, label %1324

; <label>:1304:                                   ; preds = %1301
  %1305 = load i32, i32* @Variant, align 4
  %1306 = icmp ne i32 %1305, 3
  br i1 %1306, label %1307, label %1324

; <label>:1307:                                   ; preds = %1304
  %1308 = call i32 @in_check()
  %1309 = icmp ne i32 %1308, 0
  br i1 %1309, label %1310, label %1319

; <label>:1310:                                   ; preds = %1307
  %1311 = load i32, i32* @ply, align 4
  %1312 = add nsw i32 -1000000, %1311
  %1313 = load i32, i32* %34, align 4
  %1314 = load i32, i32* %7, align 4
  %1315 = load i32, i32* %20, align 4
  %1316 = load i32, i32* %8, align 4
  call void @StoreTT(i32 %1312, i32 %1313, i32 %1314, i32 0, i32 %1315, i32 %1316)
  %1317 = load i32, i32* @ply, align 4
  %1318 = add nsw i32 -1000000, %1317
  store i32 %1318, i32* %5, align 4
  br label %1375

; <label>:1319:                                   ; preds = %1307
  %1320 = load i32, i32* %34, align 4
  %1321 = load i32, i32* %7, align 4
  %1322 = load i32, i32* %20, align 4
  %1323 = load i32, i32* %8, align 4
  call void @StoreTT(i32 0, i32 %1320, i32 %1321, i32 0, i32 %1322, i32 %1323)
  store i32 0, i32* %5, align 4
  br label %1375

; <label>:1324:                                   ; preds = %1304, %1301
  %1325 = load i32, i32* @ply, align 4
  %1326 = sub nsw i32 1000000, %1325
  %1327 = load i32, i32* %34, align 4
  %1328 = load i32, i32* %7, align 4
  %1329 = load i32, i32* %20, align 4
  %1330 = load i32, i32* %8, align 4
  call void @StoreTT(i32 %1326, i32 %1327, i32 %1328, i32 0, i32 %1329, i32 %1330)
  %1331 = load i32, i32* @ply, align 4
  %1332 = sub nsw i32 1000000, %1331
  store i32 %1332, i32* %5, align 4
  br label %1375

; <label>:1333:                                   ; preds = %1298
  %1334 = load i32, i32* @fifty, align 4
  %1335 = icmp sgt i32 %1334, 100
  br i1 %1335, label %1336, label %1337

; <label>:1336:                                   ; preds = %1333
  store i32 0, i32* %5, align 4
  br label %1375

; <label>:1337:                                   ; preds = %1333
  br label %1338

; <label>:1338:                                   ; preds = %1337
  %1339 = load i32, i32* %23, align 4
  %1340 = icmp eq i32 %1339, -1
  br i1 %1340, label %1341, label %1342

; <label>:1341:                                   ; preds = %1338
  store i32 500, i32* %23, align 4
  br label %1342

; <label>:1342:                                   ; preds = %1341, %1338
  %1343 = load i32, i32* %24, align 4
  %1344 = load i32, i32* %34, align 4
  %1345 = icmp sle i32 %1343, %1344
  br i1 %1345, label %1346, label %1357

; <label>:1346:                                   ; preds = %1342
  %1347 = load i32, i32* %31, align 4
  %1348 = icmp ne i32 %1347, 0
  br i1 %1348, label %1356, label %1349

; <label>:1349:                                   ; preds = %1346
  %1350 = load i32, i32* %24, align 4
  %1351 = load i32, i32* %34, align 4
  %1352 = load i32, i32* %7, align 4
  %1353 = load i32, i32* %23, align 4
  %1354 = load i32, i32* %20, align 4
  %1355 = load i32, i32* %8, align 4
  call void @StoreTT(i32 %1350, i32 %1351, i32 %1352, i32 %1353, i32 %1354, i32 %1355)
  br label %1356

; <label>:1356:                                   ; preds = %1349, %1346
  br label %1373

; <label>:1357:                                   ; preds = %1342
  %1358 = load i32, i32* %31, align 4
  %1359 = icmp ne i32 %1358, 0
  br i1 %1359, label %1367, label %1360

; <label>:1360:                                   ; preds = %1357
  %1361 = load i32, i32* %24, align 4
  %1362 = load i32, i32* %34, align 4
  %1363 = load i32, i32* %7, align 4
  %1364 = load i32, i32* %23, align 4
  %1365 = load i32, i32* %20, align 4
  %1366 = load i32, i32* %8, align 4
  call void @StoreTT(i32 %1361, i32 %1362, i32 %1363, i32 %1364, i32 %1365, i32 %1366)
  br label %1372

; <label>:1367:                                   ; preds = %1357
  %1368 = load i32, i32* %24, align 4
  %1369 = load i32, i32* %23, align 4
  %1370 = load i32, i32* %20, align 4
  %1371 = load i32, i32* %8, align 4
  call void @StoreTT(i32 %1368, i32 -1000000, i32 -1000000, i32 %1369, i32 %1370, i32 %1371)
  br label %1372

; <label>:1372:                                   ; preds = %1367, %1360
  br label %1373

; <label>:1373:                                   ; preds = %1372, %1356
  %1374 = load i32, i32* %24, align 4
  store i32 %1374, i32* %5, align 4
  br label %1375

; <label>:1375:                                   ; preds = %1373, %1336, %1324, %1319, %1310, %1289, %1221, %951, %430, %423, %291, %262, %255, %249, %240, %238, %219, %209, %105, %93, %47
  %1376 = load i32, i32* %5, align 4
  ret i32 %1376
}

declare i32 @is_draw() #2

declare i32 @suicide_eval() #2

declare i32 @losers_eval() #2

declare i32 @ProbeTT(i32*, i32, i32*, i32*, i32*, i32) #2

declare void @StoreTT(i32, i32, i32, i32, i32, i32) #2

declare i32 @f_in_check(%struct.move_s*, i32) #2

declare i32 @calc_attackers(i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @search_root(%struct.move_s* noalias sret, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x %struct.move_s], align 16
  %9 = alloca %struct.move_s, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [512 x i32], align 16
  %15 = alloca [512 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.move_s, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 %3, i32* %7, align 4
  %26 = bitcast %struct.move_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  store i32 -1000000, i32* %13, align 4
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %20, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* @ply, align 4
  store i32 1, i32* @searching_pv, align 4
  store i32 0, i32* @time_exit, align 4
  store i32 0, i32* @time_failure, align 4
  store i32 1, i32* %18, align 4
  store i32 -1000000, i32* @cur_score, align 4
  %29 = load i32, i32* @nodes, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @nodes, align 4
  %31 = call i32 @is_draw()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

; <label>:33:                                     ; preds = %4
  store i32 5, i32* @result, align 4
  store i32 0, i32* @cur_score, align 4
  %34 = load i32, i32* @ply, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %35
  store i32 0, i32* %36, align 4
  %37 = bitcast %struct.move_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %854

; <label>:38:                                     ; preds = %4
  %39 = load i32, i32* @ply, align 4
  %40 = load i32, i32* @ply, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @hash, align 4
  %44 = load i32, i32* @move_number, align 4
  %45 = load i32, i32* @ply, align 4
  %46 = add nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = call i32 @in_check()
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* %23, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

; <label>:53:                                     ; preds = %38
  %54 = load i32, i32* @ext_check, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* @ext_check, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

; <label>:58:                                     ; preds = %53, %38
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* @ply, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [300 x i32], [300 x i32]* @checks, i64 0, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @ply, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i64 0, i64 %64
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* @ply, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i64 0, i64 %67
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @Variant, align 4
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %128

; <label>:71:                                     ; preds = %58
  store i32 0, i32* @legals, align 4
  store i32 1, i32* @captures, align 4
  %72 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  call void @gen(%struct.move_s* %72)
  %73 = load i32, i32* @numb_moves, align 4
  store i32 %73, i32* %10, align 4
  store i32 0, i32* @captures, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

; <label>:76:                                     ; preds = %71
  store i32 0, i32* %11, align 4
  br label %77

; <label>:77:                                     ; preds = %95, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %98

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %83 = load i32, i32* %11, align 4
  call void @make(%struct.move_s* %82, i32 %83)
  %84 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %23, align 4
  %87 = call i32 @check_legal(%struct.move_s* %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %81
  %90 = load i32, i32* @legals, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @legals, align 4
  br label %92

; <label>:92:                                     ; preds = %89, %81
  %93 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %94 = load i32, i32* %11, align 4
  call void @unmake(%struct.move_s* %93, i32 %94)
  br label %95

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %77

; <label>:98:                                     ; preds = %77
  br label %99

; <label>:99:                                     ; preds = %98, %71
  %100 = load i32, i32* @legals, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %127, label %102

; <label>:102:                                    ; preds = %99
  store i32 0, i32* @captures, align 4
  %103 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  call void @gen(%struct.move_s* %103)
  %104 = load i32, i32* @numb_moves, align 4
  store i32 %104, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %105

; <label>:105:                                    ; preds = %123, %102
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %126

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %111 = load i32, i32* %11, align 4
  call void @make(%struct.move_s* %110, i32 %111)
  %112 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %23, align 4
  %115 = call i32 @check_legal(%struct.move_s* %112, i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

; <label>:117:                                    ; preds = %109
  %118 = load i32, i32* @legals, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @legals, align 4
  br label %120

; <label>:120:                                    ; preds = %117, %109
  %121 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %122 = load i32, i32* %11, align 4
  call void @unmake(%struct.move_s* %121, i32 %122)
  br label %123

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %105

; <label>:126:                                    ; preds = %105
  br label %127

; <label>:127:                                    ; preds = %126, %99
  br label %131

; <label>:128:                                    ; preds = %58
  %129 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  call void @gen(%struct.move_s* %129)
  %130 = load i32, i32* @numb_moves, align 4
  store i32 %130, i32* %10, align 4
  br label %131

; <label>:131:                                    ; preds = %128, %127
  %132 = load i32, i32* @legals, align 4
  store i32 %132, i32* @movetotal, align 4
  %133 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %134 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %135 = getelementptr inbounds [512 x i32], [512 x i32]* %15, i64 0, i64 0
  %136 = load i32, i32* %10, align 4
  call void @order_moves(%struct.move_s* %133, i32* %134, i32* %135, i32 %136, i32 -1)
  br label %137

; <label>:137:                                    ; preds = %801, %157, %131
  %138 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @remove_one(i32* %11, i32* %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %808

; <label>:142:                                    ; preds = %137
  %143 = load i32, i32* @alllosers, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %158, label %145

; <label>:145:                                    ; preds = %142
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

; <label>:151:                                    ; preds = %145
  %152 = load i32, i32* @Variant, align 4
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %157, label %154

; <label>:154:                                    ; preds = %151
  %155 = load i32, i32* @Variant, align 4
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %154, %151
  br label %137

; <label>:158:                                    ; preds = %154, %145, %142
  %159 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %160 = load i32, i32* %11, align 4
  call void @make(%struct.move_s* %159, i32 %160)
  store i32 0, i32* %17, align 4
  %161 = load i32, i32* @hash, align 4
  %162 = load i32, i32* @move_number, align 4
  %163 = load i32, i32* @ply, align 4
  %164 = add nsw i32 %162, %163
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %166
  store i32 %161, i32* %167, align 4
  %168 = load i32, i32* @ply, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i64 0, i64 %170
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %173
  %175 = bitcast %struct.move_s* %171 to i8*
  %176 = bitcast %struct.move_s* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %176, i64 24, i32 8, i1 false)
  %177 = load i32, i32* @nodes, align 4
  store i32 %177, i32* %25, align 4
  %178 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %23, align 4
  %181 = call i32 @check_legal(%struct.move_s* %178, i32 %179, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %465

; <label>:183:                                    ; preds = %158
  %184 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %185 = load i32, i32* %11, align 4
  call void @unmake(%struct.move_s* %184, i32 %185)
  %186 = load i32, i32* %24, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %24, align 4
  %188 = load i32, i32* @movetotal, align 4
  %189 = load i32, i32* %24, align 4
  %190 = sub nsw i32 %188, %189
  store i32 %190, i32* @moveleft, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %192
  call void @comp_to_san(%struct.move_s* byval align 8 %193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @searching_move, i32 0, i32 0))
  %194 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %195 = load i32, i32* %11, align 4
  call void @make(%struct.move_s* %194, i32 %195)
  %196 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @f_in_check(%struct.move_s* %196, i32 %197)
  %199 = load i32, i32* @ply, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [300 x i32], [300 x i32]* @checks, i64 0, i64 %200
  store i32 %198, i32* %201, align 4
  %202 = load i32, i32* @ply, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i64 0, i64 %203
  store i32 0, i32* %204, align 4
  %205 = load i32, i32* @ply, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i64 0, i64 %206
  store i32 0, i32* %207, align 4
  %208 = load i32, i32* %18, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %213, label %210

; <label>:210:                                    ; preds = %183
  %211 = load i32, i32* @i_depth, align 4
  %212 = icmp slt i32 %211, 2
  br i1 %212, label %213, label %320

; <label>:213:                                    ; preds = %210, %183
  %214 = load i32, i32* %20, align 4
  %215 = sub nsw i32 0, %214
  %216 = load i32, i32* %19, align 4
  %217 = sub nsw i32 0, %216
  %218 = load i32, i32* %7, align 4
  %219 = sub nsw i32 %218, 1
  %220 = call i32 @search(i32 %215, i32 %217, i32 %219, i32 0)
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* @time_exit, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %319, label %224

; <label>:224:                                    ; preds = %213
  %225 = load i32, i32* @post, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

; <label>:227:                                    ; preds = %224
  %228 = load i32, i32* @xb_mode, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %319, label %230

; <label>:230:                                    ; preds = %227, %224
  %231 = load i32, i32* @i_depth, align 4
  %232 = icmp sge i32 %231, 2
  br i1 %232, label %233, label %319

; <label>:233:                                    ; preds = %230
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %20, align 4
  %236 = icmp sge i32 %234, %235
  br i1 %236, label %237, label %242

; <label>:237:                                    ; preds = %233
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %240
  call void @post_fh_thinking(i32 %238, %struct.move_s* %241)
  br label %303

; <label>:242:                                    ; preds = %233
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %19, align 4
  %245 = icmp sle i32 %243, %244
  br i1 %245, label %246, label %251

; <label>:246:                                    ; preds = %242
  store i32 1, i32* @failed, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %249
  call void @post_fl_thinking(i32 %247, %struct.move_s* %250)
  br label %302

; <label>:251:                                    ; preds = %242
  %252 = load i32, i32* @ply, align 4
  %253 = sub nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %254
  %256 = load i32, i32* @ply, align 4
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %255, i64 0, i64 %258
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %261
  %263 = bitcast %struct.move_s* %259 to i8*
  %264 = bitcast %struct.move_s* %262 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %263, i8* %264, i64 24, i32 8, i1 false)
  %265 = load i32, i32* @ply, align 4
  store i32 %265, i32* %12, align 4
  br label %266

; <label>:266:                                    ; preds = %289, %251
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* @ply, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %267, %271
  br i1 %272, label %273, label %292

; <label>:273:                                    ; preds = %266
  %274 = load i32, i32* @ply, align 4
  %275 = sub nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %276
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %277, i64 0, i64 %279
  %281 = load i32, i32* @ply, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %282
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %283, i64 0, i64 %285
  %287 = bitcast %struct.move_s* %280 to i8*
  %288 = bitcast %struct.move_s* %286 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %287, i8* %288, i64 24, i32 8, i1 false)
  br label %289

; <label>:289:                                    ; preds = %273
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %12, align 4
  br label %266

; <label>:292:                                    ; preds = %266
  %293 = load i32, i32* @ply, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @ply, align 4
  %298 = sub nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %299
  store i32 %296, i32* %300, align 4
  %301 = load i32, i32* %13, align 4
  call void @post_thinking(i32 %301)
  br label %302

; <label>:302:                                    ; preds = %292, %246
  br label %303

; <label>:303:                                    ; preds = %302, %237
  %304 = load i32, i32* %13, align 4
  %305 = load i32, i32* @cur_score, align 4
  %306 = icmp sgt i32 %304, %305
  br i1 %306, label %307, label %318

; <label>:307:                                    ; preds = %303
  %308 = load i32, i32* @time_exit, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %318, label %310

; <label>:310:                                    ; preds = %307
  %311 = load i32, i32* %13, align 4
  store i32 %311, i32* @cur_score, align 4
  %312 = load i32, i32* %11, align 4
  store i32 %312, i32* @bestmovenum, align 4
  %313 = load i32, i32* %11, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %314
  %316 = bitcast %struct.move_s* %9 to i8*
  %317 = bitcast %struct.move_s* %315 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %316, i8* %317, i64 24, i32 4, i1 false)
  br label %318

; <label>:318:                                    ; preds = %310, %307, %303
  br label %319

; <label>:319:                                    ; preds = %318, %230, %227, %213
  br label %438

; <label>:320:                                    ; preds = %210
  %321 = load i32, i32* %19, align 4
  %322 = sub nsw i32 0, %321
  %323 = sub nsw i32 %322, 1
  %324 = load i32, i32* %19, align 4
  %325 = sub nsw i32 0, %324
  %326 = load i32, i32* %7, align 4
  %327 = sub nsw i32 %326, 1
  %328 = call i32 @search(i32 %323, i32 %325, i32 %327, i32 0)
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %13, align 4
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %19, align 4
  %332 = icmp sgt i32 %330, %331
  br i1 %332, label %333, label %425

; <label>:333:                                    ; preds = %320
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* %20, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %425

; <label>:337:                                    ; preds = %333
  %338 = load i32, i32* @time_exit, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %425, label %340

; <label>:340:                                    ; preds = %337
  %341 = load i32, i32* %13, align 4
  %342 = load i32, i32* %11, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %343
  call void @post_fail_thinking(i32 %341, %struct.move_s* %344)
  %345 = load i32, i32* %20, align 4
  %346 = sub nsw i32 0, %345
  %347 = load i32, i32* %19, align 4
  %348 = sub nsw i32 0, %347
  %349 = load i32, i32* %7, align 4
  %350 = sub nsw i32 %349, 1
  %351 = call i32 @search(i32 %346, i32 %348, i32 %350, i32 0)
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %13, align 4
  %353 = load i32, i32* %13, align 4
  %354 = load i32, i32* %19, align 4
  %355 = icmp sgt i32 %353, %354
  br i1 %355, label %356, label %424

; <label>:356:                                    ; preds = %340
  %357 = load i32, i32* @time_exit, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %424, label %359

; <label>:359:                                    ; preds = %356
  store i32 0, i32* @failed, align 4
  %360 = load i32, i32* %13, align 4
  store i32 %360, i32* @cur_score, align 4
  %361 = load i32, i32* %11, align 4
  store i32 %361, i32* @bestmovenum, align 4
  %362 = load i32, i32* %11, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %363
  %365 = bitcast %struct.move_s* %9 to i8*
  %366 = bitcast %struct.move_s* %364 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %365, i8* %366, i64 24, i32 4, i1 false)
  %367 = load i32, i32* %13, align 4
  %368 = load i32, i32* %20, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %423

; <label>:370:                                    ; preds = %359
  %371 = load i32, i32* @i_depth, align 4
  %372 = icmp sge i32 %371, 2
  br i1 %372, label %373, label %423

; <label>:373:                                    ; preds = %370
  %374 = load i32, i32* @ply, align 4
  %375 = sub nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %376
  %378 = load i32, i32* @ply, align 4
  %379 = sub nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %377, i64 0, i64 %380
  %382 = load i32, i32* %11, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %383
  %385 = bitcast %struct.move_s* %381 to i8*
  %386 = bitcast %struct.move_s* %384 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %385, i8* %386, i64 24, i32 8, i1 false)
  %387 = load i32, i32* @ply, align 4
  store i32 %387, i32* %12, align 4
  br label %388

; <label>:388:                                    ; preds = %411, %373
  %389 = load i32, i32* %12, align 4
  %390 = load i32, i32* @ply, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = icmp slt i32 %389, %393
  br i1 %394, label %395, label %414

; <label>:395:                                    ; preds = %388
  %396 = load i32, i32* @ply, align 4
  %397 = sub nsw i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %398
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %399, i64 0, i64 %401
  %403 = load i32, i32* @ply, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %404
  %406 = load i32, i32* %12, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %405, i64 0, i64 %407
  %409 = bitcast %struct.move_s* %402 to i8*
  %410 = bitcast %struct.move_s* %408 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %409, i8* %410, i64 24, i32 8, i1 false)
  br label %411

; <label>:411:                                    ; preds = %395
  %412 = load i32, i32* %12, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %12, align 4
  br label %388

; <label>:414:                                    ; preds = %388
  %415 = load i32, i32* @ply, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @ply, align 4
  %420 = sub nsw i32 %419, 1
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %421
  store i32 %418, i32* %422, align 4
  br label %423

; <label>:423:                                    ; preds = %414, %370, %359
  br label %424

; <label>:424:                                    ; preds = %423, %356, %340
  br label %425

; <label>:425:                                    ; preds = %424, %337, %333, %320
  %426 = load i32, i32* %13, align 4
  %427 = load i32, i32* %20, align 4
  %428 = icmp sge i32 %426, %427
  br i1 %428, label %429, label %437

; <label>:429:                                    ; preds = %425
  %430 = load i32, i32* @time_exit, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %437, label %432

; <label>:432:                                    ; preds = %429
  %433 = load i32, i32* %13, align 4
  %434 = load i32, i32* %11, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %435
  call void @post_fh_thinking(i32 %433, %struct.move_s* %436)
  br label %437

; <label>:437:                                    ; preds = %432, %429, %425
  br label %438

; <label>:438:                                    ; preds = %437, %319
  %439 = load i32, i32* %13, align 4
  %440 = load i32, i32* @cur_score, align 4
  %441 = icmp sgt i32 %439, %440
  br i1 %441, label %442, label %453

; <label>:442:                                    ; preds = %438
  %443 = load i32, i32* @time_exit, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %453, label %445

; <label>:445:                                    ; preds = %442
  %446 = load i32, i32* %13, align 4
  store i32 %446, i32* @cur_score, align 4
  %447 = load i32, i32* %11, align 4
  store i32 %447, i32* @bestmovenum, align 4
  %448 = load i32, i32* %11, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %449
  %451 = bitcast %struct.move_s* %9 to i8*
  %452 = bitcast %struct.move_s* %450 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %451, i8* %452, i64 24, i32 4, i1 false)
  br label %453

; <label>:453:                                    ; preds = %445, %442, %438
  %454 = load i32, i32* @time_exit, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %464

; <label>:456:                                    ; preds = %453
  %457 = load i32, i32* @cur_score, align 4
  %458 = icmp eq i32 %457, -1000000
  br i1 %458, label %459, label %464

; <label>:459:                                    ; preds = %456
  %460 = load i32, i32* %16, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

; <label>:462:                                    ; preds = %459
  store i32 1, i32* @time_failure, align 4
  br label %463

; <label>:463:                                    ; preds = %462, %459
  br label %464

; <label>:464:                                    ; preds = %463, %456, %453
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %465

; <label>:465:                                    ; preds = %464, %158
  %466 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 0
  %467 = load i32, i32* %11, align 4
  call void @unmake(%struct.move_s* %466, i32 %467)
  %468 = load i32, i32* @time_exit, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %473

; <label>:470:                                    ; preds = %465
  %471 = bitcast %struct.move_s* %0 to i8*
  %472 = bitcast %struct.move_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %471, i8* %472, i64 24, i32 4, i1 false)
  br label %854

; <label>:473:                                    ; preds = %465
  %474 = load i32, i32* %13, align 4
  %475 = load i32, i32* %19, align 4
  %476 = icmp sgt i32 %474, %475
  br i1 %476, label %477, label %797

; <label>:477:                                    ; preds = %473
  %478 = load i32, i32* %17, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %797

; <label>:480:                                    ; preds = %477
  %481 = load i32, i32* %11, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %482
  %484 = getelementptr inbounds %struct.move_s, %struct.move_s* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @ply, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %487
  %489 = getelementptr inbounds %struct.move_s, %struct.move_s* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = icmp eq i32 %485, %490
  br i1 %491, label %492, label %522

; <label>:492:                                    ; preds = %480
  %493 = load i32, i32* %11, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %494
  %496 = getelementptr inbounds %struct.move_s, %struct.move_s* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @ply, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %499
  %501 = getelementptr inbounds %struct.move_s, %struct.move_s* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = icmp eq i32 %497, %502
  br i1 %503, label %504, label %522

; <label>:504:                                    ; preds = %492
  %505 = load i32, i32* %11, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %506
  %508 = getelementptr inbounds %struct.move_s, %struct.move_s* %507, i32 0, i32 3
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* @ply, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %511
  %513 = getelementptr inbounds %struct.move_s, %struct.move_s* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 4
  %515 = icmp eq i32 %509, %514
  br i1 %515, label %516, label %522

; <label>:516:                                    ; preds = %504
  %517 = load i32, i32* @ply, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %519, align 4
  br label %708

; <label>:522:                                    ; preds = %504, %492, %480
  %523 = load i32, i32* %11, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %524
  %526 = getelementptr inbounds %struct.move_s, %struct.move_s* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = load i32, i32* @ply, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %529
  %531 = getelementptr inbounds %struct.move_s, %struct.move_s* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = icmp eq i32 %527, %532
  br i1 %533, label %534, label %608

; <label>:534:                                    ; preds = %522
  %535 = load i32, i32* %11, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %536
  %538 = getelementptr inbounds %struct.move_s, %struct.move_s* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* @ply, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %541
  %543 = getelementptr inbounds %struct.move_s, %struct.move_s* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = icmp eq i32 %539, %544
  br i1 %545, label %546, label %608

; <label>:546:                                    ; preds = %534
  %547 = load i32, i32* %11, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %548
  %550 = getelementptr inbounds %struct.move_s, %struct.move_s* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 4
  %552 = load i32, i32* @ply, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %553
  %555 = getelementptr inbounds %struct.move_s, %struct.move_s* %554, i32 0, i32 3
  %556 = load i32, i32* %555, align 4
  %557 = icmp eq i32 %551, %556
  br i1 %557, label %558, label %608

; <label>:558:                                    ; preds = %546
  %559 = load i32, i32* @ply, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %561, align 4
  %564 = load i32, i32* @ply, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* @ply, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = icmp sgt i32 %567, %571
  br i1 %572, label %573, label %607

; <label>:573:                                    ; preds = %558
  %574 = load i32, i32* @ply, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %575
  %577 = bitcast %struct.move_s* %21 to i8*
  %578 = bitcast %struct.move_s* %576 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %577, i8* %578, i64 24, i32 4, i1 false)
  %579 = load i32, i32* @ply, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %580
  %582 = load i32, i32* @ply, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %583
  %585 = bitcast %struct.move_s* %581 to i8*
  %586 = bitcast %struct.move_s* %584 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %585, i8* %586, i64 24, i32 8, i1 false)
  %587 = load i32, i32* @ply, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %588
  %590 = bitcast %struct.move_s* %589 to i8*
  %591 = bitcast %struct.move_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %590, i8* %591, i64 24, i32 4, i1 false)
  %592 = load i32, i32* @ply, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %593
  %595 = load i32, i32* %594, align 4
  store i32 %595, i32* %22, align 4
  %596 = load i32, i32* @ply, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %597
  %599 = load i32, i32* %598, align 4
  %600 = load i32, i32* @ply, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %601
  store i32 %599, i32* %602, align 4
  %603 = load i32, i32* %22, align 4
  %604 = load i32, i32* @ply, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %605
  store i32 %603, i32* %606, align 4
  br label %607

; <label>:607:                                    ; preds = %573, %558
  br label %707

; <label>:608:                                    ; preds = %546, %534, %522
  %609 = load i32, i32* %11, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %610
  %612 = getelementptr inbounds %struct.move_s, %struct.move_s* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = load i32, i32* @ply, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %615
  %617 = getelementptr inbounds %struct.move_s, %struct.move_s* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = icmp eq i32 %613, %618
  br i1 %619, label %620, label %694

; <label>:620:                                    ; preds = %608
  %621 = load i32, i32* %11, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %622
  %624 = getelementptr inbounds %struct.move_s, %struct.move_s* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 4
  %626 = load i32, i32* @ply, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %627
  %629 = getelementptr inbounds %struct.move_s, %struct.move_s* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = icmp eq i32 %625, %630
  br i1 %631, label %632, label %694

; <label>:632:                                    ; preds = %620
  %633 = load i32, i32* %11, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %634
  %636 = getelementptr inbounds %struct.move_s, %struct.move_s* %635, i32 0, i32 3
  %637 = load i32, i32* %636, align 4
  %638 = load i32, i32* @ply, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %639
  %641 = getelementptr inbounds %struct.move_s, %struct.move_s* %640, i32 0, i32 3
  %642 = load i32, i32* %641, align 4
  %643 = icmp eq i32 %637, %642
  br i1 %643, label %644, label %694

; <label>:644:                                    ; preds = %632
  %645 = load i32, i32* @ply, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %646
  %648 = load i32, i32* %647, align 4
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* %647, align 4
  %650 = load i32, i32* @ply, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %651
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* @ply, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %655
  %657 = load i32, i32* %656, align 4
  %658 = icmp sgt i32 %653, %657
  br i1 %658, label %659, label %693

; <label>:659:                                    ; preds = %644
  %660 = load i32, i32* @ply, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %661
  %663 = bitcast %struct.move_s* %21 to i8*
  %664 = bitcast %struct.move_s* %662 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %663, i8* %664, i64 24, i32 4, i1 false)
  %665 = load i32, i32* @ply, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %666
  %668 = load i32, i32* @ply, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %669
  %671 = bitcast %struct.move_s* %667 to i8*
  %672 = bitcast %struct.move_s* %670 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %671, i8* %672, i64 24, i32 8, i1 false)
  %673 = load i32, i32* @ply, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %674
  %676 = bitcast %struct.move_s* %675 to i8*
  %677 = bitcast %struct.move_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %676, i8* %677, i64 24, i32 4, i1 false)
  %678 = load i32, i32* @ply, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %679
  %681 = load i32, i32* %680, align 4
  store i32 %681, i32* %22, align 4
  %682 = load i32, i32* @ply, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = load i32, i32* @ply, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %687
  store i32 %685, i32* %688, align 4
  %689 = load i32, i32* %22, align 4
  %690 = load i32, i32* @ply, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %691
  store i32 %689, i32* %692, align 4
  br label %693

; <label>:693:                                    ; preds = %659, %644
  br label %706

; <label>:694:                                    ; preds = %632, %620, %608
  %695 = load i32, i32* @ply, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %696
  store i32 1, i32* %697, align 4
  %698 = load i32, i32* @ply, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %699
  %701 = load i32, i32* %11, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %702
  %704 = bitcast %struct.move_s* %700 to i8*
  %705 = bitcast %struct.move_s* %703 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %704, i8* %705, i64 24, i32 8, i1 false)
  br label %706

; <label>:706:                                    ; preds = %694, %693
  br label %707

; <label>:707:                                    ; preds = %706, %607
  br label %708

; <label>:708:                                    ; preds = %707, %516
  %709 = load i32, i32* %11, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %710
  %712 = getelementptr inbounds %struct.move_s, %struct.move_s* %711, i32 0, i32 0
  %713 = load i32, i32* %712, align 8
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @history_h, i64 0, i64 %714
  %716 = load i32, i32* %11, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %717
  %719 = getelementptr inbounds %struct.move_s, %struct.move_s* %718, i32 0, i32 1
  %720 = load i32, i32* %719, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [144 x i32], [144 x i32]* %715, i64 0, i64 %721
  %723 = load i32, i32* %722, align 4
  %724 = add i32 %723, 1
  store i32 %724, i32* %722, align 4
  %725 = load i32, i32* %13, align 4
  store i32 %725, i32* %19, align 4
  %726 = load i32, i32* %11, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %727
  %729 = bitcast %struct.move_s* %9 to i8*
  %730 = bitcast %struct.move_s* %728 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %729, i8* %730, i64 24, i32 4, i1 false)
  %731 = load i32, i32* %11, align 4
  store i32 %731, i32* @bestmovenum, align 4
  %732 = load i32, i32* %19, align 4
  store i32 %732, i32* @cur_score, align 4
  %733 = load i32, i32* @ply, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %734
  %736 = load i32, i32* @ply, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %735, i64 0, i64 %737
  %739 = load i32, i32* %11, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %8, i64 0, i64 %740
  %742 = bitcast %struct.move_s* %738 to i8*
  %743 = bitcast %struct.move_s* %741 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %742, i8* %743, i64 24, i32 8, i1 false)
  %744 = load i32, i32* @ply, align 4
  %745 = add nsw i32 %744, 1
  store i32 %745, i32* %12, align 4
  br label %746

; <label>:746:                                    ; preds = %770, %708
  %747 = load i32, i32* %12, align 4
  %748 = load i32, i32* @ply, align 4
  %749 = add nsw i32 %748, 1
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %750
  %752 = load i32, i32* %751, align 4
  %753 = icmp slt i32 %747, %752
  br i1 %753, label %754, label %773

; <label>:754:                                    ; preds = %746
  %755 = load i32, i32* @ply, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %756
  %758 = load i32, i32* %12, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %757, i64 0, i64 %759
  %761 = load i32, i32* @ply, align 4
  %762 = add nsw i32 %761, 1
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %763
  %765 = load i32, i32* %12, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %764, i64 0, i64 %766
  %768 = bitcast %struct.move_s* %760 to i8*
  %769 = bitcast %struct.move_s* %767 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %768, i8* %769, i64 24, i32 8, i1 false)
  br label %770

; <label>:770:                                    ; preds = %754
  %771 = load i32, i32* %12, align 4
  %772 = add nsw i32 %771, 1
  store i32 %772, i32* %12, align 4
  br label %746

; <label>:773:                                    ; preds = %746
  %774 = load i32, i32* @ply, align 4
  %775 = add nsw i32 %774, 1
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %776
  %778 = load i32, i32* %777, align 4
  %779 = load i32, i32* @ply, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %780
  store i32 %778, i32* %781, align 4
  %782 = load i32, i32* @cur_score, align 4
  %783 = load i32, i32* %20, align 4
  %784 = icmp sge i32 %782, %783
  br i1 %784, label %785, label %788

; <label>:785:                                    ; preds = %773
  %786 = bitcast %struct.move_s* %0 to i8*
  %787 = bitcast %struct.move_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %786, i8* %787, i64 24, i32 4, i1 false)
  br label %854

; <label>:788:                                    ; preds = %773
  %789 = load i32, i32* @post, align 4
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %791, label %796

; <label>:791:                                    ; preds = %788
  %792 = load i32, i32* @i_depth, align 4
  %793 = icmp sge i32 %792, 2
  br i1 %793, label %794, label %796

; <label>:794:                                    ; preds = %791
  %795 = load i32, i32* %19, align 4
  call void @post_thinking(i32 %795)
  br label %796

; <label>:796:                                    ; preds = %794, %791, %788
  br label %797

; <label>:797:                                    ; preds = %796, %477, %473
  %798 = load i32, i32* %17, align 4
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %800, label %801

; <label>:800:                                    ; preds = %797
  store i32 0, i32* %18, align 4
  br label %801

; <label>:801:                                    ; preds = %800, %797
  %802 = load i32, i32* @nodes, align 4
  %803 = load i32, i32* %25, align 4
  %804 = sub nsw i32 %802, %803
  %805 = load i32, i32* %11, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds [512 x i32], [512 x i32]* @rootnodecount, i64 0, i64 %806
  store i32 %804, i32* %807, align 4
  br label %137

; <label>:808:                                    ; preds = %137
  %809 = load i32, i32* %16, align 4
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %838

; <label>:811:                                    ; preds = %808
  %812 = load i32, i32* @is_pondering, align 4
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %838, label %814

; <label>:814:                                    ; preds = %811
  %815 = load i32, i32* @Variant, align 4
  %816 = icmp ne i32 %815, 3
  br i1 %816, label %817, label %831

; <label>:817:                                    ; preds = %814
  %818 = load i32, i32* @Variant, align 4
  %819 = icmp ne i32 %818, 4
  br i1 %819, label %820, label %831

; <label>:820:                                    ; preds = %817
  %821 = call i32 @in_check()
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %823, label %829

; <label>:823:                                    ; preds = %820
  %824 = load i32, i32* @white_to_move, align 4
  %825 = icmp eq i32 %824, 1
  br i1 %825, label %826, label %827

; <label>:826:                                    ; preds = %823
  store i32 2, i32* @result, align 4
  br label %828

; <label>:827:                                    ; preds = %823
  store i32 3, i32* @result, align 4
  br label %828

; <label>:828:                                    ; preds = %827, %826
  br label %830

; <label>:829:                                    ; preds = %820
  store i32 1, i32* @result, align 4
  br label %830

; <label>:830:                                    ; preds = %829, %828
  br label %837

; <label>:831:                                    ; preds = %817, %814
  %832 = load i32, i32* @white_to_move, align 4
  %833 = icmp eq i32 %832, 1
  br i1 %833, label %834, label %835

; <label>:834:                                    ; preds = %831
  store i32 3, i32* @result, align 4
  br label %836

; <label>:835:                                    ; preds = %831
  store i32 2, i32* @result, align 4
  br label %836

; <label>:836:                                    ; preds = %835, %834
  br label %837

; <label>:837:                                    ; preds = %836, %830
  br label %851

; <label>:838:                                    ; preds = %811, %808
  %839 = load i32, i32* @is_pondering, align 4
  %840 = icmp ne i32 %839, 0
  br i1 %840, label %850, label %841

; <label>:841:                                    ; preds = %838
  %842 = load i32, i32* @fifty, align 4
  %843 = icmp sgt i32 %842, 100
  br i1 %843, label %844, label %849

; <label>:844:                                    ; preds = %841
  store i32 4, i32* @result, align 4
  store i32 0, i32* @cur_score, align 4
  %845 = load i32, i32* @ply, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i64 0, i64 %846
  store i32 0, i32* %847, align 4
  %848 = bitcast %struct.move_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %848, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %854

; <label>:849:                                    ; preds = %841
  br label %850

; <label>:850:                                    ; preds = %849, %838
  br label %851

; <label>:851:                                    ; preds = %850, %837
  %852 = bitcast %struct.move_s* %0 to i8*
  %853 = bitcast %struct.move_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %852, i8* %853, i64 24, i32 4, i1 false)
  br label %854

; <label>:854:                                    ; preds = %851, %844, %785, %470, %33
  ret void
}

declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #2

declare void @post_fh_thinking(i32, %struct.move_s*) #2

declare void @post_fl_thinking(i32, %struct.move_s*) #2

declare void @post_thinking(i32) #2

declare void @post_fail_thinking(i32, %struct.move_s*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @think(%struct.move_s* noalias sret) #0 {
  %2 = alloca %struct.move_s, align 8
  %3 = alloca %struct.move_s, align 4
  %4 = alloca %struct.move_s, align 4
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
  %15 = alloca [512 x %struct.move_s], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [8 x i8], align 1
  %22 = alloca %struct.move_s, align 4
  %23 = alloca %struct.move_s, align 4
  %24 = alloca %struct.move_s, align 4
  %25 = alloca %struct.move_s, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* @userealholdings, align 4
  store i32 0, i32* %19, align 4
  br label %26

; <label>:26:                                     ; preds = %708, %535, %1
  store i32 0, i32* @nodes, align 4
  store i32 0, i32* @qnodes, align 4
  store i32 1, i32* @ply, align 4
  store i32 0, i32* @ECacheProbes, align 4
  store i32 0, i32* @ECacheHits, align 4
  store i32 0, i32* @TTProbes, align 4
  store i32 0, i32* @TTHits, align 4
  store i32 0, i32* @TTStores, align 4
  store i32 0, i32* @NCuts, align 4
  store i32 0, i32* @NTries, align 4
  store i32 0, i32* @TExt, align 4
  store i32 0, i32* @FH, align 4
  store i32 0, i32* @FHF, align 4
  store i32 0, i32* @PVS, align 4
  store i32 0, i32* @FULL, align 4
  store i32 0, i32* @PVSF, align 4
  store i32 0, i32* @ext_check, align 4
  store i32 0, i32* @ext_recap, align 4
  store i32 0, i32* @ext_onerep, align 4
  store i32 0, i32* @razor_drop, align 4
  store i32 0, i32* @razor_material, align 4
  store i32 0, i32* @drop_cuts, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* @extendedtime, align 4
  store i32 0, i32* @forcedwin, align 4
  store i32 200, i32* @maxposdiff, align 4
  store i8 0, i8* @true_i_depth, align 1
  store i32 -1, i32* @bestmovenum, align 4
  %27 = call i32 @interrupt()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* @is_analyzing, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* @is_pondering, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %32, %29
  %36 = bitcast %struct.move_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %746

; <label>:37:                                     ; preds = %32, %26
  %38 = call i64 @rtime()
  store i64 %38, i64* @start_time, align 8
  store i32 0, i32* @legals, align 4
  %39 = load i32, i32* @Variant, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %37
  store i32 1, i32* @captures, align 4
  br label %43

; <label>:42:                                     ; preds = %37
  store i32 0, i32* @captures, align 4
  br label %43

; <label>:43:                                     ; preds = %42, %41
  %44 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 0
  call void @gen(%struct.move_s* %44)
  %45 = load i32, i32* @numb_moves, align 4
  store i32 %45, i32* %20, align 4
  %46 = call i32 @in_check()
  store i32 %46, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %47

; <label>:47:                                     ; preds = %66, %43
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @numb_moves, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %69

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 0
  %53 = load i32, i32* %16, align 4
  call void @make(%struct.move_s* %52, i32 %53)
  %54 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 0
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @check_legal(%struct.move_s* %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

; <label>:59:                                     ; preds = %51
  %60 = load i32, i32* @legals, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @legals, align 4
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %17, align 4
  br label %63

; <label>:63:                                     ; preds = %59, %51
  %64 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 0
  %65 = load i32, i32* %16, align 4
  call void @unmake(%struct.move_s* %64, i32 %65)
  br label %66

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %47

; <label>:69:                                     ; preds = %47
  %70 = load i32, i32* @Variant, align 4
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %101

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* @legals, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %101

; <label>:75:                                     ; preds = %72
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %20, align 4
  %76 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 0
  call void @gen(%struct.move_s* %76)
  %77 = load i32, i32* @numb_moves, align 4
  store i32 %77, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %78

; <label>:78:                                     ; preds = %97, %75
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @numb_moves, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %100

; <label>:82:                                     ; preds = %78
  %83 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 0
  %84 = load i32, i32* %16, align 4
  call void @make(%struct.move_s* %83, i32 %84)
  %85 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 0
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @check_legal(%struct.move_s* %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %82
  %91 = load i32, i32* @legals, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @legals, align 4
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %17, align 4
  br label %94

; <label>:94:                                     ; preds = %90, %82
  %95 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 0
  %96 = load i32, i32* %16, align 4
  call void @unmake(%struct.move_s* %95, i32 %96)
  br label %97

; <label>:97:                                     ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %78

; <label>:100:                                    ; preds = %78
  br label %101

; <label>:101:                                    ; preds = %100, %72, %69
  %102 = load i32, i32* @Variant, align 4
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %121

; <label>:104:                                    ; preds = %101
  %105 = load i32, i32* @is_pondering, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* @legals, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %120

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* @inc, align 4
  %112 = mul nsw i32 %111, 100
  %113 = load i32, i32* @time_cushion, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* @time_cushion, align 4
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 %116
  %118 = bitcast %struct.move_s* %0 to i8*
  %119 = bitcast %struct.move_s* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 24, i32 4, i1 false)
  br label %746

; <label>:120:                                    ; preds = %107
  br label %121

; <label>:121:                                    ; preds = %120, %104, %101
  call void @check_phase()
  %122 = load i32, i32* @phase, align 4
  switch i32 %122, label %129 [
    i32 0, label %123
    i32 1, label %125
    i32 2, label %127
  ]

; <label>:123:                                    ; preds = %121
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %129

; <label>:125:                                    ; preds = %121
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  br label %129

; <label>:127:                                    ; preds = %121
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  br label %129

; <label>:129:                                    ; preds = %121, %127, %125, %123
  %130 = load i32, i32* @is_pondering, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %152, label %132

; <label>:132:                                    ; preds = %129
  %133 = load i32, i32* @fixed_time, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %149, label %135

; <label>:135:                                    ; preds = %132
  %136 = load i32, i32* @go_fast, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

; <label>:138:                                    ; preds = %135
  %139 = call i32 @allocate_time()
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp sgt i32 %140, 40
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %138
  store i32 40, i32* @time_for_move, align 4
  br label %145

; <label>:143:                                    ; preds = %138
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* @time_for_move, align 4
  br label %145

; <label>:145:                                    ; preds = %143, %142
  br label %148

; <label>:146:                                    ; preds = %135
  %147 = call i32 @allocate_time()
  store i32 %147, i32* @time_for_move, align 4
  br label %148

; <label>:148:                                    ; preds = %146, %145
  br label %151

; <label>:149:                                    ; preds = %132
  %150 = load i32, i32* @fixed_time, align 4
  store i32 %150, i32* @time_for_move, align 4
  br label %151

; <label>:151:                                    ; preds = %149, %148
  br label %153

; <label>:152:                                    ; preds = %129
  store i32 999999, i32* @time_for_move, align 4
  br label %153

; <label>:153:                                    ; preds = %152, %151
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* @time_for_move, align 4
  %158 = sitofp i32 %157 to float
  %159 = fmul float %158, 2.000000e+00
  %160 = fpext float %159 to double
  %161 = load i32, i32* %19, align 4
  %162 = sitofp i32 %161 to float
  %163 = fpext float %162 to double
  %164 = fadd double %163, 1.000000e+00
  %165 = fdiv double %160, %164
  %166 = fptosi double %165 to i32
  store i32 %166, i32* @time_for_move, align 4
  br label %167

; <label>:167:                                    ; preds = %156, %153
  %168 = load i32, i32* @time_for_move, align 4
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %168)
  %170 = load i32, i32* %19, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

; <label>:172:                                    ; preds = %167
  call void @clear_tt()
  call void @reset_ecache()
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @rootlosers to i8*), i8 0, i64 1200, i32 16, i1 false)
  br label %173

; <label>:173:                                    ; preds = %172, %167
  %174 = load i32, i32* %19, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %198, label %176

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* @is_pondering, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %198, label %179

; <label>:179:                                    ; preds = %176
  %180 = load i32, i32* @Variant, align 4
  %181 = icmp eq i32 %180, 3
  br i1 %181, label %185, label %182

; <label>:182:                                    ; preds = %179
  %183 = load i32, i32* @Variant, align 4
  %184 = icmp eq i32 %183, 4
  br i1 %184, label %185, label %198

; <label>:185:                                    ; preds = %182, %179
  %186 = load i32, i32* @piece_count, align 4
  %187 = icmp sgt i32 %186, 3
  br i1 %187, label %191, label %188

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* @Variant, align 4
  %190 = icmp ne i32 %189, 3
  br i1 %190, label %191, label %198

; <label>:191:                                    ; preds = %188, %185
  %192 = load i32, i32* @time_for_move, align 4
  %193 = sitofp i32 %192 to float
  %194 = fpext float %193 to double
  %195 = fmul double %194, 1.000000e+00
  %196 = fdiv double %195, 3.000000e+00
  %197 = fptosi double %196 to i32
  store i32 %197, i32* @pn_time, align 4
  call void @proofnumberscan()
  br label %203

; <label>:198:                                    ; preds = %188, %182, %176, %173
  %199 = load i32, i32* %19, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

; <label>:201:                                    ; preds = %198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %202

; <label>:202:                                    ; preds = %201, %198
  br label %203

; <label>:203:                                    ; preds = %202, %191
  %204 = load i32, i32* @result, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

; <label>:206:                                    ; preds = %203
  %207 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %208 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %212

; <label>:210:                                    ; preds = %206
  %211 = bitcast %struct.move_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  br label %746

; <label>:212:                                    ; preds = %206, %203
  %213 = load i32, i32* @forcedwin, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

; <label>:215:                                    ; preds = %212
  %216 = load i32, i32* @result, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

; <label>:218:                                    ; preds = %215, %212
  %219 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %220 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %227

; <label>:222:                                    ; preds = %218
  %223 = load i32, i32* @is_analyzing, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

; <label>:225:                                    ; preds = %222
  %226 = bitcast %struct.move_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %226, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  br label %442

; <label>:227:                                    ; preds = %222, %218, %215
  store i32 0, i32* %5, align 4
  br label %228

; <label>:228:                                    ; preds = %247, %227
  %229 = load i32, i32* %5, align 4
  %230 = icmp slt i32 %229, 300
  br i1 %230, label %231, label %250

; <label>:231:                                    ; preds = %228
  store i32 0, i32* %6, align 4
  br label %232

; <label>:232:                                    ; preds = %243, %231
  %233 = load i32, i32* %6, align 4
  %234 = icmp slt i32 %233, 300
  br i1 %234, label %235, label %246

; <label>:235:                                    ; preds = %232
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %237
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %238, i64 0, i64 %240
  %242 = bitcast %struct.move_s* %241 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %243

; <label>:243:                                    ; preds = %235
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %6, align 4
  br label %232

; <label>:246:                                    ; preds = %232
  br label %247

; <label>:247:                                    ; preds = %246
  %248 = load i32, i32* %5, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %5, align 4
  br label %228

; <label>:250:                                    ; preds = %228
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x [144 x i32]]* @history_h to i8*), i8 0, i64 82944, i32 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %251

; <label>:251:                                    ; preds = %276, %250
  %252 = load i32, i32* %5, align 4
  %253 = icmp slt i32 %252, 300
  br i1 %253, label %254, label %279

; <label>:254:                                    ; preds = %251
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %256
  store i32 0, i32* %257, align 4
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %259
  store i32 0, i32* %260, align 4
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %262
  store i32 0, i32* %263, align 4
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i64 0, i64 %265
  %267 = bitcast %struct.move_s* %266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i64 0, i64 %269
  %271 = bitcast %struct.move_s* %270 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %271, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i64 0, i64 %273
  %275 = bitcast %struct.move_s* %274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %275, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %276

; <label>:276:                                    ; preds = %254
  %277 = load i32, i32* %5, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %5, align 4
  br label %251

; <label>:279:                                    ; preds = %251
  call void @llvm.memset.p0i8.i64(i8* bitcast ([512 x i32]* @rootnodecount to i8*), i8 0, i64 2048, i32 16, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* @cur_score, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* @i_depth, align 4
  br label %280

; <label>:280:                                    ; preds = %438, %279
  %281 = load i32, i32* @i_depth, align 4
  %282 = load i32, i32* @maxdepth, align 4
  %283 = icmp sle i32 %281, %282
  br i1 %283, label %284, label %441

; <label>:284:                                    ; preds = %280
  %285 = call i64 @rtime()
  %286 = load i64, i64* @start_time, align 8
  %287 = call i32 @rdifftime(i64 %285, i64 %286)
  store i32 %287, i32* %8, align 4
  %288 = load i32, i32* %8, align 4
  %289 = sitofp i32 %288 to double
  %290 = load i32, i32* @time_for_move, align 4
  %291 = sitofp i32 %290 to double
  %292 = fmul double %291, 2.100000e+00
  %293 = fdiv double %292, 3.000000e+00
  %294 = fcmp ogt double %289, %293
  br i1 %294, label %295, label %299

; <label>:295:                                    ; preds = %284
  %296 = load i32, i32* @i_depth, align 4
  %297 = icmp sgt i32 %296, 2
  br i1 %297, label %298, label %299

; <label>:298:                                    ; preds = %295
  br label %441

; <label>:299:                                    ; preds = %295, %284
  store i32 0, i32* @failed, align 4
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* @Variant, align 4
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 35, i32 100
  %305 = sub nsw i32 %300, %304
  store i32 %305, i32* %11, align 4
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* @Variant, align 4
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i32 35, i32 100
  %311 = add nsw i32 %306, %310
  store i32 %311, i32* %12, align 4
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* %12, align 4
  %314 = load i32, i32* @i_depth, align 4
  call void @search_root(%struct.move_s* sret %22, i32 %312, i32 %313, i32 %314)
  %315 = bitcast %struct.move_s* %3 to i8*
  %316 = bitcast %struct.move_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %315, i8* %316, i64 24, i32 4, i1 false)
  %317 = load i32, i32* @result, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

; <label>:319:                                    ; preds = %299
  br label %441

; <label>:320:                                    ; preds = %299
  %321 = load i32, i32* @cur_score, align 4
  %322 = load i32, i32* %11, align 4
  %323 = icmp sle i32 %321, %322
  br i1 %323, label %324, label %325

; <label>:324:                                    ; preds = %320
  store i32 1, i32* @failed, align 4
  br label %326

; <label>:325:                                    ; preds = %320
  store i32 0, i32* @failed, align 4
  br label %326

; <label>:326:                                    ; preds = %325, %324
  %327 = load i32, i32* @cur_score, align 4
  %328 = load i32, i32* %11, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %343

; <label>:330:                                    ; preds = %326
  %331 = load i32, i32* @time_exit, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %343, label %333

; <label>:333:                                    ; preds = %330
  %334 = load i32, i32* %14, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %14, align 4
  %336 = load i32, i32* @i_depth, align 4
  call void @search_root(%struct.move_s* sret %23, i32 -1000000, i32 1000000, i32 %336)
  %337 = bitcast %struct.move_s* %3 to i8*
  %338 = bitcast %struct.move_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %337, i8* %338, i64 24, i32 4, i1 false)
  %339 = load i32, i32* @time_exit, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %342, label %341

; <label>:341:                                    ; preds = %333
  store i32 0, i32* @failed, align 4
  br label %342

; <label>:342:                                    ; preds = %341, %333
  br label %364

; <label>:343:                                    ; preds = %330, %326
  %344 = load i32, i32* @cur_score, align 4
  %345 = load i32, i32* %12, align 4
  %346 = icmp sge i32 %344, %345
  br i1 %346, label %347, label %363

; <label>:347:                                    ; preds = %343
  %348 = load i32, i32* @time_exit, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %363, label %350

; <label>:350:                                    ; preds = %347
  %351 = bitcast %struct.move_s* %2 to i8*
  %352 = bitcast %struct.move_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %351, i8* %352, i64 24, i32 4, i1 false)
  %353 = load i32, i32* @cur_score, align 4
  store i32 %353, i32* %9, align 4
  %354 = load i32, i32* %14, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %14, align 4
  %356 = load i32, i32* @i_depth, align 4
  call void @search_root(%struct.move_s* sret %24, i32 -1000000, i32 1000000, i32 %356)
  %357 = bitcast %struct.move_s* %3 to i8*
  %358 = bitcast %struct.move_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %357, i8* %358, i64 24, i32 4, i1 false)
  %359 = load i32, i32* @time_exit, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %362, label %361

; <label>:361:                                    ; preds = %350
  store i32 0, i32* @failed, align 4
  br label %362

; <label>:362:                                    ; preds = %361, %350
  br label %363

; <label>:363:                                    ; preds = %362, %347, %343
  br label %364

; <label>:364:                                    ; preds = %363, %342
  %365 = call i32 @interrupt()
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %381

; <label>:367:                                    ; preds = %364
  %368 = load i32, i32* @i_depth, align 4
  %369 = icmp sgt i32 %368, 1
  br i1 %369, label %370, label %381

; <label>:370:                                    ; preds = %367
  %371 = load i32, i32* @is_pondering, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

; <label>:373:                                    ; preds = %370
  %374 = bitcast %struct.move_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %374, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %746

; <label>:375:                                    ; preds = %370
  %376 = load i32, i32* @go_fast, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %379, label %378

; <label>:378:                                    ; preds = %375
  br label %441

; <label>:379:                                    ; preds = %375
  br label %380

; <label>:380:                                    ; preds = %379
  br label %381

; <label>:381:                                    ; preds = %380, %367, %364
  %382 = load i32, i32* @time_failure, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %416, label %384

; <label>:384:                                    ; preds = %381
  %385 = load i32, i32* @failed, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %416, label %387

; <label>:387:                                    ; preds = %384
  %388 = load i32, i32* @cur_score, align 4
  %389 = icmp eq i32 %388, -1000000
  br i1 %389, label %390, label %392

; <label>:390:                                    ; preds = %387
  %391 = bitcast %struct.move_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %391, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %746

; <label>:392:                                    ; preds = %387
  %393 = bitcast %struct.move_s* %2 to i8*
  %394 = bitcast %struct.move_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %393, i8* %394, i64 24, i32 4, i1 false)
  %395 = load i32, i32* @cur_score, align 4
  store i32 %395, i32* %9, align 4
  call void @stringize_pv(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @postpv, i32 0, i32 0))
  %396 = load i32, i32* @time_exit, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %401, label %398

; <label>:398:                                    ; preds = %392
  %399 = load i32, i32* @i_depth, align 4
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* @true_i_depth, align 1
  br label %401

; <label>:401:                                    ; preds = %398, %392
  %402 = load i32, i32* @i_depth, align 4
  %403 = icmp sge i32 %402, 2
  br i1 %403, label %404, label %406

; <label>:404:                                    ; preds = %401
  %405 = load i32, i32* @cur_score, align 4
  call void @post_thinking(i32 %405)
  br label %406

; <label>:406:                                    ; preds = %404, %401
  %407 = load i32, i32* %9, align 4
  %408 = icmp sgt i32 %407, 900000
  br i1 %408, label %409, label %415

; <label>:409:                                    ; preds = %406
  %410 = load i32, i32* @cur_score, align 4
  %411 = sub nsw i32 1000000, %410
  %412 = load i32, i32* @i_depth, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %415

; <label>:414:                                    ; preds = %409
  br label %441

; <label>:415:                                    ; preds = %409, %406
  br label %416

; <label>:416:                                    ; preds = %415, %384, %381
  %417 = load i32, i32* @time_exit, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %420

; <label>:419:                                    ; preds = %416
  br label %441

; <label>:420:                                    ; preds = %416
  store i32 0, i32* %6, align 4
  br label %421

; <label>:421:                                    ; preds = %434, %420
  %422 = load i32, i32* %6, align 4
  %423 = icmp slt i32 %422, 300
  br i1 %423, label %424, label %437

; <label>:424:                                    ; preds = %421
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i64 0, i64 %426
  store i32 0, i32* %427, align 4
  %428 = load i32, i32* %6, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i64 0, i64 %429
  store i32 0, i32* %430, align 4
  %431 = load i32, i32* %6, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i64 0, i64 %432
  store i32 0, i32* %433, align 4
  br label %434

; <label>:434:                                    ; preds = %424
  %435 = load i32, i32* %6, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %6, align 4
  br label %421

; <label>:437:                                    ; preds = %421
  br label %438

; <label>:438:                                    ; preds = %437
  %439 = load i32, i32* @i_depth, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* @i_depth, align 4
  br label %280

; <label>:441:                                    ; preds = %419, %414, %378, %319, %298, %280
  br label %442

; <label>:442:                                    ; preds = %441, %225
  %443 = load i32, i32* @forcedwin, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %538, label %445

; <label>:445:                                    ; preds = %442
  %446 = bitcast %struct.move_s* %4 to i8*
  %447 = bitcast %struct.move_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %446, i8* %447, i64 24, i32 4, i1 false)
  %448 = load i32, i32* @Variant, align 4
  %449 = icmp eq i32 %448, 4
  br i1 %449, label %453, label %450

; <label>:450:                                    ; preds = %445
  %451 = load i32, i32* @Variant, align 4
  %452 = icmp eq i32 %451, 3
  br i1 %452, label %453, label %537

; <label>:453:                                    ; preds = %450, %445
  %454 = load i32, i32* @result, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %537, label %456

; <label>:456:                                    ; preds = %453
  %457 = load i32, i32* @alllosers, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %537, label %459

; <label>:459:                                    ; preds = %456
  %460 = load i32, i32* @is_pondering, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %537, label %462

; <label>:462:                                    ; preds = %459
  store i32 0, i32* @s_threat, align 4
  call void @proofnumbercheck(%struct.move_s* sret %25, %struct.move_s* byval align 8 %2)
  %463 = bitcast %struct.move_s* %2 to i8*
  %464 = bitcast %struct.move_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %463, i8* %464, i64 24, i32 4, i1 false)
  %465 = load i32, i32* %19, align 4
  %466 = icmp slt i32 %465, 10
  br i1 %466, label %467, label %536

; <label>:467:                                    ; preds = %462
  %468 = load i32, i32* @s_threat, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %536

; <label>:470:                                    ; preds = %467
  %471 = load i32, i32* %19, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %473

; <label>:473:                                    ; preds = %509, %470
  %474 = load i32, i32* %5, align 4
  %475 = load i32, i32* %20, align 4
  %476 = icmp slt i32 %474, %475
  br i1 %476, label %477, label %512

; <label>:477:                                    ; preds = %473
  %478 = load i32, i32* %5, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 %479
  %481 = getelementptr inbounds %struct.move_s, %struct.move_s* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = getelementptr inbounds %struct.move_s, %struct.move_s* %4, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = icmp eq i32 %482, %484
  br i1 %485, label %486, label %508

; <label>:486:                                    ; preds = %477
  %487 = load i32, i32* %5, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 %488
  %490 = getelementptr inbounds %struct.move_s, %struct.move_s* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = getelementptr inbounds %struct.move_s, %struct.move_s* %4, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %491, %493
  br i1 %494, label %495, label %508

; <label>:495:                                    ; preds = %486
  %496 = load i32, i32* %5, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %15, i64 0, i64 %497
  %499 = getelementptr inbounds %struct.move_s, %struct.move_s* %498, i32 0, i32 3
  %500 = load i32, i32* %499, align 4
  %501 = getelementptr inbounds %struct.move_s, %struct.move_s* %4, i32 0, i32 3
  %502 = load i32, i32* %501, align 4
  %503 = icmp eq i32 %500, %502
  br i1 %503, label %504, label %508

; <label>:504:                                    ; preds = %495
  %505 = load i32, i32* %5, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i64 0, i64 %506
  store i32 1, i32* %507, align 4
  br label %512

; <label>:508:                                    ; preds = %495, %486, %477
  br label %509

; <label>:509:                                    ; preds = %508
  %510 = load i32, i32* %5, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %5, align 4
  br label %473

; <label>:512:                                    ; preds = %504, %473
  store i32 0, i32* %6, align 4
  br label %513

; <label>:513:                                    ; preds = %527, %512
  %514 = load i32, i32* %6, align 4
  %515 = load i32, i32* %20, align 4
  %516 = icmp slt i32 %514, %515
  br i1 %516, label %517, label %530

; <label>:517:                                    ; preds = %513
  %518 = load i32, i32* %6, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i64 0, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %526

; <label>:523:                                    ; preds = %517
  %524 = load i32, i32* %7, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %7, align 4
  br label %526

; <label>:526:                                    ; preds = %523, %517
  br label %527

; <label>:527:                                    ; preds = %526
  %528 = load i32, i32* %6, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %6, align 4
  br label %513

; <label>:530:                                    ; preds = %513
  %531 = load i32, i32* %7, align 4
  %532 = load i32, i32* @legals, align 4
  %533 = icmp eq i32 %531, %532
  br i1 %533, label %534, label %535

; <label>:534:                                    ; preds = %530
  store i32 1, i32* @alllosers, align 4
  br label %535

; <label>:535:                                    ; preds = %534, %530
  br label %26

; <label>:536:                                    ; preds = %467, %462
  br label %537

; <label>:537:                                    ; preds = %536, %459, %456, %453, %450
  br label %538

; <label>:538:                                    ; preds = %537, %442
  %539 = load i32, i32* @alllosers, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %544

; <label>:541:                                    ; preds = %538
  %542 = bitcast %struct.move_s* %2 to i8*
  %543 = bitcast %struct.move_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %542, i8* %543, i64 24, i32 4, i1 false)
  br label %544

; <label>:544:                                    ; preds = %541, %538
  %545 = load i32, i32* %19, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %555

; <label>:547:                                    ; preds = %544
  %548 = load i32, i32* @xb_mode, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %555

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %2, i8* %551)
  %552 = load i32, i32* %19, align 4
  %553 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i32 0, i32 0
  %554 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), i32 %552, i8* %553)
  store i32 0, i32* @result, align 4
  br label %555

; <label>:555:                                    ; preds = %550, %547, %544
  %556 = call i64 @rtime()
  %557 = load i64, i64* @start_time, align 8
  %558 = call i32 @rdifftime(i64 %556, i64 %557)
  store i32 %558, i32* %8, align 4
  %559 = load i32, i32* %8, align 4
  %560 = load i32, i32* @time_left, align 4
  %561 = sub nsw i32 %560, %559
  store i32 %561, i32* @time_left, align 4
  %562 = load i32, i32* @moves_to_tc, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %575

; <label>:564:                                    ; preds = %555
  %565 = load i32, i32* @is_pondering, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %575, label %567

; <label>:567:                                    ; preds = %564
  %568 = load i32, i32* @time_for_move, align 4
  %569 = load i32, i32* %8, align 4
  %570 = sub nsw i32 %568, %569
  %571 = load i32, i32* @inc, align 4
  %572 = add nsw i32 %570, %571
  %573 = load i32, i32* @time_cushion, align 4
  %574 = add nsw i32 %573, %572
  store i32 %574, i32* @time_cushion, align 4
  br label %575

; <label>:575:                                    ; preds = %567, %564, %555
  %576 = load i32, i32* %9, align 4
  %577 = icmp eq i32 %576, 999998
  br i1 %577, label %578, label %587

; <label>:578:                                    ; preds = %575
  %579 = load i32, i32* @is_pondering, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %587, label %581

; <label>:581:                                    ; preds = %578
  %582 = load i32, i32* @white_to_move, align 4
  %583 = icmp eq i32 %582, 1
  br i1 %583, label %584, label %585

; <label>:584:                                    ; preds = %581
  store i32 3, i32* @result, align 4
  br label %586

; <label>:585:                                    ; preds = %581
  store i32 2, i32* @result, align 4
  br label %586

; <label>:586:                                    ; preds = %585, %584
  br label %600

; <label>:587:                                    ; preds = %578, %575
  %588 = load i32, i32* %9, align 4
  %589 = icmp eq i32 %588, -999998
  br i1 %589, label %590, label %599

; <label>:590:                                    ; preds = %587
  %591 = load i32, i32* @is_pondering, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %599, label %593

; <label>:593:                                    ; preds = %590
  %594 = load i32, i32* @white_to_move, align 4
  %595 = icmp eq i32 %594, 1
  br i1 %595, label %596, label %597

; <label>:596:                                    ; preds = %593
  store i32 2, i32* @result, align 4
  br label %598

; <label>:597:                                    ; preds = %593
  store i32 3, i32* @result, align 4
  br label %598

; <label>:598:                                    ; preds = %597, %596
  br label %599

; <label>:599:                                    ; preds = %598, %590, %587
  br label %600

; <label>:600:                                    ; preds = %599, %586
  %601 = load i32, i32* @post, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %645

; <label>:603:                                    ; preds = %600
  %604 = load i32, i32* @xb_mode, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %645

; <label>:606:                                    ; preds = %603
  %607 = load i32, i32* @is_pondering, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %645, label %609

; <label>:609:                                    ; preds = %606
  %610 = load i32, i32* @result, align 4
  %611 = icmp ne i32 %610, 3
  br i1 %611, label %612, label %645

; <label>:612:                                    ; preds = %609
  %613 = load i32, i32* @result, align 4
  %614 = icmp ne i32 %613, 2
  br i1 %614, label %615, label %645

; <label>:615:                                    ; preds = %612
  %616 = load i32, i32* @result, align 4
  %617 = icmp ne i32 %616, 4
  br i1 %617, label %618, label %645

; <label>:618:                                    ; preds = %615
  %619 = load i32, i32* @result, align 4
  %620 = icmp ne i32 %619, 5
  br i1 %620, label %621, label %645

; <label>:621:                                    ; preds = %618
  %622 = load i32, i32* @result, align 4
  %623 = icmp ne i32 %622, 1
  br i1 %623, label %624, label %645

; <label>:624:                                    ; preds = %621
  %625 = load i32, i32* @forcedwin, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %645, label %627

; <label>:627:                                    ; preds = %624
  %628 = load i32, i32* %9, align 4
  %629 = icmp sgt i32 %628, 999600
  br i1 %629, label %630, label %644

; <label>:630:                                    ; preds = %627
  %631 = load i32, i32* @Variant, align 4
  %632 = icmp ne i32 %631, 1
  br i1 %632, label %633, label %638

; <label>:633:                                    ; preds = %630
  %634 = load i32, i32* %9, align 4
  %635 = sub nsw i32 1000000, %634
  %636 = sdiv i32 %635, 2
  %637 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %636)
  br label %643

; <label>:638:                                    ; preds = %630
  %639 = load i32, i32* %9, align 4
  %640 = sub nsw i32 1000000, %639
  %641 = sdiv i32 %640, 2
  %642 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0), i32 %641)
  br label %643

; <label>:643:                                    ; preds = %638, %633
  br label %644

; <label>:644:                                    ; preds = %643, %627
  br label %645

; <label>:645:                                    ; preds = %644, %624, %621, %618, %615, %612, %609, %606, %603, %600
  %646 = load i32, i32* @result, align 4
  %647 = icmp ne i32 %646, 2
  br i1 %647, label %648, label %679

; <label>:648:                                    ; preds = %645
  %649 = load i32, i32* @result, align 4
  %650 = icmp ne i32 %649, 3
  br i1 %650, label %651, label %679

; <label>:651:                                    ; preds = %648
  %652 = load i32, i32* @result, align 4
  %653 = icmp ne i32 %652, 1
  br i1 %653, label %654, label %679

; <label>:654:                                    ; preds = %651
  %655 = load i32, i32* @result, align 4
  %656 = icmp ne i32 %655, 4
  br i1 %656, label %657, label %679

; <label>:657:                                    ; preds = %654
  %658 = load i32, i32* @result, align 4
  %659 = icmp ne i32 %658, 5
  br i1 %659, label %660, label %679

; <label>:660:                                    ; preds = %657
  %661 = load i8, i8* @true_i_depth, align 1
  %662 = sext i8 %661 to i32
  %663 = icmp sge i32 %662, 3
  br i1 %663, label %664, label %679

; <label>:664:                                    ; preds = %660
  %665 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %666 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %667 = icmp eq i32 %665, %666
  br i1 %667, label %668, label %679

; <label>:668:                                    ; preds = %664
  %669 = load i32, i32* @is_pondering, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %679, label %671

; <label>:671:                                    ; preds = %668
  %672 = load i32, i32* @Variant, align 4
  %673 = icmp ne i32 %672, 1
  br i1 %673, label %674, label %679

; <label>:674:                                    ; preds = %671
  %675 = load i32, i32* @bestmovenum, align 4
  %676 = icmp eq i32 %675, -1
  br i1 %676, label %677, label %678

; <label>:677:                                    ; preds = %674
  store i32 0, i32* null, align 4
  br label %678

; <label>:678:                                    ; preds = %677, %674
  br label %679

; <label>:679:                                    ; preds = %678, %671, %668, %664, %660, %657, %654, %651, %648, %645
  %680 = load i32, i32* @Variant, align 4
  %681 = icmp eq i32 %680, 1
  br i1 %681, label %682, label %694

; <label>:682:                                    ; preds = %679
  %683 = load i32, i32* %9, align 4
  %684 = icmp sgt i32 %683, -999900
  br i1 %684, label %685, label %694

; <label>:685:                                    ; preds = %682
  %686 = load i32, i32* @tradefreely, align 4
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %693

; <label>:688:                                    ; preds = %685
  %689 = load i32, i32* @userealholdings, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %693, label %691

; <label>:691:                                    ; preds = %688
  store i32 1, i32* @tradefreely, align 4
  %692 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  br label %693

; <label>:693:                                    ; preds = %691, %688, %685
  br label %743

; <label>:694:                                    ; preds = %682, %679
  %695 = load i32, i32* %9, align 4
  %696 = icmp slt i32 %695, -999900
  br i1 %696, label %697, label %723

; <label>:697:                                    ; preds = %694
  %698 = load i32, i32* @Variant, align 4
  %699 = icmp eq i32 %698, 1
  br i1 %699, label %700, label %723

; <label>:700:                                    ; preds = %697
  %701 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %702 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %703 = icmp eq i32 %701, %702
  br i1 %703, label %704, label %723

; <label>:704:                                    ; preds = %700
  %705 = load i32, i32* @userealholdings, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %708

; <label>:707:                                    ; preds = %704
  store i32 1, i32* @must_sit, align 4
  br label %710

; <label>:708:                                    ; preds = %704
  store i32 1, i32* @userealholdings, align 4
  call void @ProcessHoldings(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @realholdings, i32 0, i32 0))
  store i32 0, i32* @tradefreely, align 4
  %709 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  br label %26

; <label>:710:                                    ; preds = %707
  %711 = load i32, i32* %9, align 4
  %712 = icmp sgt i32 %711, -1000000
  br i1 %712, label %713, label %722

; <label>:713:                                    ; preds = %710
  %714 = load i32, i32* @partnerdead, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %719

; <label>:716:                                    ; preds = %713
  %717 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0))
  %718 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  br label %721

; <label>:719:                                    ; preds = %713
  %720 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i32 0, i32 0))
  br label %721

; <label>:721:                                    ; preds = %719, %716
  br label %722

; <label>:722:                                    ; preds = %721, %710
  br label %742

; <label>:723:                                    ; preds = %700, %697, %694
  %724 = load i32, i32* %9, align 4
  %725 = icmp sgt i32 %724, -60000
  br i1 %725, label %726, label %741

; <label>:726:                                    ; preds = %723
  %727 = load i32, i32* %9, align 4
  %728 = icmp slt i32 %727, -40000
  br i1 %728, label %729, label %741

; <label>:729:                                    ; preds = %726
  %730 = load i32, i32* @Variant, align 4
  %731 = icmp eq i32 %730, 1
  br i1 %731, label %732, label %741

; <label>:732:                                    ; preds = %729
  %733 = load i32, i32* @partnerdead, align 4
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %741, label %735

; <label>:735:                                    ; preds = %732
  %736 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %737 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %738 = icmp eq i32 %736, %737
  br i1 %738, label %739, label %741

; <label>:739:                                    ; preds = %735
  store i32 1, i32* @must_sit, align 4
  %740 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0))
  br label %741

; <label>:741:                                    ; preds = %739, %735, %732, %729, %726, %723
  br label %742

; <label>:742:                                    ; preds = %741, %722
  br label %743

; <label>:743:                                    ; preds = %742, %693
  %744 = bitcast %struct.move_s* %0 to i8*
  %745 = bitcast %struct.move_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %744, i8* %745, i64 24, i32 4, i1 false)
  br label %746

; <label>:746:                                    ; preds = %743, %390, %373, %210, %110, %35
  ret void
}

declare void @check_phase() #2

declare void @clear_tt() #2

declare void @reset_ecache() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare void @proofnumberscan() #2

declare void @stringize_pv(i8*) #2

declare void @proofnumbercheck(%struct.move_s* sret, %struct.move_s* byval align 8) #2

declare void @ProcessHoldings(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @tree(i32, i32, %struct._IO_FILE*, i8*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [512 x %struct.move_s], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %4
  br label %70

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %9, i64 0, i64 0
  call void @gen(%struct.move_s* %18)
  %19 = load i32, i32* @numb_moves, align 4
  store i32 %19, i32* %10, align 4
  %20 = call i32 @in_check()
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %21

; <label>:21:                                     ; preds = %67, %17
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %70

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %9, i64 0, i64 0
  %27 = load i32, i32* %11, align 4
  call void @make(%struct.move_s* %26, i32 %27)
  %28 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %9, i64 0, i64 0
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @check_legal(%struct.move_s* %28, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %64

; <label>:33:                                     ; preds = %25
  store i32 0, i32* %12, align 4
  br label %34

; <label>:34:                                     ; preds = %41, %33
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %44

; <label>:38:                                     ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %40 = call i32 @fputc(i32 32, %struct._IO_FILE* %39)
  br label %41

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %34

; <label>:44:                                     ; preds = %34
  %45 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %9, i64 0, i64 0
  %46 = load i32, i32* %11, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  call void @print_move(%struct.move_s* %45, i32 %46, %struct._IO_FILE* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 121
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %44
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  call void @display_board(%struct._IO_FILE* %56, i32 1)
  br label %57

; <label>:57:                                     ; preds = %55, %44
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 2
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %63 = load i8*, i8** %8, align 8
  call void @tree(i32 %59, i32 %61, %struct._IO_FILE* %62, i8* %63)
  br label %64

; <label>:64:                                     ; preds = %57, %25
  %65 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %9, i64 0, i64 0
  %66 = load i32, i32* %11, align 4
  call void @unmake(%struct.move_s* %65, i32 %66)
  br label %67

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %21

; <label>:70:                                     ; preds = %16, %21
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare void @print_move(%struct.move_s*, i32, %struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @display_board(%struct._IO_FILE*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
