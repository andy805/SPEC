; ModuleID = 'neval.c'
source_filename = "neval.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@std_p_tropism = constant [8 x i32] [i32 9999, i32 15, i32 10, i32 7, i32 2, i32 0, i32 0, i32 0], align 16
@std_own_p_tropism = constant [8 x i32] [i32 9999, i32 30, i32 10, i32 2, i32 0, i32 0, i32 0, i32 0], align 16
@std_r_tropism = constant [16 x i32] [i32 9999, i32 0, i32 15, i32 5, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@std_n_tropism = constant [8 x i32] [i32 9999, i32 14, i32 9, i32 6, i32 1, i32 0, i32 0, i32 0], align 16
@std_q_tropism = constant [8 x i32] [i32 9999, i32 200, i32 50, i32 15, i32 3, i32 2, i32 1, i32 0], align 16
@std_b_tropism = constant [8 x i32] [i32 9999, i32 12, i32 7, i32 5, i32 0, i32 0, i32 0, i32 0], align 16
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@board = external global [144 x i32], align 16
@white_castled = external global i32, align 4
@black_castled = external global i32, align 4
@phase = external global i32, align 4
@Xfile = external constant [144 x i32], align 16
@distance = common global [144 x [144 x i32]] zeroinitializer, align 16
@king_locs = common global [2 x i32] zeroinitializer, align 4
@Rook.square_d1 = internal constant [2 x i32] [i32 29, i32 113], align 4
@rookdistance = common global [144 x [144 x i32]] zeroinitializer, align 16
@wmat = common global i32 0, align 4
@bmat = common global i32 0, align 4
@sbishop = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 8, i32 5, i32 5, i32 5, i32 5, i32 8, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 3, i32 3, i32 5, i32 5, i32 3, i32 3, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 2, i32 5, i32 4, i32 4, i32 5, i32 2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 2, i32 5, i32 4, i32 4, i32 5, i32 2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 3, i32 3, i32 5, i32 5, i32 3, i32 3, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 8, i32 5, i32 5, i32 5, i32 5, i32 8, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sknight = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 5, i32 5, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 10, i32 10, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 10, i32 10, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 5, i32 5, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [35 x i8] c"Illegal piece detected sq=%i c=%i\0A\00", align 1
@white_to_move = external global i32, align 4
@Material = external global i32, align 4
@maxposdiff = common global i32 0, align 4
@wking_loc = external global i32, align 4
@bking_loc = external global i32, align 4
@material = external global [14 x i32], align 16
@Xrank = external constant [144 x i32], align 16
@evalRoutines = internal global [7 x i32 (i32, i32)*] [i32 (i32, i32)* @ErrorIt, i32 (i32, i32)* @Pawn, i32 (i32, i32)* @Knight, i32 (i32, i32)* @King, i32 (i32, i32)* @Rook, i32 (i32, i32)* @Queen, i32 (i32, i32)* @Bishop], align 16
@swhite_pawn = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 10, i32 10, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 4, i32 6, i32 12, i32 12, i32 6, i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 3, i32 6, i32 9, i32 14, i32 14, i32 9, i32 6, i32 3, i32 0, i32 0, i32 0, i32 0, i32 10, i32 12, i32 14, i32 16, i32 16, i32 14, i32 12, i32 10, i32 0, i32 0, i32 0, i32 0, i32 20, i32 22, i32 24, i32 26, i32 26, i32 24, i32 22, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sblack_pawn = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 22, i32 24, i32 26, i32 26, i32 24, i32 22, i32 20, i32 0, i32 0, i32 0, i32 0, i32 10, i32 12, i32 14, i32 16, i32 16, i32 14, i32 12, i32 10, i32 0, i32 0, i32 0, i32 0, i32 3, i32 6, i32 9, i32 14, i32 14, i32 9, i32 6, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 4, i32 6, i32 12, i32 12, i32 6, i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 10, i32 10, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@swhite_king = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 14, i32 0, i32 0, i32 0, i32 9, i32 14, i32 2, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -5, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -8, i32 -8, i32 -8, i32 -8, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -8, i32 -8, i32 -13, i32 -13, i32 -13, i32 -13, i32 -8, i32 -8, i32 0, i32 0, i32 0, i32 0, i32 -13, i32 -13, i32 -21, i32 -21, i32 -21, i32 -21, i32 -13, i32 -13, i32 0, i32 0, i32 0, i32 0, i32 -21, i32 -21, i32 -34, i32 -34, i32 -34, i32 -34, i32 -21, i32 -21, i32 0, i32 0, i32 0, i32 0, i32 -34, i32 -34, i32 -55, i32 -55, i32 -55, i32 -55, i32 -34, i32 -34, i32 0, i32 0, i32 0, i32 0, i32 -55, i32 -55, i32 -89, i32 -89, i32 -89, i32 -89, i32 -55, i32 -55, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@moved = external global [144 x i32], align 16
@send_king = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -3, i32 -1, i32 0, i32 0, i32 -1, i32 -3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 10, i32 25, i32 25, i32 25, i32 25, i32 10, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 25, i32 50, i32 50, i32 25, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 25, i32 50, i32 50, i32 25, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 10, i32 25, i32 25, i32 25, i32 25, i32 10, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -3, i32 -1, i32 0, i32 0, i32 -1, i32 -3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sblack_king = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -55, i32 -55, i32 -89, i32 -89, i32 -89, i32 -89, i32 -55, i32 -55, i32 0, i32 0, i32 0, i32 0, i32 -34, i32 -34, i32 -55, i32 -55, i32 -55, i32 -55, i32 -34, i32 -34, i32 0, i32 0, i32 0, i32 0, i32 -21, i32 -21, i32 -34, i32 -34, i32 -34, i32 -34, i32 -21, i32 -21, i32 0, i32 0, i32 0, i32 0, i32 -13, i32 -13, i32 -21, i32 -21, i32 -21, i32 -21, i32 -13, i32 -13, i32 0, i32 0, i32 0, i32 0, i32 -8, i32 -8, i32 -13, i32 -13, i32 -13, i32 -13, i32 -8, i32 -8, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -8, i32 -8, i32 -8, i32 -8, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -5, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 14, i32 0, i32 0, i32 0, i32 9, i32 14, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@srev_rank = internal constant [9 x i32] [i32 0, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 16
@rook_mobility.dir = internal constant [4 x i32] [i32 -1, i32 1, i32 12, i32 -12], align 16
@bishop_mobility.dir = internal constant [4 x i32] [i32 -13, i32 -11, i32 11, i32 13], align 16

; Function Attrs: noinline nounwind optnone uwtable
define void @check_phase() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %48, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @piece_count, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %51

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %9
  br label %48

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %47

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %47

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 13
  br i1 %37, label %38, label %47

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %38
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %47

; <label>:47:                                     ; preds = %44, %38, %32, %26, %20
  br label %48

; <label>:48:                                     ; preds = %47, %16
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %5

; <label>:51:                                     ; preds = %5
  %52 = load i32, i32* %1, align 4
  %53 = icmp sge i32 %52, 12
  br i1 %53, label %54, label %67

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* @white_castled, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* @black_castled, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

; <label>:60:                                     ; preds = %57, %54
  %61 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 30), align 8
  %62 = icmp eq i32 %61, 5
  br i1 %62, label %66, label %63

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 114), align 8
  %65 = icmp eq i32 %64, 6
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %63, %60
  store i32 0, i32* @phase, align 4
  br label %73

; <label>:67:                                     ; preds = %63, %57, %51
  %68 = load i32, i32* %1, align 4
  %69 = icmp sle i32 %68, 6
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %67
  store i32 2, i32* @phase, align 4
  br label %72

; <label>:71:                                     ; preds = %67
  store i32 1, i32* @phase, align 4
  br label %72

; <label>:72:                                     ; preds = %71, %70
  br label %73

; <label>:73:                                     ; preds = %72, %66
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @King(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 6
  br i1 %10, label %11, label %33

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = ashr i32 %17, 1
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %33

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = and i32 %26, 1
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %5, align 4
  br label %33

; <label>:33:                                     ; preds = %30, %20, %11, %2
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 6
  br i1 %38, label %39, label %61

; <label>:39:                                     ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = ashr i32 %45, 1
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %61

; <label>:48:                                     ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = and i32 %54, 1
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %48
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %5, align 4
  br label %61

; <label>:61:                                     ; preds = %58, %48, %39, %33
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

; <label>:67:                                     ; preds = %64, %61
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Queen(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 900
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i64 0, i64 %13
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [144 x i32], [144 x i32]* %14, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* @std_q_tropism, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @rook_mobility(i32 %27)
  %29 = shl i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @bishop_mobility(i32 %30)
  %32 = shl i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %35, 4
  br i1 %36, label %37, label %54

; <label>:37:                                     ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 15
  store i32 %42, i32* %6, align 4
  br label %53

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 10
  store i32 %48, i32* %6, align 4
  br label %52

; <label>:49:                                     ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 5
  store i32 %51, i32* %6, align 4
  br label %52

; <label>:52:                                     ; preds = %49, %46
  br label %53

; <label>:53:                                     ; preds = %52, %40
  br label %54

; <label>:54:                                     ; preds = %53, %2
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %63

; <label>:63:                                     ; preds = %60, %54
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rook_mobility(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %33, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %36

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* @rook_mobility.dir, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %10, %14
  store i32 %15, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %25, %9
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* @rook_mobility.dir, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %16

; <label>:32:                                     ; preds = %16
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

; <label>:36:                                     ; preds = %6
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bishop_mobility(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %33, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %36

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* @bishop_mobility.dir, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %10, %14
  store i32 %15, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %25, %9
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* @bishop_mobility.dir, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %16

; <label>:32:                                     ; preds = %16
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

; <label>:36:                                     ; preds = %6
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Rook(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 500
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @rookdistance, i64 0, i64 %13
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [144 x i32], [144 x i32]* %14, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* @std_r_tropism, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @rook_mobility(i32 %27)
  %29 = shl i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, 2
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 5
  store i32 %34, i32* %6, align 4
  br label %35

; <label>:35:                                     ; preds = %32, %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 13
  br i1 %44, label %45, label %55

; <label>:45:                                     ; preds = %35
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 13
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 5
  store i32 %54, i32* %5, align 4
  br label %55

; <label>:55:                                     ; preds = %52, %45, %35
  %56 = load i32, i32* @wmat, align 4
  %57 = icmp ne i32 %56, 1300
  br i1 %57, label %61, label %58

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* @bmat, align 4
  %60 = icmp ne i32 %59, 1300
  br i1 %60, label %61, label %111

; <label>:61:                                     ; preds = %58, %55
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* @Rook.square_d1, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %99

; <label>:68:                                     ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 10
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* @Rook.square_d1, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = ashr i32 %79, 1
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %82, label %98

; <label>:82:                                     ; preds = %68
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* @Rook.square_d1, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = and i32 %91, 1
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

; <label>:95:                                     ; preds = %82
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 5
  store i32 %97, i32* %5, align 4
  br label %98

; <label>:98:                                     ; preds = %95, %82, %68
  br label %99

; <label>:99:                                     ; preds = %98, %61
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* @Rook.square_d1, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  %106 = icmp eq i32 %100, %105
  br i1 %106, label %107, label %110

; <label>:107:                                    ; preds = %99
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 10
  store i32 %109, i32* %5, align 4
  br label %110

; <label>:110:                                    ; preds = %107, %99
  br label %111

; <label>:111:                                    ; preds = %110, %58
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %117

; <label>:114:                                    ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %117

; <label>:117:                                    ; preds = %114, %111
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Bishop(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 325
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [144 x i32], [144 x i32]* @sbishop, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i64 0, i64 %19
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [144 x i32], [144 x i32]* %20, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* @std_b_tropism, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @bishop_mobility(i32 %33)
  %35 = shl i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 2
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 5
  store i32 %40, i32* %6, align 4
  br label %41

; <label>:41:                                     ; preds = %38, %2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

; <label>:47:                                     ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 39
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 52), align 16
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %62, label %53

; <label>:53:                                     ; preds = %50, %47, %41
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %65

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %57, 99
  br i1 %58, label %59, label %65

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 88), align 16
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %59, %50
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, 5
  store i32 %64, i32* %5, align 4
  br label %65

; <label>:65:                                     ; preds = %62, %59, %56, %53
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

; <label>:71:                                     ; preds = %68, %65
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Knight(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = xor i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 310
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [144 x i32], [144 x i32]* @sknight, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i64 0, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [144 x i32], [144 x i32]* %19, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* @std_n_tropism, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

; <label>:37:                                     ; preds = %34, %2
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Pawn(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = xor i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 100
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i64 0, i64 %12
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [144 x i32], [144 x i32]* %13, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* @std_p_tropism, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i64 0, i64 %27
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [144 x i32], [144 x i32]* %28, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* @std_own_p_tropism, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = ashr i32 %46, 1
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %62

; <label>:49:                                     ; preds = %2
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = and i32 %55, 1
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 5
  store i32 %61, i32* %5, align 4
  br label %62

; <label>:62:                                     ; preds = %59, %49, %2
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 11
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = ashr i32 %68, 1
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %84

; <label>:71:                                     ; preds = %62
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 11
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = and i32 %77, 1
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %107

; <label>:84:                                     ; preds = %71, %62
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 13
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = ashr i32 %90, 1
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %106

; <label>:93:                                     ; preds = %84
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 13
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  %100 = and i32 %99, 1
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

; <label>:103:                                    ; preds = %93
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %106

; <label>:106:                                    ; preds = %103, %93, %84
  br label %107

; <label>:107:                                    ; preds = %106, %81
  %108 = load i32, i32* %4, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %113

; <label>:113:                                    ; preds = %110, %107
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ErrorIt(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %5, i32 %6)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @std_eval(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x [11 x i32]], align 16
  %10 = alloca [11 x i32], align 16
  %11 = alloca [11 x i32], align 16
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %16, align 4
  %39 = load i32, i32* @white_to_move, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %2
  %42 = load i32, i32* @Material, align 4
  br label %46

; <label>:43:                                     ; preds = %2
  %44 = load i32, i32* @Material, align 4
  %45 = sub nsw i32 0, %44
  br label %46

; <label>:46:                                     ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  %48 = load i32, i32* @maxposdiff, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %64

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* @white_to_move, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* @Material, align 4
  br label %60

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* @Material, align 4
  %59 = sub nsw i32 0, %58
  br label %60

; <label>:60:                                     ; preds = %57, %55
  %61 = phi i32 [ %56, %55 ], [ %59, %57 ]
  %62 = load i32, i32* @maxposdiff, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %2121

; <label>:64:                                     ; preds = %46
  %65 = load i32, i32* @white_to_move, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* @Material, align 4
  br label %72

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* @Material, align 4
  %71 = sub nsw i32 0, %70
  br label %72

; <label>:72:                                     ; preds = %69, %67
  %73 = phi i32 [ %68, %67 ], [ %71, %69 ]
  %74 = load i32, i32* @maxposdiff, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %4, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %90

; <label>:78:                                     ; preds = %72
  %79 = load i32, i32* @white_to_move, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* @Material, align 4
  br label %86

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* @Material, align 4
  %85 = sub nsw i32 0, %84
  br label %86

; <label>:86:                                     ; preds = %83, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %83 ]
  %88 = load i32, i32* @maxposdiff, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %3, align 4
  br label %2121

; <label>:90:                                     ; preds = %72
  store i32 0, i32* %19, align 4
  call void @checkECache(i32* %16, i32* %19)
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* @white_to_move, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %3, align 4
  br label %2121

; <label>:98:                                     ; preds = %93
  %99 = load i32, i32* %16, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %2121

; <label>:101:                                    ; preds = %90
  %102 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i32 0, i32 0
  %103 = bitcast [11 x i32]* %102 to i8*
  call void @llvm.memset.p0i8.i64(i8* %103, i8 0, i64 88, i32 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %104

; <label>:104:                                    ; preds = %114, %101
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 11
  br i1 %106, label %107, label %117

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %109
  store i32 7, i32* %110, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %112
  store i32 2, i32* %113, align 4
  br label %114

; <label>:114:                                    ; preds = %107
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %104

; <label>:117:                                    ; preds = %104
  store i32 0, i32* @wmat, align 4
  store i32 0, i32* @bmat, align 4
  %118 = load i32, i32* @wking_loc, align 4
  store i32 %118, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @king_locs, i64 0, i64 0), align 4
  %119 = load i32, i32* @bking_loc, align 4
  store i32 %119, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @king_locs, i64 0, i64 1), align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %7, align 4
  br label %120

; <label>:120:                                    ; preds = %246, %117
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @piece_count, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %249

; <label>:124:                                    ; preds = %120
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

; <label>:131:                                    ; preds = %124
  br label %246

; <label>:132:                                    ; preds = %124
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %135

; <label>:135:                                    ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  %141 = ashr i32 %140, 1
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %181

; <label>:143:                                    ; preds = %135
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  %149 = ashr i32 %148, 1
  %150 = icmp ne i32 %149, 3
  br i1 %150, label %151, label %181

; <label>:151:                                    ; preds = %143
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %169

; <label>:159:                                    ; preds = %151
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @wmat, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* @wmat, align 4
  br label %180

; <label>:169:                                    ; preds = %151
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @abs(i32 %176) #4
  %178 = load i32, i32* @bmat, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* @bmat, align 4
  br label %180

; <label>:180:                                    ; preds = %169, %159
  br label %181

; <label>:181:                                    ; preds = %180, %143, %135
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  %187 = ashr i32 %186, 1
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %245

; <label>:189:                                    ; preds = %181
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %225

; <label>:206:                                    ; preds = %189
  %207 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [11 x i32], [11 x i32]* %207, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %213, %217
  br i1 %218, label %219, label %224

; <label>:219:                                    ; preds = %206
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %222
  store i32 %220, i32* %223, align 4
  br label %224

; <label>:224:                                    ; preds = %219, %206
  br label %244

; <label>:225:                                    ; preds = %189
  %226 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [11 x i32], [11 x i32]* %226, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = icmp sgt i32 %232, %236
  br i1 %237, label %238, label %243

; <label>:238:                                    ; preds = %225
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %241
  store i32 %239, i32* %242, align 4
  br label %243

; <label>:243:                                    ; preds = %238, %225
  br label %244

; <label>:244:                                    ; preds = %243, %224
  br label %245

; <label>:245:                                    ; preds = %244, %181
  br label %246

; <label>:246:                                    ; preds = %245, %131
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  br label %120

; <label>:249:                                    ; preds = %120
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %7, align 4
  br label %250

; <label>:250:                                    ; preds = %1558, %249
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @piece_count, align 4
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %254, label %1561

; <label>:254:                                    ; preds = %250
  %255 = load i32, i32* %15, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

; <label>:261:                                    ; preds = %254
  br label %1558

; <label>:262:                                    ; preds = %254
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  br label %265

; <label>:265:                                    ; preds = %262
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  %271 = ashr i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [7 x i32 (i32, i32)*], [7 x i32 (i32, i32)*]* @evalRoutines, i64 0, i64 %272
  %274 = load i32 (i32, i32)*, i32 (i32, i32)** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 1
  %281 = and i32 %280, 1
  %282 = call i32 %274(i32 %275, i32 %281)
  %283 = load i32, i32* %16, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  store i32 %293, i32* %12, align 4
  %294 = load i32, i32* %6, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %295
  %297 = load i32, i32* %296, align 4
  switch i32 %297, label %1557 [
    i32 1, label %298
    i32 2, label %696
    i32 7, label %1096
    i32 8, label %1159
    i32 11, label %1222
    i32 12, label %1225
    i32 3, label %1228
    i32 4, label %1231
    i32 9, label %1234
    i32 10, label %1237
    i32 5, label %1240
    i32 6, label %1394
  ]

; <label>:298:                                    ; preds = %265
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [144 x i32], [144 x i32]* @swhite_pawn, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %16, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %16, align 4
  %305 = load i32, i32* %20, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %20, align 4
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %12, align 4
  %313 = icmp sgt i32 %311, %312
  br i1 %313, label %314, label %344

; <label>:314:                                    ; preds = %298
  %315 = load i32, i32* %8, align 4
  %316 = sub nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %12, align 4
  %321 = icmp sgt i32 %319, %320
  br i1 %321, label %322, label %344

; <label>:322:                                    ; preds = %314
  %323 = load i32, i32* %16, align 4
  %324 = sub nsw i32 %323, 8
  store i32 %324, i32* %16, align 4
  store i32 1, i32* %18, align 4
  %325 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %326 = load i32, i32* %8, align 4
  %327 = add nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [11 x i32], [11 x i32]* %325, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %343, label %332

; <label>:332:                                    ; preds = %322
  %333 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %334 = load i32, i32* %8, align 4
  %335 = sub nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [11 x i32], [11 x i32]* %333, i64 0, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %343, label %340

; <label>:340:                                    ; preds = %332
  %341 = load i32, i32* %16, align 4
  %342 = sub nsw i32 %341, 5
  store i32 %342, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %343

; <label>:343:                                    ; preds = %340, %332, %322
  br label %344

; <label>:344:                                    ; preds = %343, %314, %298
  %345 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %346 = load i32, i32* %8, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [11 x i32], [11 x i32]* %345, i64 0, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %364, label %351

; <label>:351:                                    ; preds = %344
  %352 = load i32, i32* %18, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

; <label>:354:                                    ; preds = %351
  %355 = load i32, i32* %16, align 4
  %356 = sub nsw i32 %355, 3
  store i32 %356, i32* %16, align 4
  br label %357

; <label>:357:                                    ; preds = %354, %351
  %358 = load i32, i32* %17, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

; <label>:360:                                    ; preds = %357
  %361 = load i32, i32* %16, align 4
  %362 = sub nsw i32 %361, 5
  store i32 %362, i32* %16, align 4
  br label %363

; <label>:363:                                    ; preds = %360, %357
  br label %364

; <label>:364:                                    ; preds = %363, %344
  %365 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [11 x i32], [11 x i32]* %365, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = icmp sgt i32 %369, 1
  br i1 %370, label %371, label %381

; <label>:371:                                    ; preds = %364
  %372 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %373 = load i32, i32* %8, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [11 x i32], [11 x i32]* %372, i64 0, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = sub nsw i32 %376, 1
  %378 = mul nsw i32 3, %377
  %379 = load i32, i32* %16, align 4
  %380 = sub nsw i32 %379, %378
  store i32 %380, i32* %16, align 4
  br label %381

; <label>:381:                                    ; preds = %371, %364
  %382 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [11 x i32], [11 x i32]* %382, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %684, label %388

; <label>:388:                                    ; preds = %381
  %389 = load i32, i32* %12, align 4
  %390 = load i32, i32* %8, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = icmp sge i32 %389, %394
  br i1 %395, label %396, label %684

; <label>:396:                                    ; preds = %388
  %397 = load i32, i32* %12, align 4
  %398 = load i32, i32* %8, align 4
  %399 = add nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = icmp sge i32 %397, %402
  br i1 %403, label %404, label %684

; <label>:404:                                    ; preds = %396
  %405 = load i32, i32* %6, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [144 x i32], [144 x i32]* @swhite_pawn, i64 0, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = mul nsw i32 3, %408
  %410 = add nsw i32 30, %409
  %411 = load i32, i32* %16, align 4
  %412 = add nsw i32 %411, %410
  store i32 %412, i32* %16, align 4
  %413 = load i32, i32* @white_to_move, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %482

; <label>:415:                                    ; preds = %404
  %416 = load i32, i32* %6, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = add nsw i32 110, %419
  %421 = sub nsw i32 %420, 1
  store i32 %421, i32* %36, align 4
  %422 = load i32, i32* @bking_loc, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %36, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = sub nsw i32 %425, %429
  %431 = call i32 @abs(i32 %430) #4
  %432 = load i32, i32* @bking_loc, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* %36, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = sub nsw i32 %435, %439
  %441 = call i32 @abs(i32 %440) #4
  %442 = icmp sgt i32 %431, %441
  br i1 %442, label %443, label %454

; <label>:443:                                    ; preds = %415
  %444 = load i32, i32* @bking_loc, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* %36, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = sub nsw i32 %447, %451
  %453 = call i32 @abs(i32 %452) #4
  br label %465

; <label>:454:                                    ; preds = %415
  %455 = load i32, i32* @bking_loc, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* %36, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = sub nsw i32 %458, %462
  %464 = call i32 @abs(i32 %463) #4
  br label %465

; <label>:465:                                    ; preds = %454, %443
  %466 = phi i32 [ %453, %443 ], [ %464, %454 ]
  %467 = load i32, i32* %36, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %6, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = sub nsw i32 %470, %474
  %476 = call i32 @abs(i32 %475) #4
  %477 = icmp sgt i32 %466, %476
  br i1 %477, label %478, label %481

; <label>:478:                                    ; preds = %465
  %479 = load i32, i32* %34, align 4
  %480 = add nsw i32 %479, 800
  store i32 %480, i32* %34, align 4
  br label %481

; <label>:481:                                    ; preds = %478, %465
  br label %550

; <label>:482:                                    ; preds = %404
  %483 = load i32, i32* %6, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = add nsw i32 110, %486
  %488 = sub nsw i32 %487, 1
  store i32 %488, i32* %36, align 4
  %489 = load i32, i32* @bking_loc, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %36, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = sub nsw i32 %492, %496
  %498 = call i32 @abs(i32 %497) #4
  %499 = load i32, i32* @bking_loc, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = load i32, i32* %36, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = sub nsw i32 %502, %506
  %508 = call i32 @abs(i32 %507) #4
  %509 = icmp sgt i32 %498, %508
  br i1 %509, label %510, label %521

; <label>:510:                                    ; preds = %482
  %511 = load i32, i32* @bking_loc, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* %36, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = sub nsw i32 %514, %518
  %520 = call i32 @abs(i32 %519) #4
  br label %532

; <label>:521:                                    ; preds = %482
  %522 = load i32, i32* @bking_loc, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %523
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* %36, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = sub nsw i32 %525, %529
  %531 = call i32 @abs(i32 %530) #4
  br label %532

; <label>:532:                                    ; preds = %521, %510
  %533 = phi i32 [ %520, %510 ], [ %531, %521 ]
  %534 = sub nsw i32 %533, 1
  %535 = load i32, i32* %36, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* %6, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = sub nsw i32 %538, %542
  %544 = call i32 @abs(i32 %543) #4
  %545 = icmp sgt i32 %534, %544
  br i1 %545, label %546, label %549

; <label>:546:                                    ; preds = %532
  %547 = load i32, i32* %34, align 4
  %548 = add nsw i32 %547, 800
  store i32 %548, i32* %34, align 4
  br label %549

; <label>:549:                                    ; preds = %546, %532
  br label %550

; <label>:550:                                    ; preds = %549, %481
  %551 = load i32, i32* %6, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = icmp eq i32 %554, 1
  br i1 %555, label %562, label %556

; <label>:556:                                    ; preds = %550
  %557 = load i32, i32* %6, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = icmp eq i32 %560, 8
  br i1 %561, label %562, label %571

; <label>:562:                                    ; preds = %556, %550
  %563 = load i32, i32* %6, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [144 x i32], [144 x i32]* @swhite_pawn, i64 0, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = mul nsw i32 2, %566
  %568 = add nsw i32 12, %567
  %569 = load i32, i32* %16, align 4
  %570 = add nsw i32 %569, %568
  store i32 %570, i32* %16, align 4
  br label %571

; <label>:571:                                    ; preds = %562, %556
  %572 = load i32, i32* %17, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %683, label %574

; <label>:574:                                    ; preds = %571
  %575 = load i32, i32* %16, align 4
  %576 = add nsw i32 %575, 12
  store i32 %576, i32* %16, align 4
  %577 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %578 = load i32, i32* %8, align 4
  %579 = add nsw i32 %578, 1
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [11 x i32], [11 x i32]* %577, i64 0, i64 %580
  %582 = load i32, i32* %581, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %629

; <label>:584:                                    ; preds = %574
  %585 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %586 = load i32, i32* %8, align 4
  %587 = add nsw i32 %586, 1
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [11 x i32], [11 x i32]* %585, i64 0, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %628, label %592

; <label>:592:                                    ; preds = %584
  %593 = load i32, i32* %8, align 4
  %594 = add nsw i32 %593, 1
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = load i32, i32* %8, align 4
  %599 = add nsw i32 %598, 2
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = icmp sge i32 %597, %602
  br i1 %603, label %604, label %628

; <label>:604:                                    ; preds = %592
  %605 = load i32, i32* %6, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = mul nsw i32 7, %608
  %610 = load i32, i32* %16, align 4
  %611 = add nsw i32 %610, %609
  store i32 %611, i32* %16, align 4
  %612 = load i32, i32* %6, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %613
  %615 = load i32, i32* %614, align 4
  %616 = icmp eq i32 %615, 7
  br i1 %616, label %617, label %627

; <label>:617:                                    ; preds = %604
  %618 = load i32, i32* %8, align 4
  %619 = add nsw i32 %618, 1
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = icmp sge i32 %622, 6
  br i1 %623, label %624, label %627

; <label>:624:                                    ; preds = %617
  %625 = load i32, i32* %16, align 4
  %626 = add nsw i32 %625, 50
  store i32 %626, i32* %16, align 4
  br label %627

; <label>:627:                                    ; preds = %624, %617, %604
  br label %628

; <label>:628:                                    ; preds = %627, %592, %584
  br label %629

; <label>:629:                                    ; preds = %628, %574
  %630 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %631 = load i32, i32* %8, align 4
  %632 = sub nsw i32 %631, 1
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds [11 x i32], [11 x i32]* %630, i64 0, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %682

; <label>:637:                                    ; preds = %629
  %638 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %639 = load i32, i32* %8, align 4
  %640 = sub nsw i32 %639, 1
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds [11 x i32], [11 x i32]* %638, i64 0, i64 %641
  %643 = load i32, i32* %642, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %681, label %645

; <label>:645:                                    ; preds = %637
  %646 = load i32, i32* %8, align 4
  %647 = add nsw i32 %646, 1
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = load i32, i32* %8, align 4
  %652 = sub nsw i32 %651, 2
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %653
  %655 = load i32, i32* %654, align 4
  %656 = icmp sge i32 %650, %655
  br i1 %656, label %657, label %681

; <label>:657:                                    ; preds = %645
  %658 = load i32, i32* %6, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %659
  %661 = load i32, i32* %660, align 4
  %662 = mul nsw i32 7, %661
  %663 = load i32, i32* %16, align 4
  %664 = add nsw i32 %663, %662
  store i32 %664, i32* %16, align 4
  %665 = load i32, i32* %6, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %666
  %668 = load i32, i32* %667, align 4
  %669 = icmp eq i32 %668, 7
  br i1 %669, label %670, label %680

; <label>:670:                                    ; preds = %657
  %671 = load i32, i32* %8, align 4
  %672 = sub nsw i32 %671, 1
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %673
  %675 = load i32, i32* %674, align 4
  %676 = icmp sge i32 %675, 6
  br i1 %676, label %677, label %680

; <label>:677:                                    ; preds = %670
  %678 = load i32, i32* %16, align 4
  %679 = add nsw i32 %678, 50
  store i32 %679, i32* %16, align 4
  br label %680

; <label>:680:                                    ; preds = %677, %670, %657
  br label %681

; <label>:681:                                    ; preds = %680, %645, %637
  br label %682

; <label>:682:                                    ; preds = %681, %629
  br label %683

; <label>:683:                                    ; preds = %682, %571
  br label %684

; <label>:684:                                    ; preds = %683, %396, %388, %381
  %685 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %686 = load i32, i32* %8, align 4
  %687 = sub nsw i32 %686, 1
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds [11 x i32], [11 x i32]* %685, i64 0, i64 %688
  %690 = load i32, i32* %689, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %695, label %692

; <label>:692:                                    ; preds = %684
  %693 = load i32, i32* %16, align 4
  %694 = sub nsw i32 %693, 7
  store i32 %694, i32* %16, align 4
  br label %695

; <label>:695:                                    ; preds = %692, %684
  br label %1557

; <label>:696:                                    ; preds = %265
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %697 = load i32, i32* %6, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [144 x i32], [144 x i32]* @sblack_pawn, i64 0, i64 %698
  %700 = load i32, i32* %699, align 4
  %701 = load i32, i32* %16, align 4
  %702 = sub nsw i32 %701, %700
  store i32 %702, i32* %16, align 4
  %703 = load i32, i32* %21, align 4
  %704 = add nsw i32 %703, 1
  store i32 %704, i32* %21, align 4
  %705 = load i32, i32* %8, align 4
  %706 = add nsw i32 %705, 1
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %707
  %709 = load i32, i32* %708, align 4
  %710 = load i32, i32* %12, align 4
  %711 = icmp slt i32 %709, %710
  br i1 %711, label %712, label %742

; <label>:712:                                    ; preds = %696
  %713 = load i32, i32* %8, align 4
  %714 = sub nsw i32 %713, 1
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = load i32, i32* %12, align 4
  %719 = icmp slt i32 %717, %718
  br i1 %719, label %720, label %742

; <label>:720:                                    ; preds = %712
  %721 = load i32, i32* %16, align 4
  %722 = add nsw i32 %721, 8
  store i32 %722, i32* %16, align 4
  store i32 1, i32* %18, align 4
  %723 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %724 = load i32, i32* %8, align 4
  %725 = add nsw i32 %724, 1
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [11 x i32], [11 x i32]* %723, i64 0, i64 %726
  %728 = load i32, i32* %727, align 4
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %741, label %730

; <label>:730:                                    ; preds = %720
  %731 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %732 = load i32, i32* %8, align 4
  %733 = sub nsw i32 %732, 1
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds [11 x i32], [11 x i32]* %731, i64 0, i64 %734
  %736 = load i32, i32* %735, align 4
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %741, label %738

; <label>:738:                                    ; preds = %730
  %739 = load i32, i32* %16, align 4
  %740 = add nsw i32 %739, 5
  store i32 %740, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %741

; <label>:741:                                    ; preds = %738, %730, %720
  br label %742

; <label>:742:                                    ; preds = %741, %712, %696
  %743 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %744 = load i32, i32* %8, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [11 x i32], [11 x i32]* %743, i64 0, i64 %745
  %747 = load i32, i32* %746, align 4
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %762, label %749

; <label>:749:                                    ; preds = %742
  %750 = load i32, i32* %18, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %755

; <label>:752:                                    ; preds = %749
  %753 = load i32, i32* %16, align 4
  %754 = add nsw i32 %753, 3
  store i32 %754, i32* %16, align 4
  br label %755

; <label>:755:                                    ; preds = %752, %749
  %756 = load i32, i32* %17, align 4
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %761

; <label>:758:                                    ; preds = %755
  %759 = load i32, i32* %16, align 4
  %760 = add nsw i32 %759, 5
  store i32 %760, i32* %16, align 4
  br label %761

; <label>:761:                                    ; preds = %758, %755
  br label %762

; <label>:762:                                    ; preds = %761, %742
  %763 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %764 = load i32, i32* %8, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds [11 x i32], [11 x i32]* %763, i64 0, i64 %765
  %767 = load i32, i32* %766, align 4
  %768 = icmp sgt i32 %767, 1
  br i1 %768, label %769, label %779

; <label>:769:                                    ; preds = %762
  %770 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %771 = load i32, i32* %8, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds [11 x i32], [11 x i32]* %770, i64 0, i64 %772
  %774 = load i32, i32* %773, align 4
  %775 = sub nsw i32 %774, 1
  %776 = mul nsw i32 3, %775
  %777 = load i32, i32* %16, align 4
  %778 = add nsw i32 %777, %776
  store i32 %778, i32* %16, align 4
  br label %779

; <label>:779:                                    ; preds = %769, %762
  %780 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %781 = load i32, i32* %8, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds [11 x i32], [11 x i32]* %780, i64 0, i64 %782
  %784 = load i32, i32* %783, align 4
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %1084, label %786

; <label>:786:                                    ; preds = %779
  %787 = load i32, i32* %12, align 4
  %788 = load i32, i32* %8, align 4
  %789 = sub nsw i32 %788, 1
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %790
  %792 = load i32, i32* %791, align 4
  %793 = icmp sle i32 %787, %792
  br i1 %793, label %794, label %1084

; <label>:794:                                    ; preds = %786
  %795 = load i32, i32* %12, align 4
  %796 = load i32, i32* %8, align 4
  %797 = add nsw i32 %796, 1
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %798
  %800 = load i32, i32* %799, align 4
  %801 = icmp sle i32 %795, %800
  br i1 %801, label %802, label %1084

; <label>:802:                                    ; preds = %794
  %803 = load i32, i32* %6, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [144 x i32], [144 x i32]* @sblack_pawn, i64 0, i64 %804
  %806 = load i32, i32* %805, align 4
  %807 = mul nsw i32 3, %806
  %808 = add nsw i32 30, %807
  %809 = load i32, i32* %16, align 4
  %810 = sub nsw i32 %809, %808
  store i32 %810, i32* %16, align 4
  %811 = load i32, i32* @white_to_move, align 4
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %880, label %813

; <label>:813:                                    ; preds = %802
  %814 = load i32, i32* %6, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %815
  %817 = load i32, i32* %816, align 4
  %818 = add nsw i32 26, %817
  %819 = sub nsw i32 %818, 1
  store i32 %819, i32* %36, align 4
  %820 = load i32, i32* @wking_loc, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %821
  %823 = load i32, i32* %822, align 4
  %824 = load i32, i32* %36, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %825
  %827 = load i32, i32* %826, align 4
  %828 = sub nsw i32 %823, %827
  %829 = call i32 @abs(i32 %828) #4
  %830 = load i32, i32* @wking_loc, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %831
  %833 = load i32, i32* %832, align 4
  %834 = load i32, i32* %36, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %835
  %837 = load i32, i32* %836, align 4
  %838 = sub nsw i32 %833, %837
  %839 = call i32 @abs(i32 %838) #4
  %840 = icmp sgt i32 %829, %839
  br i1 %840, label %841, label %852

; <label>:841:                                    ; preds = %813
  %842 = load i32, i32* @wking_loc, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %843
  %845 = load i32, i32* %844, align 4
  %846 = load i32, i32* %36, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %847
  %849 = load i32, i32* %848, align 4
  %850 = sub nsw i32 %845, %849
  %851 = call i32 @abs(i32 %850) #4
  br label %863

; <label>:852:                                    ; preds = %813
  %853 = load i32, i32* @wking_loc, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %854
  %856 = load i32, i32* %855, align 4
  %857 = load i32, i32* %36, align 4
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %858
  %860 = load i32, i32* %859, align 4
  %861 = sub nsw i32 %856, %860
  %862 = call i32 @abs(i32 %861) #4
  br label %863

; <label>:863:                                    ; preds = %852, %841
  %864 = phi i32 [ %851, %841 ], [ %862, %852 ]
  %865 = load i32, i32* %36, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %866
  %868 = load i32, i32* %867, align 4
  %869 = load i32, i32* %6, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %870
  %872 = load i32, i32* %871, align 4
  %873 = sub nsw i32 %868, %872
  %874 = call i32 @abs(i32 %873) #4
  %875 = icmp sgt i32 %864, %874
  br i1 %875, label %876, label %879

; <label>:876:                                    ; preds = %863
  %877 = load i32, i32* %35, align 4
  %878 = sub nsw i32 %877, 800
  store i32 %878, i32* %35, align 4
  br label %879

; <label>:879:                                    ; preds = %876, %863
  br label %948

; <label>:880:                                    ; preds = %802
  %881 = load i32, i32* %6, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %882
  %884 = load i32, i32* %883, align 4
  %885 = add nsw i32 26, %884
  %886 = sub nsw i32 %885, 1
  store i32 %886, i32* %36, align 4
  %887 = load i32, i32* @wking_loc, align 4
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %888
  %890 = load i32, i32* %889, align 4
  %891 = load i32, i32* %36, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %892
  %894 = load i32, i32* %893, align 4
  %895 = sub nsw i32 %890, %894
  %896 = call i32 @abs(i32 %895) #4
  %897 = load i32, i32* @wking_loc, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %898
  %900 = load i32, i32* %899, align 4
  %901 = load i32, i32* %36, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %902
  %904 = load i32, i32* %903, align 4
  %905 = sub nsw i32 %900, %904
  %906 = call i32 @abs(i32 %905) #4
  %907 = icmp sgt i32 %896, %906
  br i1 %907, label %908, label %919

; <label>:908:                                    ; preds = %880
  %909 = load i32, i32* @wking_loc, align 4
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %910
  %912 = load i32, i32* %911, align 4
  %913 = load i32, i32* %36, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %914
  %916 = load i32, i32* %915, align 4
  %917 = sub nsw i32 %912, %916
  %918 = call i32 @abs(i32 %917) #4
  br label %930

; <label>:919:                                    ; preds = %880
  %920 = load i32, i32* @wking_loc, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %921
  %923 = load i32, i32* %922, align 4
  %924 = load i32, i32* %36, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %925
  %927 = load i32, i32* %926, align 4
  %928 = sub nsw i32 %923, %927
  %929 = call i32 @abs(i32 %928) #4
  br label %930

; <label>:930:                                    ; preds = %919, %908
  %931 = phi i32 [ %918, %908 ], [ %929, %919 ]
  %932 = sub nsw i32 %931, 1
  %933 = load i32, i32* %36, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %934
  %936 = load i32, i32* %935, align 4
  %937 = load i32, i32* %6, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %938
  %940 = load i32, i32* %939, align 4
  %941 = sub nsw i32 %936, %940
  %942 = call i32 @abs(i32 %941) #4
  %943 = icmp sgt i32 %932, %942
  br i1 %943, label %944, label %947

; <label>:944:                                    ; preds = %930
  %945 = load i32, i32* %35, align 4
  %946 = sub nsw i32 %945, 800
  store i32 %946, i32* %35, align 4
  br label %947

; <label>:947:                                    ; preds = %944, %930
  br label %948

; <label>:948:                                    ; preds = %947, %879
  %949 = load i32, i32* %6, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %950
  %952 = load i32, i32* %951, align 4
  %953 = icmp eq i32 %952, 1
  br i1 %953, label %960, label %954

; <label>:954:                                    ; preds = %948
  %955 = load i32, i32* %6, align 4
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %956
  %958 = load i32, i32* %957, align 4
  %959 = icmp eq i32 %958, 8
  br i1 %959, label %960, label %969

; <label>:960:                                    ; preds = %954, %948
  %961 = load i32, i32* %6, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds [144 x i32], [144 x i32]* @sblack_pawn, i64 0, i64 %962
  %964 = load i32, i32* %963, align 4
  %965 = mul nsw i32 2, %964
  %966 = add nsw i32 12, %965
  %967 = load i32, i32* %16, align 4
  %968 = sub nsw i32 %967, %966
  store i32 %968, i32* %16, align 4
  br label %969

; <label>:969:                                    ; preds = %960, %954
  %970 = load i32, i32* %17, align 4
  %971 = icmp ne i32 %970, 0
  br i1 %971, label %1083, label %972

; <label>:972:                                    ; preds = %969
  %973 = load i32, i32* %16, align 4
  %974 = sub nsw i32 %973, 12
  store i32 %974, i32* %16, align 4
  %975 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %976 = load i32, i32* %8, align 4
  %977 = add nsw i32 %976, 1
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds [11 x i32], [11 x i32]* %975, i64 0, i64 %978
  %980 = load i32, i32* %979, align 4
  %981 = icmp ne i32 %980, 0
  br i1 %981, label %982, label %1028

; <label>:982:                                    ; preds = %972
  %983 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %984 = load i32, i32* %8, align 4
  %985 = add nsw i32 %984, 1
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds [11 x i32], [11 x i32]* %983, i64 0, i64 %986
  %988 = load i32, i32* %987, align 4
  %989 = icmp ne i32 %988, 0
  br i1 %989, label %1027, label %990

; <label>:990:                                    ; preds = %982
  %991 = load i32, i32* %8, align 4
  %992 = add nsw i32 %991, 1
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %993
  %995 = load i32, i32* %994, align 4
  %996 = load i32, i32* %8, align 4
  %997 = add nsw i32 %996, 2
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %998
  %1000 = load i32, i32* %999, align 4
  %1001 = icmp sle i32 %995, %1000
  br i1 %1001, label %1002, label %1027

; <label>:1002:                                   ; preds = %990
  %1003 = load i32, i32* %6, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1004
  %1006 = load i32, i32* %1005, align 4
  %1007 = sub nsw i32 9, %1006
  %1008 = mul nsw i32 7, %1007
  %1009 = load i32, i32* %16, align 4
  %1010 = sub nsw i32 %1009, %1008
  store i32 %1010, i32* %16, align 4
  %1011 = load i32, i32* %6, align 4
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1012
  %1014 = load i32, i32* %1013, align 4
  %1015 = icmp eq i32 %1014, 2
  br i1 %1015, label %1016, label %1026

; <label>:1016:                                   ; preds = %1002
  %1017 = load i32, i32* %8, align 4
  %1018 = add nsw i32 %1017, 1
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1019
  %1021 = load i32, i32* %1020, align 4
  %1022 = icmp sle i32 %1021, 3
  br i1 %1022, label %1023, label %1026

; <label>:1023:                                   ; preds = %1016
  %1024 = load i32, i32* %16, align 4
  %1025 = sub nsw i32 %1024, 50
  store i32 %1025, i32* %16, align 4
  br label %1026

; <label>:1026:                                   ; preds = %1023, %1016, %1002
  br label %1027

; <label>:1027:                                   ; preds = %1026, %990, %982
  br label %1028

; <label>:1028:                                   ; preds = %1027, %972
  %1029 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1030 = load i32, i32* %8, align 4
  %1031 = sub nsw i32 %1030, 1
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds [11 x i32], [11 x i32]* %1029, i64 0, i64 %1032
  %1034 = load i32, i32* %1033, align 4
  %1035 = icmp ne i32 %1034, 0
  br i1 %1035, label %1036, label %1082

; <label>:1036:                                   ; preds = %1028
  %1037 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1038 = load i32, i32* %8, align 4
  %1039 = sub nsw i32 %1038, 1
  %1040 = sext i32 %1039 to i64
  %1041 = getelementptr inbounds [11 x i32], [11 x i32]* %1037, i64 0, i64 %1040
  %1042 = load i32, i32* %1041, align 4
  %1043 = icmp ne i32 %1042, 0
  br i1 %1043, label %1081, label %1044

; <label>:1044:                                   ; preds = %1036
  %1045 = load i32, i32* %8, align 4
  %1046 = sub nsw i32 %1045, 1
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1047
  %1049 = load i32, i32* %1048, align 4
  %1050 = load i32, i32* %8, align 4
  %1051 = sub nsw i32 %1050, 2
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1052
  %1054 = load i32, i32* %1053, align 4
  %1055 = icmp sle i32 %1049, %1054
  br i1 %1055, label %1056, label %1081

; <label>:1056:                                   ; preds = %1044
  %1057 = load i32, i32* %6, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1058
  %1060 = load i32, i32* %1059, align 4
  %1061 = sub nsw i32 9, %1060
  %1062 = mul nsw i32 7, %1061
  %1063 = load i32, i32* %16, align 4
  %1064 = sub nsw i32 %1063, %1062
  store i32 %1064, i32* %16, align 4
  %1065 = load i32, i32* %6, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1066
  %1068 = load i32, i32* %1067, align 4
  %1069 = icmp eq i32 %1068, 2
  br i1 %1069, label %1070, label %1080

; <label>:1070:                                   ; preds = %1056
  %1071 = load i32, i32* %8, align 4
  %1072 = sub nsw i32 %1071, 1
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1073
  %1075 = load i32, i32* %1074, align 4
  %1076 = icmp sle i32 %1075, 3
  br i1 %1076, label %1077, label %1080

; <label>:1077:                                   ; preds = %1070
  %1078 = load i32, i32* %16, align 4
  %1079 = sub nsw i32 %1078, 50
  store i32 %1079, i32* %16, align 4
  br label %1080

; <label>:1080:                                   ; preds = %1077, %1070, %1056
  br label %1081

; <label>:1081:                                   ; preds = %1080, %1044, %1036
  br label %1082

; <label>:1082:                                   ; preds = %1081, %1028
  br label %1083

; <label>:1083:                                   ; preds = %1082, %969
  br label %1084

; <label>:1084:                                   ; preds = %1083, %794, %786, %779
  %1085 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1086 = load i32, i32* %8, align 4
  %1087 = sub nsw i32 %1086, 1
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [11 x i32], [11 x i32]* %1085, i64 0, i64 %1088
  %1090 = load i32, i32* %1089, align 4
  %1091 = icmp ne i32 %1090, 0
  br i1 %1091, label %1095, label %1092

; <label>:1092:                                   ; preds = %1084
  %1093 = load i32, i32* %16, align 4
  %1094 = add nsw i32 %1093, 7
  store i32 %1094, i32* %16, align 4
  br label %1095

; <label>:1095:                                   ; preds = %1092, %1084
  br label %1557

; <label>:1096:                                   ; preds = %265
  %1097 = load i32, i32* %28, align 4
  %1098 = add nsw i32 %1097, 1
  store i32 %1098, i32* %28, align 4
  %1099 = load i32, i32* %28, align 4
  %1100 = icmp eq i32 %1099, 1
  br i1 %1100, label %1101, label %1110

; <label>:1101:                                   ; preds = %1096
  %1102 = load i32, i32* %6, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1103
  %1105 = load i32, i32* %1104, align 4
  store i32 %1105, i32* %33, align 4
  %1106 = load i32, i32* %6, align 4
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1107
  %1109 = load i32, i32* %1108, align 4
  store i32 %1109, i32* %32, align 4
  br label %1110

; <label>:1110:                                   ; preds = %1101, %1096
  %1111 = load i32, i32* %12, align 4
  %1112 = icmp eq i32 %1111, 7
  br i1 %1112, label %1113, label %1125

; <label>:1113:                                   ; preds = %1110
  %1114 = load i32, i32* %16, align 4
  %1115 = add nsw i32 %1114, 25
  store i32 %1115, i32* %16, align 4
  %1116 = load i32, i32* %28, align 4
  %1117 = icmp eq i32 %1116, 2
  br i1 %1117, label %1118, label %1124

; <label>:1118:                                   ; preds = %1113
  %1119 = load i32, i32* %32, align 4
  %1120 = icmp eq i32 %1119, 7
  br i1 %1120, label %1121, label %1124

; <label>:1121:                                   ; preds = %1118
  %1122 = load i32, i32* %16, align 4
  %1123 = add nsw i32 %1122, 10
  store i32 %1123, i32* %16, align 4
  br label %1124

; <label>:1124:                                   ; preds = %1121, %1118, %1113
  br label %1125

; <label>:1125:                                   ; preds = %1124, %1110
  %1126 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1127 = load i32, i32* %8, align 4
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds [11 x i32], [11 x i32]* %1126, i64 0, i64 %1128
  %1130 = load i32, i32* %1129, align 4
  %1131 = icmp ne i32 %1130, 0
  br i1 %1131, label %1158, label %1132

; <label>:1132:                                   ; preds = %1125
  %1133 = load i32, i32* %16, align 4
  %1134 = add nsw i32 %1133, 5
  store i32 %1134, i32* %16, align 4
  %1135 = load i32, i32* %28, align 4
  %1136 = icmp eq i32 %1135, 2
  br i1 %1136, label %1137, label %1147

; <label>:1137:                                   ; preds = %1132
  %1138 = load i32, i32* %6, align 4
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1139
  %1141 = load i32, i32* %1140, align 4
  %1142 = load i32, i32* %33, align 4
  %1143 = icmp eq i32 %1141, %1142
  br i1 %1143, label %1144, label %1147

; <label>:1144:                                   ; preds = %1137
  %1145 = load i32, i32* %16, align 4
  %1146 = add nsw i32 %1145, 12
  store i32 %1146, i32* %16, align 4
  br label %1147

; <label>:1147:                                   ; preds = %1144, %1137, %1132
  %1148 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1149 = load i32, i32* %8, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds [11 x i32], [11 x i32]* %1148, i64 0, i64 %1150
  %1152 = load i32, i32* %1151, align 4
  %1153 = icmp ne i32 %1152, 0
  br i1 %1153, label %1157, label %1154

; <label>:1154:                                   ; preds = %1147
  %1155 = load i32, i32* %16, align 4
  %1156 = add nsw i32 %1155, 3
  store i32 %1156, i32* %16, align 4
  br label %1157

; <label>:1157:                                   ; preds = %1154, %1147
  br label %1158

; <label>:1158:                                   ; preds = %1157, %1125
  br label %1557

; <label>:1159:                                   ; preds = %265
  %1160 = load i32, i32* %29, align 4
  %1161 = add nsw i32 %1160, 1
  store i32 %1161, i32* %29, align 4
  %1162 = load i32, i32* %29, align 4
  %1163 = icmp eq i32 %1162, 1
  br i1 %1163, label %1164, label %1173

; <label>:1164:                                   ; preds = %1159
  %1165 = load i32, i32* %6, align 4
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1166
  %1168 = load i32, i32* %1167, align 4
  store i32 %1168, i32* %31, align 4
  %1169 = load i32, i32* %6, align 4
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %1170
  %1172 = load i32, i32* %1171, align 4
  store i32 %1172, i32* %30, align 4
  br label %1173

; <label>:1173:                                   ; preds = %1164, %1159
  %1174 = load i32, i32* %12, align 4
  %1175 = icmp eq i32 %1174, 2
  br i1 %1175, label %1176, label %1188

; <label>:1176:                                   ; preds = %1173
  %1177 = load i32, i32* %16, align 4
  %1178 = sub nsw i32 %1177, 25
  store i32 %1178, i32* %16, align 4
  %1179 = load i32, i32* %28, align 4
  %1180 = icmp eq i32 %1179, 2
  br i1 %1180, label %1181, label %1187

; <label>:1181:                                   ; preds = %1176
  %1182 = load i32, i32* %30, align 4
  %1183 = icmp eq i32 %1182, 2
  br i1 %1183, label %1184, label %1187

; <label>:1184:                                   ; preds = %1181
  %1185 = load i32, i32* %16, align 4
  %1186 = sub nsw i32 %1185, 10
  store i32 %1186, i32* %16, align 4
  br label %1187

; <label>:1187:                                   ; preds = %1184, %1181, %1176
  br label %1188

; <label>:1188:                                   ; preds = %1187, %1173
  %1189 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1190 = load i32, i32* %8, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds [11 x i32], [11 x i32]* %1189, i64 0, i64 %1191
  %1193 = load i32, i32* %1192, align 4
  %1194 = icmp ne i32 %1193, 0
  br i1 %1194, label %1221, label %1195

; <label>:1195:                                   ; preds = %1188
  %1196 = load i32, i32* %16, align 4
  %1197 = sub nsw i32 %1196, 5
  store i32 %1197, i32* %16, align 4
  %1198 = load i32, i32* %29, align 4
  %1199 = icmp eq i32 %1198, 2
  br i1 %1199, label %1200, label %1210

; <label>:1200:                                   ; preds = %1195
  %1201 = load i32, i32* %6, align 4
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1202
  %1204 = load i32, i32* %1203, align 4
  %1205 = load i32, i32* %31, align 4
  %1206 = icmp eq i32 %1204, %1205
  br i1 %1206, label %1207, label %1210

; <label>:1207:                                   ; preds = %1200
  %1208 = load i32, i32* %16, align 4
  %1209 = sub nsw i32 %1208, 12
  store i32 %1209, i32* %16, align 4
  br label %1210

; <label>:1210:                                   ; preds = %1207, %1200, %1195
  %1211 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1212 = load i32, i32* %8, align 4
  %1213 = sext i32 %1212 to i64
  %1214 = getelementptr inbounds [11 x i32], [11 x i32]* %1211, i64 0, i64 %1213
  %1215 = load i32, i32* %1214, align 4
  %1216 = icmp ne i32 %1215, 0
  br i1 %1216, label %1220, label %1217

; <label>:1217:                                   ; preds = %1210
  %1218 = load i32, i32* %16, align 4
  %1219 = sub nsw i32 %1218, 3
  store i32 %1219, i32* %16, align 4
  br label %1220

; <label>:1220:                                   ; preds = %1217, %1210
  br label %1221

; <label>:1221:                                   ; preds = %1220, %1188
  br label %1557

; <label>:1222:                                   ; preds = %265
  %1223 = load i32, i32* %24, align 4
  %1224 = add nsw i32 %1223, 1
  store i32 %1224, i32* %24, align 4
  br label %1557

; <label>:1225:                                   ; preds = %265
  %1226 = load i32, i32* %25, align 4
  %1227 = add nsw i32 %1226, 1
  store i32 %1227, i32* %25, align 4
  br label %1557

; <label>:1228:                                   ; preds = %265
  %1229 = load i32, i32* %22, align 4
  %1230 = add nsw i32 %1229, 1
  store i32 %1230, i32* %22, align 4
  br label %1557

; <label>:1231:                                   ; preds = %265
  %1232 = load i32, i32* %23, align 4
  %1233 = add nsw i32 %1232, 1
  store i32 %1233, i32* %23, align 4
  br label %1557

; <label>:1234:                                   ; preds = %265
  %1235 = load i32, i32* %26, align 4
  %1236 = add nsw i32 %1235, 1
  store i32 %1236, i32* %26, align 4
  br label %1557

; <label>:1237:                                   ; preds = %265
  %1238 = load i32, i32* %27, align 4
  %1239 = add nsw i32 %1238, 1
  store i32 %1239, i32* %27, align 4
  br label %1557

; <label>:1240:                                   ; preds = %265
  %1241 = load i32, i32* @wmat, align 4
  %1242 = icmp sgt i32 %1241, 1300
  br i1 %1242, label %1243, label %1386

; <label>:1243:                                   ; preds = %1240
  %1244 = load i32, i32* %6, align 4
  %1245 = sext i32 %1244 to i64
  %1246 = getelementptr inbounds [144 x i32], [144 x i32]* @swhite_king, i64 0, i64 %1245
  %1247 = load i32, i32* %1246, align 4
  %1248 = load i32, i32* %16, align 4
  %1249 = add nsw i32 %1248, %1247
  store i32 %1249, i32* %16, align 4
  %1250 = load i32, i32* @white_castled, align 4
  %1251 = icmp eq i32 %1250, 2
  br i1 %1251, label %1252, label %1255

; <label>:1252:                                   ; preds = %1243
  %1253 = load i32, i32* %16, align 4
  %1254 = add nsw i32 %1253, 15
  store i32 %1254, i32* %16, align 4
  br label %1279

; <label>:1255:                                   ; preds = %1243
  %1256 = load i32, i32* @white_castled, align 4
  %1257 = icmp eq i32 %1256, 1
  br i1 %1257, label %1258, label %1261

; <label>:1258:                                   ; preds = %1255
  %1259 = load i32, i32* %16, align 4
  %1260 = add nsw i32 %1259, 25
  store i32 %1260, i32* %16, align 4
  br label %1278

; <label>:1261:                                   ; preds = %1255
  %1262 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 30), align 8
  %1263 = icmp ne i32 %1262, 0
  br i1 %1263, label %1264, label %1277

; <label>:1264:                                   ; preds = %1261
  %1265 = load i32, i32* %16, align 4
  %1266 = sub nsw i32 %1265, 10
  store i32 %1266, i32* %16, align 4
  %1267 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1268 = load i32, i32* %8, align 4
  %1269 = sext i32 %1268 to i64
  %1270 = getelementptr inbounds [11 x i32], [11 x i32]* %1267, i64 0, i64 %1269
  %1271 = load i32, i32* %1270, align 4
  %1272 = icmp ne i32 %1271, 0
  br i1 %1272, label %1276, label %1273

; <label>:1273:                                   ; preds = %1264
  %1274 = load i32, i32* %16, align 4
  %1275 = sub nsw i32 %1274, 15
  store i32 %1275, i32* %16, align 4
  br label %1276

; <label>:1276:                                   ; preds = %1273, %1264
  br label %1277

; <label>:1277:                                   ; preds = %1276, %1261
  br label %1278

; <label>:1278:                                   ; preds = %1277, %1258
  br label %1279

; <label>:1279:                                   ; preds = %1278, %1252
  %1280 = load i32, i32* @wking_loc, align 4
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1281
  %1283 = load i32, i32* %1282, align 4
  %1284 = icmp ne i32 %1283, 4
  br i1 %1284, label %1285, label %1382

; <label>:1285:                                   ; preds = %1279
  %1286 = load i32, i32* @wking_loc, align 4
  %1287 = sext i32 %1286 to i64
  %1288 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1287
  %1289 = load i32, i32* %1288, align 4
  %1290 = icmp ne i32 %1289, 5
  br i1 %1290, label %1291, label %1382

; <label>:1291:                                   ; preds = %1285
  %1292 = load i32, i32* %12, align 4
  %1293 = load i32, i32* %8, align 4
  %1294 = sext i32 %1293 to i64
  %1295 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1294
  %1296 = load i32, i32* %1295, align 4
  %1297 = icmp slt i32 %1292, %1296
  br i1 %1297, label %1298, label %1316

; <label>:1298:                                   ; preds = %1291
  %1299 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1300 = load i32, i32* %8, align 4
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds [11 x i32], [11 x i32]* %1299, i64 0, i64 %1301
  %1303 = load i32, i32* %1302, align 4
  %1304 = icmp ne i32 %1303, 0
  br i1 %1304, label %1305, label %1316

; <label>:1305:                                   ; preds = %1298
  %1306 = load i32, i32* %8, align 4
  %1307 = sext i32 %1306 to i64
  %1308 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1307
  %1309 = load i32, i32* %1308, align 4
  %1310 = load i32, i32* %12, align 4
  %1311 = sub nsw i32 %1309, %1310
  %1312 = sub nsw i32 %1311, 1
  %1313 = mul nsw i32 9, %1312
  %1314 = load i32, i32* %16, align 4
  %1315 = sub nsw i32 %1314, %1313
  store i32 %1315, i32* %16, align 4
  br label %1319

; <label>:1316:                                   ; preds = %1298, %1291
  %1317 = load i32, i32* %16, align 4
  %1318 = sub nsw i32 %1317, 22
  store i32 %1318, i32* %16, align 4
  br label %1319

; <label>:1319:                                   ; preds = %1316, %1305
  %1320 = load i32, i32* %12, align 4
  %1321 = load i32, i32* %8, align 4
  %1322 = add nsw i32 %1321, 1
  %1323 = sext i32 %1322 to i64
  %1324 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1323
  %1325 = load i32, i32* %1324, align 4
  %1326 = icmp slt i32 %1320, %1325
  br i1 %1326, label %1327, label %1347

; <label>:1327:                                   ; preds = %1319
  %1328 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1329 = load i32, i32* %8, align 4
  %1330 = add nsw i32 %1329, 1
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds [11 x i32], [11 x i32]* %1328, i64 0, i64 %1331
  %1333 = load i32, i32* %1332, align 4
  %1334 = icmp ne i32 %1333, 0
  br i1 %1334, label %1335, label %1347

; <label>:1335:                                   ; preds = %1327
  %1336 = load i32, i32* %8, align 4
  %1337 = add nsw i32 %1336, 1
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1338
  %1340 = load i32, i32* %1339, align 4
  %1341 = load i32, i32* %12, align 4
  %1342 = sub nsw i32 %1340, %1341
  %1343 = sub nsw i32 %1342, 1
  %1344 = mul nsw i32 8, %1343
  %1345 = load i32, i32* %16, align 4
  %1346 = sub nsw i32 %1345, %1344
  store i32 %1346, i32* %16, align 4
  br label %1350

; <label>:1347:                                   ; preds = %1327, %1319
  %1348 = load i32, i32* %16, align 4
  %1349 = sub nsw i32 %1348, 16
  store i32 %1349, i32* %16, align 4
  br label %1350

; <label>:1350:                                   ; preds = %1347, %1335
  %1351 = load i32, i32* %12, align 4
  %1352 = load i32, i32* %8, align 4
  %1353 = sub nsw i32 %1352, 1
  %1354 = sext i32 %1353 to i64
  %1355 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1354
  %1356 = load i32, i32* %1355, align 4
  %1357 = icmp slt i32 %1351, %1356
  br i1 %1357, label %1358, label %1378

; <label>:1358:                                   ; preds = %1350
  %1359 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1360 = load i32, i32* %8, align 4
  %1361 = sub nsw i32 %1360, 1
  %1362 = sext i32 %1361 to i64
  %1363 = getelementptr inbounds [11 x i32], [11 x i32]* %1359, i64 0, i64 %1362
  %1364 = load i32, i32* %1363, align 4
  %1365 = icmp ne i32 %1364, 0
  br i1 %1365, label %1366, label %1378

; <label>:1366:                                   ; preds = %1358
  %1367 = load i32, i32* %8, align 4
  %1368 = sub nsw i32 %1367, 1
  %1369 = sext i32 %1368 to i64
  %1370 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1369
  %1371 = load i32, i32* %1370, align 4
  %1372 = load i32, i32* %12, align 4
  %1373 = sub nsw i32 %1371, %1372
  %1374 = sub nsw i32 %1373, 1
  %1375 = mul nsw i32 8, %1374
  %1376 = load i32, i32* %16, align 4
  %1377 = sub nsw i32 %1376, %1375
  store i32 %1377, i32* %16, align 4
  br label %1381

; <label>:1378:                                   ; preds = %1358, %1350
  %1379 = load i32, i32* %16, align 4
  %1380 = sub nsw i32 %1379, 16
  store i32 %1380, i32* %16, align 4
  br label %1381

; <label>:1381:                                   ; preds = %1378, %1366
  br label %1385

; <label>:1382:                                   ; preds = %1285, %1279
  %1383 = load i32, i32* %16, align 4
  %1384 = sub nsw i32 %1383, 10
  store i32 %1384, i32* %16, align 4
  br label %1385

; <label>:1385:                                   ; preds = %1382, %1381
  br label %1393

; <label>:1386:                                   ; preds = %1240
  %1387 = load i32, i32* %6, align 4
  %1388 = sext i32 %1387 to i64
  %1389 = getelementptr inbounds [144 x i32], [144 x i32]* @send_king, i64 0, i64 %1388
  %1390 = load i32, i32* %1389, align 4
  %1391 = load i32, i32* %16, align 4
  %1392 = add nsw i32 %1391, %1390
  store i32 %1392, i32* %16, align 4
  br label %1393

; <label>:1393:                                   ; preds = %1386, %1385
  br label %1557

; <label>:1394:                                   ; preds = %265
  %1395 = load i32, i32* @bmat, align 4
  %1396 = icmp sgt i32 %1395, 1300
  br i1 %1396, label %1397, label %1549

; <label>:1397:                                   ; preds = %1394
  %1398 = load i32, i32* %6, align 4
  %1399 = sext i32 %1398 to i64
  %1400 = getelementptr inbounds [144 x i32], [144 x i32]* @sblack_king, i64 0, i64 %1399
  %1401 = load i32, i32* %1400, align 4
  %1402 = load i32, i32* %16, align 4
  %1403 = sub nsw i32 %1402, %1401
  store i32 %1403, i32* %16, align 4
  %1404 = load i32, i32* @black_castled, align 4
  %1405 = icmp eq i32 %1404, 4
  br i1 %1405, label %1406, label %1409

; <label>:1406:                                   ; preds = %1397
  %1407 = load i32, i32* %16, align 4
  %1408 = sub nsw i32 %1407, 15
  store i32 %1408, i32* %16, align 4
  br label %1433

; <label>:1409:                                   ; preds = %1397
  %1410 = load i32, i32* @black_castled, align 4
  %1411 = icmp eq i32 %1410, 3
  br i1 %1411, label %1412, label %1415

; <label>:1412:                                   ; preds = %1409
  %1413 = load i32, i32* %16, align 4
  %1414 = sub nsw i32 %1413, 25
  store i32 %1414, i32* %16, align 4
  br label %1432

; <label>:1415:                                   ; preds = %1409
  %1416 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 114), align 8
  %1417 = icmp ne i32 %1416, 0
  br i1 %1417, label %1418, label %1431

; <label>:1418:                                   ; preds = %1415
  %1419 = load i32, i32* %16, align 4
  %1420 = add nsw i32 %1419, 10
  store i32 %1420, i32* %16, align 4
  %1421 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1422 = load i32, i32* %8, align 4
  %1423 = sext i32 %1422 to i64
  %1424 = getelementptr inbounds [11 x i32], [11 x i32]* %1421, i64 0, i64 %1423
  %1425 = load i32, i32* %1424, align 4
  %1426 = icmp ne i32 %1425, 0
  br i1 %1426, label %1430, label %1427

; <label>:1427:                                   ; preds = %1418
  %1428 = load i32, i32* %16, align 4
  %1429 = add nsw i32 %1428, 15
  store i32 %1429, i32* %16, align 4
  br label %1430

; <label>:1430:                                   ; preds = %1427, %1418
  br label %1431

; <label>:1431:                                   ; preds = %1430, %1415
  br label %1432

; <label>:1432:                                   ; preds = %1431, %1412
  br label %1433

; <label>:1433:                                   ; preds = %1432, %1406
  %1434 = load i32, i32* @bking_loc, align 4
  %1435 = sext i32 %1434 to i64
  %1436 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1435
  %1437 = load i32, i32* %1436, align 4
  %1438 = icmp ne i32 %1437, 4
  br i1 %1438, label %1439, label %1545

; <label>:1439:                                   ; preds = %1433
  %1440 = load i32, i32* @bking_loc, align 4
  %1441 = sext i32 %1440 to i64
  %1442 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1441
  %1443 = load i32, i32* %1442, align 4
  %1444 = icmp ne i32 %1443, 5
  br i1 %1444, label %1445, label %1545

; <label>:1445:                                   ; preds = %1439
  %1446 = load i32, i32* %12, align 4
  %1447 = load i32, i32* %8, align 4
  %1448 = sext i32 %1447 to i64
  %1449 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1448
  %1450 = load i32, i32* %1449, align 4
  %1451 = icmp sgt i32 %1446, %1450
  br i1 %1451, label %1452, label %1473

; <label>:1452:                                   ; preds = %1445
  %1453 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1454 = load i32, i32* %8, align 4
  %1455 = sext i32 %1454 to i64
  %1456 = getelementptr inbounds [11 x i32], [11 x i32]* %1453, i64 0, i64 %1455
  %1457 = load i32, i32* %1456, align 4
  %1458 = icmp ne i32 %1457, 0
  br i1 %1458, label %1459, label %1473

; <label>:1459:                                   ; preds = %1452
  %1460 = load i32, i32* %12, align 4
  %1461 = load i32, i32* %8, align 4
  %1462 = sext i32 %1461 to i64
  %1463 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1462
  %1464 = load i32, i32* %1463, align 4
  %1465 = sub nsw i32 %1460, %1464
  %1466 = sub nsw i32 %1465, 1
  %1467 = sext i32 %1466 to i64
  %1468 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i64 0, i64 %1467
  %1469 = load i32, i32* %1468, align 4
  %1470 = mul nsw i32 9, %1469
  %1471 = load i32, i32* %16, align 4
  %1472 = add nsw i32 %1471, %1470
  store i32 %1472, i32* %16, align 4
  br label %1476

; <label>:1473:                                   ; preds = %1452, %1445
  %1474 = load i32, i32* %16, align 4
  %1475 = add nsw i32 %1474, 22
  store i32 %1475, i32* %16, align 4
  br label %1476

; <label>:1476:                                   ; preds = %1473, %1459
  %1477 = load i32, i32* %12, align 4
  %1478 = load i32, i32* %8, align 4
  %1479 = add nsw i32 %1478, 1
  %1480 = sext i32 %1479 to i64
  %1481 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1480
  %1482 = load i32, i32* %1481, align 4
  %1483 = icmp sgt i32 %1477, %1482
  br i1 %1483, label %1484, label %1507

; <label>:1484:                                   ; preds = %1476
  %1485 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1486 = load i32, i32* %8, align 4
  %1487 = add nsw i32 %1486, 1
  %1488 = sext i32 %1487 to i64
  %1489 = getelementptr inbounds [11 x i32], [11 x i32]* %1485, i64 0, i64 %1488
  %1490 = load i32, i32* %1489, align 4
  %1491 = icmp ne i32 %1490, 0
  br i1 %1491, label %1492, label %1507

; <label>:1492:                                   ; preds = %1484
  %1493 = load i32, i32* %12, align 4
  %1494 = load i32, i32* %8, align 4
  %1495 = add nsw i32 %1494, 1
  %1496 = sext i32 %1495 to i64
  %1497 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1496
  %1498 = load i32, i32* %1497, align 4
  %1499 = sub nsw i32 %1493, %1498
  %1500 = sub nsw i32 %1499, 1
  %1501 = sext i32 %1500 to i64
  %1502 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i64 0, i64 %1501
  %1503 = load i32, i32* %1502, align 4
  %1504 = mul nsw i32 8, %1503
  %1505 = load i32, i32* %16, align 4
  %1506 = add nsw i32 %1505, %1504
  store i32 %1506, i32* %16, align 4
  br label %1510

; <label>:1507:                                   ; preds = %1484, %1476
  %1508 = load i32, i32* %16, align 4
  %1509 = add nsw i32 %1508, 16
  store i32 %1509, i32* %16, align 4
  br label %1510

; <label>:1510:                                   ; preds = %1507, %1492
  %1511 = load i32, i32* %12, align 4
  %1512 = load i32, i32* %8, align 4
  %1513 = sub nsw i32 %1512, 1
  %1514 = sext i32 %1513 to i64
  %1515 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1514
  %1516 = load i32, i32* %1515, align 4
  %1517 = icmp sgt i32 %1511, %1516
  br i1 %1517, label %1518, label %1541

; <label>:1518:                                   ; preds = %1510
  %1519 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1520 = load i32, i32* %8, align 4
  %1521 = sub nsw i32 %1520, 1
  %1522 = sext i32 %1521 to i64
  %1523 = getelementptr inbounds [11 x i32], [11 x i32]* %1519, i64 0, i64 %1522
  %1524 = load i32, i32* %1523, align 4
  %1525 = icmp ne i32 %1524, 0
  br i1 %1525, label %1526, label %1541

; <label>:1526:                                   ; preds = %1518
  %1527 = load i32, i32* %12, align 4
  %1528 = load i32, i32* %8, align 4
  %1529 = sub nsw i32 %1528, 1
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1530
  %1532 = load i32, i32* %1531, align 4
  %1533 = sub nsw i32 %1527, %1532
  %1534 = sub nsw i32 %1533, 1
  %1535 = sext i32 %1534 to i64
  %1536 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i64 0, i64 %1535
  %1537 = load i32, i32* %1536, align 4
  %1538 = mul nsw i32 8, %1537
  %1539 = load i32, i32* %16, align 4
  %1540 = add nsw i32 %1539, %1538
  store i32 %1540, i32* %16, align 4
  br label %1544

; <label>:1541:                                   ; preds = %1518, %1510
  %1542 = load i32, i32* %16, align 4
  %1543 = add nsw i32 %1542, 16
  store i32 %1543, i32* %16, align 4
  br label %1544

; <label>:1544:                                   ; preds = %1541, %1526
  br label %1548

; <label>:1545:                                   ; preds = %1439, %1433
  %1546 = load i32, i32* %16, align 4
  %1547 = add nsw i32 %1546, 10
  store i32 %1547, i32* %16, align 4
  br label %1548

; <label>:1548:                                   ; preds = %1545, %1544
  br label %1556

; <label>:1549:                                   ; preds = %1394
  %1550 = load i32, i32* %6, align 4
  %1551 = sext i32 %1550 to i64
  %1552 = getelementptr inbounds [144 x i32], [144 x i32]* @send_king, i64 0, i64 %1551
  %1553 = load i32, i32* %1552, align 4
  %1554 = load i32, i32* %16, align 4
  %1555 = sub nsw i32 %1554, %1553
  store i32 %1555, i32* %16, align 4
  br label %1556

; <label>:1556:                                   ; preds = %1549, %1548
  br label %1557

; <label>:1557:                                   ; preds = %265, %1556, %1393, %1237, %1234, %1231, %1228, %1225, %1222, %1221, %1158, %1095, %695
  br label %1558

; <label>:1558:                                   ; preds = %1557, %261
  %1559 = load i32, i32* %15, align 4
  %1560 = add nsw i32 %1559, 1
  store i32 %1560, i32* %15, align 4
  br label %250

; <label>:1561:                                   ; preds = %250
  %1562 = load i32, i32* @wmat, align 4
  %1563 = icmp sgt i32 %1562, 2200
  br i1 %1563, label %1567, label %1564

; <label>:1564:                                   ; preds = %1561
  %1565 = load i32, i32* @bmat, align 4
  %1566 = icmp sgt i32 %1565, 2200
  br i1 %1566, label %1567, label %1604

; <label>:1567:                                   ; preds = %1564, %1561
  %1568 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 41), align 4
  %1569 = icmp ne i32 %1568, 0
  br i1 %1569, label %1576, label %1570

; <label>:1570:                                   ; preds = %1567
  %1571 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 53), align 4
  %1572 = icmp ne i32 %1571, 13
  br i1 %1572, label %1573, label %1576

; <label>:1573:                                   ; preds = %1570
  %1574 = load i32, i32* %16, align 4
  %1575 = sub nsw i32 %1574, 5
  store i32 %1575, i32* %16, align 4
  br label %1576

; <label>:1576:                                   ; preds = %1573, %1570, %1567
  %1577 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 42), align 8
  %1578 = icmp ne i32 %1577, 0
  br i1 %1578, label %1585, label %1579

; <label>:1579:                                   ; preds = %1576
  %1580 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 54), align 8
  %1581 = icmp ne i32 %1580, 13
  br i1 %1581, label %1582, label %1585

; <label>:1582:                                   ; preds = %1579
  %1583 = load i32, i32* %16, align 4
  %1584 = sub nsw i32 %1583, 5
  store i32 %1584, i32* %16, align 4
  br label %1585

; <label>:1585:                                   ; preds = %1582, %1579, %1576
  %1586 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 101), align 4
  %1587 = icmp ne i32 %1586, 0
  br i1 %1587, label %1594, label %1588

; <label>:1588:                                   ; preds = %1585
  %1589 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 89), align 4
  %1590 = icmp ne i32 %1589, 13
  br i1 %1590, label %1591, label %1594

; <label>:1591:                                   ; preds = %1588
  %1592 = load i32, i32* %16, align 4
  %1593 = add nsw i32 %1592, 5
  store i32 %1593, i32* %16, align 4
  br label %1594

; <label>:1594:                                   ; preds = %1591, %1588, %1585
  %1595 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 102), align 8
  %1596 = icmp ne i32 %1595, 0
  br i1 %1596, label %1603, label %1597

; <label>:1597:                                   ; preds = %1594
  %1598 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 90), align 8
  %1599 = icmp ne i32 %1598, 13
  br i1 %1599, label %1600, label %1603

; <label>:1600:                                   ; preds = %1597
  %1601 = load i32, i32* %16, align 4
  %1602 = add nsw i32 %1601, 5
  store i32 %1602, i32* %16, align 4
  br label %1603

; <label>:1603:                                   ; preds = %1600, %1597, %1594
  br label %1604

; <label>:1604:                                   ; preds = %1603, %1564
  %1605 = load i32, i32* @wmat, align 4
  %1606 = icmp sgt i32 %1605, 1300
  br i1 %1606, label %1610, label %1607

; <label>:1607:                                   ; preds = %1604
  %1608 = load i32, i32* @bmat, align 4
  %1609 = icmp sgt i32 %1608, 1300
  br i1 %1609, label %1610, label %1753

; <label>:1610:                                   ; preds = %1607, %1604
  %1611 = load i32, i32* @wking_loc, align 4
  %1612 = sext i32 %1611 to i64
  %1613 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1612
  %1614 = load i32, i32* %1613, align 4
  %1615 = add nsw i32 %1614, 1
  store i32 %1615, i32* %13, align 4
  %1616 = load i32, i32* @bking_loc, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %1617
  %1619 = load i32, i32* %1618, align 4
  %1620 = add nsw i32 %1619, 1
  store i32 %1620, i32* %14, align 4
  %1621 = load i32, i32* %13, align 4
  %1622 = load i32, i32* %14, align 4
  %1623 = sub nsw i32 %1621, %1622
  %1624 = call i32 @abs(i32 %1623) #4
  %1625 = icmp sgt i32 %1624, 2
  br i1 %1625, label %1626, label %1752

; <label>:1626:                                   ; preds = %1610
  %1627 = load i32, i32* %13, align 4
  %1628 = sext i32 %1627 to i64
  %1629 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1628
  %1630 = load i32, i32* %1629, align 4
  %1631 = sext i32 %1630 to i64
  %1632 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i64 0, i64 %1631
  %1633 = load i32, i32* %1632, align 4
  %1634 = sub nsw i32 %1633, 2
  %1635 = mul nsw i32 3, %1634
  %1636 = load i32, i32* %37, align 4
  %1637 = add nsw i32 %1636, %1635
  store i32 %1637, i32* %37, align 4
  %1638 = load i32, i32* %13, align 4
  %1639 = add nsw i32 %1638, 1
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1640
  %1642 = load i32, i32* %1641, align 4
  %1643 = sext i32 %1642 to i64
  %1644 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i64 0, i64 %1643
  %1645 = load i32, i32* %1644, align 4
  %1646 = sub nsw i32 %1645, 2
  %1647 = mul nsw i32 3, %1646
  %1648 = load i32, i32* %37, align 4
  %1649 = add nsw i32 %1648, %1647
  store i32 %1649, i32* %37, align 4
  %1650 = load i32, i32* %13, align 4
  %1651 = sub nsw i32 %1650, 1
  %1652 = sext i32 %1651 to i64
  %1653 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %1652
  %1654 = load i32, i32* %1653, align 4
  %1655 = sext i32 %1654 to i64
  %1656 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i64 0, i64 %1655
  %1657 = load i32, i32* %1656, align 4
  %1658 = sub nsw i32 %1657, 2
  %1659 = mul nsw i32 3, %1658
  %1660 = load i32, i32* %37, align 4
  %1661 = add nsw i32 %1660, %1659
  store i32 %1661, i32* %37, align 4
  %1662 = load i32, i32* %14, align 4
  %1663 = sext i32 %1662 to i64
  %1664 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1663
  %1665 = load i32, i32* %1664, align 4
  %1666 = sub nsw i32 %1665, 2
  %1667 = mul nsw i32 3, %1666
  %1668 = load i32, i32* %38, align 4
  %1669 = add nsw i32 %1668, %1667
  store i32 %1669, i32* %38, align 4
  %1670 = load i32, i32* %14, align 4
  %1671 = add nsw i32 %1670, 1
  %1672 = sext i32 %1671 to i64
  %1673 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1672
  %1674 = load i32, i32* %1673, align 4
  %1675 = sub nsw i32 %1674, 2
  %1676 = mul nsw i32 3, %1675
  %1677 = load i32, i32* %38, align 4
  %1678 = add nsw i32 %1677, %1676
  store i32 %1678, i32* %38, align 4
  %1679 = load i32, i32* %14, align 4
  %1680 = sub nsw i32 %1679, 1
  %1681 = sext i32 %1680 to i64
  %1682 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %1681
  %1683 = load i32, i32* %1682, align 4
  %1684 = sub nsw i32 %1683, 2
  %1685 = mul nsw i32 3, %1684
  %1686 = load i32, i32* %38, align 4
  %1687 = add nsw i32 %1686, %1685
  store i32 %1687, i32* %38, align 4
  %1688 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1689 = load i32, i32* %13, align 4
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds [11 x i32], [11 x i32]* %1688, i64 0, i64 %1690
  %1692 = load i32, i32* %1691, align 4
  %1693 = icmp ne i32 %1692, 0
  br i1 %1693, label %1697, label %1694

; <label>:1694:                                   ; preds = %1626
  %1695 = load i32, i32* %37, align 4
  %1696 = add nsw i32 %1695, 8
  store i32 %1696, i32* %37, align 4
  br label %1697

; <label>:1697:                                   ; preds = %1694, %1626
  %1698 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1699 = load i32, i32* %13, align 4
  %1700 = add nsw i32 %1699, 1
  %1701 = sext i32 %1700 to i64
  %1702 = getelementptr inbounds [11 x i32], [11 x i32]* %1698, i64 0, i64 %1701
  %1703 = load i32, i32* %1702, align 4
  %1704 = icmp ne i32 %1703, 0
  br i1 %1704, label %1708, label %1705

; <label>:1705:                                   ; preds = %1697
  %1706 = load i32, i32* %37, align 4
  %1707 = add nsw i32 %1706, 6
  store i32 %1707, i32* %37, align 4
  br label %1708

; <label>:1708:                                   ; preds = %1705, %1697
  %1709 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 0
  %1710 = load i32, i32* %13, align 4
  %1711 = sub nsw i32 %1710, 1
  %1712 = sext i32 %1711 to i64
  %1713 = getelementptr inbounds [11 x i32], [11 x i32]* %1709, i64 0, i64 %1712
  %1714 = load i32, i32* %1713, align 4
  %1715 = icmp ne i32 %1714, 0
  br i1 %1715, label %1719, label %1716

; <label>:1716:                                   ; preds = %1708
  %1717 = load i32, i32* %37, align 4
  %1718 = add nsw i32 %1717, 6
  store i32 %1718, i32* %37, align 4
  br label %1719

; <label>:1719:                                   ; preds = %1716, %1708
  %1720 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1721 = load i32, i32* %14, align 4
  %1722 = sext i32 %1721 to i64
  %1723 = getelementptr inbounds [11 x i32], [11 x i32]* %1720, i64 0, i64 %1722
  %1724 = load i32, i32* %1723, align 4
  %1725 = icmp ne i32 %1724, 0
  br i1 %1725, label %1729, label %1726

; <label>:1726:                                   ; preds = %1719
  %1727 = load i32, i32* %38, align 4
  %1728 = add nsw i32 %1727, 8
  store i32 %1728, i32* %38, align 4
  br label %1729

; <label>:1729:                                   ; preds = %1726, %1719
  %1730 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1731 = load i32, i32* %14, align 4
  %1732 = add nsw i32 %1731, 1
  %1733 = sext i32 %1732 to i64
  %1734 = getelementptr inbounds [11 x i32], [11 x i32]* %1730, i64 0, i64 %1733
  %1735 = load i32, i32* %1734, align 4
  %1736 = icmp ne i32 %1735, 0
  br i1 %1736, label %1740, label %1737

; <label>:1737:                                   ; preds = %1729
  %1738 = load i32, i32* %38, align 4
  %1739 = add nsw i32 %1738, 6
  store i32 %1739, i32* %38, align 4
  br label %1740

; <label>:1740:                                   ; preds = %1737, %1729
  %1741 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %9, i64 0, i64 1
  %1742 = load i32, i32* %14, align 4
  %1743 = sub nsw i32 %1742, 1
  %1744 = sext i32 %1743 to i64
  %1745 = getelementptr inbounds [11 x i32], [11 x i32]* %1741, i64 0, i64 %1744
  %1746 = load i32, i32* %1745, align 4
  %1747 = icmp ne i32 %1746, 0
  br i1 %1747, label %1751, label %1748

; <label>:1748:                                   ; preds = %1740
  %1749 = load i32, i32* %38, align 4
  %1750 = add nsw i32 %1749, 6
  store i32 %1750, i32* %38, align 4
  br label %1751

; <label>:1751:                                   ; preds = %1748, %1740
  br label %1752

; <label>:1752:                                   ; preds = %1751, %1610
  br label %1753

; <label>:1753:                                   ; preds = %1752, %1607
  %1754 = load i32, i32* @bmat, align 4
  %1755 = icmp sgt i32 %1754, 1300
  br i1 %1755, label %1756, label %1763

; <label>:1756:                                   ; preds = %1753
  %1757 = load i32, i32* %27, align 4
  %1758 = icmp ne i32 %1757, 0
  br i1 %1758, label %1759, label %1763

; <label>:1759:                                   ; preds = %1756
  %1760 = load i32, i32* %37, align 4
  %1761 = load i32, i32* %16, align 4
  %1762 = sub nsw i32 %1761, %1760
  store i32 %1762, i32* %16, align 4
  br label %1763

; <label>:1763:                                   ; preds = %1759, %1756, %1753
  %1764 = load i32, i32* @wmat, align 4
  %1765 = icmp sgt i32 %1764, 1300
  br i1 %1765, label %1766, label %1773

; <label>:1766:                                   ; preds = %1763
  %1767 = load i32, i32* %26, align 4
  %1768 = icmp ne i32 %1767, 0
  br i1 %1768, label %1769, label %1773

; <label>:1769:                                   ; preds = %1766
  %1770 = load i32, i32* %38, align 4
  %1771 = load i32, i32* %16, align 4
  %1772 = add nsw i32 %1771, %1770
  store i32 %1772, i32* %16, align 4
  br label %1773

; <label>:1773:                                   ; preds = %1769, %1766, %1763
  %1774 = load i32, i32* %28, align 4
  %1775 = icmp ne i32 %1774, 0
  br i1 %1775, label %1789, label %1776

; <label>:1776:                                   ; preds = %1773
  %1777 = load i32, i32* %26, align 4
  %1778 = icmp ne i32 %1777, 0
  br i1 %1778, label %1789, label %1779

; <label>:1779:                                   ; preds = %1776
  %1780 = load i32, i32* %24, align 4
  %1781 = icmp ne i32 %1780, 0
  br i1 %1781, label %1789, label %1782

; <label>:1782:                                   ; preds = %1779
  %1783 = load i32, i32* %22, align 4
  %1784 = icmp ne i32 %1783, 0
  br i1 %1784, label %1789, label %1785

; <label>:1785:                                   ; preds = %1782
  %1786 = load i32, i32* %35, align 4
  %1787 = load i32, i32* %16, align 4
  %1788 = add nsw i32 %1787, %1786
  store i32 %1788, i32* %16, align 4
  br label %1789

; <label>:1789:                                   ; preds = %1785, %1782, %1779, %1776, %1773
  %1790 = load i32, i32* %29, align 4
  %1791 = icmp ne i32 %1790, 0
  br i1 %1791, label %1805, label %1792

; <label>:1792:                                   ; preds = %1789
  %1793 = load i32, i32* %27, align 4
  %1794 = icmp ne i32 %1793, 0
  br i1 %1794, label %1805, label %1795

; <label>:1795:                                   ; preds = %1792
  %1796 = load i32, i32* %25, align 4
  %1797 = icmp ne i32 %1796, 0
  br i1 %1797, label %1805, label %1798

; <label>:1798:                                   ; preds = %1795
  %1799 = load i32, i32* %23, align 4
  %1800 = icmp ne i32 %1799, 0
  br i1 %1800, label %1805, label %1801

; <label>:1801:                                   ; preds = %1798
  %1802 = load i32, i32* %34, align 4
  %1803 = load i32, i32* %16, align 4
  %1804 = add nsw i32 %1803, %1802
  store i32 %1804, i32* %16, align 4
  br label %1805

; <label>:1805:                                   ; preds = %1801, %1798, %1795, %1792, %1789
  %1806 = load i32, i32* %20, align 4
  %1807 = icmp ne i32 %1806, 0
  br i1 %1807, label %1955, label %1808

; <label>:1808:                                   ; preds = %1805
  %1809 = load i32, i32* %21, align 4
  %1810 = icmp ne i32 %1809, 0
  br i1 %1810, label %1955, label %1811

; <label>:1811:                                   ; preds = %1808
  %1812 = load i32, i32* %28, align 4
  %1813 = icmp ne i32 %1812, 0
  br i1 %1813, label %1880, label %1814

; <label>:1814:                                   ; preds = %1811
  %1815 = load i32, i32* %29, align 4
  %1816 = icmp ne i32 %1815, 0
  br i1 %1816, label %1880, label %1817

; <label>:1817:                                   ; preds = %1814
  %1818 = load i32, i32* %26, align 4
  %1819 = icmp ne i32 %1818, 0
  br i1 %1819, label %1880, label %1820

; <label>:1820:                                   ; preds = %1817
  %1821 = load i32, i32* %27, align 4
  %1822 = icmp ne i32 %1821, 0
  br i1 %1822, label %1880, label %1823

; <label>:1823:                                   ; preds = %1820
  %1824 = load i32, i32* %25, align 4
  %1825 = icmp ne i32 %1824, 0
  br i1 %1825, label %1837, label %1826

; <label>:1826:                                   ; preds = %1823
  %1827 = load i32, i32* %24, align 4
  %1828 = icmp ne i32 %1827, 0
  br i1 %1828, label %1837, label %1829

; <label>:1829:                                   ; preds = %1826
  %1830 = load i32, i32* %22, align 4
  %1831 = icmp slt i32 %1830, 3
  br i1 %1831, label %1832, label %1836

; <label>:1832:                                   ; preds = %1829
  %1833 = load i32, i32* %23, align 4
  %1834 = icmp slt i32 %1833, 3
  br i1 %1834, label %1835, label %1836

; <label>:1835:                                   ; preds = %1832
  store i32 0, i32* %16, align 4
  br label %1836

; <label>:1836:                                   ; preds = %1835, %1832, %1829
  br label %1879

; <label>:1837:                                   ; preds = %1826, %1823
  %1838 = load i32, i32* %22, align 4
  %1839 = icmp ne i32 %1838, 0
  br i1 %1839, label %1851, label %1840

; <label>:1840:                                   ; preds = %1837
  %1841 = load i32, i32* %23, align 4
  %1842 = icmp ne i32 %1841, 0
  br i1 %1842, label %1851, label %1843

; <label>:1843:                                   ; preds = %1840
  %1844 = load i32, i32* %24, align 4
  %1845 = load i32, i32* %25, align 4
  %1846 = sub nsw i32 %1844, %1845
  %1847 = call i32 @abs(i32 %1846) #4
  %1848 = icmp slt i32 %1847, 2
  br i1 %1848, label %1849, label %1850

; <label>:1849:                                   ; preds = %1843
  store i32 0, i32* %16, align 4
  br label %1850

; <label>:1850:                                   ; preds = %1849, %1843
  br label %1878

; <label>:1851:                                   ; preds = %1840, %1837
  %1852 = load i32, i32* %22, align 4
  %1853 = icmp slt i32 %1852, 3
  br i1 %1853, label %1854, label %1857

; <label>:1854:                                   ; preds = %1851
  %1855 = load i32, i32* %24, align 4
  %1856 = icmp ne i32 %1855, 0
  br i1 %1856, label %1857, label %1863

; <label>:1857:                                   ; preds = %1854, %1851
  %1858 = load i32, i32* %24, align 4
  %1859 = icmp eq i32 %1858, 1
  br i1 %1859, label %1860, label %1877

; <label>:1860:                                   ; preds = %1857
  %1861 = load i32, i32* %22, align 4
  %1862 = icmp ne i32 %1861, 0
  br i1 %1862, label %1877, label %1863

; <label>:1863:                                   ; preds = %1860, %1854
  %1864 = load i32, i32* %23, align 4
  %1865 = icmp slt i32 %1864, 3
  br i1 %1865, label %1866, label %1869

; <label>:1866:                                   ; preds = %1863
  %1867 = load i32, i32* %25, align 4
  %1868 = icmp ne i32 %1867, 0
  br i1 %1868, label %1869, label %1875

; <label>:1869:                                   ; preds = %1866, %1863
  %1870 = load i32, i32* %25, align 4
  %1871 = icmp eq i32 %1870, 1
  br i1 %1871, label %1872, label %1876

; <label>:1872:                                   ; preds = %1869
  %1873 = load i32, i32* %23, align 4
  %1874 = icmp ne i32 %1873, 0
  br i1 %1874, label %1876, label %1875

; <label>:1875:                                   ; preds = %1872, %1866
  store i32 0, i32* %16, align 4
  br label %1876

; <label>:1876:                                   ; preds = %1875, %1872, %1869
  br label %1877

; <label>:1877:                                   ; preds = %1876, %1860, %1857
  br label %1878

; <label>:1878:                                   ; preds = %1877, %1850
  br label %1879

; <label>:1879:                                   ; preds = %1878, %1836
  br label %1954

; <label>:1880:                                   ; preds = %1820, %1817, %1814, %1811
  %1881 = load i32, i32* %26, align 4
  %1882 = icmp ne i32 %1881, 0
  br i1 %1882, label %1953, label %1883

; <label>:1883:                                   ; preds = %1880
  %1884 = load i32, i32* %27, align 4
  %1885 = icmp ne i32 %1884, 0
  br i1 %1885, label %1953, label %1886

; <label>:1886:                                   ; preds = %1883
  %1887 = load i32, i32* %28, align 4
  %1888 = icmp eq i32 %1887, 1
  br i1 %1888, label %1889, label %1904

; <label>:1889:                                   ; preds = %1886
  %1890 = load i32, i32* %29, align 4
  %1891 = icmp eq i32 %1890, 1
  br i1 %1891, label %1892, label %1904

; <label>:1892:                                   ; preds = %1889
  %1893 = load i32, i32* %22, align 4
  %1894 = load i32, i32* %24, align 4
  %1895 = add nsw i32 %1893, %1894
  %1896 = icmp slt i32 %1895, 2
  br i1 %1896, label %1897, label %1903

; <label>:1897:                                   ; preds = %1892
  %1898 = load i32, i32* %23, align 4
  %1899 = load i32, i32* %25, align 4
  %1900 = add nsw i32 %1898, %1899
  %1901 = icmp slt i32 %1900, 2
  br i1 %1901, label %1902, label %1903

; <label>:1902:                                   ; preds = %1897
  store i32 0, i32* %16, align 4
  br label %1903

; <label>:1903:                                   ; preds = %1902, %1897, %1892
  br label %1952

; <label>:1904:                                   ; preds = %1889, %1886
  %1905 = load i32, i32* %28, align 4
  %1906 = icmp eq i32 %1905, 1
  br i1 %1906, label %1907, label %1927

; <label>:1907:                                   ; preds = %1904
  %1908 = load i32, i32* %29, align 4
  %1909 = icmp ne i32 %1908, 0
  br i1 %1909, label %1927, label %1910

; <label>:1910:                                   ; preds = %1907
  %1911 = load i32, i32* %22, align 4
  %1912 = load i32, i32* %24, align 4
  %1913 = add nsw i32 %1911, %1912
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %1915, label %1926

; <label>:1915:                                   ; preds = %1910
  %1916 = load i32, i32* %23, align 4
  %1917 = load i32, i32* %25, align 4
  %1918 = add nsw i32 %1916, %1917
  %1919 = icmp eq i32 %1918, 1
  br i1 %1919, label %1925, label %1920

; <label>:1920:                                   ; preds = %1915
  %1921 = load i32, i32* %23, align 4
  %1922 = load i32, i32* %25, align 4
  %1923 = add nsw i32 %1921, %1922
  %1924 = icmp eq i32 %1923, 2
  br i1 %1924, label %1925, label %1926

; <label>:1925:                                   ; preds = %1920, %1915
  store i32 0, i32* %16, align 4
  br label %1926

; <label>:1926:                                   ; preds = %1925, %1920, %1910
  br label %1951

; <label>:1927:                                   ; preds = %1907, %1904
  %1928 = load i32, i32* %29, align 4
  %1929 = icmp eq i32 %1928, 1
  br i1 %1929, label %1930, label %1950

; <label>:1930:                                   ; preds = %1927
  %1931 = load i32, i32* %28, align 4
  %1932 = icmp ne i32 %1931, 0
  br i1 %1932, label %1950, label %1933

; <label>:1933:                                   ; preds = %1930
  %1934 = load i32, i32* %23, align 4
  %1935 = load i32, i32* %25, align 4
  %1936 = add nsw i32 %1934, %1935
  %1937 = icmp eq i32 %1936, 0
  br i1 %1937, label %1938, label %1949

; <label>:1938:                                   ; preds = %1933
  %1939 = load i32, i32* %22, align 4
  %1940 = load i32, i32* %24, align 4
  %1941 = add nsw i32 %1939, %1940
  %1942 = icmp eq i32 %1941, 1
  br i1 %1942, label %1948, label %1943

; <label>:1943:                                   ; preds = %1938
  %1944 = load i32, i32* %22, align 4
  %1945 = load i32, i32* %24, align 4
  %1946 = add nsw i32 %1944, %1945
  %1947 = icmp eq i32 %1946, 2
  br i1 %1947, label %1948, label %1949

; <label>:1948:                                   ; preds = %1943, %1938
  store i32 0, i32* %16, align 4
  br label %1949

; <label>:1949:                                   ; preds = %1948, %1943, %1933
  br label %1950

; <label>:1950:                                   ; preds = %1949, %1930, %1927
  br label %1951

; <label>:1951:                                   ; preds = %1950, %1926
  br label %1952

; <label>:1952:                                   ; preds = %1951, %1903
  br label %1953

; <label>:1953:                                   ; preds = %1952, %1883, %1880
  br label %1954

; <label>:1954:                                   ; preds = %1953, %1879
  br label %2091

; <label>:1955:                                   ; preds = %1808, %1805
  %1956 = load i32, i32* %22, align 4
  %1957 = load i32, i32* %24, align 4
  %1958 = add nsw i32 %1956, %1957
  %1959 = load i32, i32* %23, align 4
  %1960 = load i32, i32* %25, align 4
  %1961 = add nsw i32 %1959, %1960
  %1962 = icmp ne i32 %1958, %1961
  br i1 %1962, label %1963, label %2061

; <label>:1963:                                   ; preds = %1955
  %1964 = load i32, i32* %26, align 4
  %1965 = load i32, i32* %28, align 4
  %1966 = add nsw i32 %1964, %1965
  %1967 = load i32, i32* %27, align 4
  %1968 = load i32, i32* %29, align 4
  %1969 = add nsw i32 %1967, %1968
  %1970 = icmp eq i32 %1966, %1969
  br i1 %1970, label %1971, label %1986

; <label>:1971:                                   ; preds = %1963
  %1972 = load i32, i32* %22, align 4
  %1973 = load i32, i32* %24, align 4
  %1974 = add nsw i32 %1972, %1973
  %1975 = load i32, i32* %23, align 4
  %1976 = load i32, i32* %25, align 4
  %1977 = add nsw i32 %1975, %1976
  %1978 = icmp sgt i32 %1974, %1977
  br i1 %1978, label %1979, label %1982

; <label>:1979:                                   ; preds = %1971
  %1980 = load i32, i32* %16, align 4
  %1981 = add nsw i32 %1980, 120
  store i32 %1981, i32* %16, align 4
  br label %1985

; <label>:1982:                                   ; preds = %1971
  %1983 = load i32, i32* %16, align 4
  %1984 = sub nsw i32 %1983, 120
  store i32 %1984, i32* %16, align 4
  br label %1985

; <label>:1985:                                   ; preds = %1982, %1979
  br label %2060

; <label>:1986:                                   ; preds = %1963
  %1987 = load i32, i32* %28, align 4
  %1988 = load i32, i32* %26, align 4
  %1989 = add nsw i32 %1987, %1988
  %1990 = load i32, i32* %29, align 4
  %1991 = load i32, i32* %27, align 4
  %1992 = add nsw i32 %1990, %1991
  %1993 = sub nsw i32 %1989, %1992
  %1994 = call i32 @abs(i32 %1993) #4
  %1995 = icmp eq i32 %1994, 1
  br i1 %1995, label %1996, label %2022

; <label>:1996:                                   ; preds = %1986
  %1997 = load i32, i32* %24, align 4
  %1998 = load i32, i32* %22, align 4
  %1999 = add nsw i32 %1997, %1998
  %2000 = load i32, i32* %25, align 4
  %2001 = load i32, i32* %23, align 4
  %2002 = add nsw i32 %2000, %2001
  %2003 = add nsw i32 %2002, 1
  %2004 = icmp sgt i32 %1999, %2003
  br i1 %2004, label %2005, label %2008

; <label>:2005:                                   ; preds = %1996
  %2006 = load i32, i32* %16, align 4
  %2007 = add nsw i32 %2006, 120
  store i32 %2007, i32* %16, align 4
  br label %2021

; <label>:2008:                                   ; preds = %1996
  %2009 = load i32, i32* %25, align 4
  %2010 = load i32, i32* %23, align 4
  %2011 = add nsw i32 %2009, %2010
  %2012 = load i32, i32* %24, align 4
  %2013 = load i32, i32* %22, align 4
  %2014 = add nsw i32 %2012, %2013
  %2015 = add nsw i32 %2014, 1
  %2016 = icmp sgt i32 %2011, %2015
  br i1 %2016, label %2017, label %2020

; <label>:2017:                                   ; preds = %2008
  %2018 = load i32, i32* %16, align 4
  %2019 = sub nsw i32 %2018, 120
  store i32 %2019, i32* %16, align 4
  br label %2020

; <label>:2020:                                   ; preds = %2017, %2008
  br label %2021

; <label>:2021:                                   ; preds = %2020, %2005
  br label %2059

; <label>:2022:                                   ; preds = %1986
  %2023 = load i32, i32* %28, align 4
  %2024 = load i32, i32* %26, align 4
  %2025 = add nsw i32 %2023, %2024
  %2026 = load i32, i32* %29, align 4
  %2027 = load i32, i32* %27, align 4
  %2028 = add nsw i32 %2026, %2027
  %2029 = sub nsw i32 %2025, %2028
  %2030 = call i32 @abs(i32 %2029) #4
  %2031 = icmp eq i32 %2030, 2
  br i1 %2031, label %2032, label %2058

; <label>:2032:                                   ; preds = %2022
  %2033 = load i32, i32* %24, align 4
  %2034 = load i32, i32* %22, align 4
  %2035 = add nsw i32 %2033, %2034
  %2036 = load i32, i32* %25, align 4
  %2037 = load i32, i32* %23, align 4
  %2038 = add nsw i32 %2036, %2037
  %2039 = add nsw i32 %2038, 2
  %2040 = icmp sgt i32 %2035, %2039
  br i1 %2040, label %2041, label %2044

; <label>:2041:                                   ; preds = %2032
  %2042 = load i32, i32* %16, align 4
  %2043 = add nsw i32 %2042, 120
  store i32 %2043, i32* %16, align 4
  br label %2057

; <label>:2044:                                   ; preds = %2032
  %2045 = load i32, i32* %25, align 4
  %2046 = load i32, i32* %23, align 4
  %2047 = add nsw i32 %2045, %2046
  %2048 = load i32, i32* %24, align 4
  %2049 = load i32, i32* %22, align 4
  %2050 = add nsw i32 %2048, %2049
  %2051 = add nsw i32 %2050, 2
  %2052 = icmp sgt i32 %2047, %2051
  br i1 %2052, label %2053, label %2056

; <label>:2053:                                   ; preds = %2044
  %2054 = load i32, i32* %16, align 4
  %2055 = sub nsw i32 %2054, 120
  store i32 %2055, i32* %16, align 4
  br label %2056

; <label>:2056:                                   ; preds = %2053, %2044
  br label %2057

; <label>:2057:                                   ; preds = %2056, %2041
  br label %2058

; <label>:2058:                                   ; preds = %2057, %2022
  br label %2059

; <label>:2059:                                   ; preds = %2058, %2021
  br label %2060

; <label>:2060:                                   ; preds = %2059, %1985
  br label %2090

; <label>:2061:                                   ; preds = %1955
  %2062 = load i32, i32* %26, align 4
  %2063 = load i32, i32* %28, align 4
  %2064 = add nsw i32 %2062, %2063
  %2065 = load i32, i32* %27, align 4
  %2066 = load i32, i32* %29, align 4
  %2067 = add nsw i32 %2065, %2066
  %2068 = icmp eq i32 %2064, %2067
  br i1 %2068, label %2069, label %2089

; <label>:2069:                                   ; preds = %2061
  %2070 = load i32, i32* %26, align 4
  %2071 = icmp ne i32 %2070, 0
  br i1 %2071, label %2072, label %2078

; <label>:2072:                                   ; preds = %2069
  %2073 = load i32, i32* %27, align 4
  %2074 = icmp ne i32 %2073, 0
  br i1 %2074, label %2078, label %2075

; <label>:2075:                                   ; preds = %2072
  %2076 = load i32, i32* %16, align 4
  %2077 = add nsw i32 %2076, 120
  store i32 %2077, i32* %16, align 4
  br label %2088

; <label>:2078:                                   ; preds = %2072, %2069
  %2079 = load i32, i32* %26, align 4
  %2080 = icmp ne i32 %2079, 0
  br i1 %2080, label %2087, label %2081

; <label>:2081:                                   ; preds = %2078
  %2082 = load i32, i32* %27, align 4
  %2083 = icmp ne i32 %2082, 0
  br i1 %2083, label %2084, label %2087

; <label>:2084:                                   ; preds = %2081
  %2085 = load i32, i32* %16, align 4
  %2086 = sub nsw i32 %2085, 120
  store i32 %2086, i32* %16, align 4
  br label %2087

; <label>:2087:                                   ; preds = %2084, %2081, %2078
  br label %2088

; <label>:2088:                                   ; preds = %2087, %2075
  br label %2089

; <label>:2089:                                   ; preds = %2088, %2061
  br label %2090

; <label>:2090:                                   ; preds = %2089, %2060
  br label %2091

; <label>:2091:                                   ; preds = %2090, %1954
  %2092 = load i32, i32* %16, align 4
  call void @storeECache(i32 %2092)
  %2093 = load i32, i32* @Material, align 4
  %2094 = load i32, i32* %16, align 4
  %2095 = sub nsw i32 %2093, %2094
  %2096 = call i32 @abs(i32 %2095) #4
  %2097 = load i32, i32* @maxposdiff, align 4
  %2098 = icmp sgt i32 %2096, %2097
  br i1 %2098, label %2099, label %2113

; <label>:2099:                                   ; preds = %2091
  %2100 = load i32, i32* @Material, align 4
  %2101 = load i32, i32* %16, align 4
  %2102 = sub nsw i32 %2100, %2101
  %2103 = call i32 @abs(i32 %2102) #4
  %2104 = icmp slt i32 1000, %2103
  br i1 %2104, label %2105, label %2106

; <label>:2105:                                   ; preds = %2099
  br label %2111

; <label>:2106:                                   ; preds = %2099
  %2107 = load i32, i32* @Material, align 4
  %2108 = load i32, i32* %16, align 4
  %2109 = sub nsw i32 %2107, %2108
  %2110 = call i32 @abs(i32 %2109) #4
  br label %2111

; <label>:2111:                                   ; preds = %2106, %2105
  %2112 = phi i32 [ 1000, %2105 ], [ %2110, %2106 ]
  store i32 %2112, i32* @maxposdiff, align 4
  br label %2113

; <label>:2113:                                   ; preds = %2111, %2091
  %2114 = load i32, i32* @white_to_move, align 4
  %2115 = icmp eq i32 %2114, 1
  br i1 %2115, label %2116, label %2118

; <label>:2116:                                   ; preds = %2113
  %2117 = load i32, i32* %16, align 4
  store i32 %2117, i32* %3, align 4
  br label %2121

; <label>:2118:                                   ; preds = %2113
  %2119 = load i32, i32* %16, align 4
  %2120 = sub nsw i32 0, %2119
  store i32 %2120, i32* %3, align 4
  br label %2121

; <label>:2121:                                   ; preds = %2118, %2116, %98, %96, %86, %60
  %2122 = load i32, i32* %3, align 4
  ret i32 %2122
}

declare void @checkECache(i32*, i32*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

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
