; ModuleID = 'proof.c'
source_filename = "proof.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct.node = type { i8, i8, i8, i8, i32, i32, %struct.node**, %struct.node*, %struct.move_s }

@bufftop = global i32 0, align 4
@membuff = common global i8* null, align 8
@Variant = external global i32, align 4
@white_to_move = external global i32, align 4
@wking_loc = external global i32, align 4
@bking_loc = external global i32, align 4
@numb_moves = external global i32, align 4
@root_to_move = external global i32, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@board = external global [144 x i32], align 16
@captures = external global i32, align 4
@hash = external global i32, align 4
@hash_history = external global [600 x i32], align 16
@move_number = external global i32, align 4
@ply = external global i32, align 4
@maxply = common global i32 0, align 4
@forwards = common global i32 0, align 4
@phase = external global i32, align 4
@nodecount = common global i32 0, align 4
@frees = common global i32 0, align 4
@nodecount2 = common global i32 0, align 4
@pn2 = common global i32 0, align 4
@PBSize = external global i32, align 4
@alllosers = common global i32 0, align 4
@rootlosers = common global [300 x i32] zeroinitializer, align 16
@pn_move = common global %struct.move_s zeroinitializer, align 4
@dummy = external global %struct.move_s, align 4
@iters = common global i32 0, align 4
@pn_time = common global i32 0, align 4
@forcedwin = common global i32 0, align 4
@kibitzed = common global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tellics kibitz Forced win!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"tellics kibitz Forced win! (alt)\0A\00", align 1
@xb_mode = external global i32, align 4
@post = external global i32, align 4
@.str.2 = private unnamed_addr constant [94 x i8] c"tellics whisper proof %d, disproof %d, %d losers, highest depth %d, primary %d, secondary %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"tellics whisper Forced reply\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d MaxDepth: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"tellics whisper proof %d, disproof %d, %d nodes, %d forwards, %d iters, highest depth %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Time : %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"This position is WON.\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PV: \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\0Atellics kibitz Forced win in %d moves.\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"\0A1-0 {White mates}\0A\00", align 1
@result = external global i32, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"\0A0-1 {Black mates}\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"This position is LOST.\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"This position is UNKNOWN.\0A\00", align 1
@pn_saver = common global %struct.move_s zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [47 x i8] c"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d\0A\00", align 1
@s_threat = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i8* @Xmalloc(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @bufftop, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @bufftop, align 4
  %7 = add nsw i32 %6, %5
  store i32 %7, i32* @bufftop, align 4
  %8 = load i8*, i8** @membuff, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Xfree() #0 {
  store i32 0, i32* @bufftop, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @freenodes(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %4 = load %struct.node*, %struct.node** %2, align 8
  %5 = icmp ne %struct.node* %4, null
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %1
  br label %56

; <label>:7:                                      ; preds = %1
  %8 = load %struct.node*, %struct.node** %2, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 6
  %10 = load %struct.node**, %struct.node*** %9, align 8
  %11 = icmp ne %struct.node** %10, null
  br i1 %11, label %12, label %53

; <label>:12:                                     ; preds = %7
  %13 = load %struct.node*, %struct.node** %2, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %52

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %44, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.node*, %struct.node** %2, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %47

; <label>:26:                                     ; preds = %19
  %27 = load %struct.node*, %struct.node** %2, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 6
  %29 = load %struct.node**, %struct.node*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.node*, %struct.node** %29, i64 %31
  %33 = load %struct.node*, %struct.node** %32, align 8
  %34 = icmp ne %struct.node* %33, null
  br i1 %34, label %35, label %43

; <label>:35:                                     ; preds = %26
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 6
  %38 = load %struct.node**, %struct.node*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.node*, %struct.node** %38, i64 %40
  %42 = load %struct.node*, %struct.node** %41, align 8
  call void @freenodes(%struct.node* %42)
  br label %43

; <label>:43:                                     ; preds = %35, %26
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %19

; <label>:47:                                     ; preds = %19
  %48 = load %struct.node*, %struct.node** %2, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 6
  %50 = load %struct.node**, %struct.node*** %49, align 8
  %51 = bitcast %struct.node** %50 to i8*
  call void @free(i8* %51) #4
  br label %52

; <label>:52:                                     ; preds = %47, %12
  br label %53

; <label>:53:                                     ; preds = %52, %7
  %54 = load %struct.node*, %struct.node** %2, align 8
  %55 = bitcast %struct.node* %54 to i8*
  call void @free(i8* %55) #4
  br label %56

; <label>:56:                                     ; preds = %53, %6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @pn_eval(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load i32, i32* @Variant, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = load %struct.node*, %struct.node** %2, align 8
  call void @suicide_pn_eval(%struct.node* %6)
  br label %15

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* @Variant, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = load %struct.node*, %struct.node** %2, align 8
  call void @losers_pn_eval(%struct.node* %11)
  br label %14

; <label>:12:                                     ; preds = %7
  %13 = load %struct.node*, %struct.node** %2, align 8
  call void @std_pn_eval(%struct.node* %13)
  br label %14

; <label>:14:                                     ; preds = %12, %10
  br label %15

; <label>:15:                                     ; preds = %14, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @suicide_pn_eval(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.node*, %struct.node** %2, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 3
  store i8 1, i8* %9, align 1
  store i32 1, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %10

; <label>:10:                                     ; preds = %44, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @piece_count, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %47

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %14
  br label %44

; <label>:22:                                     ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %36 [
    i32 1, label %30
    i32 11, label %30
    i32 7, label %30
    i32 5, label %30
    i32 9, label %30
    i32 3, label %30
    i32 2, label %33
    i32 12, label %33
    i32 8, label %33
    i32 6, label %33
    i32 10, label %33
    i32 4, label %33
  ]

; <label>:30:                                     ; preds = %25, %25, %25, %25, %25, %25
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %36

; <label>:33:                                     ; preds = %25, %25, %25, %25, %25, %25
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %36

; <label>:36:                                     ; preds = %25, %33, %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  br label %47

; <label>:43:                                     ; preds = %39, %36
  br label %44

; <label>:44:                                     ; preds = %43, %21
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %10

; <label>:47:                                     ; preds = %42, %10
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* @root_to_move, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

; <label>:53:                                     ; preds = %50
  %54 = load %struct.node*, %struct.node** %2, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  store i8 1, i8* %55, align 8
  br label %59

; <label>:56:                                     ; preds = %50
  %57 = load %struct.node*, %struct.node** %2, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 0
  store i8 0, i8* %58, align 8
  br label %59

; <label>:59:                                     ; preds = %56, %53
  br label %77

; <label>:60:                                     ; preds = %47
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* @root_to_move, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %63
  %67 = load %struct.node*, %struct.node** %2, align 8
  %68 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 0
  store i8 0, i8* %68, align 8
  br label %72

; <label>:69:                                     ; preds = %63
  %70 = load %struct.node*, %struct.node** %2, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 0
  store i8 1, i8* %71, align 8
  br label %72

; <label>:72:                                     ; preds = %69, %66
  br label %76

; <label>:73:                                     ; preds = %60
  %74 = load %struct.node*, %struct.node** %2, align 8
  %75 = getelementptr inbounds %struct.node, %struct.node* %74, i32 0, i32 0
  store i8 2, i8* %75, align 8
  br label %76

; <label>:76:                                     ; preds = %73, %72
  br label %77

; <label>:77:                                     ; preds = %76, %59
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @losers_pn_eval(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [512 x %struct.move_s], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 3
  store i8 1, i8* %12, align 1
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %13

; <label>:13:                                     ; preds = %47, %1
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @piece_count, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %50

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %17
  br label %47

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %28

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %39 [
    i32 1, label %33
    i32 11, label %33
    i32 7, label %33
    i32 9, label %33
    i32 3, label %33
    i32 2, label %36
    i32 12, label %36
    i32 8, label %36
    i32 10, label %36
    i32 4, label %36
  ]

; <label>:33:                                     ; preds = %28, %28, %28, %28, %28
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %39

; <label>:36:                                     ; preds = %28, %28, %28, %28, %28
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %39

; <label>:39:                                     ; preds = %28, %36, %33
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  br label %50

; <label>:46:                                     ; preds = %42, %39
  br label %47

; <label>:47:                                     ; preds = %46, %24
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %13

; <label>:50:                                     ; preds = %45, %13
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* @root_to_move, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %53
  %57 = load %struct.node*, %struct.node** %2, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 0
  store i8 1, i8* %58, align 8
  br label %62

; <label>:59:                                     ; preds = %53
  %60 = load %struct.node*, %struct.node** %2, align 8
  %61 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 0
  store i8 0, i8* %61, align 8
  br label %62

; <label>:62:                                     ; preds = %59, %56
  br label %165

; <label>:63:                                     ; preds = %50
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* @root_to_move, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %66
  %70 = load %struct.node*, %struct.node** %2, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 0
  store i8 1, i8* %71, align 8
  br label %75

; <label>:72:                                     ; preds = %66
  %73 = load %struct.node*, %struct.node** %2, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 0
  store i8 0, i8* %74, align 8
  br label %75

; <label>:75:                                     ; preds = %72, %69
  br label %165

; <label>:76:                                     ; preds = %63
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* @white_to_move, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* @wking_loc, align 4
  %82 = call i32 @is_attacked(i32 %81, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

; <label>:84:                                     ; preds = %80, %77
  %85 = load i32, i32* @white_to_move, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %162, label %87

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* @bking_loc, align 4
  %89 = call i32 @is_attacked(i32 %88, i32 1)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %162

; <label>:91:                                     ; preds = %87, %80
  store i32 1, i32* @captures, align 4
  store i32 0, i32* %3, align 4
  %92 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %92)
  %93 = load i32, i32* @numb_moves, align 4
  store i32 %93, i32* %3, align 4
  store i32 0, i32* @captures, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %94

; <label>:94:                                     ; preds = %111, %91
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %114

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %100 = load i32, i32* %6, align 4
  call void @make(%struct.move_s* %99, i32 %100)
  %101 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @check_legal(%struct.move_s* %101, i32 %102, i32 1)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

; <label>:105:                                    ; preds = %98
  store i32 0, i32* %5, align 4
  %106 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %107 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %106, i32 %107)
  br label %114

; <label>:108:                                    ; preds = %98
  %109 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %110 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %109, i32 %110)
  br label %111

; <label>:111:                                    ; preds = %108
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %94

; <label>:114:                                    ; preds = %105, %94
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %141

; <label>:117:                                    ; preds = %114
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %3, align 4
  %118 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %118)
  %119 = load i32, i32* @numb_moves, align 4
  store i32 %119, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %120

; <label>:120:                                    ; preds = %137, %117
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %3, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %140

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %126 = load i32, i32* %6, align 4
  call void @make(%struct.move_s* %125, i32 %126)
  %127 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @check_legal(%struct.move_s* %127, i32 %128, i32 1)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

; <label>:131:                                    ; preds = %124
  store i32 0, i32* %5, align 4
  %132 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %133 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %132, i32 %133)
  br label %140

; <label>:134:                                    ; preds = %124
  %135 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %136 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %135, i32 %136)
  br label %137

; <label>:137:                                    ; preds = %134
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %120

; <label>:140:                                    ; preds = %131, %120
  br label %141

; <label>:141:                                    ; preds = %140, %114
  %142 = load i32, i32* %5, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %158

; <label>:144:                                    ; preds = %141
  %145 = load i32, i32* @white_to_move, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 0, i32 1
  %149 = load i32, i32* @root_to_move, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

; <label>:151:                                    ; preds = %144
  %152 = load %struct.node*, %struct.node** %2, align 8
  %153 = getelementptr inbounds %struct.node, %struct.node* %152, i32 0, i32 0
  store i8 1, i8* %153, align 8
  br label %157

; <label>:154:                                    ; preds = %144
  %155 = load %struct.node*, %struct.node** %2, align 8
  %156 = getelementptr inbounds %struct.node, %struct.node* %155, i32 0, i32 0
  store i8 0, i8* %156, align 8
  br label %157

; <label>:157:                                    ; preds = %154, %151
  br label %161

; <label>:158:                                    ; preds = %141
  %159 = load %struct.node*, %struct.node** %2, align 8
  %160 = getelementptr inbounds %struct.node, %struct.node* %159, i32 0, i32 0
  store i8 2, i8* %160, align 8
  br label %161

; <label>:161:                                    ; preds = %158, %157
  br label %165

; <label>:162:                                    ; preds = %87, %84
  %163 = load %struct.node*, %struct.node** %2, align 8
  %164 = getelementptr inbounds %struct.node, %struct.node* %163, i32 0, i32 0
  store i8 2, i8* %164, align 8
  br label %165

; <label>:165:                                    ; preds = %62, %75, %162, %161
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @std_pn_eval(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [512 x %struct.move_s], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %7 = load %struct.node*, %struct.node** %2, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 3
  store i8 1, i8* %8, align 1
  %9 = load i32, i32* @white_to_move, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* @wking_loc, align 4
  %13 = call i32 @is_attacked(i32 %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

; <label>:15:                                     ; preds = %11, %1
  %16 = load i32, i32* @white_to_move, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %66, label %18

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* @bking_loc, align 4
  %20 = call i32 @is_attacked(i32 %19, i32 1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %66

; <label>:22:                                     ; preds = %18, %11
  store i32 0, i32* %3, align 4
  %23 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %23)
  %24 = load i32, i32* @numb_moves, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %25

; <label>:25:                                     ; preds = %42, %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %45

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %31 = load i32, i32* %6, align 4
  call void @make(%struct.move_s* %30, i32 %31)
  %32 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @check_legal(%struct.move_s* %32, i32 %33, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %29
  store i32 0, i32* %5, align 4
  %37 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %38 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %37, i32 %38)
  br label %45

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  call void @unmake(%struct.move_s* %40, i32 %41)
  br label %42

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %25

; <label>:45:                                     ; preds = %36, %25
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %62

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* @white_to_move, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 1
  %53 = load i32, i32* @root_to_move, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %48
  %56 = load %struct.node*, %struct.node** %2, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 0
  store i8 0, i8* %57, align 8
  br label %61

; <label>:58:                                     ; preds = %48
  %59 = load %struct.node*, %struct.node** %2, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 0
  store i8 1, i8* %60, align 8
  br label %61

; <label>:61:                                     ; preds = %58, %55
  br label %65

; <label>:62:                                     ; preds = %45
  %63 = load %struct.node*, %struct.node** %2, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 0
  store i8 2, i8* %64, align 8
  br label %65

; <label>:65:                                     ; preds = %62, %61
  br label %69

; <label>:66:                                     ; preds = %18, %15
  %67 = load %struct.node*, %struct.node** %2, align 8
  %68 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 0
  store i8 2, i8* %68, align 8
  br label %69

; <label>:69:                                     ; preds = %66, %65
  ret void
}

declare i32 @is_attacked(i32, i32) #2

declare void @gen(%struct.move_s*) #2

declare void @make(%struct.move_s*, i32) #2

declare i32 @check_legal(%struct.move_s*, i32, i32) #2

declare void @unmake(%struct.move_s*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define %struct.node* @select_most_proving(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %5 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %5, %struct.node** %4, align 8
  br label %6

; <label>:6:                                      ; preds = %78, %1
  %7 = load %struct.node*, %struct.node** %4, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 2
  %9 = load i8, i8* %8, align 2
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %79

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* @white_to_move, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  %16 = load i32, i32* @root_to_move, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %37

; <label>:18:                                     ; preds = %11
  store i32 0, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %33, %18
  %20 = load %struct.node*, %struct.node** %4, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 6
  %22 = load %struct.node**, %struct.node*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.node*, %struct.node** %22, i64 %24
  %26 = load %struct.node*, %struct.node** %25, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.node*, %struct.node** %4, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %19
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %19

; <label>:36:                                     ; preds = %19
  br label %56

; <label>:37:                                     ; preds = %11
  store i32 0, i32* %3, align 4
  br label %38

; <label>:38:                                     ; preds = %52, %37
  %39 = load %struct.node*, %struct.node** %4, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 6
  %41 = load %struct.node**, %struct.node*** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.node*, %struct.node** %41, i64 %43
  %45 = load %struct.node*, %struct.node** %44, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.node*, %struct.node** %4, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %38
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %38

; <label>:55:                                     ; preds = %38
  br label %56

; <label>:56:                                     ; preds = %55, %36
  %57 = load %struct.node*, %struct.node** %4, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 6
  %59 = load %struct.node**, %struct.node*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.node*, %struct.node** %59, i64 %61
  %63 = load %struct.node*, %struct.node** %62, align 8
  store %struct.node* %63, %struct.node** %4, align 8
  %64 = load i32, i32* @hash, align 4
  %65 = load i32, i32* @move_number, align 4
  %66 = load i32, i32* @ply, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load %struct.node*, %struct.node** %4, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 8
  call void @make(%struct.move_s* %72, i32 0)
  %73 = load i32, i32* @ply, align 4
  %74 = load i32, i32* @maxply, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

; <label>:76:                                     ; preds = %56
  %77 = load i32, i32* @ply, align 4
  store i32 %77, i32* @maxply, align 4
  br label %78

; <label>:78:                                     ; preds = %76, %56
  br label %6

; <label>:79:                                     ; preds = %6
  %80 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %80
}

; Function Attrs: noinline nounwind optnone uwtable
define void @set_proof_and_disproof_numbers(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [512 x %struct.move_s], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %10 = load %struct.node*, %struct.node** %2, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 2
  %12 = load i8, i8* %11, align 2
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %173

; <label>:14:                                     ; preds = %1
  %15 = load i32, i32* @white_to_move, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  %19 = load i32, i32* @root_to_move, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %90

; <label>:21:                                     ; preds = %14
  store i32 0, i32* %3, align 4
  store i32 100000000, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %67, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.node*, %struct.node** %2, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %70

; <label>:29:                                     ; preds = %22
  %30 = load %struct.node*, %struct.node** %2, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 6
  %32 = load %struct.node**, %struct.node*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.node*, %struct.node** %32, i64 %34
  %36 = load %struct.node*, %struct.node** %35, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp sgt i32 %41, 100000000
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %29
  store i32 100000000, i32* %3, align 4
  br label %44

; <label>:44:                                     ; preds = %43, %29
  %45 = load %struct.node*, %struct.node** %2, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 6
  %47 = load %struct.node**, %struct.node*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.node*, %struct.node** %47, i64 %49
  %51 = load %struct.node*, %struct.node** %50, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %66

; <label>:56:                                     ; preds = %44
  %57 = load %struct.node*, %struct.node** %2, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 6
  %59 = load %struct.node**, %struct.node*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.node*, %struct.node** %59, i64 %61
  %63 = load %struct.node*, %struct.node** %62, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %4, align 4
  br label %66

; <label>:66:                                     ; preds = %56, %44
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %22

; <label>:70:                                     ; preds = %22
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 100000000
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %73, %70
  %77 = load i32, i32* @forwards, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @forwards, align 4
  call void @StoreTT(i32 999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200)
  br label %89

; <label>:79:                                     ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, 100000000
  br i1 %84, label %85, label %88

; <label>:85:                                     ; preds = %82, %79
  %86 = load i32, i32* @forwards, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @forwards, align 4
  call void @StoreTT(i32 -999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200)
  br label %88

; <label>:88:                                     ; preds = %85, %82
  br label %89

; <label>:89:                                     ; preds = %88, %76
  br label %159

; <label>:90:                                     ; preds = %14
  store i32 0, i32* %4, align 4
  store i32 100000000, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %91

; <label>:91:                                     ; preds = %136, %90
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.node*, %struct.node** %2, align 8
  %94 = getelementptr inbounds %struct.node, %struct.node* %93, i32 0, i32 1
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %139

; <label>:98:                                     ; preds = %91
  %99 = load %struct.node*, %struct.node** %2, align 8
  %100 = getelementptr inbounds %struct.node, %struct.node* %99, i32 0, i32 6
  %101 = load %struct.node**, %struct.node*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.node*, %struct.node** %101, i64 %103
  %105 = load %struct.node*, %struct.node** %104, align 8
  %106 = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp sgt i32 %110, 100000000
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %98
  store i32 100000000, i32* %4, align 4
  br label %113

; <label>:113:                                    ; preds = %112, %98
  %114 = load %struct.node*, %struct.node** %2, align 8
  %115 = getelementptr inbounds %struct.node, %struct.node* %114, i32 0, i32 6
  %116 = load %struct.node**, %struct.node*** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.node*, %struct.node** %116, i64 %118
  %120 = load %struct.node*, %struct.node** %119, align 8
  %121 = getelementptr inbounds %struct.node, %struct.node* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %3, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %135

; <label>:125:                                    ; preds = %113
  %126 = load %struct.node*, %struct.node** %2, align 8
  %127 = getelementptr inbounds %struct.node, %struct.node* %126, i32 0, i32 6
  %128 = load %struct.node**, %struct.node*** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.node*, %struct.node** %128, i64 %130
  %132 = load %struct.node*, %struct.node** %131, align 8
  %133 = getelementptr inbounds %struct.node, %struct.node* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %3, align 4
  br label %135

; <label>:135:                                    ; preds = %125, %113
  br label %136

; <label>:136:                                    ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %91

; <label>:139:                                    ; preds = %91
  %140 = load i32, i32* %3, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

; <label>:142:                                    ; preds = %139
  %143 = load i32, i32* %4, align 4
  %144 = icmp eq i32 %143, 100000000
  br i1 %144, label %145, label %148

; <label>:145:                                    ; preds = %142, %139
  %146 = load i32, i32* @forwards, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @forwards, align 4
  call void @StoreTT(i32 999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200)
  br label %158

; <label>:148:                                    ; preds = %142
  %149 = load i32, i32* %4, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151

; <label>:151:                                    ; preds = %148
  %152 = load i32, i32* %3, align 4
  %153 = icmp eq i32 %152, 100000000
  br i1 %153, label %154, label %157

; <label>:154:                                    ; preds = %151, %148
  %155 = load i32, i32* @forwards, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @forwards, align 4
  call void @StoreTT(i32 -999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200)
  br label %157

; <label>:157:                                    ; preds = %154, %151
  br label %158

; <label>:158:                                    ; preds = %157, %145
  br label %159

; <label>:159:                                    ; preds = %158, %89
  %160 = load i32, i32* @hash, align 4
  %161 = load i32, i32* @move_number, align 4
  %162 = load i32, i32* @ply, align 4
  %163 = add nsw i32 %161, %162
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %165
  store i32 %160, i32* %166, align 4
  %167 = load i32, i32* %3, align 4
  %168 = load %struct.node*, %struct.node** %2, align 8
  %169 = getelementptr inbounds %struct.node, %struct.node* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.node*, %struct.node** %2, align 8
  %172 = getelementptr inbounds %struct.node, %struct.node* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  br label %481

; <label>:173:                                    ; preds = %1
  %174 = load %struct.node*, %struct.node** %2, align 8
  %175 = getelementptr inbounds %struct.node, %struct.node* %174, i32 0, i32 3
  %176 = load i8, i8* %175, align 1
  %177 = icmp ne i8 %176, 0
  br i1 %177, label %178, label %475

; <label>:178:                                    ; preds = %173
  %179 = load %struct.node*, %struct.node** %2, align 8
  %180 = getelementptr inbounds %struct.node, %struct.node* %179, i32 0, i32 0
  %181 = load i8, i8* %180, align 8
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %184, label %438

; <label>:184:                                    ; preds = %178
  %185 = load i32, i32* @hash, align 4
  %186 = load i32, i32* @move_number, align 4
  %187 = load i32, i32* @ply, align 4
  %188 = add nsw i32 %186, %187
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %190
  store i32 %185, i32* %191, align 4
  %192 = call i32 @is_draw()
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

; <label>:194:                                    ; preds = %184
  %195 = load i32, i32* @ply, align 4
  %196 = icmp sgt i32 %195, 200
  br i1 %196, label %197, label %202

; <label>:197:                                    ; preds = %194, %184
  %198 = load %struct.node*, %struct.node** %2, align 8
  %199 = getelementptr inbounds %struct.node, %struct.node* %198, i32 0, i32 4
  store i32 50000, i32* %199, align 4
  %200 = load %struct.node*, %struct.node** %2, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 5
  store i32 50000, i32* %201, align 8
  br label %481

; <label>:202:                                    ; preds = %194
  %203 = load i32, i32* @Variant, align 4
  %204 = icmp ne i32 %203, 4
  br i1 %204, label %205, label %237

; <label>:205:                                    ; preds = %202
  store i32 0, i32* %8, align 4
  %206 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  call void @gen(%struct.move_s* %206)
  %207 = load i32, i32* @numb_moves, align 4
  store i32 %207, i32* %8, align 4
  %208 = call i32 @in_check()
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* @Variant, align 4
  %210 = icmp ne i32 %209, 3
  br i1 %210, label %211, label %234

; <label>:211:                                    ; preds = %205
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %212

; <label>:212:                                    ; preds = %230, %211
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* %8, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %233

; <label>:216:                                    ; preds = %212
  %217 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  %218 = load i32, i32* %5, align 4
  call void @make(%struct.move_s* %217, i32 %218)
  %219 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @check_legal(%struct.move_s* %219, i32 %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

; <label>:224:                                    ; preds = %216
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %227

; <label>:227:                                    ; preds = %224, %216
  %228 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  %229 = load i32, i32* %5, align 4
  call void @unmake(%struct.move_s* %228, i32 %229)
  br label %230

; <label>:230:                                    ; preds = %227
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %5, align 4
  br label %212

; <label>:233:                                    ; preds = %212
  br label %236

; <label>:234:                                    ; preds = %205
  %235 = load i32, i32* @numb_moves, align 4
  store i32 %235, i32* %7, align 4
  br label %236

; <label>:236:                                    ; preds = %234, %233
  br label %295

; <label>:237:                                    ; preds = %202
  store i32 0, i32* %7, align 4
  store i32 1, i32* @captures, align 4
  store i32 0, i32* %8, align 4
  %238 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  call void @gen(%struct.move_s* %238)
  %239 = load i32, i32* @numb_moves, align 4
  store i32 %239, i32* %8, align 4
  store i32 0, i32* @captures, align 4
  %240 = call i32 @in_check()
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %266

; <label>:243:                                    ; preds = %237
  store i32 0, i32* %5, align 4
  br label %244

; <label>:244:                                    ; preds = %262, %243
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* %8, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %265

; <label>:248:                                    ; preds = %244
  %249 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  %250 = load i32, i32* %5, align 4
  call void @make(%struct.move_s* %249, i32 %250)
  %251 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @check_legal(%struct.move_s* %251, i32 %252, i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

; <label>:256:                                    ; preds = %248
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  br label %259

; <label>:259:                                    ; preds = %256, %248
  %260 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  %261 = load i32, i32* %5, align 4
  call void @unmake(%struct.move_s* %260, i32 %261)
  br label %262

; <label>:262:                                    ; preds = %259
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %244

; <label>:265:                                    ; preds = %244
  br label %266

; <label>:266:                                    ; preds = %265, %237
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %294, label %269

; <label>:269:                                    ; preds = %266
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %8, align 4
  %270 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  call void @gen(%struct.move_s* %270)
  %271 = load i32, i32* @numb_moves, align 4
  store i32 %271, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %272

; <label>:272:                                    ; preds = %290, %269
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %293

; <label>:276:                                    ; preds = %272
  %277 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  %278 = load i32, i32* %5, align 4
  call void @make(%struct.move_s* %277, i32 %278)
  %279 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* %9, align 4
  %282 = call i32 @check_legal(%struct.move_s* %279, i32 %280, i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

; <label>:284:                                    ; preds = %276
  %285 = load i32, i32* %7, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %7, align 4
  br label %287

; <label>:287:                                    ; preds = %284, %276
  %288 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %6, i64 0, i64 0
  %289 = load i32, i32* %5, align 4
  call void @unmake(%struct.move_s* %288, i32 %289)
  br label %290

; <label>:290:                                    ; preds = %287
  %291 = load i32, i32* %5, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %5, align 4
  br label %272

; <label>:293:                                    ; preds = %272
  br label %294

; <label>:294:                                    ; preds = %293, %266
  br label %295

; <label>:295:                                    ; preds = %294, %236
  %296 = load i32, i32* %7, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %303

; <label>:298:                                    ; preds = %295
  %299 = load %struct.node*, %struct.node** %2, align 8
  %300 = getelementptr inbounds %struct.node, %struct.node* %299, i32 0, i32 4
  store i32 1, i32* %300, align 4
  %301 = load %struct.node*, %struct.node** %2, align 8
  %302 = getelementptr inbounds %struct.node, %struct.node* %301, i32 0, i32 5
  store i32 1, i32* %302, align 8
  br label %437

; <label>:303:                                    ; preds = %295
  %304 = load i32, i32* @white_to_move, align 4
  %305 = icmp ne i32 %304, 0
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i32 0, i32 1
  %308 = load i32, i32* @root_to_move, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %373

; <label>:310:                                    ; preds = %303
  %311 = load i32, i32* @Variant, align 4
  %312 = icmp ne i32 %311, 3
  br i1 %312, label %313, label %328

; <label>:313:                                    ; preds = %310
  %314 = load i32, i32* @Variant, align 4
  %315 = icmp ne i32 %314, 4
  br i1 %315, label %316, label %328

; <label>:316:                                    ; preds = %313
  %317 = load i32, i32* @ply, align 4
  %318 = sdiv i32 %317, 50
  %319 = add nsw i32 1, %318
  %320 = load %struct.node*, %struct.node** %2, align 8
  %321 = getelementptr inbounds %struct.node, %struct.node* %320, i32 0, i32 4
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* @ply, align 4
  %324 = sdiv i32 %323, 50
  %325 = add nsw i32 %322, %324
  %326 = load %struct.node*, %struct.node** %2, align 8
  %327 = getelementptr inbounds %struct.node, %struct.node* %326, i32 0, i32 5
  store i32 %325, i32* %327, align 8
  br label %372

; <label>:328:                                    ; preds = %313, %310
  %329 = load i32, i32* @Variant, align 4
  %330 = icmp eq i32 %329, 4
  br i1 %330, label %331, label %359

; <label>:331:                                    ; preds = %328
  %332 = load i32, i32* @phase, align 4
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %346

; <label>:334:                                    ; preds = %331
  %335 = load i32, i32* @ply, align 4
  %336 = sdiv i32 %335, 30
  %337 = add nsw i32 1, %336
  %338 = load %struct.node*, %struct.node** %2, align 8
  %339 = getelementptr inbounds %struct.node, %struct.node* %338, i32 0, i32 4
  store i32 %337, i32* %339, align 4
  %340 = load i32, i32* %7, align 4
  %341 = load i32, i32* @ply, align 4
  %342 = sdiv i32 %341, 30
  %343 = add nsw i32 %340, %342
  %344 = load %struct.node*, %struct.node** %2, align 8
  %345 = getelementptr inbounds %struct.node, %struct.node* %344, i32 0, i32 5
  store i32 %343, i32* %345, align 8
  br label %358

; <label>:346:                                    ; preds = %331
  %347 = load i32, i32* @ply, align 4
  %348 = sdiv i32 %347, 80
  %349 = add nsw i32 1, %348
  %350 = load %struct.node*, %struct.node** %2, align 8
  %351 = getelementptr inbounds %struct.node, %struct.node* %350, i32 0, i32 4
  store i32 %349, i32* %351, align 4
  %352 = load i32, i32* %7, align 4
  %353 = load i32, i32* @ply, align 4
  %354 = sdiv i32 %353, 80
  %355 = add nsw i32 %352, %354
  %356 = load %struct.node*, %struct.node** %2, align 8
  %357 = getelementptr inbounds %struct.node, %struct.node* %356, i32 0, i32 5
  store i32 %355, i32* %357, align 8
  br label %358

; <label>:358:                                    ; preds = %346, %334
  br label %371

; <label>:359:                                    ; preds = %328
  %360 = load i32, i32* @ply, align 4
  %361 = sdiv i32 %360, 150
  %362 = add nsw i32 1, %361
  %363 = load %struct.node*, %struct.node** %2, align 8
  %364 = getelementptr inbounds %struct.node, %struct.node* %363, i32 0, i32 4
  store i32 %362, i32* %364, align 4
  %365 = load i32, i32* %7, align 4
  %366 = load i32, i32* @ply, align 4
  %367 = sdiv i32 %366, 150
  %368 = add nsw i32 %365, %367
  %369 = load %struct.node*, %struct.node** %2, align 8
  %370 = getelementptr inbounds %struct.node, %struct.node* %369, i32 0, i32 5
  store i32 %368, i32* %370, align 8
  br label %371

; <label>:371:                                    ; preds = %359, %358
  br label %372

; <label>:372:                                    ; preds = %371, %316
  br label %436

; <label>:373:                                    ; preds = %303
  %374 = load i32, i32* @Variant, align 4
  %375 = icmp ne i32 %374, 3
  br i1 %375, label %376, label %391

; <label>:376:                                    ; preds = %373
  %377 = load i32, i32* @Variant, align 4
  %378 = icmp ne i32 %377, 4
  br i1 %378, label %379, label %391

; <label>:379:                                    ; preds = %376
  %380 = load i32, i32* %7, align 4
  %381 = load i32, i32* @ply, align 4
  %382 = sdiv i32 %381, 50
  %383 = add nsw i32 %380, %382
  %384 = load %struct.node*, %struct.node** %2, align 8
  %385 = getelementptr inbounds %struct.node, %struct.node* %384, i32 0, i32 4
  store i32 %383, i32* %385, align 4
  %386 = load i32, i32* @ply, align 4
  %387 = sdiv i32 %386, 50
  %388 = add nsw i32 1, %387
  %389 = load %struct.node*, %struct.node** %2, align 8
  %390 = getelementptr inbounds %struct.node, %struct.node* %389, i32 0, i32 5
  store i32 %388, i32* %390, align 8
  br label %435

; <label>:391:                                    ; preds = %376, %373
  %392 = load i32, i32* @Variant, align 4
  %393 = icmp eq i32 %392, 4
  br i1 %393, label %394, label %422

; <label>:394:                                    ; preds = %391
  %395 = load i32, i32* @phase, align 4
  %396 = icmp eq i32 %395, 2
  br i1 %396, label %397, label %409

; <label>:397:                                    ; preds = %394
  %398 = load i32, i32* %7, align 4
  %399 = load i32, i32* @ply, align 4
  %400 = sdiv i32 %399, 30
  %401 = add nsw i32 %398, %400
  %402 = load %struct.node*, %struct.node** %2, align 8
  %403 = getelementptr inbounds %struct.node, %struct.node* %402, i32 0, i32 4
  store i32 %401, i32* %403, align 4
  %404 = load i32, i32* @ply, align 4
  %405 = sdiv i32 %404, 30
  %406 = add nsw i32 1, %405
  %407 = load %struct.node*, %struct.node** %2, align 8
  %408 = getelementptr inbounds %struct.node, %struct.node* %407, i32 0, i32 5
  store i32 %406, i32* %408, align 8
  br label %421

; <label>:409:                                    ; preds = %394
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* @ply, align 4
  %412 = sdiv i32 %411, 80
  %413 = add nsw i32 %410, %412
  %414 = load %struct.node*, %struct.node** %2, align 8
  %415 = getelementptr inbounds %struct.node, %struct.node* %414, i32 0, i32 4
  store i32 %413, i32* %415, align 4
  %416 = load i32, i32* @ply, align 4
  %417 = sdiv i32 %416, 80
  %418 = add nsw i32 1, %417
  %419 = load %struct.node*, %struct.node** %2, align 8
  %420 = getelementptr inbounds %struct.node, %struct.node* %419, i32 0, i32 5
  store i32 %418, i32* %420, align 8
  br label %421

; <label>:421:                                    ; preds = %409, %397
  br label %434

; <label>:422:                                    ; preds = %391
  %423 = load i32, i32* %7, align 4
  %424 = load i32, i32* @ply, align 4
  %425 = sdiv i32 %424, 150
  %426 = add nsw i32 %423, %425
  %427 = load %struct.node*, %struct.node** %2, align 8
  %428 = getelementptr inbounds %struct.node, %struct.node* %427, i32 0, i32 4
  store i32 %426, i32* %428, align 4
  %429 = load i32, i32* @ply, align 4
  %430 = sdiv i32 %429, 150
  %431 = add nsw i32 1, %430
  %432 = load %struct.node*, %struct.node** %2, align 8
  %433 = getelementptr inbounds %struct.node, %struct.node* %432, i32 0, i32 5
  store i32 %431, i32* %433, align 8
  br label %434

; <label>:434:                                    ; preds = %422, %421
  br label %435

; <label>:435:                                    ; preds = %434, %379
  br label %436

; <label>:436:                                    ; preds = %435, %372
  br label %437

; <label>:437:                                    ; preds = %436, %298
  br label %474

; <label>:438:                                    ; preds = %178
  %439 = load %struct.node*, %struct.node** %2, align 8
  %440 = getelementptr inbounds %struct.node, %struct.node* %439, i32 0, i32 0
  %441 = load i8, i8* %440, align 8
  %442 = zext i8 %441 to i32
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %449

; <label>:444:                                    ; preds = %438
  %445 = load %struct.node*, %struct.node** %2, align 8
  %446 = getelementptr inbounds %struct.node, %struct.node* %445, i32 0, i32 4
  store i32 100000000, i32* %446, align 4
  %447 = load %struct.node*, %struct.node** %2, align 8
  %448 = getelementptr inbounds %struct.node, %struct.node* %447, i32 0, i32 5
  store i32 0, i32* %448, align 8
  br label %473

; <label>:449:                                    ; preds = %438
  %450 = load %struct.node*, %struct.node** %2, align 8
  %451 = getelementptr inbounds %struct.node, %struct.node* %450, i32 0, i32 0
  %452 = load i8, i8* %451, align 8
  %453 = zext i8 %452 to i32
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %455, label %460

; <label>:455:                                    ; preds = %449
  %456 = load %struct.node*, %struct.node** %2, align 8
  %457 = getelementptr inbounds %struct.node, %struct.node* %456, i32 0, i32 4
  store i32 0, i32* %457, align 4
  %458 = load %struct.node*, %struct.node** %2, align 8
  %459 = getelementptr inbounds %struct.node, %struct.node* %458, i32 0, i32 5
  store i32 100000000, i32* %459, align 8
  br label %472

; <label>:460:                                    ; preds = %449
  %461 = load %struct.node*, %struct.node** %2, align 8
  %462 = getelementptr inbounds %struct.node, %struct.node* %461, i32 0, i32 0
  %463 = load i8, i8* %462, align 8
  %464 = zext i8 %463 to i32
  %465 = icmp eq i32 %464, 3
  br i1 %465, label %466, label %471

; <label>:466:                                    ; preds = %460
  %467 = load %struct.node*, %struct.node** %2, align 8
  %468 = getelementptr inbounds %struct.node, %struct.node* %467, i32 0, i32 4
  store i32 50000, i32* %468, align 4
  %469 = load %struct.node*, %struct.node** %2, align 8
  %470 = getelementptr inbounds %struct.node, %struct.node* %469, i32 0, i32 5
  store i32 50000, i32* %470, align 8
  br label %471

; <label>:471:                                    ; preds = %466, %460
  br label %472

; <label>:472:                                    ; preds = %471, %455
  br label %473

; <label>:473:                                    ; preds = %472, %444
  br label %474

; <label>:474:                                    ; preds = %473, %437
  br label %480

; <label>:475:                                    ; preds = %173
  %476 = load %struct.node*, %struct.node** %2, align 8
  %477 = getelementptr inbounds %struct.node, %struct.node* %476, i32 0, i32 5
  store i32 1, i32* %477, align 8
  %478 = load %struct.node*, %struct.node** %2, align 8
  %479 = getelementptr inbounds %struct.node, %struct.node* %478, i32 0, i32 4
  store i32 1, i32* %479, align 4
  br label %480

; <label>:480:                                    ; preds = %475, %474
  br label %481

; <label>:481:                                    ; preds = %197, %480, %159
  ret void
}

declare void @StoreTT(i32, i32, i32, i32, i32, i32) #2

declare i32 @is_draw() #2

declare i32 @in_check() #2

; Function Attrs: noinline nounwind optnone uwtable
define void @develop_node(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [512 x %struct.move_s], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %10 = call i32 @in_check()
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @Variant, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %1
  store i32 0, i32* %3, align 4
  %14 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %14)
  %15 = load i32, i32* @numb_moves, align 4
  store i32 %15, i32* %3, align 4
  br label %47

; <label>:16:                                     ; preds = %1
  store i32 1, i32* @captures, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %3, align 4
  %17 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %17)
  %18 = load i32, i32* @numb_moves, align 4
  store i32 %18, i32* %3, align 4
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %5, align 4
  br label %19

; <label>:19:                                     ; preds = %37, %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %25 = load i32, i32* %5, align 4
  call void @make(%struct.move_s* %24, i32 %25)
  %26 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @check_legal(%struct.move_s* %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %23
  store i32 1, i32* %8, align 4
  %32 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  call void @unmake(%struct.move_s* %32, i32 %33)
  br label %40

; <label>:34:                                     ; preds = %23
  %35 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %36 = load i32, i32* %5, align 4
  call void @unmake(%struct.move_s* %35, i32 %36)
  br label %37

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %19

; <label>:40:                                     ; preds = %31, %19
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %40
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %3, align 4
  %44 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %44)
  %45 = load i32, i32* @numb_moves, align 4
  store i32 %45, i32* %3, align 4
  br label %46

; <label>:46:                                     ; preds = %43, %40
  br label %47

; <label>:47:                                     ; preds = %46, %13
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @Xmalloc(i32 %51)
  %53 = bitcast i8* %52 to %struct.node**
  %54 = load %struct.node*, %struct.node** %2, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 6
  store %struct.node** %53, %struct.node*** %55, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %56

; <label>:56:                                     ; preds = %117, %47
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %120

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* @hash, align 4
  %62 = load i32, i32* @move_number, align 4
  %63 = load i32, i32* @ply, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %69 = load i32, i32* %5, align 4
  call void @make(%struct.move_s* %68, i32 %69)
  %70 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @check_legal(%struct.move_s* %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %113

; <label>:75:                                     ; preds = %60
  %76 = call i8* @Xmalloc(i32 56)
  %77 = bitcast i8* %76 to %struct.node*
  store %struct.node* %77, %struct.node** %7, align 8
  %78 = load %struct.node*, %struct.node** %7, align 8
  %79 = getelementptr inbounds %struct.node, %struct.node* %78, i32 0, i32 0
  store i8 0, i8* %79, align 8
  %80 = load %struct.node*, %struct.node** %7, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 5
  store i32 1, i32* %81, align 8
  %82 = load %struct.node*, %struct.node** %7, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 4
  store i32 1, i32* %83, align 4
  %84 = load %struct.node*, %struct.node** %7, align 8
  %85 = getelementptr inbounds %struct.node, %struct.node* %84, i32 0, i32 1
  store i8 0, i8* %85, align 1
  %86 = load %struct.node*, %struct.node** %2, align 8
  %87 = load %struct.node*, %struct.node** %7, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 7
  store %struct.node* %86, %struct.node** %88, align 8
  %89 = load %struct.node*, %struct.node** %7, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 3
  store i8 0, i8* %90, align 1
  %91 = load %struct.node*, %struct.node** %7, align 8
  %92 = getelementptr inbounds %struct.node, %struct.node* %91, i32 0, i32 2
  store i8 0, i8* %92, align 2
  %93 = load %struct.node*, %struct.node** %7, align 8
  %94 = getelementptr inbounds %struct.node, %struct.node* %93, i32 0, i32 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 %96
  %98 = bitcast %struct.move_s* %94 to i8*
  %99 = bitcast %struct.move_s* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 24, i32 8, i1 false)
  %100 = load %struct.node*, %struct.node** %7, align 8
  %101 = load %struct.node*, %struct.node** %2, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 6
  %103 = load %struct.node**, %struct.node*** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.node*, %struct.node** %103, i64 %105
  store %struct.node* %100, %struct.node** %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = load %struct.node*, %struct.node** %7, align 8
  call void @pn_eval(%struct.node* %109)
  %110 = load %struct.node*, %struct.node** %7, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %110)
  %111 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %112 = load i32, i32* %5, align 4
  call void @unmake(%struct.move_s* %111, i32 %112)
  br label %116

; <label>:113:                                    ; preds = %60
  %114 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %115 = load i32, i32* %5, align 4
  call void @unmake(%struct.move_s* %114, i32 %115)
  br label %116

; <label>:116:                                    ; preds = %113, %75
  br label %117

; <label>:117:                                    ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %56

; <label>:120:                                    ; preds = %56
  %121 = load %struct.node*, %struct.node** %2, align 8
  %122 = getelementptr inbounds %struct.node, %struct.node* %121, i32 0, i32 2
  store i8 1, i8* %122, align 2
  %123 = load i32, i32* %6, align 4
  %124 = trunc i32 %123 to i8
  %125 = load %struct.node*, %struct.node** %2, align 8
  %126 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 1
  store i8 %124, i8* %126, align 1
  %127 = load %struct.node*, %struct.node** %2, align 8
  %128 = getelementptr inbounds %struct.node, %struct.node* %127, i32 0, i32 1
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %160

; <label>:132:                                    ; preds = %120
  %133 = load %struct.node*, %struct.node** %2, align 8
  %134 = getelementptr inbounds %struct.node, %struct.node* %133, i32 0, i32 2
  store i8 0, i8* %134, align 2
  %135 = load %struct.node*, %struct.node** %2, align 8
  %136 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 3
  store i8 1, i8* %136, align 1
  %137 = load i32, i32* @Variant, align 4
  %138 = icmp ne i32 %137, 3
  br i1 %138, label %139, label %145

; <label>:139:                                    ; preds = %132
  %140 = load i32, i32* @Variant, align 4
  %141 = icmp ne i32 %140, 4
  br i1 %141, label %142, label %145

; <label>:142:                                    ; preds = %139
  %143 = load %struct.node*, %struct.node** %2, align 8
  %144 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 0
  store i8 3, i8* %144, align 8
  br label %159

; <label>:145:                                    ; preds = %139, %132
  %146 = load i32, i32* @white_to_move, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 0, i32 1
  %150 = load i32, i32* @root_to_move, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %155

; <label>:152:                                    ; preds = %145
  %153 = load %struct.node*, %struct.node** %2, align 8
  %154 = getelementptr inbounds %struct.node, %struct.node* %153, i32 0, i32 0
  store i8 1, i8* %154, align 8
  br label %158

; <label>:155:                                    ; preds = %145
  %156 = load %struct.node*, %struct.node** %2, align 8
  %157 = getelementptr inbounds %struct.node, %struct.node* %156, i32 0, i32 0
  store i8 0, i8* %157, align 8
  br label %158

; <label>:158:                                    ; preds = %155, %152
  br label %159

; <label>:159:                                    ; preds = %158, %142
  br label %160

; <label>:160:                                    ; preds = %159, %120
  %161 = load i32, i32* %3, align 4
  %162 = load i32, i32* @nodecount, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* @nodecount, align 4
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @frees, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* @frees, align 4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @update_ancestors(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %5 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %5, %struct.node** %3, align 8
  %6 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %6, %struct.node** %4, align 8
  br label %7

; <label>:7:                                      ; preds = %21, %1
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = icmp ne %struct.node* %8, null
  br i1 %9, label %10, label %25

; <label>:10:                                     ; preds = %7
  %11 = load %struct.node*, %struct.node** %3, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %11)
  %12 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %12, %struct.node** %4, align 8
  %13 = load %struct.node*, %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.move_s, %struct.move_s* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %10
  %19 = load %struct.node*, %struct.node** %3, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 8
  call void @unmake(%struct.move_s* %20, i32 0)
  br label %21

; <label>:21:                                     ; preds = %18, %10
  %22 = load %struct.node*, %struct.node** %3, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 7
  %24 = load %struct.node*, %struct.node** %23, align 8
  store %struct.node* %24, %struct.node** %3, align 8
  br label %7

; <label>:25:                                     ; preds = %7
  %26 = load %struct.node*, %struct.node** %4, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.move_s, %struct.move_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %25
  %32 = load %struct.node*, %struct.node** %4, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 8
  call void @make(%struct.move_s* %33, i32 0)
  br label %34

; <label>:34:                                     ; preds = %31, %25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @pn2_eval(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  store i32 0, i32* @nodecount2, align 4
  store i32 1, i32* @pn2, align 4
  %6 = load %struct.node*, %struct.node** %2, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 7
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %5, align 8
  %9 = load %struct.node*, %struct.node** %2, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 7
  store %struct.node* null, %struct.node** %10, align 8
  %11 = load %struct.node*, %struct.node** %2, align 8
  call void @pn_eval(%struct.node* %11)
  %12 = load %struct.node*, %struct.node** %2, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %12)
  %13 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %13, %struct.node** %4, align 8
  br label %14

; <label>:14:                                     ; preds = %30, %1
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %14
  %20 = load %struct.node*, %struct.node** %2, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* @nodecount2, align 4
  %26 = load i32, i32* @nodecount, align 4
  %27 = icmp slt i32 %25, %26
  br label %28

; <label>:28:                                     ; preds = %24, %19, %14
  %29 = phi i1 [ false, %19 ], [ false, %14 ], [ %27, %24 ]
  br i1 %29, label %30, label %35

; <label>:30:                                     ; preds = %28
  %31 = load %struct.node*, %struct.node** %2, align 8
  %32 = call %struct.node* @select_most_proving(%struct.node* %31)
  store %struct.node* %32, %struct.node** %3, align 8
  %33 = load %struct.node*, %struct.node** %3, align 8
  call void @develop_node(%struct.node* %33)
  %34 = load %struct.node*, %struct.node** %3, align 8
  call void @update_ancestors(%struct.node* %34)
  br label %14

; <label>:35:                                     ; preds = %28
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 2
  store i8 0, i8* %37, align 2
  %38 = load %struct.node*, %struct.node** %2, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 1
  store i8 0, i8* %39, align 1
  %40 = load %struct.node*, %struct.node** %5, align 8
  %41 = load %struct.node*, %struct.node** %2, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 7
  store %struct.node* %40, %struct.node** %42, align 8
  store i32 0, i32* @pn2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @proofnumberscan() #0 {
  %1 = alloca [512 x %struct.move_s], align 16
  %2 = alloca [512 x i32], align 16
  %3 = alloca [512 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca %struct.node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [8 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.move_s, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = call i64 @rtime()
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* @PBSize, align 4
  %26 = sext i32 %25 to i64
  %27 = call noalias i8* @calloc(i64 %26, i64 56) #4
  store i8* %27, i8** @membuff, align 8
  %28 = call noalias i8* @calloc(i64 1, i64 56) #4
  %29 = bitcast i8* %28 to %struct.node*
  store %struct.node* %29, %struct.node** %9, align 8
  %30 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %1, i64 0, i64 0
  call void @gen(%struct.move_s* %30)
  %31 = load i32, i32* @numb_moves, align 4
  store i32 %31, i32* %7, align 4
  store i32 0, i32* @alllosers, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @rootlosers to i8*), i8 0, i64 1200, i32 16, i1 false)
  %32 = getelementptr inbounds [512 x i32], [512 x i32]* %3, i32 0, i32 0
  %33 = bitcast i32* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* %33, i8 0, i64 2048, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  store i32 0, i32* %6, align 4
  %34 = call i32 @in_check()
  store i32 %34, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %35

; <label>:35:                                     ; preds = %60, %0
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %63

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %1, i64 0, i64 0
  %41 = load i32, i32* %4, align 4
  call void @make(%struct.move_s* %40, i32 %41)
  %42 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %1, i64 0, i64 0
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @check_legal(%struct.move_s* %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

; <label>:47:                                     ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 0, i64 %51
  store i32 1, i32* %52, align 4
  br label %57

; <label>:53:                                     ; preds = %39
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 0, i64 %55
  store i32 0, i32* %56, align 4
  br label %57

; <label>:57:                                     ; preds = %53, %47
  %58 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %1, i64 0, i64 0
  %59 = load i32, i32* %4, align 4
  call void @unmake(%struct.move_s* %58, i32 %59)
  br label %60

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %35

; <label>:63:                                     ; preds = %35
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

; <label>:66:                                     ; preds = %63
  call void @Xfree()
  %67 = load i8*, i8** @membuff, align 8
  call void @free(i8* %67) #4
  %68 = load %struct.node*, %struct.node** %9, align 8
  %69 = bitcast %struct.node* %68 to i8*
  call void @free(i8* %69) #4
  br label %542

; <label>:70:                                     ; preds = %63
  store i32 0, i32* %15, align 4
  store i32 1, i32* @nodecount, align 4
  store i32 0, i32* @iters, align 4
  store i32 0, i32* @maxply, align 4
  store i32 0, i32* @forwards, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %71 = load i32, i32* @hash, align 4
  %72 = load i32, i32* @move_number, align 4
  %73 = load i32, i32* @ply, align 4
  %74 = add nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load i32, i32* @white_to_move, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 0, i32 1
  store i32 %81, i32* @root_to_move, align 4
  %82 = load %struct.node*, %struct.node** %9, align 8
  call void @pn_eval(%struct.node* %82)
  %83 = load %struct.node*, %struct.node** %9, align 8
  %84 = getelementptr inbounds %struct.node, %struct.node* %83, i32 0, i32 0
  %85 = load i8, i8* %84, align 8
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %94, label %88

; <label>:88:                                     ; preds = %70
  %89 = load %struct.node*, %struct.node** %9, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 8
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

; <label>:94:                                     ; preds = %88, %70
  call void @Xfree()
  %95 = load i8*, i8** @membuff, align 8
  call void @free(i8* %95) #4
  %96 = load %struct.node*, %struct.node** %9, align 8
  %97 = bitcast %struct.node* %96 to i8*
  call void @free(i8* %97) #4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %542

; <label>:98:                                     ; preds = %88
  %99 = load %struct.node*, %struct.node** %9, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %99)
  br label %100

; <label>:100:                                    ; preds = %349, %258, %98
  %101 = call i64 @rtime()
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @rdifftime(i64 %101, i64 %102)
  %104 = load i32, i32* @pn_time, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %127

; <label>:106:                                    ; preds = %100
  %107 = call i32 @interrupt()
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %127, label %109

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* @bufftop, align 4
  %111 = zext i32 %110 to i64
  %112 = load i32, i32* @PBSize, align 4
  %113 = sub nsw i32 %112, 10000
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 56
  %116 = icmp ult i64 %111, %115
  br i1 %116, label %117, label %127

; <label>:117:                                    ; preds = %109
  %118 = load %struct.node*, %struct.node** %9, align 8
  %119 = getelementptr inbounds %struct.node, %struct.node* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

; <label>:122:                                    ; preds = %117
  %123 = load %struct.node*, %struct.node** %9, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br label %127

; <label>:127:                                    ; preds = %122, %117, %109, %106, %100
  %128 = phi i1 [ false, %117 ], [ false, %109 ], [ false, %106 ], [ false, %100 ], [ %126, %122 ]
  br i1 %128, label %129, label %350

; <label>:129:                                    ; preds = %127
  %130 = load i32, i32* @iters, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @iters, align 4
  %132 = load i32, i32* @nodecount, align 4
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* @nodecount, align 4
  %134 = srem i32 %133, 100
  %135 = icmp slt i32 %134, 66
  br i1 %135, label %136, label %209

; <label>:136:                                    ; preds = %129
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  %139 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %139, %struct.node** %11, align 8
  %140 = load %struct.node*, %struct.node** %11, align 8
  %141 = call %struct.node* @select_most_proving(%struct.node* %140)
  store %struct.node* %141, %struct.node** %10, align 8
  %142 = load %struct.node*, %struct.node** %10, align 8
  call void @develop_node(%struct.node* %142)
  %143 = load %struct.node*, %struct.node** %10, align 8
  call void @update_ancestors(%struct.node* %143)
  store i32 0, i32* %4, align 4
  br label %144

; <label>:144:                                    ; preds = %158, %136
  %145 = load %struct.node*, %struct.node** %9, align 8
  %146 = getelementptr inbounds %struct.node, %struct.node* %145, i32 0, i32 6
  %147 = load %struct.node**, %struct.node*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.node*, %struct.node** %147, i64 %149
  %151 = load %struct.node*, %struct.node** %150, align 8
  %152 = getelementptr inbounds %struct.node, %struct.node* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.node*, %struct.node** %9, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %158, label %161

; <label>:158:                                    ; preds = %144
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %144

; <label>:161:                                    ; preds = %144
  %162 = load i32, i32* @nodecount, align 4
  %163 = load i32, i32* %16, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [512 x i32], [512 x i32]* %3, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %164
  store i32 %169, i32* %167, align 4
  %170 = load %struct.node*, %struct.node** %9, align 8
  %171 = getelementptr inbounds %struct.node, %struct.node* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %194

; <label>:174:                                    ; preds = %161
  %175 = load %struct.node*, %struct.node** %9, align 8
  %176 = getelementptr inbounds %struct.node, %struct.node* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 100000000
  br i1 %178, label %179, label %194

; <label>:179:                                    ; preds = %174
  store i32 1, i32* @forcedwin, align 4
  %180 = load i32, i32* @kibitzed, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

; <label>:182:                                    ; preds = %179
  store i32 1, i32* @kibitzed, align 4
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  br label %184

; <label>:184:                                    ; preds = %182, %179
  %185 = load %struct.node*, %struct.node** %9, align 8
  %186 = getelementptr inbounds %struct.node, %struct.node* %185, i32 0, i32 6
  %187 = load %struct.node**, %struct.node*** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.node*, %struct.node** %187, i64 %189
  %191 = load %struct.node*, %struct.node** %190, align 8
  %192 = getelementptr inbounds %struct.node, %struct.node* %191, i32 0, i32 8
  %193 = bitcast %struct.move_s* %192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %193, i64 24, i32 4, i1 false)
  br label %208

; <label>:194:                                    ; preds = %174, %161
  %195 = load %struct.node*, %struct.node** %9, align 8
  %196 = getelementptr inbounds %struct.node, %struct.node* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %207

; <label>:199:                                    ; preds = %194
  %200 = load %struct.node*, %struct.node** %9, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 100000000
  br i1 %203, label %204, label %207

; <label>:204:                                    ; preds = %199
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %15, align 4
  br label %207

; <label>:207:                                    ; preds = %204, %199, %194
  br label %208

; <label>:208:                                    ; preds = %207, %184
  br label %349

; <label>:209:                                    ; preds = %129
  %210 = load i32, i32* %18, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %18, align 4
  store i32 100000000, i32* %12, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %212

; <label>:212:                                    ; preds = %252, %209
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %255

; <label>:216:                                    ; preds = %212
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [512 x i32], [512 x i32]* %3, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %242

; <label>:223:                                    ; preds = %216
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %242

; <label>:229:                                    ; preds = %223
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %242, label %235

; <label>:235:                                    ; preds = %229
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [512 x i32], [512 x i32]* %3, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %4, align 4
  store i32 %240, i32* %14, align 4
  %241 = load i32, i32* %5, align 4
  store i32 %241, i32* %13, align 4
  br label %242

; <label>:242:                                    ; preds = %235, %229, %223, %216
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

; <label>:248:                                    ; preds = %242
  %249 = load i32, i32* %5, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %5, align 4
  br label %251

; <label>:251:                                    ; preds = %248, %242
  br label %252

; <label>:252:                                    ; preds = %251
  %253 = load i32, i32* %4, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %4, align 4
  br label %212

; <label>:255:                                    ; preds = %212
  %256 = load i32, i32* %12, align 4
  %257 = icmp eq i32 %256, 100000000
  br i1 %257, label %258, label %261

; <label>:258:                                    ; preds = %255
  %259 = load i32, i32* @nodecount, align 4
  %260 = add nsw i32 %259, 30
  store i32 %260, i32* @nodecount, align 4
  br label %100

; <label>:261:                                    ; preds = %255
  %262 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %1, i64 0, i64 0
  %263 = load i32, i32* %14, align 4
  call void @make(%struct.move_s* %262, i32 %263)
  %264 = load %struct.node*, %struct.node** %9, align 8
  %265 = getelementptr inbounds %struct.node, %struct.node* %264, i32 0, i32 6
  %266 = load %struct.node**, %struct.node*** %265, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.node*, %struct.node** %266, i64 %268
  %270 = load %struct.node*, %struct.node** %269, align 8
  store %struct.node* %270, %struct.node** %11, align 8
  %271 = load %struct.node*, %struct.node** %11, align 8
  %272 = call %struct.node* @select_most_proving(%struct.node* %271)
  store %struct.node* %272, %struct.node** %10, align 8
  %273 = load %struct.node*, %struct.node** %10, align 8
  call void @develop_node(%struct.node* %273)
  %274 = load %struct.node*, %struct.node** %10, align 8
  call void @update_ancestors(%struct.node* %274)
  %275 = load i32, i32* @nodecount, align 4
  %276 = load i32, i32* %16, align 4
  %277 = sub nsw i32 %275, %276
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [512 x i32], [512 x i32]* %3, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, %277
  store i32 %282, i32* %280, align 4
  %283 = load %struct.node*, %struct.node** %9, align 8
  %284 = getelementptr inbounds %struct.node, %struct.node* %283, i32 0, i32 6
  %285 = load %struct.node**, %struct.node*** %284, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.node*, %struct.node** %285, i64 %287
  %289 = load %struct.node*, %struct.node** %288, align 8
  %290 = getelementptr inbounds %struct.node, %struct.node* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %319

; <label>:293:                                    ; preds = %261
  %294 = load %struct.node*, %struct.node** %9, align 8
  %295 = getelementptr inbounds %struct.node, %struct.node* %294, i32 0, i32 6
  %296 = load %struct.node**, %struct.node*** %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.node*, %struct.node** %296, i64 %298
  %300 = load %struct.node*, %struct.node** %299, align 8
  %301 = getelementptr inbounds %struct.node, %struct.node* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 8
  %303 = icmp eq i32 %302, 100000000
  br i1 %303, label %304, label %319

; <label>:304:                                    ; preds = %293
  store i32 1, i32* @forcedwin, align 4
  %305 = load i32, i32* @kibitzed, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %309, label %307

; <label>:307:                                    ; preds = %304
  store i32 1, i32* @kibitzed, align 4
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %309

; <label>:309:                                    ; preds = %307, %304
  %310 = load %struct.node*, %struct.node** %9, align 8
  %311 = getelementptr inbounds %struct.node, %struct.node* %310, i32 0, i32 6
  %312 = load %struct.node**, %struct.node*** %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.node*, %struct.node** %312, i64 %314
  %316 = load %struct.node*, %struct.node** %315, align 8
  %317 = getelementptr inbounds %struct.node, %struct.node* %316, i32 0, i32 8
  %318 = bitcast %struct.move_s* %317 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %318, i64 24, i32 4, i1 false)
  br label %348

; <label>:319:                                    ; preds = %293, %261
  %320 = load %struct.node*, %struct.node** %9, align 8
  %321 = getelementptr inbounds %struct.node, %struct.node* %320, i32 0, i32 6
  %322 = load %struct.node**, %struct.node*** %321, align 8
  %323 = load i32, i32* %13, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.node*, %struct.node** %322, i64 %324
  %326 = load %struct.node*, %struct.node** %325, align 8
  %327 = getelementptr inbounds %struct.node, %struct.node* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %347

; <label>:330:                                    ; preds = %319
  %331 = load %struct.node*, %struct.node** %9, align 8
  %332 = getelementptr inbounds %struct.node, %struct.node* %331, i32 0, i32 6
  %333 = load %struct.node**, %struct.node*** %332, align 8
  %334 = load i32, i32* %13, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.node*, %struct.node** %333, i64 %335
  %337 = load %struct.node*, %struct.node** %336, align 8
  %338 = getelementptr inbounds %struct.node, %struct.node* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %339, 100000000
  br i1 %340, label %341, label %347

; <label>:341:                                    ; preds = %330
  %342 = load i32, i32* %14, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i64 0, i64 %343
  store i32 1, i32* %344, align 4
  %345 = load i32, i32* %15, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %15, align 4
  br label %347

; <label>:347:                                    ; preds = %341, %330, %319
  br label %348

; <label>:348:                                    ; preds = %347, %309
  br label %349

; <label>:349:                                    ; preds = %348, %208
  br label %100

; <label>:350:                                    ; preds = %127
  store i32 0, i32* %5, align 4
  store float -1.000000e+00, float* %21, align 4
  store i32 0, i32* %22, align 4
  %351 = load %struct.node*, %struct.node** %9, align 8
  %352 = getelementptr inbounds %struct.node, %struct.node* %351, i32 0, i32 2
  %353 = load i8, i8* %352, align 2
  %354 = icmp ne i8 %353, 0
  br i1 %354, label %355, label %480

; <label>:355:                                    ; preds = %350
  store i32 0, i32* %4, align 4
  br label %356

; <label>:356:                                    ; preds = %476, %355
  %357 = load i32, i32* %4, align 4
  %358 = load i32, i32* %7, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %479

; <label>:360:                                    ; preds = %356
  %361 = load i32, i32* %4, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 0, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %475

; <label>:366:                                    ; preds = %360
  %367 = load i32, i32* %4, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %1, i64 0, i64 %368
  %370 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %369, i8* %370)
  %371 = load %struct.node*, %struct.node** %9, align 8
  %372 = getelementptr inbounds %struct.node, %struct.node* %371, i32 0, i32 6
  %373 = load %struct.node**, %struct.node*** %372, align 8
  %374 = load i32, i32* %5, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.node*, %struct.node** %373, i64 %375
  %377 = load %struct.node*, %struct.node** %376, align 8
  %378 = getelementptr inbounds %struct.node, %struct.node* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %462

; <label>:381:                                    ; preds = %366
  %382 = load %struct.node*, %struct.node** %9, align 8
  %383 = getelementptr inbounds %struct.node, %struct.node* %382, i32 0, i32 6
  %384 = load %struct.node**, %struct.node*** %383, align 8
  %385 = load i32, i32* %5, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.node*, %struct.node** %384, i64 %386
  %388 = load %struct.node*, %struct.node** %387, align 8
  %389 = getelementptr inbounds %struct.node, %struct.node* %388, i32 0, i32 5
  %390 = load i32, i32* %389, align 8
  %391 = sitofp i32 %390 to float
  %392 = load %struct.node*, %struct.node** %9, align 8
  %393 = getelementptr inbounds %struct.node, %struct.node* %392, i32 0, i32 6
  %394 = load %struct.node**, %struct.node*** %393, align 8
  %395 = load i32, i32* %5, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.node*, %struct.node** %394, i64 %396
  %398 = load %struct.node*, %struct.node** %397, align 8
  %399 = getelementptr inbounds %struct.node, %struct.node* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 4
  %401 = sitofp i32 %400 to float
  %402 = fdiv float %391, %401
  %403 = load float, float* %21, align 4
  %404 = fcmp ogt float %402, %403
  br i1 %404, label %405, label %436

; <label>:405:                                    ; preds = %381
  %406 = load %struct.node*, %struct.node** %9, align 8
  %407 = getelementptr inbounds %struct.node, %struct.node* %406, i32 0, i32 6
  %408 = load %struct.node**, %struct.node*** %407, align 8
  %409 = load i32, i32* %5, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.node*, %struct.node** %408, i64 %410
  %412 = load %struct.node*, %struct.node** %411, align 8
  %413 = getelementptr inbounds %struct.node, %struct.node* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 8
  %415 = sitofp i32 %414 to float
  %416 = load %struct.node*, %struct.node** %9, align 8
  %417 = getelementptr inbounds %struct.node, %struct.node* %416, i32 0, i32 6
  %418 = load %struct.node**, %struct.node*** %417, align 8
  %419 = load i32, i32* %5, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.node*, %struct.node** %418, i64 %420
  %422 = load %struct.node*, %struct.node** %421, align 8
  %423 = getelementptr inbounds %struct.node, %struct.node* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 4
  %425 = sitofp i32 %424 to float
  %426 = fdiv float %415, %425
  store float %426, float* %21, align 4
  %427 = load %struct.node*, %struct.node** %9, align 8
  %428 = getelementptr inbounds %struct.node, %struct.node* %427, i32 0, i32 6
  %429 = load %struct.node**, %struct.node*** %428, align 8
  %430 = load i32, i32* %5, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.node*, %struct.node** %429, i64 %431
  %433 = load %struct.node*, %struct.node** %432, align 8
  %434 = getelementptr inbounds %struct.node, %struct.node* %433, i32 0, i32 8
  %435 = bitcast %struct.move_s* %434 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %435, i64 24, i32 4, i1 false)
  br label %436

; <label>:436:                                    ; preds = %405, %381
  %437 = load %struct.node*, %struct.node** %9, align 8
  %438 = getelementptr inbounds %struct.node, %struct.node* %437, i32 0, i32 6
  %439 = load %struct.node**, %struct.node*** %438, align 8
  %440 = load i32, i32* %5, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.node*, %struct.node** %439, i64 %441
  %443 = load %struct.node*, %struct.node** %442, align 8
  %444 = getelementptr inbounds %struct.node, %struct.node* %443, i32 0, i32 5
  %445 = load i32, i32* %444, align 8
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %461

; <label>:447:                                    ; preds = %436
  %448 = load %struct.node*, %struct.node** %9, align 8
  %449 = getelementptr inbounds %struct.node, %struct.node* %448, i32 0, i32 6
  %450 = load %struct.node**, %struct.node*** %449, align 8
  %451 = load i32, i32* %5, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.node*, %struct.node** %450, i64 %452
  %454 = load %struct.node*, %struct.node** %453, align 8
  %455 = getelementptr inbounds %struct.node, %struct.node* %454, i32 0, i32 4
  %456 = load i32, i32* %455, align 4
  %457 = icmp eq i32 %456, 100000000
  br i1 %457, label %458, label %461

; <label>:458:                                    ; preds = %447
  %459 = load i32, i32* %22, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %22, align 4
  br label %461

; <label>:461:                                    ; preds = %458, %447, %436
  br label %472

; <label>:462:                                    ; preds = %366
  store i32 1, i32* @forcedwin, align 4
  %463 = load %struct.node*, %struct.node** %9, align 8
  %464 = getelementptr inbounds %struct.node, %struct.node* %463, i32 0, i32 6
  %465 = load %struct.node**, %struct.node*** %464, align 8
  %466 = load i32, i32* %5, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.node*, %struct.node** %465, i64 %467
  %469 = load %struct.node*, %struct.node** %468, align 8
  %470 = getelementptr inbounds %struct.node, %struct.node* %469, i32 0, i32 8
  %471 = bitcast %struct.move_s* %470 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %471, i64 24, i32 4, i1 false)
  store float 1.000000e+08, float* %21, align 4
  br label %472

; <label>:472:                                    ; preds = %462, %461
  %473 = load i32, i32* %5, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %5, align 4
  br label %475

; <label>:475:                                    ; preds = %472, %360
  br label %476

; <label>:476:                                    ; preds = %475
  %477 = load i32, i32* %4, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %4, align 4
  br label %356

; <label>:479:                                    ; preds = %356
  br label %480

; <label>:480:                                    ; preds = %479, %350
  %481 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i32 0, i32 0
  %482 = bitcast %struct.move_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %482, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %23, i8* %481)
  %483 = load i32, i32* @xb_mode, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %500

; <label>:485:                                    ; preds = %480
  %486 = load i32, i32* @post, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %500

; <label>:488:                                    ; preds = %485
  %489 = load %struct.node*, %struct.node** %9, align 8
  %490 = getelementptr inbounds %struct.node, %struct.node* %489, i32 0, i32 4
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.node*, %struct.node** %9, align 8
  %493 = getelementptr inbounds %struct.node, %struct.node* %492, i32 0, i32 5
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* %22, align 4
  %496 = load i32, i32* @maxply, align 4
  %497 = load i32, i32* %17, align 4
  %498 = load i32, i32* %18, align 4
  %499 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i32 0, i32 0), i32 %491, i32 %494, i32 %495, i32 %496, i32 %497, i32 %498)
  br label %500

; <label>:500:                                    ; preds = %488, %485, %480
  %501 = load i32, i32* %22, align 4
  %502 = load i32, i32* %6, align 4
  %503 = sub nsw i32 %502, 1
  %504 = icmp eq i32 %501, %503
  br i1 %504, label %505, label %533

; <label>:505:                                    ; preds = %500
  %506 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %507

; <label>:507:                                    ; preds = %529, %505
  %508 = load i32, i32* %4, align 4
  %509 = load i32, i32* %7, align 4
  %510 = icmp slt i32 %508, %509
  br i1 %510, label %511, label %532

; <label>:511:                                    ; preds = %507
  %512 = load i32, i32* %4, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i64 0, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %528, label %517

; <label>:517:                                    ; preds = %511
  %518 = load i32, i32* %4, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 0, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %528

; <label>:523:                                    ; preds = %517
  store i32 1, i32* @forcedwin, align 4
  %524 = load i32, i32* %4, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %1, i64 0, i64 %525
  %527 = bitcast %struct.move_s* %526 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %527, i64 24, i32 4, i1 false)
  br label %532

; <label>:528:                                    ; preds = %517, %511
  br label %529

; <label>:529:                                    ; preds = %528
  %530 = load i32, i32* %4, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %4, align 4
  br label %507

; <label>:532:                                    ; preds = %523, %507
  br label %533

; <label>:533:                                    ; preds = %532, %500
  %534 = load i32, i32* %22, align 4
  %535 = load i32, i32* %6, align 4
  %536 = icmp eq i32 %534, %535
  br i1 %536, label %537, label %538

; <label>:537:                                    ; preds = %533
  store i32 1, i32* @alllosers, align 4
  br label %538

; <label>:538:                                    ; preds = %537, %533
  call void @Xfree()
  %539 = load i8*, i8** @membuff, align 8
  call void @free(i8* %539) #4
  %540 = load %struct.node*, %struct.node** %9, align 8
  %541 = bitcast %struct.node* %540 to i8*
  call void @free(i8* %541) #4
  br label %542

; <label>:542:                                    ; preds = %538, %94, %66
  ret void
}

declare i64 @rtime() #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare i32 @rdifftime(i64, i64) #2

declare i32 @interrupt() #2

declare i32 @printf(i8*, ...) #2

declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @proofnumbersearch() #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [8192 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store i32 1, i32* @nodecount, align 4
  store i32 0, i32* @iters, align 4
  store i32 0, i32* @frees, align 4
  store i32 1, i32* @ply, align 4
  store i32 0, i32* @maxply, align 4
  store i32 0, i32* @forwards, align 4
  %10 = load i32, i32* @hash, align 4
  %11 = load i32, i32* @move_number, align 4
  %12 = load i32, i32* @ply, align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %15
  store i32 %10, i32* %16, align 4
  %17 = load i32, i32* @white_to_move, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  store i32 %20, i32* @root_to_move, align 4
  %21 = call i64 @rtime()
  store i64 %21, i64* %4, align 8
  %22 = call noalias i8* @calloc(i64 1, i64 56) #4
  %23 = bitcast i8* %22 to %struct.node*
  store %struct.node* %23, %struct.node** %1, align 8
  %24 = load i32, i32* @PBSize, align 4
  %25 = sext i32 %24 to i64
  %26 = call noalias i8* @calloc(i64 %25, i64 56) #4
  store i8* %26, i8** @membuff, align 8
  %27 = load %struct.node*, %struct.node** %1, align 8
  call void @pn_eval(%struct.node* %27)
  %28 = load %struct.node*, %struct.node** %1, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  call void @Xfree()
  %34 = load %struct.node*, %struct.node** %1, align 8
  %35 = bitcast %struct.node* %34 to i8*
  call void @free(i8* %35) #4
  %36 = load i8*, i8** @membuff, align 8
  call void @free(i8* %36) #4
  br label %383

; <label>:37:                                     ; preds = %0
  %38 = load %struct.node*, %struct.node** %1, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %38)
  %39 = load %struct.node*, %struct.node** %1, align 8
  store %struct.node* %39, %struct.node** %3, align 8
  br label %40

; <label>:40:                                     ; preds = %81, %37
  %41 = load %struct.node*, %struct.node** %1, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

; <label>:45:                                     ; preds = %40
  %46 = load %struct.node*, %struct.node** %1, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* @bufftop, align 4
  %52 = zext i32 %51 to i64
  %53 = load i32, i32* @PBSize, align 4
  %54 = sub nsw i32 %53, 10000
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 56
  %57 = icmp ult i64 %52, %56
  br label %58

; <label>:58:                                     ; preds = %50, %45, %40
  %59 = phi i1 [ false, %45 ], [ false, %40 ], [ %57, %50 ]
  br i1 %59, label %60, label %82

; <label>:60:                                     ; preds = %58
  %61 = load %struct.node*, %struct.node** %3, align 8
  %62 = call %struct.node* @select_most_proving(%struct.node* %61)
  store %struct.node* %62, %struct.node** %2, align 8
  %63 = load %struct.node*, %struct.node** %2, align 8
  call void @develop_node(%struct.node* %63)
  %64 = load %struct.node*, %struct.node** %2, align 8
  call void @update_ancestors(%struct.node* %64)
  %65 = load i32, i32* @iters, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @iters, align 4
  %67 = load i32, i32* @iters, align 4
  %68 = srem i32 %67, 32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

; <label>:70:                                     ; preds = %60
  %71 = call i64 @rtime()
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @rdifftime(i64 %71, i64 %72)
  %74 = load i32, i32* @pn_time, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %80

; <label>:76:                                     ; preds = %70
  %77 = call i32 @interrupt()
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

; <label>:79:                                     ; preds = %76
  br label %82

; <label>:80:                                     ; preds = %76, %70
  br label %81

; <label>:81:                                     ; preds = %80, %60
  br label %40

; <label>:82:                                     ; preds = %79, %58
  %83 = load %struct.node*, %struct.node** %1, align 8
  %84 = getelementptr inbounds %struct.node, %struct.node* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.node*, %struct.node** %1, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @nodecount, align 4
  %90 = load i32, i32* @frees, align 4
  %91 = load i32, i32* @nodecount, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 56
  %94 = uitofp i64 %93 to float
  %95 = fdiv float %94, 0x4130000000000000
  %96 = fpext float %95 to double
  %97 = load i32, i32* @iters, align 4
  %98 = load i32, i32* @maxply, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i32 0, i32 0), i32 %85, i32 %88, i32 %89, i32 %90, double %96, i32 %97, i32 %98)
  %100 = load i32, i32* @xb_mode, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

; <label>:102:                                    ; preds = %82
  %103 = load i32, i32* @post, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

; <label>:105:                                    ; preds = %102
  %106 = load %struct.node*, %struct.node** %1, align 8
  %107 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.node*, %struct.node** %1, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @nodecount, align 4
  %113 = load i32, i32* @forwards, align 4
  %114 = load i32, i32* @iters, align 4
  %115 = load i32, i32* @maxply, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i32 0, i32 0), i32 %108, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  br label %117

; <label>:117:                                    ; preds = %105, %102, %82
  %118 = load i32, i32* @xb_mode, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %128, label %120

; <label>:120:                                    ; preds = %117
  %121 = call i64 @rtime()
  %122 = load i64, i64* %4, align 8
  %123 = call i32 @rdifftime(i64 %121, i64 %122)
  %124 = sitofp i32 %123 to float
  %125 = fpext float %124 to double
  %126 = fdiv double %125, 1.000000e+02
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), double %126)
  br label %128

; <label>:128:                                    ; preds = %120, %117
  br label %129

; <label>:129:                                    ; preds = %133, %128
  %130 = load %struct.node*, %struct.node** %3, align 8
  %131 = load %struct.node*, %struct.node** %1, align 8
  %132 = icmp ne %struct.node* %130, %131
  br i1 %132, label %133, label %139

; <label>:133:                                    ; preds = %129
  %134 = load %struct.node*, %struct.node** %3, align 8
  %135 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 8
  call void @unmake(%struct.move_s* %135, i32 0)
  %136 = load %struct.node*, %struct.node** %3, align 8
  %137 = getelementptr inbounds %struct.node, %struct.node* %136, i32 0, i32 7
  %138 = load %struct.node*, %struct.node** %137, align 8
  store %struct.node* %138, %struct.node** %3, align 8
  br label %129

; <label>:139:                                    ; preds = %129
  %140 = load %struct.node*, %struct.node** %1, align 8
  %141 = getelementptr inbounds %struct.node, %struct.node* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %276

; <label>:144:                                    ; preds = %139
  %145 = load %struct.node*, %struct.node** %1, align 8
  %146 = getelementptr inbounds %struct.node, %struct.node* %145, i32 0, i32 0
  store i8 1, i8* %146, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %149 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %149, i8 0, i64 8192, i32 16, i1 false)
  %150 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %150, i8 0, i64 8192, i32 16, i1 false)
  store i32 1, i32* @ply, align 4
  br label %151

; <label>:151:                                    ; preds = %227, %144
  %152 = load %struct.node*, %struct.node** %3, align 8
  %153 = getelementptr inbounds %struct.node, %struct.node* %152, i32 0, i32 2
  %154 = load i8, i8* %153, align 2
  %155 = icmp ne i8 %154, 0
  br i1 %155, label %156, label %228

; <label>:156:                                    ; preds = %151
  %157 = load i32, i32* @white_to_move, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 0, i32 1
  %161 = load i32, i32* @root_to_move, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %182

; <label>:163:                                    ; preds = %156
  store i32 0, i32* %7, align 4
  br label %164

; <label>:164:                                    ; preds = %178, %163
  %165 = load %struct.node*, %struct.node** %3, align 8
  %166 = getelementptr inbounds %struct.node, %struct.node* %165, i32 0, i32 6
  %167 = load %struct.node**, %struct.node*** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.node*, %struct.node** %167, i64 %169
  %171 = load %struct.node*, %struct.node** %170, align 8
  %172 = getelementptr inbounds %struct.node, %struct.node* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.node*, %struct.node** %3, align 8
  %175 = getelementptr inbounds %struct.node, %struct.node* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %173, %176
  br i1 %177, label %178, label %181

; <label>:178:                                    ; preds = %164
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %164

; <label>:181:                                    ; preds = %164
  br label %201

; <label>:182:                                    ; preds = %156
  store i32 0, i32* %7, align 4
  br label %183

; <label>:183:                                    ; preds = %197, %182
  %184 = load %struct.node*, %struct.node** %3, align 8
  %185 = getelementptr inbounds %struct.node, %struct.node* %184, i32 0, i32 6
  %186 = load %struct.node**, %struct.node*** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.node*, %struct.node** %186, i64 %188
  %190 = load %struct.node*, %struct.node** %189, align 8
  %191 = getelementptr inbounds %struct.node, %struct.node* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.node*, %struct.node** %3, align 8
  %194 = getelementptr inbounds %struct.node, %struct.node* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %192, %195
  br i1 %196, label %197, label %200

; <label>:197:                                    ; preds = %183
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %7, align 4
  br label %183

; <label>:200:                                    ; preds = %183
  br label %201

; <label>:201:                                    ; preds = %200, %181
  %202 = load %struct.node*, %struct.node** %3, align 8
  %203 = getelementptr inbounds %struct.node, %struct.node* %202, i32 0, i32 6
  %204 = load %struct.node**, %struct.node*** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.node*, %struct.node** %204, i64 %206
  %208 = load %struct.node*, %struct.node** %207, align 8
  store %struct.node* %208, %struct.node** %3, align 8
  %209 = load %struct.node*, %struct.node** %3, align 8
  %210 = getelementptr inbounds %struct.node, %struct.node* %209, i32 0, i32 8
  %211 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i32 0, i32 0
  call void @comp_to_coord(%struct.move_s* byval align 8 %210, i8* %211)
  %212 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i32 0, i32 0
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %212)
  %214 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0
  %215 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i32 0, i32 0
  %216 = call i8* @strcat(i8* %214, i8* %215) #4
  %217 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0
  %218 = call i8* @strcat(i8* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #4
  %219 = load %struct.node*, %struct.node** %3, align 8
  %220 = getelementptr inbounds %struct.node, %struct.node* %219, i32 0, i32 8
  call void @make(%struct.move_s* %220, i32 0)
  %221 = load i32, i32* @ply, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %227

; <label>:223:                                    ; preds = %201
  %224 = load %struct.node*, %struct.node** %3, align 8
  %225 = getelementptr inbounds %struct.node, %struct.node* %224, i32 0, i32 8
  %226 = bitcast %struct.move_s* %225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %226, i64 24, i32 4, i1 false)
  br label %227

; <label>:227:                                    ; preds = %223, %201
  store i32 1, i32* @forcedwin, align 4
  br label %151

; <label>:228:                                    ; preds = %151
  %229 = load i32, i32* @ply, align 4
  store i32 %229, i32* %9, align 4
  br label %230

; <label>:230:                                    ; preds = %234, %228
  %231 = load %struct.node*, %struct.node** %3, align 8
  %232 = load %struct.node*, %struct.node** %1, align 8
  %233 = icmp ne %struct.node* %231, %232
  br i1 %233, label %234, label %240

; <label>:234:                                    ; preds = %230
  %235 = load %struct.node*, %struct.node** %3, align 8
  %236 = getelementptr inbounds %struct.node, %struct.node* %235, i32 0, i32 8
  call void @unmake(%struct.move_s* %236, i32 0)
  %237 = load %struct.node*, %struct.node** %3, align 8
  %238 = getelementptr inbounds %struct.node, %struct.node* %237, i32 0, i32 7
  %239 = load %struct.node*, %struct.node** %238, align 8
  store %struct.node* %239, %struct.node** %3, align 8
  br label %230

; <label>:240:                                    ; preds = %230
  %241 = load i32, i32* @kibitzed, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %253, label %243

; <label>:243:                                    ; preds = %240
  %244 = load i32, i32* @xb_mode, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

; <label>:246:                                    ; preds = %243
  %247 = load i32, i32* @post, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

; <label>:249:                                    ; preds = %246
  store i32 1, i32* @kibitzed, align 4
  %250 = load i32, i32* %9, align 4
  %251 = sdiv i32 %250, 2
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 %251)
  br label %253

; <label>:253:                                    ; preds = %249, %246, %243, %240
  %254 = load i32, i32* %9, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %274

; <label>:256:                                    ; preds = %253
  %257 = load %struct.node*, %struct.node** %1, align 8
  %258 = getelementptr inbounds %struct.node, %struct.node* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %266, label %261

; <label>:261:                                    ; preds = %256
  %262 = load %struct.node*, %struct.node** %1, align 8
  %263 = getelementptr inbounds %struct.node, %struct.node* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %274

; <label>:266:                                    ; preds = %261, %256
  %267 = load i32, i32* @root_to_move, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %271

; <label>:269:                                    ; preds = %266
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store i32 3, i32* @result, align 4
  br label %273

; <label>:271:                                    ; preds = %266
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  store i32 2, i32* @result, align 4
  br label %273

; <label>:273:                                    ; preds = %271, %269
  br label %274

; <label>:274:                                    ; preds = %273, %261, %253
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %290

; <label>:276:                                    ; preds = %139
  %277 = load %struct.node*, %struct.node** %1, align 8
  %278 = getelementptr inbounds %struct.node, %struct.node* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %285

; <label>:281:                                    ; preds = %276
  %282 = load %struct.node*, %struct.node** %1, align 8
  %283 = getelementptr inbounds %struct.node, %struct.node* %282, i32 0, i32 0
  store i8 0, i8* %283, align 8
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %289

; <label>:285:                                    ; preds = %276
  %286 = load %struct.node*, %struct.node** %1, align 8
  %287 = getelementptr inbounds %struct.node, %struct.node* %286, i32 0, i32 0
  store i8 2, i8* %287, align 8
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %289

; <label>:289:                                    ; preds = %285, %281
  br label %290

; <label>:290:                                    ; preds = %289, %274
  store float -1.000000e+00, float* %8, align 4
  store i32 0, i32* %7, align 4
  br label %291

; <label>:291:                                    ; preds = %376, %290
  %292 = load i32, i32* %7, align 4
  %293 = load %struct.node*, %struct.node** %1, align 8
  %294 = getelementptr inbounds %struct.node, %struct.node* %293, i32 0, i32 1
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = icmp slt i32 %292, %296
  br i1 %297, label %298, label %379

; <label>:298:                                    ; preds = %291
  %299 = load %struct.node*, %struct.node** %1, align 8
  %300 = getelementptr inbounds %struct.node, %struct.node* %299, i32 0, i32 6
  %301 = load %struct.node**, %struct.node*** %300, align 8
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.node*, %struct.node** %301, i64 %303
  %305 = load %struct.node*, %struct.node** %304, align 8
  %306 = getelementptr inbounds %struct.node, %struct.node* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %365

; <label>:309:                                    ; preds = %298
  %310 = load %struct.node*, %struct.node** %1, align 8
  %311 = getelementptr inbounds %struct.node, %struct.node* %310, i32 0, i32 6
  %312 = load %struct.node**, %struct.node*** %311, align 8
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.node*, %struct.node** %312, i64 %314
  %316 = load %struct.node*, %struct.node** %315, align 8
  %317 = getelementptr inbounds %struct.node, %struct.node* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = sitofp i32 %318 to float
  %320 = load %struct.node*, %struct.node** %1, align 8
  %321 = getelementptr inbounds %struct.node, %struct.node* %320, i32 0, i32 6
  %322 = load %struct.node**, %struct.node*** %321, align 8
  %323 = load i32, i32* %7, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.node*, %struct.node** %322, i64 %324
  %326 = load %struct.node*, %struct.node** %325, align 8
  %327 = getelementptr inbounds %struct.node, %struct.node* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 4
  %329 = sitofp i32 %328 to float
  %330 = fdiv float %319, %329
  %331 = load float, float* %8, align 4
  %332 = fcmp ogt float %330, %331
  br i1 %332, label %333, label %364

; <label>:333:                                    ; preds = %309
  %334 = load %struct.node*, %struct.node** %1, align 8
  %335 = getelementptr inbounds %struct.node, %struct.node* %334, i32 0, i32 6
  %336 = load %struct.node**, %struct.node*** %335, align 8
  %337 = load i32, i32* %7, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.node*, %struct.node** %336, i64 %338
  %340 = load %struct.node*, %struct.node** %339, align 8
  %341 = getelementptr inbounds %struct.node, %struct.node* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 8
  %343 = sitofp i32 %342 to float
  %344 = load %struct.node*, %struct.node** %1, align 8
  %345 = getelementptr inbounds %struct.node, %struct.node* %344, i32 0, i32 6
  %346 = load %struct.node**, %struct.node*** %345, align 8
  %347 = load i32, i32* %7, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.node*, %struct.node** %346, i64 %348
  %350 = load %struct.node*, %struct.node** %349, align 8
  %351 = getelementptr inbounds %struct.node, %struct.node* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = sitofp i32 %352 to float
  %354 = fdiv float %343, %353
  store float %354, float* %8, align 4
  %355 = load %struct.node*, %struct.node** %1, align 8
  %356 = getelementptr inbounds %struct.node, %struct.node* %355, i32 0, i32 6
  %357 = load %struct.node**, %struct.node*** %356, align 8
  %358 = load i32, i32* %7, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.node*, %struct.node** %357, i64 %359
  %361 = load %struct.node*, %struct.node** %360, align 8
  %362 = getelementptr inbounds %struct.node, %struct.node* %361, i32 0, i32 8
  %363 = bitcast %struct.move_s* %362 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %363, i64 24, i32 4, i1 false)
  br label %364

; <label>:364:                                    ; preds = %333, %309
  br label %375

; <label>:365:                                    ; preds = %298
  %366 = load %struct.node*, %struct.node** %1, align 8
  %367 = getelementptr inbounds %struct.node, %struct.node* %366, i32 0, i32 6
  %368 = load %struct.node**, %struct.node*** %367, align 8
  %369 = load i32, i32* %7, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.node*, %struct.node** %368, i64 %370
  %372 = load %struct.node*, %struct.node** %371, align 8
  %373 = getelementptr inbounds %struct.node, %struct.node* %372, i32 0, i32 8
  %374 = bitcast %struct.move_s* %373 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %374, i64 24, i32 4, i1 false)
  br label %379

; <label>:375:                                    ; preds = %364
  br label %376

; <label>:376:                                    ; preds = %375
  %377 = load i32, i32* %7, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %7, align 4
  br label %291

; <label>:379:                                    ; preds = %365, %291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_saver to i8*), i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  %380 = load %struct.node*, %struct.node** %1, align 8
  %381 = bitcast %struct.node* %380 to i8*
  call void @free(i8* %381) #4
  call void @Xfree()
  %382 = load i8*, i8** @membuff, align 8
  call void @free(i8* %382) #4
  br label %383

; <label>:383:                                    ; preds = %379, %33
  ret void
}

declare void @comp_to_coord(%struct.move_s* byval align 8, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @proofnumbercheck(%struct.move_s* noalias sret, %struct.move_s* byval align 8) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.move_s, align 4
  %8 = load i32, i32* @piece_count, align 4
  %9 = icmp sle i32 %8, 3
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* @Variant, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %10
  %14 = bitcast %struct.move_s* %0 to i8*
  %15 = bitcast %struct.move_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 4, i1 false)
  br label %134

; <label>:16:                                     ; preds = %10, %2
  store i32 0, i32* @nodecount, align 4
  store i32 0, i32* @iters, align 4
  store i32 0, i32* @frees, align 4
  store i32 1, i32* @ply, align 4
  store i32 0, i32* @maxply, align 4
  call void @make(%struct.move_s* %1, i32 0)
  %17 = load i32, i32* @hash, align 4
  %18 = load i32, i32* @move_number, align 4
  %19 = load i32, i32* @ply, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = load i32, i32* @white_to_move, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  store i32 %27, i32* @root_to_move, align 4
  %28 = call i64 @rtime()
  store i64 %28, i64* %6, align 8
  %29 = call noalias i8* @calloc(i64 1, i64 56) #4
  %30 = bitcast i8* %29 to %struct.node*
  store %struct.node* %30, %struct.node** %3, align 8
  %31 = load i32, i32* @PBSize, align 4
  %32 = sext i32 %31 to i64
  %33 = call noalias i8* @calloc(i64 %32, i64 56) #4
  store i8* %33, i8** @membuff, align 8
  %34 = load %struct.node*, %struct.node** %3, align 8
  call void @pn_eval(%struct.node* %34)
  %35 = load %struct.node*, %struct.node** %3, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %35)
  %36 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %36, %struct.node** %5, align 8
  br label %37

; <label>:37:                                     ; preds = %75, %16
  %38 = load %struct.node*, %struct.node** %3, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

; <label>:42:                                     ; preds = %37
  %43 = load %struct.node*, %struct.node** %3, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* @bufftop, align 4
  %49 = zext i32 %48 to i64
  %50 = load i32, i32* @PBSize, align 4
  %51 = sub nsw i32 %50, 10000
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 56
  %54 = icmp ult i64 %49, %53
  br label %55

; <label>:55:                                     ; preds = %47, %42, %37
  %56 = phi i1 [ false, %42 ], [ false, %37 ], [ %54, %47 ]
  br i1 %56, label %57, label %76

; <label>:57:                                     ; preds = %55
  %58 = load %struct.node*, %struct.node** %5, align 8
  %59 = call %struct.node* @select_most_proving(%struct.node* %58)
  store %struct.node* %59, %struct.node** %4, align 8
  %60 = load %struct.node*, %struct.node** %4, align 8
  call void @develop_node(%struct.node* %60)
  %61 = load %struct.node*, %struct.node** %4, align 8
  call void @update_ancestors(%struct.node* %61)
  %62 = load i32, i32* @iters, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @iters, align 4
  %64 = load i32, i32* @iters, align 4
  %65 = srem i32 %64, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

; <label>:67:                                     ; preds = %57
  %68 = call i64 @rtime()
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @rdifftime(i64 %68, i64 %69)
  %71 = load i32, i32* @pn_time, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %67
  br label %76

; <label>:74:                                     ; preds = %67
  br label %75

; <label>:75:                                     ; preds = %74, %57
  br label %37

; <label>:76:                                     ; preds = %73, %55
  %77 = load %struct.node*, %struct.node** %3, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.node*, %struct.node** %3, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @nodecount, align 4
  %84 = load i32, i32* @frees, align 4
  %85 = load i32, i32* @nodecount, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 56
  %88 = uitofp i64 %87 to float
  %89 = fdiv float %88, 0x4130000000000000
  %90 = fpext float %89 to double
  %91 = load i32, i32* @iters, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0), i32 %79, i32 %82, i32 %83, i32 %84, double %90, i32 %91)
  br label %93

; <label>:93:                                     ; preds = %97, %76
  %94 = load %struct.node*, %struct.node** %5, align 8
  %95 = load %struct.node*, %struct.node** %3, align 8
  %96 = icmp ne %struct.node* %94, %95
  br i1 %96, label %97, label %103

; <label>:97:                                     ; preds = %93
  %98 = load %struct.node*, %struct.node** %5, align 8
  %99 = getelementptr inbounds %struct.node, %struct.node* %98, i32 0, i32 8
  call void @unmake(%struct.move_s* %99, i32 0)
  %100 = load %struct.node*, %struct.node** %5, align 8
  %101 = getelementptr inbounds %struct.node, %struct.node* %100, i32 0, i32 7
  %102 = load %struct.node*, %struct.node** %101, align 8
  store %struct.node* %102, %struct.node** %5, align 8
  br label %93

; <label>:103:                                    ; preds = %93
  call void @unmake(%struct.move_s* %1, i32 0)
  %104 = load %struct.node*, %struct.node** %3, align 8
  %105 = getelementptr inbounds %struct.node, %struct.node* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

; <label>:108:                                    ; preds = %103
  %109 = load %struct.node*, %struct.node** %3, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 0
  store i8 1, i8* %110, align 8
  %111 = bitcast %struct.move_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  store i32 1, i32* @s_threat, align 4
  br label %128

; <label>:112:                                    ; preds = %103
  %113 = load %struct.node*, %struct.node** %3, align 8
  %114 = getelementptr inbounds %struct.node, %struct.node* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

; <label>:117:                                    ; preds = %112
  %118 = load %struct.node*, %struct.node** %3, align 8
  %119 = getelementptr inbounds %struct.node, %struct.node* %118, i32 0, i32 0
  store i8 0, i8* %119, align 8
  %120 = bitcast %struct.move_s* %7 to i8*
  %121 = bitcast %struct.move_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 24, i32 4, i1 false)
  br label %127

; <label>:122:                                    ; preds = %112
  %123 = load %struct.node*, %struct.node** %3, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 0
  store i8 2, i8* %124, align 8
  %125 = bitcast %struct.move_s* %7 to i8*
  %126 = bitcast %struct.move_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 24, i32 4, i1 false)
  br label %127

; <label>:127:                                    ; preds = %122, %117
  br label %128

; <label>:128:                                    ; preds = %127, %108
  call void @Xfree()
  %129 = load %struct.node*, %struct.node** %3, align 8
  %130 = bitcast %struct.node* %129 to i8*
  call void @free(i8* %130) #4
  %131 = load i8*, i8** @membuff, align 8
  call void @free(i8* %131) #4
  %132 = bitcast %struct.move_s* %0 to i8*
  %133 = bitcast %struct.move_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 24, i32 4, i1 false)
  br label %134

; <label>:134:                                    ; preds = %128, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
