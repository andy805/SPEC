; ModuleID = 'utils.c'
source_filename = "utils.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@left = global i32 -1, align 4
@moves_to_tc = external global i32, align 4
@min_per_game = external global i32, align 4
@inc = external global i32, align 4
@time_left = external global i32, align 4
@sec_per_game = external global i32, align 4
@opp_time = external global i32, align 4
@xb_mode = external global i32, align 4
@Variant = external global i32, align 4
@time_cushion = external global i32, align 4
@comp_to_san.type_to_char = internal constant [14 x i32] [i32 70, i32 80, i32 80, i32 78, i32 78, i32 75, i32 75, i32 82, i32 82, i32 81, i32 81, i32 66, i32 66, i32 69], align 16
@Xrank = external constant [144 x i32], align 16
@Xfile = external constant [144 x i32], align 16
@.str = private unnamed_addr constant [8 x i8] c"%c@%c%d\00", align 1
@board = external global [144 x i32], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c%d=%c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%cx%c%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%cx%c%d=%c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"O-O\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"O-O-O\00", align 1
@numb_moves = external global i32, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"%c%c%c%d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%c%d%c%d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%c%cx%c%d\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%c%dx%c%d\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%c%c%d\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"illg\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@comp_to_coord.type_to_char = internal constant [14 x i32] [i32 70, i32 80, i32 112, i32 78, i32 110, i32 75, i32 107, i32 82, i32 114, i32 81, i32 113, i32 66, i32 98, i32 69], align 16
@.str.15 = private unnamed_addr constant [10 x i8] c"%c%d%c%dn\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"%c%d%c%dr\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%c%d%c%db\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%c%d%c%dk\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%c%d%c%dq\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"+----+----+----+----+----+----+----+----+\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"!!\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" P\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"*P\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c" N\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"*N\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c" K\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"*K\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c" R\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"*R\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" Q\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"*Q\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c" B\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"*B\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@display_board.piece_rep = private unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str.35 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"%d |\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c" %s |\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\0A  %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"\0A     a    b    c    d    e    f    g    h\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"\0A     h    g    f    e    d    c    b    a\0A\0A\00", align 1
@init_game.init_board = private unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 3, i32 11, i32 9, i32 5, i32 11, i32 3, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 8, i32 4, i32 12, i32 10, i32 6, i32 12, i32 4, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@moved = external global [144 x i32], align 16
@white_to_move = external global i32, align 4
@ep_square = external global i32, align 4
@wking_loc = external global i32, align 4
@bking_loc = external global i32, align 4
@white_castled = external global i32, align 4
@black_castled = external global i32, align 4
@result = external global i32, align 4
@captures = external global i32, align 4
@piece_count = external global i32, align 4
@Material = external global i32, align 4
@is_promoted = external global [62 x i32], align 16
@holding = external global [2 x [16 x i32]], align 16
@white_hand_eval = external global i32, align 4
@black_hand_eval = external global i32, align 4
@bookidx = external global i32, align 4
@book_ply = external global i32, align 4
@fifty = external global i32, align 4
@ply = external global i32, align 4
@phase = external global i32, align 4
@.str.41 = private unnamed_addr constant [47 x i8] c"\0A\0APlease enter the desired depth for perft():\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@raw_nodes = external global i32, align 4
@.str.42 = private unnamed_addr constant [31 x i8] c"\0A\0ARaw nodes for depth %d: %i\0A\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.43 = private unnamed_addr constant [31 x i8] c"\0APlease input a move/command:\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.46 = private unnamed_addr constant [58 x i8] c"\0AIllegal move/command!  Please input a new move/command:\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@pv_length = external global [300 x i32], align 16
@pv = external global [300 x [300 x %struct.move_s]], align 16
@.str.49 = private unnamed_addr constant [2 x i8] c" \00", align 1
@start_time = external global i64, align 8
@nodes = external global i32, align 4
@.str.50 = private unnamed_addr constant [18 x i8] c"%2i %7i %5i %8i  \00", align 1
@i_depth = external global i32, align 4
@.str.51 = private unnamed_addr constant [20 x i8] c"%2i %c%1i.%02i %9i \00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"%s !\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%s !!\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"%s ??\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"stat01: %i %i %i %i %i\0A\00", align 1
@moveleft = external global i32, align 4
@movetotal = external global i32, align 4
@.str.59 = private unnamed_addr constant [27 x i8] c"stat01: %i %i %i %i %i %s\0A\00", align 1
@searching_move = external global [20 x i8], align 16
@squares = external global [144 x i32], align 16
@pieces = external global [62 x i32], align 16
@.str.60 = private unnamed_addr constant [36 x i8] c"Piece->square->piece inconsistency\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"Board/Piece->square inconsistency\0A\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"Zero-ed piece inconsistency\0A\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"Empty square has piece pointer\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"Filled square %d has no piece pointer\0A\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"Square->piece->square inconsistency\0A\00", align 1
@material = external global [14 x i32], align 16
@.str.66 = private unnamed_addr constant [71 x i8] c"\0ASjeng version SPEC 1.0, Copyright (C) 2000-2005 Gian-Carlo Pascutto\0A\0A\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"\0APlease enter the desired depth:\0A\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"\0ADo you want tree () output?  (y/n)\0A\00", align 1
@.str.69 = private unnamed_addr constant [56 x i8] c"\0APlease enter the name of the output file for tree ():\0A\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.71 = private unnamed_addr constant [23 x i8] c"Couldn't open file %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [40 x i8] c"\0ADo you want to output diagrams? (y/n)\0A\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"\0A\0A%s\0ARaw nodes for depth %d: %i\0A%s\0A\0A\00", align 1
@divider = external global [50 x i8], align 16
@reset_board.init_board = private unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@state = internal global [625 x i32] zeroinitializer, align 16
@next = internal global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @allocate_time() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double 0.000000e+00, double* %1, align 8
  store double 2.000000e+01, double* %2, align 8
  %3 = load i32, i32* @moves_to_tc, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %159, label %5

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @min_per_game, align 4
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* @inc, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %8, %5
  %12 = load i32, i32* @time_left, align 4
  %13 = sitofp i32 %12 to double
  %14 = load i32, i32* @min_per_game, align 4
  %15 = mul nsw i32 %14, 6000
  %16 = load i32, i32* @sec_per_game, align 4
  %17 = mul nsw i32 %16, 100
  %18 = add nsw i32 %15, %17
  %19 = sitofp i32 %18 to double
  %20 = fmul double %19, 4.000000e+00
  %21 = fdiv double %20, 5.000000e+00
  %22 = fcmp olt double %13, %21
  br i1 %22, label %23, label %65

; <label>:23:                                     ; preds = %11, %8
  %24 = load i32, i32* @opp_time, align 4
  %25 = load i32, i32* @time_left, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sitofp i32 %26 to double
  %28 = load i32, i32* @opp_time, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 5.000000e+00
  %31 = fcmp ogt double %27, %30
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* @xb_mode, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  store double 4.000000e+01, double* %2, align 8
  br label %64

; <label>:36:                                     ; preds = %32, %23
  %37 = load i32, i32* @opp_time, align 4
  %38 = load i32, i32* @time_left, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sitofp i32 %39 to double
  %41 = load i32, i32* @opp_time, align 4
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 1.000000e+01
  %44 = fcmp ogt double %40, %43
  br i1 %44, label %45, label %49

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* @xb_mode, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  store double 3.000000e+01, double* %2, align 8
  br label %63

; <label>:49:                                     ; preds = %45, %36
  %50 = load i32, i32* @opp_time, align 4
  %51 = load i32, i32* @time_left, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sitofp i32 %52 to double
  %54 = load i32, i32* @opp_time, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %55, 2.000000e+01
  %57 = fcmp ogt double %53, %56
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %49
  %59 = load i32, i32* @xb_mode, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %58
  store double 2.500000e+01, double* %2, align 8
  br label %62

; <label>:62:                                     ; preds = %61, %58, %49
  br label %63

; <label>:63:                                     ; preds = %62, %48
  br label %64

; <label>:64:                                     ; preds = %63, %35
  br label %65

; <label>:65:                                     ; preds = %64, %11
  %66 = load i32, i32* @Variant, align 4
  %67 = icmp ne i32 %66, 3
  br i1 %67, label %68, label %103

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* @Variant, align 4
  %70 = icmp ne i32 %69, 4
  br i1 %70, label %71, label %103

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* @time_left, align 4
  %73 = load i32, i32* @opp_time, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sitofp i32 %74 to double
  %76 = load i32, i32* @time_left, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %77, 5.000000e+00
  %79 = fcmp ogt double %75, %78
  br i1 %79, label %80, label %86

; <label>:80:                                     ; preds = %71
  %81 = load i32, i32* @xb_mode, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %80
  %84 = load double, double* %2, align 8
  %85 = fsub double %84, 1.000000e+01
  store double %85, double* %2, align 8
  br label %102

; <label>:86:                                     ; preds = %80, %71
  %87 = load i32, i32* @time_left, align 4
  %88 = load i32, i32* @opp_time, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sitofp i32 %89 to double
  %91 = load i32, i32* @time_left, align 4
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %92, 1.000000e+01
  %94 = fcmp ogt double %90, %93
  br i1 %94, label %95, label %101

; <label>:95:                                     ; preds = %86
  %96 = load i32, i32* @xb_mode, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

; <label>:98:                                     ; preds = %95
  %99 = load double, double* %2, align 8
  %100 = fsub double %99, 5.000000e+00
  store double %100, double* %2, align 8
  br label %101

; <label>:101:                                    ; preds = %98, %95, %86
  br label %102

; <label>:102:                                    ; preds = %101, %83
  br label %117

; <label>:103:                                    ; preds = %68, %65
  %104 = load i32, i32* @Variant, align 4
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %109

; <label>:106:                                    ; preds = %103
  %107 = load double, double* %2, align 8
  %108 = fsub double %107, 1.000000e+01
  store double %108, double* %2, align 8
  br label %116

; <label>:109:                                    ; preds = %103
  %110 = load i32, i32* @Variant, align 4
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %112, label %115

; <label>:112:                                    ; preds = %109
  %113 = load double, double* %2, align 8
  %114 = fsub double %113, 5.000000e+00
  store double %114, double* %2, align 8
  br label %115

; <label>:115:                                    ; preds = %112, %109
  br label %116

; <label>:116:                                    ; preds = %115, %106
  br label %117

; <label>:117:                                    ; preds = %116, %102
  %118 = load i32, i32* @time_left, align 4
  %119 = sitofp i32 %118 to double
  %120 = load double, double* %2, align 8
  %121 = fdiv double %119, %120
  store double %121, double* %1, align 8
  %122 = load i32, i32* @inc, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %158

; <label>:124:                                    ; preds = %117
  %125 = load i32, i32* @time_left, align 4
  %126 = sitofp i32 %125 to double
  %127 = load double, double* %1, align 8
  %128 = fsub double %126, %127
  %129 = load i32, i32* @inc, align 4
  %130 = sitofp i32 %129 to double
  %131 = fsub double %128, %130
  %132 = fcmp ogt double %131, 5.000000e+02
  br i1 %132, label %133, label %138

; <label>:133:                                    ; preds = %124
  %134 = load i32, i32* @inc, align 4
  %135 = sitofp i32 %134 to double
  %136 = load double, double* %1, align 8
  %137 = fadd double %136, %135
  store double %137, double* %1, align 8
  br label %157

; <label>:138:                                    ; preds = %124
  %139 = load i32, i32* @time_left, align 4
  %140 = sitofp i32 %139 to double
  %141 = load double, double* %1, align 8
  %142 = fsub double %140, %141
  %143 = load i32, i32* @inc, align 4
  %144 = sitofp i32 %143 to double
  %145 = fmul double %144, 2.000000e+00
  %146 = fdiv double %145, 3.000000e+00
  %147 = fsub double %142, %146
  %148 = fcmp ogt double %147, 1.000000e+02
  br i1 %148, label %149, label %156

; <label>:149:                                    ; preds = %138
  %150 = load i32, i32* @inc, align 4
  %151 = sitofp i32 %150 to double
  %152 = fmul double %151, 2.000000e+00
  %153 = fdiv double %152, 3.000000e+00
  %154 = load double, double* %1, align 8
  %155 = fadd double %154, %153
  store double %155, double* %1, align 8
  br label %156

; <label>:156:                                    ; preds = %149, %138
  br label %157

; <label>:157:                                    ; preds = %156, %133
  br label %158

; <label>:158:                                    ; preds = %157, %117
  br label %191

; <label>:159:                                    ; preds = %0
  %160 = load i32, i32* @min_per_game, align 4
  %161 = sitofp i32 %160 to float
  %162 = fpext float %161 to double
  %163 = fmul double %162, 6.000000e+03
  %164 = load i32, i32* @sec_per_game, align 4
  %165 = sitofp i32 %164 to float
  %166 = fpext float %165 to double
  %167 = fmul double %166, 1.000000e+02
  %168 = fadd double %163, %167
  %169 = load i32, i32* @moves_to_tc, align 4
  %170 = sitofp i32 %169 to float
  %171 = fpext float %170 to double
  %172 = fdiv double %168, %171
  %173 = fsub double %172, 1.000000e+02
  store double %173, double* %1, align 8
  %174 = load i32, i32* @time_cushion, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %190

; <label>:176:                                    ; preds = %159
  %177 = load i32, i32* @time_cushion, align 4
  %178 = sitofp i32 %177 to double
  %179 = fmul double %178, 2.100000e+00
  %180 = fdiv double %179, 3.000000e+00
  %181 = load double, double* %1, align 8
  %182 = fadd double %181, %180
  store double %182, double* %1, align 8
  %183 = load i32, i32* @time_cushion, align 4
  %184 = sitofp i32 %183 to double
  %185 = fmul double %184, 2.100000e+00
  %186 = fdiv double %185, 3.000000e+00
  %187 = fptosi double %186 to i32
  %188 = load i32, i32* @time_cushion, align 4
  %189 = sub nsw i32 %188, %187
  store i32 %189, i32* @time_cushion, align 4
  br label %190

; <label>:190:                                    ; preds = %176, %159
  br label %191

; <label>:191:                                    ; preds = %190, %158
  %192 = load i32, i32* @Variant, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %207

; <label>:194:                                    ; preds = %191
  %195 = load double, double* %1, align 8
  %196 = fmul double %195, 2.500000e-01
  store double %196, double* %1, align 8
  %197 = load i32, i32* @opp_time, align 4
  %198 = load i32, i32* @time_left, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %203, label %200

; <label>:200:                                    ; preds = %194
  %201 = load i32, i32* @opp_time, align 4
  %202 = icmp slt i32 %201, 1500
  br i1 %202, label %203, label %206

; <label>:203:                                    ; preds = %200, %194
  %204 = load double, double* %1, align 8
  %205 = fmul double %204, 5.000000e-01
  store double %205, double* %1, align 8
  br label %206

; <label>:206:                                    ; preds = %203, %200
  br label %207

; <label>:207:                                    ; preds = %206, %191
  %208 = load double, double* %1, align 8
  %209 = fptosi double %208 to i32
  ret i32 %209
}

; Function Attrs: noinline nounwind optnone uwtable
define void @comp_to_san(%struct.move_s* byval align 8, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca [512 x %struct.move_s], align 16
  %5 = alloca [512 x %struct.move_s], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store i8* %1, i8** %3, align 8
  %17 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  store i32 97, i32* %13, align 4
  %27 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %14, align 1
  %36 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %40, %41
  %43 = sub nsw i32 %42, 1
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %15, align 1
  %45 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

; <label>:48:                                     ; preds = %2
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i8, i8* %15, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %54, i32 %56, i32 %57) #7
  br label %356

; <label>:59:                                     ; preds = %2
  %60 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %73, label %66

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %133

; <label>:73:                                     ; preds = %66, %59
  %74 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 13
  br i1 %79, label %80, label %106

; <label>:80:                                     ; preds = %73
  %81 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %106, label %84

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

; <label>:88:                                     ; preds = %84
  %89 = load i8*, i8** %3, align 8
  %90 = load i8, i8* %15, align 1
  %91 = sext i8 %90 to i32
  %92 = load i32, i32* %12, align 4
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %91, i32 %92) #7
  br label %105

; <label>:94:                                     ; preds = %84
  %95 = load i8*, i8** %3, align 8
  %96 = load i8, i8* %15, align 1
  %97 = sext i8 %96 to i32
  %98 = load i32, i32* %12, align 4
  %99 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %97, i32 %98, i32 %103) #7
  br label %105

; <label>:105:                                    ; preds = %94, %88
  br label %132

; <label>:106:                                    ; preds = %80, %73
  %107 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

; <label>:110:                                    ; preds = %106
  %111 = load i8*, i8** %3, align 8
  %112 = load i8, i8* %14, align 1
  %113 = sext i8 %112 to i32
  %114 = load i8, i8* %15, align 1
  %115 = sext i8 %114 to i32
  %116 = load i32, i32* %12, align 4
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %113, i32 %115, i32 %116) #7
  br label %131

; <label>:118:                                    ; preds = %106
  %119 = load i8*, i8** %3, align 8
  %120 = load i8, i8* %14, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* %15, align 1
  %123 = sext i8 %122 to i32
  %124 = load i32, i32* %12, align 4
  %125 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %121, i32 %123, i32 %124, i32 %129) #7
  br label %131

; <label>:131:                                    ; preds = %118, %110
  br label %132

; <label>:132:                                    ; preds = %131, %105
  br label %355

; <label>:133:                                    ; preds = %66
  %134 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %152

; <label>:137:                                    ; preds = %133
  %138 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %145, label %141

; <label>:141:                                    ; preds = %137
  %142 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %145, label %148

; <label>:145:                                    ; preds = %141, %137
  %146 = load i8*, i8** %3, align 8
  %147 = call i32 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #7
  br label %151

; <label>:148:                                    ; preds = %141
  %149 = load i8*, i8** %3, align 8
  %150 = call i32 (i8*, i8*, ...) @sprintf(i8* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #7
  br label %151

; <label>:151:                                    ; preds = %148, %145
  br label %354

; <label>:152:                                    ; preds = %133
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %153 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %153)
  %154 = load i32, i32* @numb_moves, align 4
  store i32 %154, i32* %7, align 4
  %155 = call i32 @in_check()
  store i32 %155, i32* %16, align 4
  store i32 0, i32* %6, align 4
  br label %156

; <label>:156:                                    ; preds = %209, %152
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %212

; <label>:160:                                    ; preds = %156
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 %162
  %164 = getelementptr inbounds %struct.move_s, %struct.move_s* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %208

; <label>:169:                                    ; preds = %160
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.move_s, %struct.move_s* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %177, %182
  br i1 %183, label %184, label %208

; <label>:184:                                    ; preds = %169
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 %186
  %188 = getelementptr inbounds %struct.move_s, %struct.move_s* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %189, %191
  br i1 %192, label %193, label %208

; <label>:193:                                    ; preds = %184
  %194 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %195 = load i32, i32* %6, align 4
  call void @make(%struct.move_s* %194, i32 %195)
  %196 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %16, align 4
  %199 = call i32 @check_legal(%struct.move_s* %196, i32 %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

; <label>:201:                                    ; preds = %193
  %202 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %203 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %202, i32 %203)
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %9, align 4
  br label %212

; <label>:205:                                    ; preds = %193
  %206 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %207 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %206, i32 %207)
  br label %208

; <label>:208:                                    ; preds = %205, %184, %169, %160
  br label %209

; <label>:209:                                    ; preds = %208
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %156

; <label>:212:                                    ; preds = %201, %156
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, -1
  br i1 %214, label %215, label %317

; <label>:215:                                    ; preds = %212
  %216 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 13
  br i1 %221, label %222, label %269

; <label>:222:                                    ; preds = %215
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 %224
  %226 = getelementptr inbounds %struct.move_s, %struct.move_s* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %230, %235
  br i1 %236, label %237, label %253

; <label>:237:                                    ; preds = %222
  %238 = load i8*, i8** %3, align 8
  %239 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i8, i8* %14, align 1
  %248 = sext i8 %247 to i32
  %249 = load i8, i8* %15, align 1
  %250 = sext i8 %249 to i32
  %251 = load i32, i32* %12, align 4
  %252 = call i32 (i8*, i8*, ...) @sprintf(i8* %238, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %246, i32 %248, i32 %250, i32 %251) #7
  br label %268

; <label>:253:                                    ; preds = %222
  %254 = load i8*, i8** %3, align 8
  %255 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %11, align 4
  %264 = load i8, i8* %15, align 1
  %265 = sext i8 %264 to i32
  %266 = load i32, i32* %12, align 4
  %267 = call i32 (i8*, i8*, ...) @sprintf(i8* %254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %262, i32 %263, i32 %265, i32 %266) #7
  br label %268

; <label>:268:                                    ; preds = %253, %237
  br label %316

; <label>:269:                                    ; preds = %215
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 %271
  %273 = getelementptr inbounds %struct.move_s, %struct.move_s* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %277, %282
  br i1 %283, label %284, label %300

; <label>:284:                                    ; preds = %269
  %285 = load i8*, i8** %3, align 8
  %286 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i8, i8* %14, align 1
  %295 = sext i8 %294 to i32
  %296 = load i8, i8* %15, align 1
  %297 = sext i8 %296 to i32
  %298 = load i32, i32* %12, align 4
  %299 = call i32 (i8*, i8*, ...) @sprintf(i8* %285, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %293, i32 %295, i32 %297, i32 %298) #7
  br label %315

; <label>:300:                                    ; preds = %269
  %301 = load i8*, i8** %3, align 8
  %302 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %11, align 4
  %311 = load i8, i8* %15, align 1
  %312 = sext i8 %311 to i32
  %313 = load i32, i32* %12, align 4
  %314 = call i32 (i8*, i8*, ...) @sprintf(i8* %301, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %309, i32 %310, i32 %312, i32 %313) #7
  br label %315

; <label>:315:                                    ; preds = %300, %284
  br label %316

; <label>:316:                                    ; preds = %315, %268
  br label %353

; <label>:317:                                    ; preds = %212
  %318 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, 13
  br i1 %323, label %324, label %338

; <label>:324:                                    ; preds = %317
  %325 = load i8*, i8** %3, align 8
  %326 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i8, i8* %15, align 1
  %335 = sext i8 %334 to i32
  %336 = load i32, i32* %12, align 4
  %337 = call i32 (i8*, i8*, ...) @sprintf(i8* %325, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %333, i32 %335, i32 %336) #7
  br label %352

; <label>:338:                                    ; preds = %317
  %339 = load i8*, i8** %3, align 8
  %340 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = load i8, i8* %15, align 1
  %349 = sext i8 %348 to i32
  %350 = load i32, i32* %12, align 4
  %351 = call i32 (i8*, i8*, ...) @sprintf(i8* %339, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %347, i32 %349, i32 %350) #7
  br label %352

; <label>:352:                                    ; preds = %338, %324
  br label %353

; <label>:353:                                    ; preds = %352, %316
  br label %354

; <label>:354:                                    ; preds = %353, %151
  br label %355

; <label>:355:                                    ; preds = %354, %132
  br label %356

; <label>:356:                                    ; preds = %355, %48
  call void @make(%struct.move_s* %0, i32 0)
  %357 = call i32 @check_legal(%struct.move_s* %0, i32 0, i32 1)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %362, label %359

; <label>:359:                                    ; preds = %356
  %360 = load i8*, i8** %3, align 8
  %361 = call i8* @strcpy(i8* %360, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #7
  call void @unmake(%struct.move_s* %0, i32 0)
  br label %399

; <label>:362:                                    ; preds = %356
  %363 = call i32 @in_check()
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %398

; <label>:365:                                    ; preds = %362
  store i32 1, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %366 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  call void @gen(%struct.move_s* %366)
  %367 = load i32, i32* @numb_moves, align 4
  store i32 %367, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %368

; <label>:368:                                    ; preds = %385, %365
  %369 = load i32, i32* %6, align 4
  %370 = load i32, i32* %8, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %388

; <label>:372:                                    ; preds = %368
  %373 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %374 = load i32, i32* %6, align 4
  call void @make(%struct.move_s* %373, i32 %374)
  %375 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %376 = load i32, i32* %6, align 4
  %377 = call i32 @check_legal(%struct.move_s* %375, i32 %376, i32 1)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %382

; <label>:379:                                    ; preds = %372
  store i32 0, i32* %10, align 4
  %380 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %381 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %380, i32 %381)
  br label %388

; <label>:382:                                    ; preds = %372
  %383 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %384 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %383, i32 %384)
  br label %385

; <label>:385:                                    ; preds = %382
  %386 = load i32, i32* %6, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %6, align 4
  br label %368

; <label>:388:                                    ; preds = %379, %368
  %389 = load i32, i32* %10, align 4
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %391, label %394

; <label>:391:                                    ; preds = %388
  %392 = load i8*, i8** %3, align 8
  %393 = call i8* @strcat(i8* %392, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #7
  br label %397

; <label>:394:                                    ; preds = %388
  %395 = load i8*, i8** %3, align 8
  %396 = call i8* @strcat(i8* %395, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #7
  br label %397

; <label>:397:                                    ; preds = %394, %391
  br label %398

; <label>:398:                                    ; preds = %397, %362
  call void @unmake(%struct.move_s* %0, i32 0)
  br label %399

; <label>:399:                                    ; preds = %398, %359
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare void @gen(%struct.move_s*) #2

declare i32 @in_check() #2

declare void @make(%struct.move_s*, i32) #2

declare i32 @check_legal(%struct.move_s*, i32, i32) #2

declare void @unmake(%struct.move_s*, i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @comp_to_coord(%struct.move_s* byval align 8, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %1, i8** %3, align 8
  %12 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  store i32 97, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = sub nsw i32 %31, 1
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %10, align 1
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %11, align 1
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

; <label>:44:                                     ; preds = %2
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_coord.type_to_char, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i8, i8* %11, align 1
  %51 = sext i8 %50 to i32
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %49, i32 %51, i32 %52) #7
  br label %140

; <label>:54:                                     ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %10, align 1
  %60 = sext i8 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = load i8, i8* %11, align 1
  %63 = sext i8 %62 to i32
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %60, i32 %61, i32 %63, i32 %64) #7
  br label %139

; <label>:66:                                     ; preds = %54
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %72, label %69

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %81

; <label>:72:                                     ; preds = %69, %66
  %73 = load i8*, i8** %3, align 8
  %74 = load i8, i8* %10, align 1
  %75 = sext i8 %74 to i32
  %76 = load i32, i32* %7, align 4
  %77 = load i8, i8* %11, align 1
  %78 = sext i8 %77 to i32
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 %75, i32 %76, i32 %78, i32 %79) #7
  br label %138

; <label>:81:                                     ; preds = %69
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 7
  br i1 %83, label %87, label %84

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %87, label %96

; <label>:87:                                     ; preds = %84, %81
  %88 = load i8*, i8** %3, align 8
  %89 = load i8, i8* %10, align 1
  %90 = sext i8 %89 to i32
  %91 = load i32, i32* %7, align 4
  %92 = load i8, i8* %11, align 1
  %93 = sext i8 %92 to i32
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 %90, i32 %91, i32 %93, i32 %94) #7
  br label %137

; <label>:96:                                     ; preds = %84
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %97, 11
  br i1 %98, label %102, label %99

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %100, 12
  br i1 %101, label %102, label %111

; <label>:102:                                    ; preds = %99, %96
  %103 = load i8*, i8** %3, align 8
  %104 = load i8, i8* %10, align 1
  %105 = sext i8 %104 to i32
  %106 = load i32, i32* %7, align 4
  %107 = load i8, i8* %11, align 1
  %108 = sext i8 %107 to i32
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 %105, i32 %106, i32 %108, i32 %109) #7
  br label %136

; <label>:111:                                    ; preds = %99
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %112, 5
  br i1 %113, label %117, label %114

; <label>:114:                                    ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, 6
  br i1 %116, label %117, label %126

; <label>:117:                                    ; preds = %114, %111
  %118 = load i8*, i8** %3, align 8
  %119 = load i8, i8* %10, align 1
  %120 = sext i8 %119 to i32
  %121 = load i32, i32* %7, align 4
  %122 = load i8, i8* %11, align 1
  %123 = sext i8 %122 to i32
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 %120, i32 %121, i32 %123, i32 %124) #7
  br label %135

; <label>:126:                                    ; preds = %114
  %127 = load i8*, i8** %3, align 8
  %128 = load i8, i8* %10, align 1
  %129 = sext i8 %128 to i32
  %130 = load i32, i32* %7, align 4
  %131 = load i8, i8* %11, align 1
  %132 = sext i8 %131 to i32
  %133 = load i32, i32* %8, align 4
  %134 = call i32 (i8*, i8*, ...) @sprintf(i8* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 %129, i32 %130, i32 %132, i32 %133) #7
  br label %135

; <label>:135:                                    ; preds = %126, %117
  br label %136

; <label>:136:                                    ; preds = %135, %102
  br label %137

; <label>:137:                                    ; preds = %136, %87
  br label %138

; <label>:138:                                    ; preds = %137, %72
  br label %139

; <label>:139:                                    ; preds = %138, %57
  br label %140

; <label>:140:                                    ; preds = %139, %44
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @display_board(%struct._IO_FILE*, i32) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [14 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8** %5, align 8
  %10 = bitcast [14 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([14 x i8*]* @display_board.piece_rep to i8*), i64 112, i32 16, i1 false)
  %11 = load i32, i32* %4, align 4
  %12 = srem i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %64

; <label>:14:                                     ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* %16)
  store i32 1, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %58, %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 8
  br i1 %20, label %21, label %61

; <label>:21:                                     ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 9, %23
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

; <label>:26:                                     ; preds = %51, %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %27, 11
  br i1 %28, label %29, label %54

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 12
  %32 = sub nsw i32 120, %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

; <label>:40:                                     ; preds = %29
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [14 x i8*], [14 x i8*]* %6, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* %48)
  br label %50

; <label>:50:                                     ; preds = %40, %29
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %26

; <label>:54:                                     ; preds = %26
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %56)
  br label %58

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %18

; <label>:61:                                     ; preds = %18
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i32 0, i32 0))
  br label %113

; <label>:64:                                     ; preds = %2
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* %66)
  store i32 1, i32* %7, align 4
  br label %68

; <label>:68:                                     ; preds = %107, %64
  %69 = load i32, i32* %7, align 4
  %70 = icmp sle i32 %69, 8
  br i1 %70, label %71, label %110

; <label>:71:                                     ; preds = %68
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 %73)
  store i32 0, i32* %8, align 4
  br label %75

; <label>:75:                                     ; preds = %100, %71
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 %76, 11
  br i1 %77, label %78, label %103

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 %79, 12
  %81 = add nsw i32 24, %80
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

; <label>:89:                                     ; preds = %78
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [14 x i8*], [14 x i8*]* %6, i64 0, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* %97)
  br label %99

; <label>:99:                                     ; preds = %89, %78
  br label %100

; <label>:100:                                    ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %75

; <label>:103:                                    ; preds = %75
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %105)
  br label %107

; <label>:107:                                    ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %68

; <label>:110:                                    ; preds = %68
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i32 0, i32 0))
  br label %113

; <label>:113:                                    ; preds = %110, %61
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @init_game() #0 {
  %1 = alloca [144 x i32], align 16
  %2 = bitcast [144 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([144 x i32]* @init_game.init_board to i8*), i64 576, i32 16, i1 false)
  %3 = getelementptr inbounds [144 x i32], [144 x i32]* %1, i32 0, i32 0
  %4 = bitcast i32* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8* %4, i64 576, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @moved to i8*), i8 0, i64 576, i32 16, i1 false)
  store i32 1, i32* @white_to_move, align 4
  store i32 0, i32* @ep_square, align 4
  store i32 30, i32* @wking_loc, align 4
  store i32 114, i32* @bking_loc, align 4
  store i32 0, i32* @white_castled, align 4
  store i32 0, i32* @black_castled, align 4
  store i32 0, i32* @result, align 4
  store i32 0, i32* @captures, align 4
  store i32 32, i32* @piece_count, align 4
  store i32 0, i32* @Material, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false)
  store i32 0, i32* @white_hand_eval, align 4
  store i32 0, i32* @black_hand_eval, align 4
  call void @reset_piece_square()
  store i32 0, i32* @bookidx, align 4
  store i32 0, i32* @book_ply, align 4
  store i32 0, i32* @fifty, align 4
  store i32 0, i32* @ply, align 4
  store i32 0, i32* @phase, align 4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @reset_piece_square() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [144 x i32], align 16
  %3 = getelementptr inbounds [144 x i32], [144 x i32]* %2, i32 0, i32 0
  %4 = bitcast i32* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 576, i32 16, i1 false)
  store i32 1, i32* %1, align 4
  br label %5

; <label>:5:                                      ; preds = %23, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @piece_count, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %26

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [144 x i32], [144 x i32]* %2, i64 0, i64 %20
  store i32 1, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %15, %9
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %5

; <label>:26:                                     ; preds = %5
  store i32 0, i32* @Material, align 4
  store i32 0, i32* @piece_count, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @pieces to i8*), i8 0, i64 248, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false)
  store i32 0, i32* getelementptr inbounds ([62 x i32], [62 x i32]* @pieces, i64 0, i64 0), align 16
  store i32 26, i32* %1, align 4
  br label %27

; <label>:27:                                     ; preds = %77, %26
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %28, 118
  br i1 %29, label %30, label %80

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %72

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 13
  br i1 %41, label %42, label %72

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @Material, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* @Material, align 4
  %52 = load i32, i32* @piece_count, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @piece_count, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @piece_count, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @piece_count, align 4
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [144 x i32], [144 x i32]* %2, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %42
  %68 = load i32, i32* @piece_count, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i64 0, i64 %69
  store i32 1, i32* %70, align 4
  br label %71

; <label>:71:                                     ; preds = %67, %42
  br label %76

; <label>:72:                                     ; preds = %36, %30
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %74
  store i32 0, i32* %75, align 4
  br label %76

; <label>:76:                                     ; preds = %72, %71
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* %1, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %1, align 4
  br label %27

; <label>:80:                                     ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @is_move(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = call i16** @__ctype_b_loc() #8
  %5 = load i16*, i16** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, i16* %5, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 1024
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %56

; <label>:16:                                     ; preds = %1
  %17 = call i16** @__ctype_b_loc() #8
  %18 = load i16*, i16** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %18, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 2048
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

; <label>:29:                                     ; preds = %16
  %30 = call i16** @__ctype_b_loc() #8
  %31 = load i16*, i16** %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %31, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 1024
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

; <label>:42:                                     ; preds = %29
  %43 = call i16** @__ctype_b_loc() #8
  %44 = load i16*, i16** %43, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %44, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 2048
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %42
  store i32 1, i32* %2, align 4
  br label %103

; <label>:56:                                     ; preds = %42, %29, %16, %1
  %57 = call i16** @__ctype_b_loc() #8
  %58 = load i16*, i16** %57, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %58, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 1024
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %102

; <label>:69:                                     ; preds = %56
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 64
  br i1 %74, label %75, label %102

; <label>:75:                                     ; preds = %69
  %76 = call i16** @__ctype_b_loc() #8
  %77 = load i16*, i16** %76, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16, i16* %77, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 1024
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

; <label>:88:                                     ; preds = %75
  %89 = call i16** @__ctype_b_loc() #8
  %90 = load i16*, i16** %89, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %90, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 2048
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %88
  store i32 1, i32* %2, align 4
  br label %103

; <label>:102:                                    ; preds = %88, %75, %69, %56
  store i32 0, i32* %2, align 4
  br label %103

; <label>:103:                                    ; preds = %102, %101, %55
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind optnone uwtable
define void @perft_debug() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca %struct.move_s, align 4
  %4 = alloca i32, align 4
  call void @init_game()
  br label %5

; <label>:5:                                      ; preds = %0, %83
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0))
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %7, i32 256, %struct._IO_FILE* %8)
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %10 = call i32 @atoi(i8* %9) #9
  store i32 %10, i32* %4, align 4
  store i32 0, i32* @raw_nodes, align 4
  %11 = load i32, i32* %4, align 4
  call void @perft(i32 %11)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @raw_nodes, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), i32 %12, i32 %13)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %15, i32 1)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0))
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %17, i32 256, %struct._IO_FILE* %18)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  store i8* %19, i8** %2, align 8
  br label %20

; <label>:20:                                     ; preds = %31, %5
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 @tolower(i32 %27) #9
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %2, align 8
  store i8 %29, i8* %30, align 1
  br label %31

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %2, align 8
  br label %20

; <label>:34:                                     ; preds = %20
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #9
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #9
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %38, %34
  call void @exit(i32 0) #10
  unreachable

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %45 = call i32 @verify_coord(i8* %44, %struct.move_s* %3)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %83, label %47

; <label>:47:                                     ; preds = %43
  br label %48

; <label>:48:                                     ; preds = %77, %47
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.46, i32 0, i32 0))
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %50, i32 256, %struct._IO_FILE* %51)
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  store i8* %52, i8** %2, align 8
  br label %53

; <label>:53:                                     ; preds = %64, %48
  %54 = load i8*, i8** %2, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %67

; <label>:57:                                     ; preds = %53
  %58 = load i8*, i8** %2, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 @tolower(i32 %60) #9
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %2, align 8
  store i8 %62, i8* %63, align 1
  br label %64

; <label>:64:                                     ; preds = %57
  %65 = load i8*, i8** %2, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %2, align 8
  br label %53

; <label>:67:                                     ; preds = %53
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #9
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #9
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

; <label>:75:                                     ; preds = %71, %67
  call void @exit(i32 0) #10
  unreachable

; <label>:76:                                     ; preds = %71
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %79 = call i32 @verify_coord(i8* %78, %struct.move_s* %3)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %48, label %82

; <label>:82:                                     ; preds = %77
  br label %83

; <label>:83:                                     ; preds = %82, %43
  call void @make(%struct.move_s* %3, i32 0)
  br label %5
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @rinput(i8*, i32, %struct._IO_FILE*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %31, %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %11 = call i32 @_IO_getc(%struct._IO_FILE* %10)
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, 10
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br label %16

; <label>:16:                                     ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %32

; <label>:18:                                     ; preds = %16
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8 %25, i8* %30, align 1
  br label %31

; <label>:31:                                     ; preds = %23, %18
  br label %9

; <label>:32:                                     ; preds = %16
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare void @perft(i32) #2

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define i32 @verify_coord(i8*, %struct.move_s*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.move_s*, align 8
  %5 = alloca [512 x %struct.move_s], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.move_s* %1, %struct.move_s** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @Variant, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %43

; <label>:13:                                     ; preds = %2
  store i32 1, i32* @captures, align 4
  store i32 0, i32* %6, align 4
  %14 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  call void @gen(%struct.move_s* %14)
  %15 = load i32, i32* @numb_moves, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* @captures, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %33, %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %36

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %22 = load i32, i32* %7, align 4
  call void @make(%struct.move_s* %21, i32 %22)
  %23 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @check_legal(%struct.move_s* %23, i32 %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %20
  store i32 0, i32* %10, align 4
  %28 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %29 = load i32, i32* %7, align 4
  call void @unmake(%struct.move_s* %28, i32 %29)
  br label %36

; <label>:30:                                     ; preds = %20
  %31 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %32 = load i32, i32* %7, align 4
  call void @unmake(%struct.move_s* %31, i32 %32)
  br label %33

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %16

; <label>:36:                                     ; preds = %27, %16
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %36
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %6, align 4
  %40 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  call void @gen(%struct.move_s* %40)
  %41 = load i32, i32* @numb_moves, align 4
  store i32 %41, i32* %6, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  br label %46

; <label>:43:                                     ; preds = %2
  %44 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  call void @gen(%struct.move_s* %44)
  %45 = load i32, i32* @numb_moves, align 4
  store i32 %45, i32* %6, align 4
  br label %46

; <label>:46:                                     ; preds = %43, %42
  store i32 0, i32* %7, align 4
  br label %47

; <label>:47:                                     ; preds = %78, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %81

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 %53
  %55 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i32 0, i32 0
  call void @comp_to_coord(%struct.move_s* byval align 8 %54, i8* %55)
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i32 0, i32 0
  %58 = call i32 @strcmp(i8* %56, i8* %57) #9
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

; <label>:60:                                     ; preds = %51
  %61 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %62 = load i32, i32* %7, align 4
  call void @make(%struct.move_s* %61, i32 %62)
  %63 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @check_legal(%struct.move_s* %63, i32 %64, i32 1)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

; <label>:67:                                     ; preds = %60
  store i32 1, i32* %9, align 4
  %68 = load %struct.move_s*, %struct.move_s** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 %70
  %72 = bitcast %struct.move_s* %68 to i8*
  %73 = bitcast %struct.move_s* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 24, i32 4, i1 false)
  br label %74

; <label>:74:                                     ; preds = %67, %60
  %75 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %5, i64 0, i64 0
  %76 = load i32, i32* %7, align 4
  call void @unmake(%struct.move_s* %75, i32 %76)
  br label %77

; <label>:77:                                     ; preds = %74, %51
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %47

; <label>:81:                                     ; preds = %47
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define void @hash_extract_pv(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [512 x %struct.move_s], align 16
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %2
  br label %52

; <label>:15:                                     ; preds = %2
  %16 = call i32 @ProbeTT(i32* %5, i32 0, i32* %6, i32* %5, i32* %5, i32 0)
  %17 = icmp ne i32 %16, 4
  br i1 %17, label %18, label %52

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %7, i64 0, i64 0
  call void @gen(%struct.move_s* %19)
  %20 = load i32, i32* @numb_moves, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %51

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %51

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %7, i64 0, i64 %29
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %30, i8* %31)
  %32 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %7, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  call void @make(%struct.move_s* %32, i32 %33)
  %34 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %7, i64 0, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @check_legal(%struct.move_s* %34, i32 %35, i32 1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

; <label>:38:                                     ; preds = %27
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @strcat(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0)) #7
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0
  %43 = call i8* @strcat(i8* %41, i8* %42) #7
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @strcat(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)) #7
  %46 = load i32, i32* %3, align 4
  %47 = load i8*, i8** %4, align 8
  call void @hash_extract_pv(i32 %46, i8* %47)
  br label %48

; <label>:48:                                     ; preds = %38, %27
  %49 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %7, i64 0, i64 0
  %50 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %49, i32 %50)
  br label %51

; <label>:51:                                     ; preds = %48, %23, %18
  br label %52

; <label>:52:                                     ; preds = %14, %51, %15
  ret void
}

declare i32 @ProbeTT(i32*, i32, i32*, i32*, i32*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @stringize_pv(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 256, i32 1, i1 false)
  store i32 1, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %23, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds ([300 x i32], [300 x i32]* @pv_length, i64 0, i64 1), align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1), i64 0, i64 %12
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %13, i8* %14)
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1), i64 0, i64 %16
  call void @make(%struct.move_s* %17, i32 0)
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0
  %20 = call i8* @strcat(i8* %18, i8* %19) #7
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @strcat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0)) #7
  br label %23

; <label>:23:                                     ; preds = %10
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %6

; <label>:26:                                     ; preds = %6
  %27 = load i8*, i8** %2, align 8
  call void @hash_extract_pv(i32 7, i8* %27)
  %28 = load i32, i32* getelementptr inbounds ([300 x i32], [300 x i32]* @pv_length, i64 0, i64 1), align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %30

; <label>:30:                                     ; preds = %37, %26
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1), i64 0, i64 %35
  call void @unmake(%struct.move_s* %36, i32 0)
  br label %37

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %4, align 4
  br label %30

; <label>:40:                                     ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @post_thinking(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %10 = call i64 @rtime()
  %11 = load i64, i64* @start_time, align 8
  %12 = call i32 @rdifftime(i64 %10, i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* @nodes, align 4
  %17 = sitofp i32 %16 to double
  %18 = fmul double 1.000000e+02, %17
  %19 = load i32, i32* %6, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %18, %20
  store double %21, double* %9, align 8
  %22 = load double, double* %9, align 8
  %23 = fptosi double %22 to i32
  store i32 %23, i32* %5, align 4
  br label %26

; <label>:24:                                     ; preds = %1
  %25 = load i32, i32* @nodes, align 4
  store i32 %25, i32* %5, align 4
  br label %26

; <label>:26:                                     ; preds = %24, %15
  %27 = load i32, i32* @xb_mode, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* @i_depth, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @nodes, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 %30, i32 %31, i32 %32, i32 %33)
  br label %49

; <label>:35:                                     ; preds = %26
  %36 = load i32, i32* @i_depth, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 45, i32 32
  %41 = load i32, i32* %2, align 4
  %42 = sdiv i32 %41, 100
  %43 = call i32 @abs(i32 %42) #8
  %44 = load i32, i32* %2, align 4
  %45 = srem i32 %44, 100
  %46 = call i32 @abs(i32 %45) #8
  %47 = load i32, i32* @nodes, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 %36, i32 %40, i32 %43, i32 %46, i32 %47)
  br label %49

; <label>:49:                                     ; preds = %35, %29
  %50 = load i32, i32* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1, i32 0), align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1, i32 0), align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %67, label %58

; <label>:58:                                     ; preds = %52, %49
  %59 = load i32, i32* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1, i32 0), align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1, i32 1), align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 13
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %61, %52
  call void @unmake(%struct.move_s* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1), i32 0)
  store i32 1, i32* %4, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %61, %58
  store i32 1, i32* %3, align 4
  br label %69

; <label>:69:                                     ; preds = %83, %68
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* getelementptr inbounds ([300 x i32], [300 x i32]* @pv_length, i64 0, i64 1), align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

; <label>:73:                                     ; preds = %69
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1), i64 0, i64 %75
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %76, i8* %77)
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1), i64 0, i64 %79
  call void @make(%struct.move_s* %80, i32 0)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* %81)
  br label %83

; <label>:83:                                     ; preds = %73
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %69

; <label>:86:                                     ; preds = %69
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %87, i8 0, i64 256, i32 16, i1 false)
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  call void @hash_extract_pv(i32 7, i8* %88)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* %89)
  %91 = load i32, i32* getelementptr inbounds ([300 x i32], [300 x i32]* @pv_length, i64 0, i64 1), align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %93

; <label>:93:                                     ; preds = %100, %86
  %94 = load i32, i32* %3, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %103

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1), i64 0, i64 %98
  call void @unmake(%struct.move_s* %99, i32 0)
  br label %100

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %3, align 4
  br label %93

; <label>:103:                                    ; preds = %93
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %103
  call void @make(%struct.move_s* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1), i32 0)
  br label %107

; <label>:107:                                    ; preds = %106, %103
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @rdifftime(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call double @difftime(i64 %5, i64 %6) #8
  %8 = fptosi double %7 to i32
  %9 = mul nsw i32 100, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @rtime() #0 {
  ret i64 0
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @post_fail_thinking(i32, %struct.move_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.move_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca double, align 8
  %9 = alloca %struct.move_s, align 8
  store i32 %0, i32* %3, align 4
  store %struct.move_s* %1, %struct.move_s** %4, align 8
  %10 = call i64 @rtime()
  %11 = load i64, i64* @start_time, align 8
  %12 = call i32 @rdifftime(i64 %10, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* @nodes, align 4
  %17 = sitofp i32 %16 to double
  %18 = fmul double 1.000000e+02, %17
  %19 = load i32, i32* %5, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %18, %20
  store double %21, double* %8, align 8
  %22 = load double, double* %8, align 8
  %23 = fptosi double %22 to i32
  store i32 %23, i32* %6, align 4
  br label %26

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* @nodes, align 4
  store i32 %25, i32* %6, align 4
  br label %26

; <label>:26:                                     ; preds = %24, %15
  %27 = load i32, i32* @xb_mode, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* @i_depth, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @nodes, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 %30, i32 %31, i32 %32, i32 %33)
  br label %49

; <label>:35:                                     ; preds = %26
  %36 = load i32, i32* @i_depth, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 45, i32 32
  %41 = load i32, i32* %3, align 4
  %42 = sdiv i32 %41, 100
  %43 = call i32 @abs(i32 %42) #8
  %44 = load i32, i32* %3, align 4
  %45 = srem i32 %44, 100
  %46 = call i32 @abs(i32 %45) #8
  %47 = load i32, i32* @nodes, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 %36, i32 %40, i32 %43, i32 %46, i32 %47)
  br label %49

; <label>:49:                                     ; preds = %35, %29
  %50 = load %struct.move_s*, %struct.move_s** %4, align 8
  call void @unmake(%struct.move_s* %50, i32 0)
  %51 = load %struct.move_s*, %struct.move_s** %4, align 8
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %53 = bitcast %struct.move_s* %9 to i8*
  %54 = bitcast %struct.move_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %9, i8* %52)
  %55 = load %struct.move_s*, %struct.move_s** %4, align 8
  call void @make(%struct.move_s* %55, i32 0)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @post_fh_thinking(i32, %struct.move_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.move_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca double, align 8
  %9 = alloca %struct.move_s, align 8
  store i32 %0, i32* %3, align 4
  store %struct.move_s* %1, %struct.move_s** %4, align 8
  %10 = call i64 @rtime()
  %11 = load i64, i64* @start_time, align 8
  %12 = call i32 @rdifftime(i64 %10, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* @nodes, align 4
  %17 = sitofp i32 %16 to double
  %18 = fmul double 1.000000e+02, %17
  %19 = load i32, i32* %5, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %18, %20
  store double %21, double* %8, align 8
  %22 = load double, double* %8, align 8
  %23 = fptosi double %22 to i32
  store i32 %23, i32* %6, align 4
  br label %26

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* @nodes, align 4
  store i32 %25, i32* %6, align 4
  br label %26

; <label>:26:                                     ; preds = %24, %15
  %27 = load i32, i32* @xb_mode, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* @i_depth, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @nodes, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 %30, i32 %31, i32 %32, i32 %33)
  br label %49

; <label>:35:                                     ; preds = %26
  %36 = load i32, i32* @i_depth, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 45, i32 32
  %41 = load i32, i32* %3, align 4
  %42 = sdiv i32 %41, 100
  %43 = call i32 @abs(i32 %42) #8
  %44 = load i32, i32* %3, align 4
  %45 = srem i32 %44, 100
  %46 = call i32 @abs(i32 %45) #8
  %47 = load i32, i32* @nodes, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 %36, i32 %40, i32 %43, i32 %46, i32 %47)
  br label %49

; <label>:49:                                     ; preds = %35, %29
  %50 = load %struct.move_s*, %struct.move_s** %4, align 8
  call void @unmake(%struct.move_s* %50, i32 0)
  %51 = load %struct.move_s*, %struct.move_s** %4, align 8
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %53 = bitcast %struct.move_s* %9 to i8*
  %54 = bitcast %struct.move_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %9, i8* %52)
  %55 = load %struct.move_s*, %struct.move_s** %4, align 8
  call void @make(%struct.move_s* %55, i32 0)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @post_fl_thinking(i32, %struct.move_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.move_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca double, align 8
  %9 = alloca %struct.move_s, align 8
  store i32 %0, i32* %3, align 4
  store %struct.move_s* %1, %struct.move_s** %4, align 8
  %10 = call i64 @rtime()
  %11 = load i64, i64* @start_time, align 8
  %12 = call i32 @rdifftime(i64 %10, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* @nodes, align 4
  %17 = sitofp i32 %16 to double
  %18 = fmul double 1.000000e+02, %17
  %19 = load i32, i32* %5, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %18, %20
  store double %21, double* %8, align 8
  %22 = load double, double* %8, align 8
  %23 = fptosi double %22 to i32
  store i32 %23, i32* %6, align 4
  br label %26

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* @nodes, align 4
  store i32 %25, i32* %6, align 4
  br label %26

; <label>:26:                                     ; preds = %24, %15
  %27 = load i32, i32* @xb_mode, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* @i_depth, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @nodes, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 %30, i32 %31, i32 %32, i32 %33)
  br label %49

; <label>:35:                                     ; preds = %26
  %36 = load i32, i32* @i_depth, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 45, i32 32
  %41 = load i32, i32* %3, align 4
  %42 = sdiv i32 %41, 100
  %43 = call i32 @abs(i32 %42) #8
  %44 = load i32, i32* %3, align 4
  %45 = srem i32 %44, 100
  %46 = call i32 @abs(i32 %45) #8
  %47 = load i32, i32* @nodes, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 %36, i32 %40, i32 %43, i32 %46, i32 %47)
  br label %49

; <label>:49:                                     ; preds = %35, %29
  %50 = load %struct.move_s*, %struct.move_s** %4, align 8
  call void @unmake(%struct.move_s* %50, i32 0)
  %51 = load %struct.move_s*, %struct.move_s** %4, align 8
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %53 = bitcast %struct.move_s* %9 to i8*
  %54 = bitcast %struct.move_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %9, i8* %52)
  %55 = load %struct.move_s*, %struct.move_s** %4, align 8
  call void @make(%struct.move_s* %55, i32 0)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @post_stat_thinking() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @rtime()
  %3 = load i64, i64* @start_time, align 8
  %4 = call i32 @rdifftime(i64 %2, i64 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @xb_mode, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %14

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @nodes, align 4
  %10 = load i32, i32* @i_depth, align 4
  %11 = load i32, i32* @moveleft, align 4
  %12 = load i32, i32* @movetotal, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0), i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  br label %25

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* @xb_mode, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @nodes, align 4
  %20 = load i32, i32* @i_depth, align 4
  %21 = load i32, i32* @moveleft, align 4
  %22 = load i32, i32* @movetotal, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @searching_move, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %17, %14
  br label %25

; <label>:25:                                     ; preds = %24, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @print_move(%struct.move_s*, i32, %struct._IO_FILE*) #0 {
  %4 = alloca %struct.move_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.move_s, align 8
  store %struct.move_s* %0, %struct.move_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  %9 = load %struct.move_s*, %struct.move_s** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.move_s, %struct.move_s* %9, i64 %11
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %14 = bitcast %struct.move_s* %8 to i8*
  %15 = bitcast %struct.move_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %8, i8* %13)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* %17)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @rdelay(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = call i64 @rtime()
  store i64 %6, i64* %3, align 8
  br label %7

; <label>:7:                                      ; preds = %12, %1
  %8 = load i32, i32* %5, align 4
  %9 = sdiv i32 %8, 100
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %7
  %13 = call i64 @rtime()
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @rdifftime(i64 %14, i64 %15)
  store i32 %16, i32* %5, align 4
  br label %7

; <label>:17:                                     ; preds = %7
  ret void
}

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @check_piece_square() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %62, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @piece_count, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %65

; <label>:6:                                      ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %6
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %16
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %24, i32 0)
  store i32 0, i32* null, align 4
  br label %25

; <label>:25:                                     ; preds = %22, %16, %6
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %34, label %43

; <label>:34:                                     ; preds = %25
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %42, i32 0)
  store i32 0, i32* null, align 4
  br label %43

; <label>:43:                                     ; preds = %40, %34, %25
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

; <label>:49:                                     ; preds = %43
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %49
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i32 0, i32 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %60, i32 0)
  store i32 0, i32* null, align 4
  br label %61

; <label>:61:                                     ; preds = %58, %49, %43
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %2

; <label>:65:                                     ; preds = %2
  store i32 0, i32* %1, align 4
  br label %66

; <label>:66:                                     ; preds = %132, %65
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %67, 144
  br i1 %68, label %69, label %135

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %81, label %75

; <label>:75:                                     ; preds = %69
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

; <label>:81:                                     ; preds = %75, %69
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

; <label>:87:                                     ; preds = %81
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i32 0, i32 0))
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %89, i32 0)
  store i32 0, i32* null, align 4
  br label %90

; <label>:90:                                     ; preds = %87, %81, %75
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 13
  br i1 %95, label %96, label %112

; <label>:96:                                     ; preds = %90
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

; <label>:102:                                    ; preds = %96
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

; <label>:108:                                    ; preds = %102
  %109 = load i32, i32* %1, align 4
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0), i32 %109)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %111, i32 0)
  store i32 0, i32* null, align 4
  br label %112

; <label>:112:                                    ; preds = %108, %102, %96, %90
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %1, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %131

; <label>:122:                                    ; preds = %112
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

; <label>:128:                                    ; preds = %122
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0))
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %130, i32 0)
  store i32 0, i32* null, align 4
  br label %131

; <label>:131:                                    ; preds = %128, %122, %112
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %1, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %1, align 4
  br label %66

; <label>:135:                                    ; preds = %66
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @start_up() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.66, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @toggle_bool(i32*) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load i32*, i32** %2, align 8
  store i32 0, i32* %7, align 4
  br label %10

; <label>:8:                                      ; preds = %1
  %9 = load i32*, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @tree_debug() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  call void @init_game()
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0))
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %5, i32 256, %struct._IO_FILE* %6)
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %8 = call i32 @atoi(i8* %7) #9
  store i32 %8, i32* %3, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0))
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %10, i32 256, %struct._IO_FILE* %11)
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %13 = load i8, i8* %12, align 16
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 121
  br i1 %15, label %16, label %34

; <label>:16:                                     ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.69, i32 0, i32 0))
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %18, i32 256, %struct._IO_FILE* %19)
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %21 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0))
  store %struct._IO_FILE* %21, %struct._IO_FILE** %2, align 8
  %22 = icmp eq %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i8* %25)
  br label %27

; <label>:27:                                     ; preds = %23, %16
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.72, i32 0, i32 0))
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %29, i32 256, %struct._IO_FILE* %30)
  %31 = load i32, i32* %3, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  call void @tree(i32 %31, i32 0, %struct._IO_FILE* %32, i8* %33)
  br label %34

; <label>:34:                                     ; preds = %27, %0
  store i32 0, i32* @raw_nodes, align 4
  %35 = load i32, i32* %3, align 4
  call void @perft(i32 %35)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @raw_nodes, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @divider, i32 0, i32 0), i32 %36, i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @divider, i32 0, i32 0))
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @tree(i32, i32, %struct._IO_FILE*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @interrupt() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define void @PutPiece(i32, i8 signext, i8 signext, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  store i32 97, i32* %9, align 4
  store i32 49, i32* %10, align 4
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = mul nsw i32 %21, 12
  %23 = add nsw i32 %22, 26
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %60

; <label>:28:                                     ; preds = %4
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %59 [
    i32 112, label %31
    i32 110, label %35
    i32 98, label %39
    i32 114, label %43
    i32 113, label %47
    i32 107, label %51
    i32 120, label %55
  ]

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %33
  store i32 1, i32* %34, align 4
  br label %59

; <label>:35:                                     ; preds = %28
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %37
  store i32 3, i32* %38, align 4
  br label %59

; <label>:39:                                     ; preds = %28
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %41
  store i32 11, i32* %42, align 4
  br label %59

; <label>:43:                                     ; preds = %28
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %45
  store i32 7, i32* %46, align 4
  br label %59

; <label>:47:                                     ; preds = %28
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %49
  store i32 9, i32* %50, align 4
  br label %59

; <label>:51:                                     ; preds = %28
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %53
  store i32 5, i32* %54, align 4
  br label %59

; <label>:55:                                     ; preds = %28
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %57
  store i32 13, i32* %58, align 4
  br label %59

; <label>:59:                                     ; preds = %28, %55, %51, %47, %43, %39, %35, %31
  br label %96

; <label>:60:                                     ; preds = %4
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %95

; <label>:63:                                     ; preds = %60
  %64 = load i8, i8* %6, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %94 [
    i32 112, label %66
    i32 110, label %70
    i32 98, label %74
    i32 114, label %78
    i32 113, label %82
    i32 107, label %86
    i32 120, label %90
  ]

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %68
  store i32 2, i32* %69, align 4
  br label %94

; <label>:70:                                     ; preds = %63
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %72
  store i32 4, i32* %73, align 4
  br label %94

; <label>:74:                                     ; preds = %63
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %76
  store i32 12, i32* %77, align 4
  br label %94

; <label>:78:                                     ; preds = %63
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %80
  store i32 8, i32* %81, align 4
  br label %94

; <label>:82:                                     ; preds = %63
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %84
  store i32 10, i32* %85, align 4
  br label %94

; <label>:86:                                     ; preds = %63
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %88
  store i32 6, i32* %89, align 4
  br label %94

; <label>:90:                                     ; preds = %63
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %92
  store i32 13, i32* %93, align 4
  br label %94

; <label>:94:                                     ; preds = %63, %90, %86, %82, %78, %74, %70, %66
  br label %95

; <label>:95:                                     ; preds = %94, %60
  br label %96

; <label>:96:                                     ; preds = %95, %59
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @reset_board() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [144 x i32], align 16
  %3 = bitcast [144 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([144 x i32]* @reset_board.init_board to i8*), i64 576, i32 16, i1 false)
  %4 = getelementptr inbounds [144 x i32], [144 x i32]* %2, i32 0, i32 0
  %5 = bitcast i32* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8* %5, i64 576, i32 16, i1 false)
  store i32 0, i32* %1, align 4
  br label %6

; <label>:6:                                      ; preds = %13, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp sle i32 %7, 143
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i64 0, i64 %11
  store i32 0, i32* %12, align 4
  br label %13

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %6

; <label>:16:                                     ; preds = %6
  store i32 0, i32* @ep_square, align 4
  store i32 0, i32* @piece_count, align 4
  store i32 0, i32* @Material, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false)
  store i32 0, i32* @white_hand_eval, align 4
  store i32 0, i32* @black_hand_eval, align 4
  store i32 0, i32* @bookidx, align 4
  store i32 0, i32* @fifty, align 4
  call void @reset_piece_square()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @seedMT(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = or i32 %6, 1
  store i32 %7, i32* %3, align 4
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i32 0), i32** %4, align 8
  store i32 0, i32* @left, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  store i32 624, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %16, %1
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %11
  br label %16

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %3, align 4
  %18 = mul i32 %17, 69069
  store i32 %18, i32* %3, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  br label %11

; <label>:21:                                     ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @reloadMT() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i32 0), i32** %1, align 8
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i64 2), i32** %2, align 8
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i64 397), i32** %3, align 8
  %7 = load i32, i32* @left, align 4
  %8 = icmp slt i32 %7, -1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %0
  call void @seedMT(i32 4357)
  br label %10

; <label>:10:                                     ; preds = %9, %0
  store i32 623, i32* @left, align 4
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i64 1), i32** @next, align 8
  %11 = load i32, i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i64 0, i64 0), align 16
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i64 0, i64 1), align 4
  store i32 %12, i32* %5, align 4
  store i32 228, i32* %6, align 4
  br label %13

; <label>:13:                                     ; preds = %36, %10
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

; <label>:17:                                     ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %3, align 8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, -2147483648
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 2147483647
  %25 = or i32 %22, %24
  %26 = lshr i32 %25, 1
  %27 = xor i32 %20, %26
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 -1727483681, i32 0
  %33 = xor i32 %27, %32
  %34 = load i32*, i32** %1, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %1, align 8
  store i32 %33, i32* %34, align 4
  br label %36

; <label>:36:                                     ; preds = %17
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %2, align 8
  %40 = load i32, i32* %38, align 4
  store i32 %40, i32* %5, align 4
  br label %13

; <label>:41:                                     ; preds = %13
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i32 0), i32** %3, align 8
  store i32 397, i32* %6, align 4
  br label %42

; <label>:42:                                     ; preds = %65, %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %70

; <label>:46:                                     ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %3, align 8
  %49 = load i32, i32* %47, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, -2147483648
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 2147483647
  %54 = or i32 %51, %53
  %55 = lshr i32 %54, 1
  %56 = xor i32 %49, %55
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 -1727483681, i32 0
  %62 = xor i32 %56, %61
  %63 = load i32*, i32** %1, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %1, align 8
  store i32 %62, i32* %63, align 4
  br label %65

; <label>:65:                                     ; preds = %46
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %4, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %2, align 8
  %69 = load i32, i32* %67, align 4
  store i32 %69, i32* %5, align 4
  br label %42

; <label>:70:                                     ; preds = %42
  %71 = load i32, i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i64 0, i64 0), align 16
  store i32 %71, i32* %5, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, -2147483648
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 2147483647
  %78 = or i32 %75, %77
  %79 = lshr i32 %78, 1
  %80 = xor i32 %73, %79
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 -1727483681, i32 0
  %86 = xor i32 %80, %85
  %87 = load i32*, i32** %1, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %5, align 4
  %89 = lshr i32 %88, 11
  %90 = load i32, i32* %5, align 4
  %91 = xor i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = shl i32 %92, 7
  %94 = and i32 %93, -1658038656
  %95 = load i32, i32* %5, align 4
  %96 = xor i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = shl i32 %97, 15
  %99 = and i32 %98, -272236544
  %100 = load i32, i32* %5, align 4
  %101 = xor i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = lshr i32 %103, 18
  %105 = xor i32 %102, %104
  ret i32 %105
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @randomMT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @left, align 4
  %4 = add nsw i32 %3, -1
  store i32 %4, i32* @left, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %0
  %7 = call i32 @reloadMT()
  store i32 %7, i32* %1, align 4
  br label %30

; <label>:8:                                      ; preds = %0
  %9 = load i32*, i32** @next, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** @next, align 8
  %11 = load i32, i32* %9, align 4
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = lshr i32 %12, 11
  %14 = load i32, i32* %2, align 4
  %15 = xor i32 %14, %13
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 %16, 7
  %18 = and i32 %17, -1658038656
  %19 = load i32, i32* %2, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = shl i32 %21, 15
  %23 = and i32 %22, -272236544
  %24 = load i32, i32* %2, align 4
  %25 = xor i32 %24, %23
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = lshr i32 %27, 18
  %29 = xor i32 %26, %28
  store i32 %29, i32* %1, align 4
  br label %30

; <label>:30:                                     ; preds = %8, %6
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
