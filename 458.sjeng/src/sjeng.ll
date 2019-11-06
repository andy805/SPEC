; ModuleID = 'sjeng.c'
source_filename = "sjeng.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.move_x = type { i32, i32, i32, i32 }

@divider = global [50 x i8] c"-------------------------------------------------\00", align 16
@dummy = global %struct.move_s zeroinitializer, align 4
@Variant = common global i32 0, align 4
@material = external global [14 x i32], align 16
@std_material = external global [14 x i32], align 16
@ECacheProbes = external global i32, align 4
@ECacheHits = external global i32, align 4
@TTProbes = external global i32, align 4
@TTStores = external global i32, align 4
@TTHits = external global i32, align 4
@bookidx = common global i32 0, align 4
@total_moves = external global i32, align 4
@ply = common global i32 0, align 4
@moves_to_tc = common global i32 0, align 4
@min_per_game = common global i32 0, align 4
@time_left = common global i32 0, align 4
@opp_rating = common global i32 0, align 4
@my_rating = common global i32 0, align 4
@maxdepth = common global i32 0, align 4
@maxposdiff = external global i32, align 4
@must_go = external global i32, align 4
@tradefreely = external global i32, align 4
@xb_mode = common global i32 0, align 4
@comp_color = common global i32 0, align 4
@is_pondering = common global i32 0, align 4
@allow_pondering = common global i32 0, align 4
@is_analyzing = common global i32 0, align 4
@have_partner = common global i32 0, align 4
@must_sit = common global i32 0, align 4
@go_fast = common global i32 0, align 4
@fixed_time = common global i32 0, align 4
@phase = common global i32 0, align 4
@root_to_move = common global i32 0, align 4
@kibitzed = external global i32, align 4
@move_number = common global i32 0, align 4
@hash = external global i32, align 4
@hash_history = common global [600 x i32] zeroinitializer, align 16
@stdout = external global %struct._IO_FILE*, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"SPEC Workload\0A\00", align 1
@white_to_move = common global i32 0, align 4
@result = common global i32 0, align 4
@path_x = common global [300 x %struct.move_x] zeroinitializer, align 16
@userealholdings = external global i32, align 4
@fifty = common global i32 0, align 4
@book_ply = common global i32 0, align 4
@opening_history = common global [256 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [29 x i8] c"\0ANodes: %i (%0.2f%% qnodes)\0A\00", align 1
@nodes = common global i32 0, align 4
@qnodes = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\0A\00", align 1
@NTries = common global i32 0, align 4
@NCuts = common global i32 0, align 4
@TExt = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"Check extensions: %u  Razor drops : %u  Razor Material : %u\0A\00", align 1
@ext_check = common global i32 0, align 4
@razor_drop = external global i32, align 4
@razor_material = external global i32, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Move ordering : %f%%\0A\00", align 1
@FHF = external global i32, align 4
@FH = external global i32, align 4
@.str.7 = private unnamed_addr constant [81 x i8] c"Material score: %d   Eval : %d  MaxPosDiff: %d  White hand: %d  Black hand : %d\0A\00", align 1
@Material = external global i32, align 4
@white_hand_eval = external global i32, align 4
@black_hand_eval = external global i32, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Hash : %X  HoldHash : %X\0A\00", align 1
@hold_hash = external global i32, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"move %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"0-1 {Black Mates}\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"1-0 {White Mates}\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"1/2-1/2 {Fifty move rule}\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"1/2-1/2 {3 fold repetition}\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"1/2-1/2 {Draw}\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Sjeng: \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Illegal move: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"setboard\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@time_for_move = common global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"diagram\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"perft\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@raw_nodes = common global i32 0, align 4
@.str.26 = private unnamed_addr constant [28 x i8] c"Raw nodes for depth %d: %i\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Time : %.2f\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"tellics set 1 Sjeng SPEC 1.0 (SPEC/%s)\0A\00", align 1
@setcode = common global [30 x i8] zeroinitializer, align 16
@piecedead = external global i32, align 4
@partnerdead = external global i32, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"xboard\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"tellics set f5 1=1\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Number of nodes: %i (%0.2f%% qnodes)\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@post = common global i32 0, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"nopost\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"easy\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Eval: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"otim\00", align 1
@opp_time = common global i32 0, align 4
@.str.49 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"%i %i:%i %i\00", align 1
@sec_per_game = common global i32 0, align 4
@inc = common global i32 0, align 4
@.str.52 = private unnamed_addr constant [9 x i8] c"%i %i %i\00", align 1
@time_cushion = common global i32 0, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"rating\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"%i %i\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"holding\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"variant\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"crazyhouse\00", align 1
@zh_material = external global [14 x i32], align 16
@.str.59 = private unnamed_addr constant [9 x i8] c"bughouse\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"suicide\00", align 1
@Giveaway = common global i32 0, align 4
@suicide_material = external global [14 x i32], align 16
@.str.61 = private unnamed_addr constant [9 x i8] c"giveaway\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"losers\00", align 1
@losers_material = external global [14 x i32], align 16
@.str.63 = private unnamed_addr constant [8 x i8] c"analyze\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"Move number : %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c".\00", align 1
@wking_loc = common global i32 0, align 4
@white_castled = common global i32 0, align 4
@bking_loc = common global i32 0, align 4
@black_castled = common global i32 0, align 4
@ep_square = common global i32 0, align 4
@.str.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"partner\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"$partner\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"ptell\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"prove\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"\0AMax time to search (s): \00", align 1
@start_time = common global i64 0, align 8
@pn_time = external global i32, align 4
@.str.79 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"pong %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"fritz\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"New max depth set to: %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"protover\00", align 1
@.str.87 = private unnamed_addr constant [63 x i8] c"feature ping=0 setboard=1 playother=0 san=0 usermove=0 time=1\0A\00", align 1
@.str.88 = private unnamed_addr constant [53 x i8] c"feature draw=0 sigint=0 sigterm=0 reuse=1 analyze=0\0A\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"feature myname=\22Sjeng SPEC 1.0\22\0A\00", align 1
@.str.90 = private unnamed_addr constant [71 x i8] c"feature variants=\22normal,bughouse,crazyhouse,suicide,giveaway,losers\22\0A\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"feature colors=1 ics=0 name=0 pause=0 done=1\0A\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"accepted\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"rejected\00", align 1
@.str.94 = private unnamed_addr constant [65 x i8] c"Interface does not support a required feature...expect trouble.\0A\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"\0A%s\0A\0A\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"diagram/d:       toggle diagram display\0A\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"exit/quit:       terminate Sjeng\0A\00", align 1
@.str.99 = private unnamed_addr constant [51 x i8] c"go:              make Sjeng play the side to move\0A\00", align 1
@.str.100 = private unnamed_addr constant [35 x i8] c"new:             start a new game\0A\00", align 1
@.str.101 = private unnamed_addr constant [55 x i8] c"level <x>:       the xboard style command to set time\0A\00", align 1
@.str.102 = private unnamed_addr constant [49 x i8] c"  <x> should be in the form: <a> <b> <c> where:\0A\00", align 1
@.str.103 = private unnamed_addr constant [49 x i8] c"  a -> moves to TC (0 if using an ICS style TC)\0A\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"  b -> minutes per game\0A\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"  c -> increment in seconds\0A\00", align 1
@.str.106 = private unnamed_addr constant [55 x i8] c"nodes:           outputs the number of nodes searched\0A\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"perft <x>:       compute raw nodes to depth x\0A\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"post:            toggles thinking output\0A\00", align 1
@.str.109 = private unnamed_addr constant [45 x i8] c"xboard:          put Sjeng into xboard mode\0A\00", align 1
@.str.110 = private unnamed_addr constant [39 x i8] c"test:            run an EPD testsuite\0A\00", align 1
@.str.111 = private unnamed_addr constant [52 x i8] c"speed:           test movegen and evaluation speed\0A\00", align 1
@.str.112 = private unnamed_addr constant [59 x i8] c"proof:           try to prove or disprove the current pos\0A\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"sd <x>:          limit thinking to depth x\0A\00", align 1
@.str.114 = private unnamed_addr constant [51 x i8] c"st <x>:          limit thinking to x centiseconds\0A\00", align 1
@.str.115 = private unnamed_addr constant [54 x i8] c"setboard <FEN>:  set board to a specified FEN string\0A\00", align 1
@.str.116 = private unnamed_addr constant [38 x i8] c"undo:            back up a half move\0A\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"remove:          back up a full move\0A\00", align 1
@.str.118 = private unnamed_addr constant [42 x i8] c"force:           disable computer moving\0A\00", align 1
@.str.119 = private unnamed_addr constant [44 x i8] c"auto:            computer plays both sides\0A\00", align 1
@board = common global [144 x i32] zeroinitializer, align 16
@moved = common global [144 x i32] zeroinitializer, align 16
@pv_length = common global [300 x i32] zeroinitializer, align 16
@pieces = common global [62 x i32] zeroinitializer, align 16
@squares = common global [144 x i32] zeroinitializer, align 16
@num_pieces = common global i32 0, align 4
@i_depth = common global i32 0, align 4
@piece_count = common global i32 0, align 4
@killer_scores = common global [300 x i32] zeroinitializer, align 16
@killer_scores2 = common global [300 x i32] zeroinitializer, align 16
@killer_scores3 = common global [300 x i32] zeroinitializer, align 16
@cur_score = common global i32 0, align 4
@history_h = common global [144 x [144 x i32]] zeroinitializer, align 16
@captures = common global i32 0, align 4
@searching_pv = common global i32 0, align 4
@time_exit = common global i32 0, align 4
@time_failure = common global i32 0, align 4
@pv = common global [300 x [300 x %struct.move_s]] zeroinitializer, align 16
@killer1 = common global [300 x %struct.move_s] zeroinitializer, align 16
@killer2 = common global [300 x %struct.move_s] zeroinitializer, align 16
@killer3 = common global [300 x %struct.move_s] zeroinitializer, align 16
@path = common global [300 x %struct.move_s] zeroinitializer, align 16
@is_promoted = common global [62 x i32] zeroinitializer, align 16
@PVS = common global i32 0, align 4
@FULL = common global i32 0, align 4
@PVSF = common global i32 0, align 4
@my_partner = common global [256 x i8] zeroinitializer, align 16
@use_book = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca %struct.move_s, align 4
  %11 = alloca %struct.move_s, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [600 x %struct.move_s], align 16
  %16 = alloca [600 x %struct.move_x], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.move_s, align 4
  %24 = alloca %struct.move_s, align 4
  %25 = alloca %struct.move_s, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 4, i32* %12, align 4
  call void @read_rcfile()
  call void @initialize_zobrist()
  store i32 2, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  call void @init_game()
  call void @initialize_hash()
  call void @clear_tt()
  call void @reset_ecache()
  store i32 0, i32* @ECacheProbes, align 4
  store i32 0, i32* @ECacheHits, align 4
  store i32 0, i32* @TTProbes, align 4
  store i32 0, i32* @TTStores, align 4
  store i32 0, i32* @TTHits, align 4
  store i32 0, i32* @bookidx, align 4
  store i32 0, i32* @total_moves, align 4
  store i32 0, i32* @ply, align 4
  store i32 0, i32* %20, align 4
  store i32 40, i32* @moves_to_tc, align 4
  store i32 5, i32* @min_per_game, align 4
  store i32 30000, i32* @time_left, align 4
  store i32 2000, i32* @opp_rating, align 4
  store i32 2000, i32* @my_rating, align 4
  store i32 40, i32* @maxdepth, align 4
  store i32 200, i32* @maxposdiff, align 4
  store i32 1, i32* @must_go, align 4
  store i32 1, i32* @tradefreely, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* @xb_mode, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* @comp_color, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* @is_pondering, align 4
  store i32 1, i32* @allow_pondering, align 4
  store i32 0, i32* @is_analyzing, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* @have_partner, align 4
  store i32 0, i32* @must_sit, align 4
  store i32 0, i32* @go_fast, align 4
  store i32 0, i32* @fixed_time, align 4
  store i32 0, i32* @phase, align 4
  store i32 0, i32* @root_to_move, align 4
  store i32 0, i32* @kibitzed, align 4
  store i32 0, i32* @move_number, align 4
  %26 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %15, i32 0, i32 0
  %27 = bitcast %struct.move_s* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 14400, i32 16, i1 false)
  %28 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %16, i32 0, i32 0
  %29 = bitcast %struct.move_x* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 9600, i32 16, i1 false)
  %30 = load i32, i32* @hash, align 4
  %31 = load i32, i32* @move_number, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @setbuf(%struct._IO_FILE* %34, i8* null) #7
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @setbuf(%struct._IO_FILE* %35, i8* null) #7
  call void @start_up()
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %43

; <label>:38:                                     ; preds = %2
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  call void @run_autotest(i8* %42)
  br label %43

; <label>:43:                                     ; preds = %38, %2
  br label %44

; <label>:44:                                     ; preds = %43, %584, %589, %594, %599, %959, %964, %974, %1083
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %349, label %47

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* @comp_color, align 4
  %49 = load i32, i32* @white_to_move, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %54, label %51

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %21, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %349

; <label>:54:                                     ; preds = %51, %47
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %349, label %57

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* @must_sit, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %349, label %60

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* @result, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %349, label %63

; <label>:63:                                     ; preds = %60
  store i32 0, i32* @is_pondering, align 4
  call void @think(%struct.move_s* sret %23)
  %64 = bitcast %struct.move_s* %11 to i8*
  %65 = bitcast %struct.move_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 24, i32 4, i1 false)
  store i32 0, i32* @ply, align 4
  %66 = load i32, i32* @must_sit, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %63
  %69 = load i32, i32* @must_go, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %348

; <label>:71:                                     ; preds = %68, %63
  %72 = load i32, i32* @Variant, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %77, label %74

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* @Variant, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %83

; <label>:77:                                     ; preds = %74, %71
  %78 = load i32, i32* @result, align 4
  %79 = icmp ne i32 %78, 2
  br i1 %79, label %80, label %83

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* @result, align 4
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %104, label %83

; <label>:83:                                     ; preds = %80, %77, %74
  %84 = load i32, i32* @Variant, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %92, label %86

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* @Variant, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* @Variant, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %321

; <label>:92:                                     ; preds = %89, %86, %83
  %93 = load i32, i32* @comp_color, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %98

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* @result, align 4
  %97 = icmp ne i32 %96, 2
  br i1 %97, label %104, label %98

; <label>:98:                                     ; preds = %95, %92
  %99 = load i32, i32* @comp_color, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %321

; <label>:101:                                    ; preds = %98
  %102 = load i32, i32* @result, align 4
  %103 = icmp ne i32 %102, 3
  br i1 %103, label %104, label %321

; <label>:104:                                    ; preds = %101, %95, %80
  %105 = load i32, i32* @result, align 4
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %107, label %321

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* @result, align 4
  %109 = icmp ne i32 %108, 4
  br i1 %109, label %110, label %321

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* @result, align 4
  %112 = icmp ne i32 %111, 5
  br i1 %112, label %113, label %321

; <label>:113:                                    ; preds = %110
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  call void @comp_to_coord(%struct.move_s* byval align 8 %11, i8* %114)
  %115 = load i32, i32* @hash, align 4
  %116 = load i32, i32* @move_number, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %117
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @move_number, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %15, i64 0, i64 %120
  %122 = bitcast %struct.move_s* %121 to i8*
  %123 = bitcast %struct.move_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 24, i32 4, i1 false)
  call void @make(%struct.move_s* %11, i32 0)
  %124 = load i32, i32* @move_number, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @move_number, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %16, i64 0, i64 %126
  %128 = bitcast %struct.move_x* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 16, i1 false)
  store i32 0, i32* @userealholdings, align 4
  %129 = load i32, i32* @must_go, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* @must_go, align 4
  %131 = call i32 @is_draw()
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

; <label>:133:                                    ; preds = %113
  store i32 5, i32* @result, align 4
  br label %139

; <label>:134:                                    ; preds = %113
  %135 = load i32, i32* @fifty, align 4
  %136 = icmp sgt i32 %135, 100
  br i1 %136, label %137, label %138

; <label>:137:                                    ; preds = %134
  store i32 4, i32* @result, align 4
  br label %138

; <label>:138:                                    ; preds = %137, %134
  br label %139

; <label>:139:                                    ; preds = %138, %133
  %140 = load i32, i32* @root_to_move, align 4
  %141 = xor i32 %140, 1
  store i32 %141, i32* @root_to_move, align 4
  call void @reset_piece_square()
  %142 = load i32, i32* @book_ply, align 4
  %143 = icmp slt i32 %142, 40
  br i1 %143, label %144, label %154

; <label>:144:                                    ; preds = %139
  %145 = load i32, i32* @book_ply, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  %149 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8* %148) #7
  br label %153

; <label>:150:                                    ; preds = %144
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  %152 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8* %151) #7
  br label %153

; <label>:153:                                    ; preds = %150, %147
  br label %154

; <label>:154:                                    ; preds = %153, %139
  %155 = load i32, i32* @book_ply, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @book_ply, align 4
  %157 = load i32, i32* @nodes, align 4
  %158 = load i32, i32* @qnodes, align 4
  %159 = sitofp i32 %158 to float
  %160 = load i32, i32* @nodes, align 4
  %161 = sitofp i32 %160 to float
  %162 = fdiv float %159, %161
  %163 = fpext float %162 to double
  %164 = fmul double %163, 1.000000e+02
  %165 = fptrunc double %164 to float
  %166 = fpext float %165 to double
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 %157, double %166)
  %168 = load i32, i32* @ECacheProbes, align 4
  %169 = load i32, i32* @ECacheHits, align 4
  %170 = load i32, i32* @ECacheHits, align 4
  %171 = uitofp i32 %170 to float
  %172 = load i32, i32* @ECacheProbes, align 4
  %173 = uitofp i32 %172 to float
  %174 = fadd float %173, 1.000000e+00
  %175 = fdiv float %171, %174
  %176 = fmul float %175, 1.000000e+02
  %177 = fpext float %176 to double
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i32 %168, i32 %169, double %177)
  %179 = load i32, i32* @TTStores, align 4
  %180 = load i32, i32* @TTProbes, align 4
  %181 = load i32, i32* @TTHits, align 4
  %182 = load i32, i32* @TTHits, align 4
  %183 = uitofp i32 %182 to float
  %184 = load i32, i32* @TTProbes, align 4
  %185 = uitofp i32 %184 to float
  %186 = fadd float %185, 1.000000e+00
  %187 = fdiv float %183, %186
  %188 = fmul float %187, 1.000000e+02
  %189 = fpext float %188 to double
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0), i32 %179, i32 %180, i32 %181, double %189)
  %191 = load i32, i32* @NTries, align 4
  %192 = load i32, i32* @NCuts, align 4
  %193 = load i32, i32* @NCuts, align 4
  %194 = uitofp i32 %193 to float
  %195 = fmul float %194, 1.000000e+02
  %196 = load i32, i32* @NTries, align 4
  %197 = uitofp i32 %196 to float
  %198 = fadd float %197, 1.000000e+00
  %199 = fdiv float %195, %198
  %200 = fpext float %199 to double
  %201 = load i32, i32* @TExt, align 4
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 %191, i32 %192, double %200, i32 %201)
  %203 = load i32, i32* @ext_check, align 4
  %204 = load i32, i32* @razor_drop, align 4
  %205 = load i32, i32* @razor_material, align 4
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i32 0, i32 0), i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* @FHF, align 4
  %208 = uitofp i32 %207 to float
  %209 = fmul float %208, 1.000000e+02
  %210 = load i32, i32* @FH, align 4
  %211 = add i32 %210, 1
  %212 = uitofp i32 %211 to float
  %213 = fdiv float %209, %212
  %214 = fpext float %213 to double
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), double %214)
  %216 = load i32, i32* @Material, align 4
  %217 = call i32 @eval(i32 -1000000, i32 1000000)
  %218 = load i32, i32* @maxposdiff, align 4
  %219 = load i32, i32* @white_hand_eval, align 4
  %220 = load i32, i32* @black_hand_eval, align 4
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i32 0, i32 0), i32 %216, i32 %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* @hash, align 4
  %223 = load i32, i32* @hold_hash, align 4
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i32 %222, i32 %223)
  %225 = load i32, i32* @result, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %263, label %227

; <label>:227:                                    ; preds = %154
  %228 = load i32, i32* @xb_mode, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %248

; <label>:230:                                    ; preds = %227
  %231 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 0), align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %240, label %235

; <label>:235:                                    ; preds = %230
  %236 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %243

; <label>:240:                                    ; preds = %235, %230
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* %241)
  br label %243

; <label>:243:                                    ; preds = %240, %235
  %244 = load i32, i32* @Variant, align 4
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %247

; <label>:246:                                    ; preds = %243
  call void @CheckBadFlow(i32 0)
  br label %247

; <label>:247:                                    ; preds = %246, %243
  br label %262

; <label>:248:                                    ; preds = %227
  %249 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 0), align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %258, label %253

; <label>:253:                                    ; preds = %248
  %254 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %261

; <label>:258:                                    ; preds = %253, %248
  %259 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %259)
  br label %261

; <label>:261:                                    ; preds = %258, %253
  br label %262

; <label>:262:                                    ; preds = %261, %247
  br label %320

; <label>:263:                                    ; preds = %154
  %264 = load i32, i32* @xb_mode, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %280

; <label>:266:                                    ; preds = %263
  %267 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 0), align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %276, label %271

; <label>:271:                                    ; preds = %266
  %272 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %276, label %279

; <label>:276:                                    ; preds = %271, %266
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* %277)
  br label %279

; <label>:279:                                    ; preds = %276, %271
  br label %294

; <label>:280:                                    ; preds = %263
  %281 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 0), align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %290, label %285

; <label>:285:                                    ; preds = %280
  %286 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %293

; <label>:290:                                    ; preds = %285, %280
  %291 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  %292 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %291)
  br label %293

; <label>:293:                                    ; preds = %290, %285
  br label %294

; <label>:294:                                    ; preds = %293, %279
  %295 = load i32, i32* @result, align 4
  %296 = icmp eq i32 %295, 2
  br i1 %296, label %297, label %299

; <label>:297:                                    ; preds = %294
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  br label %319

; <label>:299:                                    ; preds = %294
  %300 = load i32, i32* @result, align 4
  %301 = icmp eq i32 %300, 3
  br i1 %301, label %302, label %304

; <label>:302:                                    ; preds = %299
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %318

; <label>:304:                                    ; preds = %299
  %305 = load i32, i32* @result, align 4
  %306 = icmp eq i32 %305, 4
  br i1 %306, label %307, label %309

; <label>:307:                                    ; preds = %304
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  br label %317

; <label>:309:                                    ; preds = %304
  %310 = load i32, i32* @result, align 4
  %311 = icmp eq i32 %310, 5
  br i1 %311, label %312, label %314

; <label>:312:                                    ; preds = %309
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %316

; <label>:314:                                    ; preds = %309
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  br label %316

; <label>:316:                                    ; preds = %314, %312
  br label %317

; <label>:317:                                    ; preds = %316, %307
  br label %318

; <label>:318:                                    ; preds = %317, %302
  br label %319

; <label>:319:                                    ; preds = %318, %297
  store i32 0, i32* %21, align 4
  br label %320

; <label>:320:                                    ; preds = %319, %262
  br label %347

; <label>:321:                                    ; preds = %110, %107, %104, %101, %98, %89
  %322 = load i32, i32* @result, align 4
  %323 = icmp eq i32 %322, 2
  br i1 %323, label %324, label %326

; <label>:324:                                    ; preds = %321
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  br label %346

; <label>:326:                                    ; preds = %321
  %327 = load i32, i32* @result, align 4
  %328 = icmp eq i32 %327, 3
  br i1 %328, label %329, label %331

; <label>:329:                                    ; preds = %326
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %345

; <label>:331:                                    ; preds = %326
  %332 = load i32, i32* @result, align 4
  %333 = icmp eq i32 %332, 4
  br i1 %333, label %334, label %336

; <label>:334:                                    ; preds = %331
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  br label %344

; <label>:336:                                    ; preds = %331
  %337 = load i32, i32* @result, align 4
  %338 = icmp eq i32 %337, 5
  br i1 %338, label %339, label %341

; <label>:339:                                    ; preds = %336
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %343

; <label>:341:                                    ; preds = %336
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  br label %343

; <label>:343:                                    ; preds = %341, %339
  br label %344

; <label>:344:                                    ; preds = %343, %334
  br label %345

; <label>:345:                                    ; preds = %344, %329
  br label %346

; <label>:346:                                    ; preds = %345, %324
  store i32 0, i32* %21, align 4
  br label %347

; <label>:347:                                    ; preds = %346, %320
  br label %348

; <label>:348:                                    ; preds = %347, %68
  br label %349

; <label>:349:                                    ; preds = %348, %60, %57, %54, %51, %44
  %350 = load i32, i32* @xb_mode, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %368, label %352

; <label>:352:                                    ; preds = %349
  %353 = load i32, i32* %14, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %360

; <label>:355:                                    ; preds = %352
  %356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %358 = load i32, i32* @comp_color, align 4
  %359 = sub nsw i32 1, %358
  call void @display_board(%struct._IO_FILE* %357, i32 %359)
  br label %360

; <label>:360:                                    ; preds = %355, %352
  %361 = load i32, i32* %21, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %367, label %363

; <label>:363:                                    ; preds = %360
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0))
  %365 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %366 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %365, i32 256, %struct._IO_FILE* %366)
  br label %367

; <label>:367:                                    ; preds = %363, %360
  br label %400

; <label>:368:                                    ; preds = %349
  %369 = load i32, i32* @must_sit, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %386, label %371

; <label>:371:                                    ; preds = %368
  %372 = load i32, i32* @allow_pondering, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %383

; <label>:374:                                    ; preds = %371
  %375 = load i32, i32* %17, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %383, label %377

; <label>:377:                                    ; preds = %374
  %378 = load i32, i32* %13, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %383, label %380

; <label>:380:                                    ; preds = %377
  %381 = load i32, i32* @move_number, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %386, label %383

; <label>:383:                                    ; preds = %380, %377, %374, %371
  %384 = load i32, i32* @is_analyzing, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %393

; <label>:386:                                    ; preds = %383, %380, %368
  %387 = load i32, i32* @result, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %393, label %389

; <label>:389:                                    ; preds = %386
  %390 = load i32, i32* %21, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %393, label %392

; <label>:392:                                    ; preds = %389
  store i32 1, i32* @is_pondering, align 4
  call void @think(%struct.move_s* sret %24)
  store i32 0, i32* @is_pondering, align 4
  store i32 0, i32* @ply, align 4
  br label %393

; <label>:393:                                    ; preds = %392, %389, %386, %383
  %394 = load i32, i32* %21, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %399, label %396

; <label>:396:                                    ; preds = %393
  %397 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %397, i32 256, %struct._IO_FILE* %398)
  br label %399

; <label>:399:                                    ; preds = %396, %393
  br label %400

; <label>:400:                                    ; preds = %399, %367
  %401 = load i32, i32* %17, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %455, label %403

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %405 = call i32 @is_move(i8* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %455

; <label>:407:                                    ; preds = %403
  %408 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %409 = call i32 @verify_coord(i8* %408, %struct.move_s* %10)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %451

; <label>:411:                                    ; preds = %407
  %412 = load i32, i32* @move_number, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %15, i64 0, i64 %413
  %415 = bitcast %struct.move_s* %414 to i8*
  %416 = bitcast %struct.move_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %415, i8* %416, i64 24, i32 4, i1 false)
  %417 = load i32, i32* @hash, align 4
  %418 = load i32, i32* @move_number, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %419
  store i32 %417, i32* %420, align 4
  call void @make(%struct.move_s* %10, i32 0)
  %421 = load i32, i32* @move_number, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* @move_number, align 4
  %423 = sext i32 %421 to i64
  %424 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %16, i64 0, i64 %423
  %425 = bitcast %struct.move_x* %424 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %425, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 16, i1 false)
  call void @reset_piece_square()
  %426 = load i32, i32* @root_to_move, align 4
  %427 = xor i32 %426, 1
  store i32 %427, i32* @root_to_move, align 4
  %428 = load i32, i32* @book_ply, align 4
  %429 = icmp slt i32 %428, 40
  br i1 %429, label %430, label %440

; <label>:430:                                    ; preds = %411
  %431 = load i32, i32* @book_ply, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %436, label %433

; <label>:433:                                    ; preds = %430
  %434 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %435 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8* %434) #7
  br label %439

; <label>:436:                                    ; preds = %430
  %437 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %438 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8* %437) #7
  br label %439

; <label>:439:                                    ; preds = %436, %433
  br label %440

; <label>:440:                                    ; preds = %439, %411
  %441 = load i32, i32* @book_ply, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* @book_ply, align 4
  %443 = load i32, i32* %14, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %450

; <label>:445:                                    ; preds = %440
  %446 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %448 = load i32, i32* @comp_color, align 4
  %449 = sub nsw i32 1, %448
  call void @display_board(%struct._IO_FILE* %447, i32 %449)
  br label %450

; <label>:450:                                    ; preds = %445, %440
  br label %454

; <label>:451:                                    ; preds = %407
  %452 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* %452)
  br label %454

; <label>:454:                                    ; preds = %451, %450
  br label %1083

; <label>:455:                                    ; preds = %403, %400
  %456 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %457 = call i8* @strstr(i8* %456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #8
  %458 = icmp ne i8* %457, null
  br i1 %458, label %476, label %459

; <label>:459:                                    ; preds = %455
  %460 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  store i8* %460, i8** %7, align 8
  br label %461

; <label>:461:                                    ; preds = %472, %459
  %462 = load i8*, i8** %7, align 8
  %463 = load i8, i8* %462, align 1
  %464 = icmp ne i8 %463, 0
  br i1 %464, label %465, label %475

; <label>:465:                                    ; preds = %461
  %466 = load i8*, i8** %7, align 8
  %467 = load i8, i8* %466, align 1
  %468 = sext i8 %467 to i32
  %469 = call i32 @tolower(i32 %468) #8
  %470 = trunc i32 %469 to i8
  %471 = load i8*, i8** %7, align 8
  store i8 %470, i8* %471, align 1
  br label %472

; <label>:472:                                    ; preds = %465
  %473 = load i8*, i8** %7, align 8
  %474 = getelementptr inbounds i8, i8* %473, i32 1
  store i8* %474, i8** %7, align 8
  br label %461

; <label>:475:                                    ; preds = %461
  br label %476

; <label>:476:                                    ; preds = %475, %455
  %477 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %478 = call i32 @strcmp(i8* %477, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #8
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %481, label %480

; <label>:480:                                    ; preds = %476
  call void @free_hash()
  call void @free_ecache()
  call void @exit(i32 0) #9
  unreachable

; <label>:481:                                    ; preds = %476
  %482 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %483 = call i32 @strcmp(i8* %482, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #8
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %491, label %485

; <label>:485:                                    ; preds = %481
  %486 = load i32, i32* @is_analyzing, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %489

; <label>:488:                                    ; preds = %485
  store i32 0, i32* @is_analyzing, align 4
  store i32 0, i32* @is_pondering, align 4
  store i32 0, i32* @time_for_move, align 4
  br label %490

; <label>:489:                                    ; preds = %485
  call void @free_hash()
  call void @free_ecache()
  call void @exit(i32 0) #9
  unreachable

; <label>:490:                                    ; preds = %488
  br label %1081

; <label>:491:                                    ; preds = %481
  %492 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %493 = call i32 @strcmp(i8* %492, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #8
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %499

; <label>:495:                                    ; preds = %491
  %496 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %497 = call i32 @strcmp(i8* %496, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)) #8
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %500, label %499

; <label>:499:                                    ; preds = %495, %491
  call void @toggle_bool(i32* %14)
  br label %1080

; <label>:500:                                    ; preds = %495
  %501 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %502 = call i32 @strncmp(i8* %501, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i64 5) #8
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %520, label %504

; <label>:504:                                    ; preds = %500
  %505 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %506 = getelementptr inbounds i8, i8* %505, i64 6
  %507 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %506, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %12) #7
  store i32 0, i32* @raw_nodes, align 4
  %508 = call i64 @rtime()
  store i64 %508, i64* %22, align 8
  %509 = load i32, i32* %12, align 4
  call void @perft(i32 %509)
  %510 = load i32, i32* %12, align 4
  %511 = load i32, i32* @raw_nodes, align 4
  %512 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0), i32 %510, i32 %511)
  %513 = call i64 @rtime()
  %514 = load i64, i64* %22, align 8
  %515 = call i32 @rdifftime(i64 %513, i64 %514)
  %516 = sitofp i32 %515 to float
  %517 = fpext float %516 to double
  %518 = fdiv double %517, 1.000000e+02
  %519 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), double %518)
  br label %1079

; <label>:520:                                    ; preds = %500
  %521 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %522 = call i32 @strcmp(i8* %521, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)) #8
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %542, label %524

; <label>:524:                                    ; preds = %520
  %525 = load i32, i32* @xb_mode, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %529

; <label>:527:                                    ; preds = %524
  %528 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @setcode, i32 0, i32 0))
  br label %529

; <label>:529:                                    ; preds = %527, %524
  %530 = load i32, i32* @is_analyzing, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %540, label %532

; <label>:532:                                    ; preds = %529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  store i32 2, i32* @Variant, align 4
  call void @init_game()
  call void @initialize_hash()
  %533 = load i32, i32* %20, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %536, label %535

; <label>:535:                                    ; preds = %532
  call void @clear_tt()
  call void @reset_ecache()
  br label %536

; <label>:536:                                    ; preds = %535, %532
  store i32 0, i32* %13, align 4
  store i32 0, i32* @must_sit, align 4
  store i32 0, i32* @go_fast, align 4
  store i32 0, i32* @piecedead, align 4
  store i32 0, i32* @partnerdead, align 4
  store i32 0, i32* @kibitzed, align 4
  store i32 0, i32* @fixed_time, align 4
  store i32 0, i32* @root_to_move, align 4
  store i32 0, i32* @comp_color, align 4
  store i32 0, i32* @move_number, align 4
  %537 = load i32, i32* @move_number, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %538
  store i32 0, i32* %539, align 4
  store i32 0, i32* @bookidx, align 4
  store i32 2000, i32* @opp_rating, align 4
  store i32 2000, i32* @my_rating, align 4
  store i32 0, i32* @must_go, align 4
  store i32 1, i32* @tradefreely, align 4
  store i32 0, i32* %21, align 4
  call void @CheckBadFlow(i32 1)
  call void @ResetHandValue()
  br label %541

; <label>:540:                                    ; preds = %529
  call void @init_game()
  store i32 0, i32* @move_number, align 4
  br label %541

; <label>:541:                                    ; preds = %540, %536
  br label %1078

; <label>:542:                                    ; preds = %520
  %543 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %544 = call i32 @strcmp(i8* %543, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)) #8
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %550, label %546

; <label>:546:                                    ; preds = %542
  store i32 1, i32* @xb_mode, align 4
  call void @toggle_bool(i32* %14)
  %547 = call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #7
  %548 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  %549 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0))
  call void @BegForPartner()
  br label %1077

; <label>:550:                                    ; preds = %542
  %551 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %552 = call i32 @strcmp(i8* %551, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #8
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %566, label %554

; <label>:554:                                    ; preds = %550
  %555 = load i32, i32* @nodes, align 4
  %556 = load i32, i32* @qnodes, align 4
  %557 = sitofp i32 %556 to float
  %558 = load i32, i32* @nodes, align 4
  %559 = sitofp i32 %558 to float
  %560 = fdiv float %557, %559
  %561 = fpext float %560 to double
  %562 = fmul double %561, 1.000000e+02
  %563 = fptrunc double %562 to float
  %564 = fpext float %563 to double
  %565 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0), i32 %555, double %564)
  br label %1076

; <label>:566:                                    ; preds = %550
  %567 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %568 = call i32 @strcmp(i8* %567, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #8
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %575, label %570

; <label>:570:                                    ; preds = %566
  call void @toggle_bool(i32* @post)
  %571 = load i32, i32* @xb_mode, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %574

; <label>:573:                                    ; preds = %570
  store i32 1, i32* @post, align 4
  br label %574

; <label>:574:                                    ; preds = %573, %570
  br label %1075

; <label>:575:                                    ; preds = %566
  %576 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %577 = call i32 @strcmp(i8* %576, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #8
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %580, label %579

; <label>:579:                                    ; preds = %575
  store i32 0, i32* @post, align 4
  br label %1074

; <label>:580:                                    ; preds = %575
  %581 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %582 = call i32 @strcmp(i8* %581, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)) #8
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %585, label %584

; <label>:584:                                    ; preds = %580
  br label %44

; <label>:585:                                    ; preds = %580
  %586 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %587 = call i32 @strcmp(i8* %586, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0)) #8
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %590, label %589

; <label>:589:                                    ; preds = %585
  store i32 1, i32* @allow_pondering, align 4
  br label %44

; <label>:590:                                    ; preds = %585
  %591 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %592 = call i32 @strcmp(i8* %591, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0)) #8
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %595, label %594

; <label>:594:                                    ; preds = %590
  store i32 0, i32* @allow_pondering, align 4
  br label %44

; <label>:595:                                    ; preds = %590
  %596 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %597 = call i32 @strcmp(i8* %596, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)) #8
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %600, label %599

; <label>:599:                                    ; preds = %595
  br label %44

; <label>:600:                                    ; preds = %595
  %601 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %602 = call i32 @strcmp(i8* %601, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #8
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %605, label %604

; <label>:604:                                    ; preds = %600
  store i32 1, i32* @white_to_move, align 4
  store i32 0, i32* @root_to_move, align 4
  store i32 0, i32* @comp_color, align 4
  br label %1069

; <label>:605:                                    ; preds = %600
  %606 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %607 = call i32 @strcmp(i8* %606, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #8
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %610, label %609

; <label>:609:                                    ; preds = %605
  store i32 0, i32* @white_to_move, align 4
  store i32 1, i32* @root_to_move, align 4
  store i32 1, i32* @comp_color, align 4
  br label %1068

; <label>:610:                                    ; preds = %605
  %611 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %612 = call i32 @strcmp(i8* %611, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #8
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %615, label %614

; <label>:614:                                    ; preds = %610
  store i32 1, i32* %13, align 4
  br label %1067

; <label>:615:                                    ; preds = %610
  %616 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %617 = call i32 @strcmp(i8* %616, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #8
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %622, label %619

; <label>:619:                                    ; preds = %615
  call void @check_phase()
  %620 = call i32 @eval(i32 -1000000, i32 1000000)
  %621 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %620)
  br label %1066

; <label>:622:                                    ; preds = %615
  %623 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %624 = call i32 @strcmp(i8* %623, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #8
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %628, label %626

; <label>:626:                                    ; preds = %622
  %627 = load i32, i32* @white_to_move, align 4
  store i32 %627, i32* @comp_color, align 4
  store i32 0, i32* %13, align 4
  br label %1065

; <label>:628:                                    ; preds = %622
  %629 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %630 = call i32 @strncmp(i8* %629, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i64 4) #8
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %636, label %632

; <label>:632:                                    ; preds = %628
  %633 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %634 = getelementptr inbounds i8, i8* %633, i64 5
  %635 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %634, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32* @time_left) #7
  br label %1064

; <label>:636:                                    ; preds = %628
  %637 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %638 = call i32 @strncmp(i8* %637, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i64 4) #8
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %644, label %640

; <label>:640:                                    ; preds = %636
  %641 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %642 = getelementptr inbounds i8, i8* %641, i64 5
  %643 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %642, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32* @opp_time) #7
  br label %1063

; <label>:644:                                    ; preds = %636
  %645 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %646 = call i32 @strncmp(i8* %645, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i64 5) #8
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %671, label %648

; <label>:648:                                    ; preds = %644
  %649 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %650 = getelementptr inbounds i8, i8* %649, i64 6
  %651 = call i8* @strstr(i8* %650, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #8
  %652 = icmp ne i8* %651, null
  br i1 %652, label %653, label %663

; <label>:653:                                    ; preds = %648
  %654 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %655 = getelementptr inbounds i8, i8* %654, i64 6
  %656 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %655, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i32* @moves_to_tc, i32* @min_per_game, i32* @sec_per_game, i32* @inc) #7
  %657 = load i32, i32* @min_per_game, align 4
  %658 = mul nsw i32 %657, 6000
  %659 = load i32, i32* @sec_per_game, align 4
  %660 = mul nsw i32 %659, 100
  %661 = add nsw i32 %658, %660
  store i32 %661, i32* @time_left, align 4
  %662 = load i32, i32* @time_left, align 4
  store i32 %662, i32* @opp_time, align 4
  br label %670

; <label>:663:                                    ; preds = %648
  %664 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %665 = getelementptr inbounds i8, i8* %664, i64 6
  %666 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %665, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32* @moves_to_tc, i32* @min_per_game, i32* @inc) #7
  %667 = load i32, i32* @min_per_game, align 4
  %668 = mul nsw i32 %667, 6000
  store i32 %668, i32* @time_left, align 4
  %669 = load i32, i32* @time_left, align 4
  store i32 %669, i32* @opp_time, align 4
  br label %670

; <label>:670:                                    ; preds = %663, %653
  store i32 0, i32* @fixed_time, align 4
  store i32 0, i32* @time_cushion, align 4
  br label %1062

; <label>:671:                                    ; preds = %644
  %672 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %673 = call i32 @strncmp(i8* %672, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i64 6) #8
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %687, label %675

; <label>:675:                                    ; preds = %671
  %676 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %677 = getelementptr inbounds i8, i8* %676, i64 7
  %678 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %677, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32* @my_rating, i32* @opp_rating) #7
  %679 = load i32, i32* @my_rating, align 4
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %682

; <label>:681:                                    ; preds = %675
  store i32 2000, i32* @my_rating, align 4
  br label %682

; <label>:682:                                    ; preds = %681, %675
  %683 = load i32, i32* @opp_rating, align 4
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %686

; <label>:685:                                    ; preds = %682
  store i32 2000, i32* @opp_rating, align 4
  br label %686

; <label>:686:                                    ; preds = %685, %682
  br label %1061

; <label>:687:                                    ; preds = %671
  %688 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %689 = call i32 @strncmp(i8* %688, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i64 7) #8
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %693, label %691

; <label>:691:                                    ; preds = %687
  %692 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  call void @ProcessHoldings(i8* %692)
  br label %1060

; <label>:693:                                    ; preds = %687
  %694 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %695 = call i32 @strncmp(i8* %694, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i64 7) #8
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %733, label %697

; <label>:697:                                    ; preds = %693
  %698 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %699 = call i8* @strstr(i8* %698, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0)) #8
  %700 = icmp ne i8* %699, null
  br i1 %700, label %701, label %702

; <label>:701:                                    ; preds = %697
  store i32 2, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  br label %732

; <label>:702:                                    ; preds = %697
  %703 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %704 = call i8* @strstr(i8* %703, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0)) #8
  %705 = icmp ne i8* %704, null
  br i1 %705, label %706, label %707

; <label>:706:                                    ; preds = %702
  store i32 0, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false)
  br label %731

; <label>:707:                                    ; preds = %702
  %708 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %709 = call i8* @strstr(i8* %708, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0)) #8
  %710 = icmp ne i8* %709, null
  br i1 %710, label %711, label %712

; <label>:711:                                    ; preds = %707
  store i32 1, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false)
  br label %730

; <label>:712:                                    ; preds = %707
  %713 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %714 = call i8* @strstr(i8* %713, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0)) #8
  %715 = icmp ne i8* %714, null
  br i1 %715, label %716, label %717

; <label>:716:                                    ; preds = %712
  store i32 3, i32* @Variant, align 4
  store i32 0, i32* @Giveaway, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false)
  br label %729

; <label>:717:                                    ; preds = %712
  %718 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %719 = call i8* @strstr(i8* %718, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0)) #8
  %720 = icmp ne i8* %719, null
  br i1 %720, label %721, label %722

; <label>:721:                                    ; preds = %717
  store i32 3, i32* @Variant, align 4
  store i32 1, i32* @Giveaway, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false)
  br label %728

; <label>:722:                                    ; preds = %717
  %723 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %724 = call i8* @strstr(i8* %723, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0)) #8
  %725 = icmp ne i8* %724, null
  br i1 %725, label %726, label %727

; <label>:726:                                    ; preds = %722
  store i32 4, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @losers_material to i8*), i64 56, i32 16, i1 false)
  br label %727

; <label>:727:                                    ; preds = %726, %722
  br label %728

; <label>:728:                                    ; preds = %727, %721
  br label %729

; <label>:729:                                    ; preds = %728, %716
  br label %730

; <label>:730:                                    ; preds = %729, %711
  br label %731

; <label>:731:                                    ; preds = %730, %706
  br label %732

; <label>:732:                                    ; preds = %731, %701
  call void @initialize_hash()
  call void @clear_tt()
  call void @reset_ecache()
  br label %1059

; <label>:733:                                    ; preds = %693
  %734 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %735 = call i32 @strncmp(i8* %734, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i64 7) #8
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %738, label %737

; <label>:737:                                    ; preds = %733
  store i32 1, i32* @is_analyzing, align 4
  store i32 1, i32* @is_pondering, align 4
  call void @think(%struct.move_s* sret %25)
  store i32 0, i32* @ply, align 4
  br label %1058

; <label>:738:                                    ; preds = %733
  %739 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %740 = call i32 @strncmp(i8* %739, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i64 4) #8
  %741 = icmp ne i32 %740, 0
  br i1 %741, label %759, label %742

; <label>:742:                                    ; preds = %738
  %743 = load i32, i32* @move_number, align 4
  %744 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), i32 %743)
  %745 = load i32, i32* @move_number, align 4
  %746 = icmp sgt i32 %745, 0
  br i1 %746, label %747, label %758

; <label>:747:                                    ; preds = %742
  %748 = load i32, i32* @move_number, align 4
  %749 = add nsw i32 %748, -1
  store i32 %749, i32* @move_number, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %16, i64 0, i64 %750
  %752 = bitcast %struct.move_x* %751 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %752, i64 16, i32 16, i1 false)
  %753 = load i32, i32* @move_number, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %15, i64 0, i64 %754
  call void @unmake(%struct.move_s* %755, i32 0)
  call void @reset_piece_square()
  %756 = load i32, i32* @root_to_move, align 4
  %757 = xor i32 %756, 1
  store i32 %757, i32* @root_to_move, align 4
  br label %758

; <label>:758:                                    ; preds = %747, %742
  br label %1057

; <label>:759:                                    ; preds = %738
  %760 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %761 = call i32 @strncmp(i8* %760, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i64 5) #8
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %784, label %763

; <label>:763:                                    ; preds = %759
  %764 = load i32, i32* @move_number, align 4
  %765 = icmp sgt i32 %764, 1
  br i1 %765, label %766, label %783

; <label>:766:                                    ; preds = %763
  %767 = load i32, i32* @move_number, align 4
  %768 = add nsw i32 %767, -1
  store i32 %768, i32* @move_number, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %16, i64 0, i64 %769
  %771 = bitcast %struct.move_x* %770 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %771, i64 16, i32 16, i1 false)
  %772 = load i32, i32* @move_number, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %15, i64 0, i64 %773
  call void @unmake(%struct.move_s* %774, i32 0)
  call void @reset_piece_square()
  %775 = load i32, i32* @move_number, align 4
  %776 = add nsw i32 %775, -1
  store i32 %776, i32* @move_number, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %16, i64 0, i64 %777
  %779 = bitcast %struct.move_x* %778 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %779, i64 16, i32 16, i1 false)
  %780 = load i32, i32* @move_number, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %15, i64 0, i64 %781
  call void @unmake(%struct.move_s* %782, i32 0)
  call void @reset_piece_square()
  br label %783

; <label>:783:                                    ; preds = %766, %763
  br label %1056

; <label>:784:                                    ; preds = %759
  %785 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %786 = call i32 @strncmp(i8* %785, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i64 4) #8
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %789, label %788

; <label>:788:                                    ; preds = %784
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %1055

; <label>:789:                                    ; preds = %784
  %790 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %791 = call i32 @strncmp(i8* %790, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i64 1) #8
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %805, label %793

; <label>:793:                                    ; preds = %789
  %794 = load i32, i32* %17, align 4
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %796, label %805

; <label>:796:                                    ; preds = %793
  store i32 0, i32* %17, align 4
  %797 = load i32, i32* @wking_loc, align 4
  %798 = icmp eq i32 %797, 30
  br i1 %798, label %799, label %800

; <label>:799:                                    ; preds = %796
  store i32 0, i32* @white_castled, align 4
  br label %800

; <label>:800:                                    ; preds = %799, %796
  %801 = load i32, i32* @bking_loc, align 4
  %802 = icmp eq i32 %801, 114
  br i1 %802, label %803, label %804

; <label>:803:                                    ; preds = %800
  store i32 0, i32* @black_castled, align 4
  br label %804

; <label>:804:                                    ; preds = %803, %800
  store i32 50, i32* @book_ply, align 4
  store i32 0, i32* @ep_square, align 4
  store i32 0, i32* @move_number, align 4
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8 0, i64 256, i32 16, i1 false)
  call void @clear_tt()
  call void @initialize_hash()
  call void @reset_piece_square()
  br label %1054

; <label>:805:                                    ; preds = %793, %789
  %806 = load i32, i32* %17, align 4
  %807 = icmp ne i32 %806, 0
  br i1 %807, label %808, label %818

; <label>:808:                                    ; preds = %805
  %809 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %810 = call i32 @strncmp(i8* %809, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0), i64 1) #8
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %818, label %812

; <label>:812:                                    ; preds = %808
  %813 = load i32, i32* %18, align 4
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %816

; <label>:815:                                    ; preds = %812
  store i32 1, i32* %18, align 4
  br label %817

; <label>:816:                                    ; preds = %812
  store i32 0, i32* %18, align 4
  br label %817

; <label>:817:                                    ; preds = %816, %815
  br label %1053

; <label>:818:                                    ; preds = %808, %805
  %819 = load i32, i32* %17, align 4
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %826

; <label>:821:                                    ; preds = %818
  %822 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %823 = call i32 @strncmp(i8* %822, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i64 1) #8
  %824 = icmp ne i32 %823, 0
  br i1 %824, label %826, label %825

; <label>:825:                                    ; preds = %821
  call void @reset_board()
  store i32 0, i32* @move_number, align 4
  br label %1052

; <label>:826:                                    ; preds = %821, %818
  %827 = load i32, i32* %17, align 4
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %829, label %874

; <label>:829:                                    ; preds = %826
  %830 = call i16** @__ctype_b_loc() #10
  %831 = load i16*, i16** %830, align 8
  %832 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %833 = load i8, i8* %832, align 16
  %834 = sext i8 %833 to i32
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds i16, i16* %831, i64 %835
  %837 = load i16, i16* %836, align 2
  %838 = zext i16 %837 to i32
  %839 = and i32 %838, 1024
  %840 = icmp ne i32 %839, 0
  br i1 %840, label %841, label %874

; <label>:841:                                    ; preds = %829
  %842 = call i16** @__ctype_b_loc() #10
  %843 = load i16*, i16** %842, align 8
  %844 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 1
  %845 = load i8, i8* %844, align 1
  %846 = sext i8 %845 to i32
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds i16, i16* %843, i64 %847
  %849 = load i16, i16* %848, align 2
  %850 = zext i16 %849 to i32
  %851 = and i32 %850, 1024
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %874

; <label>:853:                                    ; preds = %841
  %854 = call i16** @__ctype_b_loc() #10
  %855 = load i16*, i16** %854, align 8
  %856 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 2
  %857 = load i8, i8* %856, align 2
  %858 = sext i8 %857 to i32
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds i16, i16* %855, i64 %859
  %861 = load i16, i16* %860, align 2
  %862 = zext i16 %861 to i32
  %863 = and i32 %862, 2048
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %865, label %874

; <label>:865:                                    ; preds = %853
  %866 = load i32, i32* %18, align 4
  %867 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %868 = load i8, i8* %867, align 16
  %869 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 1
  %870 = load i8, i8* %869, align 1
  %871 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 2
  %872 = load i8, i8* %871, align 2
  %873 = sext i8 %872 to i32
  call void @PutPiece(i32 %866, i8 signext %868, i8 signext %870, i32 %873)
  br label %1051

; <label>:874:                                    ; preds = %853, %841, %829, %826
  %875 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %876 = call i32 @strncmp(i8* %875, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i64 7) #8
  %877 = icmp ne i32 %876, 0
  br i1 %877, label %881, label %878

; <label>:878:                                    ; preds = %874
  %879 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %880 = getelementptr inbounds i8, i8* %879, i64 7
  call void @HandlePartner(i8* %880)
  br label %1050

; <label>:881:                                    ; preds = %874
  %882 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %883 = call i32 @strncmp(i8* %882, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i64 8) #8
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %888, label %885

; <label>:885:                                    ; preds = %881
  %886 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %887 = getelementptr inbounds i8, i8* %886, i64 8
  call void @HandlePartner(i8* %887)
  br label %1049

; <label>:888:                                    ; preds = %881
  %889 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %890 = call i32 @strncmp(i8* %889, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i64 5) #8
  %891 = icmp ne i32 %890, 0
  br i1 %891, label %894, label %892

; <label>:892:                                    ; preds = %888
  %893 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  call void @HandlePtell(i8* %893)
  br label %1048

; <label>:894:                                    ; preds = %888
  %895 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %896 = call i32 @strncmp(i8* %895, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #8
  %897 = icmp ne i32 %896, 0
  br i1 %897, label %899, label %898

; <label>:898:                                    ; preds = %894
  call void @run_epd_testsuite()
  br label %1047

; <label>:899:                                    ; preds = %894
  %900 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %901 = call i32 @strncmp(i8* %900, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i64 2) #8
  %902 = icmp ne i32 %901, 0
  br i1 %902, label %909, label %903

; <label>:903:                                    ; preds = %899
  %904 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %905 = getelementptr inbounds i8, i8* %904, i64 3
  %906 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %905, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* @fixed_time) #7
  %907 = load i32, i32* @fixed_time, align 4
  %908 = mul nsw i32 %907, 100
  store i32 %908, i32* @fixed_time, align 4
  br label %1046

; <label>:909:                                    ; preds = %899
  %910 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %911 = call i32 @strncmp(i8* %910, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i64 6) #8
  %912 = icmp ne i32 %911, 0
  br i1 %912, label %914, label %913

; <label>:913:                                    ; preds = %909
  br label %1045

; <label>:914:                                    ; preds = %909
  %915 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %916 = call i32 @strncmp(i8* %915, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i64 5) #8
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %928, label %918

; <label>:918:                                    ; preds = %914
  %919 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i32 0, i32 0))
  %920 = call i64 @rtime()
  store i64 %920, i64* @start_time, align 8
  %921 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0
  %922 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %921, i32 256, %struct._IO_FILE* %922)
  %923 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0
  %924 = call i64 @atol(i8* %923) #8
  %925 = mul nsw i64 %924, 100
  %926 = trunc i64 %925 to i32
  store i32 %926, i32* @pn_time, align 4
  %927 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  call void @proofnumbersearch()
  br label %1044

; <label>:928:                                    ; preds = %914
  %929 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %930 = call i32 @strncmp(i8* %929, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i64 4) #8
  %931 = icmp ne i32 %930, 0
  br i1 %931, label %938, label %932

; <label>:932:                                    ; preds = %928
  %933 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %934 = getelementptr inbounds i8, i8* %933, i64 5
  %935 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %934, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %19) #7
  %936 = load i32, i32* %19, align 4
  %937 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i32 %936)
  br label %1043

; <label>:938:                                    ; preds = %928
  %939 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %940 = call i32 @strncmp(i8* %939, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i64 5) #8
  %941 = icmp ne i32 %940, 0
  br i1 %941, label %943, label %942

; <label>:942:                                    ; preds = %938
  store i32 1, i32* %20, align 4
  br label %1042

; <label>:943:                                    ; preds = %938
  %944 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %945 = call i32 @strncmp(i8* %944, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i64 5) #8
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %948, label %947

; <label>:947:                                    ; preds = %943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  store i32 2, i32* @Variant, align 4
  call void @init_game()
  call void @initialize_hash()
  call void @clear_tt()
  call void @reset_ecache()
  store i32 0, i32* %13, align 4
  store i32 0, i32* @fixed_time, align 4
  store i32 0, i32* @root_to_move, align 4
  store i32 0, i32* @comp_color, align 4
  store i32 0, i32* @move_number, align 4
  store i32 0, i32* @bookidx, align 4
  store i32 2000, i32* @opp_rating, align 4
  store i32 2000, i32* @my_rating, align 4
  br label %1041

; <label>:948:                                    ; preds = %943
  %949 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %950 = call i32 @strncmp(i8* %949, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i64 8) #8
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %955, label %952

; <label>:952:                                    ; preds = %948
  %953 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %954 = getelementptr inbounds i8, i8* %953, i64 9
  call void @setup_epd_line(i8* %954)
  br label %1040

; <label>:955:                                    ; preds = %948
  %956 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %957 = call i32 @strncmp(i8* %956, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i64 1) #8
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %960, label %959

; <label>:959:                                    ; preds = %955
  br label %44

; <label>:960:                                    ; preds = %955
  %961 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %962 = call i32 @strncmp(i8* %961, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i64 2) #8
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %970, label %964

; <label>:964:                                    ; preds = %960
  %965 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %966 = getelementptr inbounds i8, i8* %965, i64 3
  %967 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %966, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* @maxdepth) #7
  %968 = load i32, i32* @maxdepth, align 4
  %969 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.84, i32 0, i32 0), i32 %968)
  br label %44

; <label>:970:                                    ; preds = %960
  %971 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %972 = call i32 @strncmp(i8* %971, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i64 4) #8
  %973 = icmp ne i32 %972, 0
  br i1 %973, label %975, label %974

; <label>:974:                                    ; preds = %970
  store i32 1, i32* %21, align 4
  br label %44

; <label>:975:                                    ; preds = %970
  %976 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %977 = call i32 @strncmp(i8* %976, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i64 8) #8
  %978 = icmp ne i32 %977, 0
  br i1 %978, label %985, label %979

; <label>:979:                                    ; preds = %975
  %980 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.87, i32 0, i32 0))
  %981 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.88, i32 0, i32 0))
  %982 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0))
  %983 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.90, i32 0, i32 0))
  %984 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.91, i32 0, i32 0))
  store i32 2, i32* @xb_mode, align 4
  br label %1036

; <label>:985:                                    ; preds = %975
  %986 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %987 = call i32 @strncmp(i8* %986, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i64 8) #8
  %988 = icmp ne i32 %987, 0
  br i1 %988, label %990, label %989

; <label>:989:                                    ; preds = %985
  br label %1035

; <label>:990:                                    ; preds = %985
  %991 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %992 = call i32 @strncmp(i8* %991, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i64 8) #8
  %993 = icmp ne i32 %992, 0
  br i1 %993, label %996, label %994

; <label>:994:                                    ; preds = %990
  %995 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.94, i32 0, i32 0))
  br label %1034

; <label>:996:                                    ; preds = %990
  %997 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %998 = call i32 @strcmp(i8* %997, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0)) #8
  %999 = icmp ne i32 %998, 0
  br i1 %999, label %1026, label %1000

; <label>:1000:                                   ; preds = %996
  %1001 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @divider, i32 0, i32 0))
  %1002 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.97, i32 0, i32 0))
  %1003 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i32 0, i32 0))
  %1004 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.99, i32 0, i32 0))
  %1005 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i32 0, i32 0))
  %1006 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.101, i32 0, i32 0))
  %1007 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.102, i32 0, i32 0))
  %1008 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.103, i32 0, i32 0))
  %1009 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i32 0, i32 0))
  %1010 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i32 0, i32 0))
  %1011 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.106, i32 0, i32 0))
  %1012 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.107, i32 0, i32 0))
  %1013 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.108, i32 0, i32 0))
  %1014 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.109, i32 0, i32 0))
  %1015 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.110, i32 0, i32 0))
  %1016 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.111, i32 0, i32 0))
  %1017 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.112, i32 0, i32 0))
  %1018 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.113, i32 0, i32 0))
  %1019 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.114, i32 0, i32 0))
  %1020 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.115, i32 0, i32 0))
  %1021 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.116, i32 0, i32 0))
  %1022 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0))
  %1023 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.118, i32 0, i32 0))
  %1024 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.119, i32 0, i32 0))
  %1025 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @divider, i32 0, i32 0))
  store i32 0, i32* %14, align 4
  br label %1033

; <label>:1026:                                   ; preds = %996
  %1027 = load i32, i32* @xb_mode, align 4
  %1028 = icmp ne i32 %1027, 0
  br i1 %1028, label %1032, label %1029

; <label>:1029:                                   ; preds = %1026
  %1030 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0
  %1031 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* %1030)
  br label %1032

; <label>:1032:                                   ; preds = %1029, %1026
  br label %1033

; <label>:1033:                                   ; preds = %1032, %1000
  br label %1034

; <label>:1034:                                   ; preds = %1033, %994
  br label %1035

; <label>:1035:                                   ; preds = %1034, %989
  br label %1036

; <label>:1036:                                   ; preds = %1035, %979
  br label %1037

; <label>:1037:                                   ; preds = %1036
  br label %1038

; <label>:1038:                                   ; preds = %1037
  br label %1039

; <label>:1039:                                   ; preds = %1038
  br label %1040

; <label>:1040:                                   ; preds = %1039, %952
  br label %1041

; <label>:1041:                                   ; preds = %1040, %947
  br label %1042

; <label>:1042:                                   ; preds = %1041, %942
  br label %1043

; <label>:1043:                                   ; preds = %1042, %932
  br label %1044

; <label>:1044:                                   ; preds = %1043, %918
  br label %1045

; <label>:1045:                                   ; preds = %1044, %913
  br label %1046

; <label>:1046:                                   ; preds = %1045, %903
  br label %1047

; <label>:1047:                                   ; preds = %1046, %898
  br label %1048

; <label>:1048:                                   ; preds = %1047, %892
  br label %1049

; <label>:1049:                                   ; preds = %1048, %885
  br label %1050

; <label>:1050:                                   ; preds = %1049, %878
  br label %1051

; <label>:1051:                                   ; preds = %1050, %865
  br label %1052

; <label>:1052:                                   ; preds = %1051, %825
  br label %1053

; <label>:1053:                                   ; preds = %1052, %817
  br label %1054

; <label>:1054:                                   ; preds = %1053, %804
  br label %1055

; <label>:1055:                                   ; preds = %1054, %788
  br label %1056

; <label>:1056:                                   ; preds = %1055, %783
  br label %1057

; <label>:1057:                                   ; preds = %1056, %758
  br label %1058

; <label>:1058:                                   ; preds = %1057, %737
  br label %1059

; <label>:1059:                                   ; preds = %1058, %732
  br label %1060

; <label>:1060:                                   ; preds = %1059, %691
  br label %1061

; <label>:1061:                                   ; preds = %1060, %686
  br label %1062

; <label>:1062:                                   ; preds = %1061, %670
  br label %1063

; <label>:1063:                                   ; preds = %1062, %640
  br label %1064

; <label>:1064:                                   ; preds = %1063, %632
  br label %1065

; <label>:1065:                                   ; preds = %1064, %626
  br label %1066

; <label>:1066:                                   ; preds = %1065, %619
  br label %1067

; <label>:1067:                                   ; preds = %1066, %614
  br label %1068

; <label>:1068:                                   ; preds = %1067, %609
  br label %1069

; <label>:1069:                                   ; preds = %1068, %604
  br label %1070

; <label>:1070:                                   ; preds = %1069
  br label %1071

; <label>:1071:                                   ; preds = %1070
  br label %1072

; <label>:1072:                                   ; preds = %1071
  br label %1073

; <label>:1073:                                   ; preds = %1072
  br label %1074

; <label>:1074:                                   ; preds = %1073, %579
  br label %1075

; <label>:1075:                                   ; preds = %1074, %574
  br label %1076

; <label>:1076:                                   ; preds = %1075, %554
  br label %1077

; <label>:1077:                                   ; preds = %1076, %546
  br label %1078

; <label>:1078:                                   ; preds = %1077, %541
  br label %1079

; <label>:1079:                                   ; preds = %1078, %504
  br label %1080

; <label>:1080:                                   ; preds = %1079, %499
  br label %1081

; <label>:1081:                                   ; preds = %1080, %490
  br label %1082

; <label>:1082:                                   ; preds = %1081
  br label %1083

; <label>:1083:                                   ; preds = %1082, %454
  br label %44
                                                  ; No predecessors!
  %1085 = load i32, i32* %3, align 4
  ret i32 %1085
}

declare void @read_rcfile() #1

declare void @initialize_zobrist() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare void @init_game() #1

declare void @initialize_hash() #1

declare void @clear_tt() #1

declare void @reset_ecache() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE*, i8*) #3

declare void @start_up() #1

declare i32 @printf(i8*, ...) #1

declare void @run_autotest(i8*) #1

declare void @think(%struct.move_s* sret) #1

declare void @comp_to_coord(%struct.move_s* byval align 8, i8*) #1

declare void @make(%struct.move_s*, i32) #1

declare i32 @is_draw() #1

declare void @reset_piece_square() #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i32 @eval(i32, i32) #1

declare void @CheckBadFlow(i32) #1

declare void @display_board(%struct._IO_FILE*, i32) #1

declare void @rinput(i8*, i32, %struct._IO_FILE*) #1

declare i32 @is_move(i8*) #1

declare i32 @verify_coord(i8*, %struct.move_s*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @free_hash() #1

declare void @free_ecache() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare void @toggle_bool(i32*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i64 @rtime() #1

declare void @perft(i32) #1

declare i32 @rdifftime(i64, i64) #1

declare void @ResetHandValue() #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare void @BegForPartner() #1

declare void @check_phase() #1

declare void @ProcessHoldings(i8*) #1

declare void @unmake(%struct.move_s*, i32) #1

declare void @reset_board() #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

declare void @PutPiece(i32, i8 signext, i8 signext, i32) #1

declare void @HandlePartner(i8*) #1

declare void @HandlePtell(i8*) #1

declare void @run_epd_testsuite() #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #4

declare void @proofnumbersearch() #1

declare void @setup_epd_line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
