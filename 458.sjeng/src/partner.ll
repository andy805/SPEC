; ModuleID = 'partner.c'
source_filename = "partner.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@hand_value = global [13 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 0, i32 0, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230], align 16
@std_hand_value = global [13 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 0, i32 0, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230], align 16
@xb_mode = external global i32, align 4
@.str = private unnamed_addr constant [69 x i8] c"tellics ptell Hello! I am Sjeng and hope you enjoy playing with me.\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"tellics ptell For help on some commands that I understand, ptell me 'help'\0A\00", align 1
@have_partner = external global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@my_partner = external global [256 x i8], align 16
@.str.3 = private unnamed_addr constant [25 x i8] c"tellics set f5 bughouse\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"tellics unseek\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"tellics set f5 1=1\0A\00", align 1
@HandlePtell.howmuch = private unnamed_addr constant [80 x i8] c"is...uh...what did you say?\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.7 = private unnamed_addr constant [147 x i8] c"tellics ptell Commands that I understand are : sit, go, fast, slow, abort, flag, +/++/+++/-/--/---{p,n,b,r,q,d,h,trades}, x, dead, formula, help.\0A\00", align 1
@Variant = external global i32, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"sorry\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"tellics ptell Sorry, but I'm not playing a bughouse game.\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sit\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"tellics ptell Ok, I sit next move. Tell me when to go.\0A\00", align 1
@must_sit = external global i32, align 4
@must_go = common global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"tellics ptell Ok, I'm moving.\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"tellics ptell Ok, I'm going FAST!\0A\00", align 1
@go_fast = external global i32, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"tellics ptell Ok, moving normally.\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"tellics ptell Requesting abort...\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"tellics abort\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"tellics ptell Flagging...\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"tellics flag\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"trade\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@comp_color = external global i32, align 4
@.str.35 = private unnamed_addr constant [35 x i8] c"tellics ptell Ok, trading is GOOD\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"+++\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"mates\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"is VERY good (ptell me 'x' to play normal again)\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"is good (ptell me 'x' to play normal again)\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"tellics ptell Ok, Knight %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"tellics ptell Ok, Bishop %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"tellics ptell Ok, Rook %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"tellics ptell Ok, Queen %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"tellics ptell Ok, Pawn %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"tellics ptell Ok, Diagonal %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"tellics ptell Ok, Heavy %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"tellics ptell Ok, trading is BAD\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"mates you (ptell me 'x' when it no longer mates you)\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"is VERY bad (ptell me 'x' when it is no longer bad)\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"is bad (ptell me 'x' when it is no longer bad)\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"mate me anymore\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"mind\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"ptell me\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"tellics ptell Ok, reverting to STANDARD piece values!\0A\00", align 1
@partnerdead = common global i32 0, align 4
@piecedead = common global i32 0, align 4
@.str.62 = private unnamed_addr constant [26 x i8] c"i'll have to sit...(dead)\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"i'll have to sit...(piece)\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"tellics ptell Greetings.\0A\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"formula\00", align 1
@.str.70 = private unnamed_addr constant [87 x i8] c"tellics ptell Setting formula, if you are still interrupted, complain to my operator.\0A\00", align 1
@.str.71 = private unnamed_addr constant [59 x i8] c"tellics ptell Sorry, but I don't understand that command.\0A\00", align 1
@CheckBadFlow.pawnmated = internal global i32 0, align 4
@CheckBadFlow.knightmated = internal global i32 0, align 4
@CheckBadFlow.bishopmated = internal global i32 0, align 4
@CheckBadFlow.rookmated = internal global i32 0, align 4
@CheckBadFlow.queenmated = internal global i32 0, align 4
@holding = external global [2 x [16 x i32]], align 16
@white_to_move = external global i32, align 4
@numb_moves = external global i32, align 4
@.str.72 = private unnamed_addr constant [41 x i8] c"tellics ptell p doesn't mate me anymore\0A\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"tellics ptell n doesn't mate me anymore\0A\00", align 1
@.str.74 = private unnamed_addr constant [41 x i8] c"tellics ptell b doesn't mate me anymore\0A\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"tellics ptell r doesn't mate me anymore\0A\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"tellics ptell q doesn't mate me anymore\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"tellics ptell ---p\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"tellics ptell ---n\0A\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"tellics ptell ---b\0A\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"tellics ptell ---r\0A\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"tellics ptell ---q\0A\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"tellics ptell x\0A\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"tellics ptell go\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @ResetHandValue() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([13 x i32]* @hand_value to i8*), i8* bitcast ([13 x i32]* @std_hand_value to i8*), i64 52, i32 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @BegForPartner() #0 {
  %1 = load i32, i32* @xb_mode, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %0
  br label %4

; <label>:4:                                      ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @GreetPartner() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i32 0, i32 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @HandlePartner(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 32
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* @have_partner, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @my_partner, i32 0, i32 0)) #5
  store i32 1, i32* @have_partner, align 4
  call void @GreetPartner()
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %11, %8
  br label %20

; <label>:18:                                     ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @my_partner, i32 0, i32 0), i8 0, i64 256, i32 16, i1 false)
  store i32 0, i32* @have_partner, align 4
  call void @BegForPartner()
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  br label %20

; <label>:20:                                     ; preds = %18, %17
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @HandlePtell(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [80 x i8], align 16
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = bitcast [80 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @HandlePtell.howmuch, i32 0, i32 0), i64 80, i32 16, i1 false)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 6
  %8 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4) #6
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.7, i32 0, i32 0))
  br label %756

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* @Variant, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 6
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i64 5) #6
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %15
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0))
  br label %756

; <label>:22:                                     ; preds = %15, %12
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 6
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i64 3) #6
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %22
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* @must_sit, align 4
  store i32 0, i32* @must_go, align 4
  br label %755

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 6
  %32 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i64 2) #6
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 6
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4) #6
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

; <label>:39:                                     ; preds = %34, %29
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* @must_sit, align 4
  store i32 4, i32* @must_go, align 4
  br label %754

; <label>:41:                                     ; preds = %34
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 6
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i64 4) #6
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i64 4) #6
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

; <label>:51:                                     ; preds = %46, %41
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* @go_fast, align 4
  store i32 0, i32* @must_sit, align 4
  br label %753

; <label>:53:                                     ; preds = %46
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i64 4) #6
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

; <label>:58:                                     ; preds = %53
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* @go_fast, align 4
  store i32 0, i32* @must_sit, align 4
  br label %752

; <label>:60:                                     ; preds = %53
  %61 = load i8*, i8** %2, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 6
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i64 5) #6
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

; <label>:65:                                     ; preds = %60
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0))
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  br label %751

; <label>:68:                                     ; preds = %60
  %69 = load i8*, i8** %2, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 6
  %71 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i64 4) #6
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

; <label>:73:                                     ; preds = %68
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0))
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  br label %750

; <label>:76:                                     ; preds = %68
  %77 = load i8*, i8** %2, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 6
  %79 = call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i64 1) #6
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %367, label %81

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 6
  %84 = call i8* @strstr(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #6
  %85 = icmp ne i8* %84, null
  br i1 %85, label %121, label %86

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %2, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 6
  %89 = call i8* @strstr(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #6
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %148

; <label>:91:                                     ; preds = %86
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  %94 = call i8* @strstr(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)) #6
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %148

; <label>:96:                                     ; preds = %91
  %97 = load i8*, i8** %2, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 6
  %99 = call i8* @strstr(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #6
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %148

; <label>:101:                                    ; preds = %96
  %102 = load i8*, i8** %2, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 6
  %104 = call i8* @strstr(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)) #6
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %148

; <label>:106:                                    ; preds = %101
  %107 = load i8*, i8** %2, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 6
  %109 = call i8* @strstr(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #6
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %148

; <label>:111:                                    ; preds = %106
  %112 = load i8*, i8** %2, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 6
  %114 = call i8* @strstr(i8* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #6
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %148

; <label>:116:                                    ; preds = %111
  %117 = load i8*, i8** %2, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 6
  %119 = call i8* @strstr(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #6
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %148

; <label>:121:                                    ; preds = %116, %81
  %122 = load i32, i32* @comp_color, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %135

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 1), align 4
  %126 = add nsw i32 %125, 25
  store i32 %126, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 1), align 4
  %127 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 3), align 4
  %128 = add nsw i32 %127, 50
  store i32 %128, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 3), align 4
  %129 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  %130 = add nsw i32 %129, 50
  store i32 %130, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  %131 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 7), align 4
  %132 = add nsw i32 %131, 50
  store i32 %132, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 7), align 4
  %133 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  %134 = add nsw i32 %133, 100
  store i32 %134, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %146

; <label>:135:                                    ; preds = %121
  %136 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 2), align 8
  %137 = sub nsw i32 %136, 25
  store i32 %137, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 2), align 8
  %138 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 4), align 16
  %139 = sub nsw i32 %138, 50
  store i32 %139, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 4), align 16
  %140 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  %141 = sub nsw i32 %140, 50
  store i32 %141, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  %142 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 8), align 16
  %143 = sub nsw i32 %142, 50
  store i32 %143, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 8), align 16
  %144 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  %145 = sub nsw i32 %144, 100
  store i32 %145, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %146

; <label>:146:                                    ; preds = %135, %124
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i32 0, i32 0))
  br label %176

; <label>:148:                                    ; preds = %116, %111, %106, %101, %96, %91, %86
  %149 = load i8*, i8** %2, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 6
  %151 = call i8* @strstr(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0)) #6
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %156

; <label>:153:                                    ; preds = %148
  store i32 50000, i32* %3, align 4
  %154 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %155 = call i8* @strcpy(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #5
  br label %175

; <label>:156:                                    ; preds = %148
  %157 = load i8*, i8** %2, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 6
  %159 = call i8* @strstr(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0)) #6
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %164

; <label>:161:                                    ; preds = %156
  store i32 1000, i32* %3, align 4
  %162 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %163 = call i8* @strcpy(i8* %162, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0)) #5
  br label %174

; <label>:164:                                    ; preds = %156
  %165 = load i8*, i8** %2, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 6
  %167 = call i8* @strstr(i8* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #6
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %172

; <label>:169:                                    ; preds = %164
  store i32 150, i32* %3, align 4
  %170 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %171 = call i8* @strcpy(i8* %170, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i32 0, i32 0)) #5
  br label %173

; <label>:172:                                    ; preds = %164
  store i32 0, i32* null, align 4
  br label %173

; <label>:173:                                    ; preds = %172, %169
  br label %174

; <label>:174:                                    ; preds = %173, %161
  br label %175

; <label>:175:                                    ; preds = %174, %153
  br label %176

; <label>:176:                                    ; preds = %175, %146
  %177 = load i8*, i8** %2, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 6
  %179 = call i8* @strstr(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #6
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %195

; <label>:181:                                    ; preds = %176
  %182 = load i32, i32* @comp_color, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %188

; <label>:184:                                    ; preds = %181
  %185 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 3), align 4
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 3), align 4
  br label %192

; <label>:188:                                    ; preds = %181
  %189 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 4), align 16
  %190 = load i32, i32* %3, align 4
  %191 = sub nsw i32 %189, %190
  store i32 %191, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 4), align 16
  br label %192

; <label>:192:                                    ; preds = %188, %184
  %193 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0), i8* %193)
  br label %195

; <label>:195:                                    ; preds = %192, %176
  %196 = load i8*, i8** %2, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 6
  %198 = call i8* @strstr(i8* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)) #6
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %225

; <label>:200:                                    ; preds = %195
  %201 = load i32, i32* @comp_color, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %207

; <label>:203:                                    ; preds = %200
  %204 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 11), align 4
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %204, %205
  store i32 %206, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  br label %211

; <label>:207:                                    ; preds = %200
  %208 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 12), align 16
  %209 = load i32, i32* %3, align 4
  %210 = sub nsw i32 %208, %209
  store i32 %210, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  br label %211

; <label>:211:                                    ; preds = %207, %203
  %212 = load i32, i32* @comp_color, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %218

; <label>:214:                                    ; preds = %211
  %215 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %215, %216
  store i32 %217, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %222

; <label>:218:                                    ; preds = %211
  %219 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %220 = load i32, i32* %3, align 4
  %221 = sub nsw i32 %219, %220
  store i32 %221, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %222

; <label>:222:                                    ; preds = %218, %214
  %223 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0), i8* %223)
  br label %225

; <label>:225:                                    ; preds = %222, %195
  %226 = load i8*, i8** %2, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 6
  %228 = call i8* @strstr(i8* %227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)) #6
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %255

; <label>:230:                                    ; preds = %225
  %231 = load i32, i32* @comp_color, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %237

; <label>:233:                                    ; preds = %230
  %234 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 7), align 4
  %235 = load i32, i32* %3, align 4
  %236 = add nsw i32 %234, %235
  store i32 %236, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 7), align 4
  br label %241

; <label>:237:                                    ; preds = %230
  %238 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 8), align 16
  %239 = load i32, i32* %3, align 4
  %240 = sub nsw i32 %238, %239
  store i32 %240, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 8), align 16
  br label %241

; <label>:241:                                    ; preds = %237, %233
  %242 = load i32, i32* @comp_color, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %248

; <label>:244:                                    ; preds = %241
  %245 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %246 = load i32, i32* %3, align 4
  %247 = add nsw i32 %245, %246
  store i32 %247, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %252

; <label>:248:                                    ; preds = %241
  %249 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %250 = load i32, i32* %3, align 4
  %251 = sub nsw i32 %249, %250
  store i32 %251, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %252

; <label>:252:                                    ; preds = %248, %244
  %253 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0), i8* %253)
  br label %255

; <label>:255:                                    ; preds = %252, %225
  %256 = load i8*, i8** %2, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 6
  %258 = call i8* @strstr(i8* %257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #6
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %274

; <label>:260:                                    ; preds = %255
  %261 = load i32, i32* @comp_color, align 4
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %263, label %267

; <label>:263:                                    ; preds = %260
  %264 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %265 = load i32, i32* %3, align 4
  %266 = add nsw i32 %264, %265
  store i32 %266, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %271

; <label>:267:                                    ; preds = %260
  %268 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %269 = load i32, i32* %3, align 4
  %270 = sub nsw i32 %268, %269
  store i32 %270, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %271

; <label>:271:                                    ; preds = %267, %263
  %272 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0), i8* %272)
  br label %274

; <label>:274:                                    ; preds = %271, %255
  %275 = load i8*, i8** %2, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 6
  %277 = call i8* @strstr(i8* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #6
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %310

; <label>:279:                                    ; preds = %274
  %280 = load i32, i32* @comp_color, align 4
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %286

; <label>:282:                                    ; preds = %279
  %283 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 1), align 4
  %284 = load i32, i32* %3, align 4
  %285 = add nsw i32 %283, %284
  store i32 %285, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 1), align 4
  br label %290

; <label>:286:                                    ; preds = %279
  %287 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 2), align 8
  %288 = load i32, i32* %3, align 4
  %289 = sub nsw i32 %287, %288
  store i32 %289, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 2), align 8
  br label %290

; <label>:290:                                    ; preds = %286, %282
  %291 = load i32, i32* @comp_color, align 4
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %300

; <label>:293:                                    ; preds = %290
  %294 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %295 = load i32, i32* %3, align 4
  %296 = add nsw i32 %294, %295
  store i32 %296, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  %297 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 11), align 4
  %298 = load i32, i32* %3, align 4
  %299 = add nsw i32 %297, %298
  store i32 %299, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  br label %307

; <label>:300:                                    ; preds = %290
  %301 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %302 = load i32, i32* %3, align 4
  %303 = sub nsw i32 %301, %302
  store i32 %303, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  %304 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 12), align 16
  %305 = load i32, i32* %3, align 4
  %306 = sub nsw i32 %304, %305
  store i32 %306, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  br label %307

; <label>:307:                                    ; preds = %300, %293
  %308 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0), i8* %308)
  br label %310

; <label>:310:                                    ; preds = %307, %274
  %311 = load i8*, i8** %2, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 6
  %313 = call i8* @strstr(i8* %312, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #6
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %341

; <label>:315:                                    ; preds = %310
  %316 = load i32, i32* @comp_color, align 4
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %318, label %328

; <label>:318:                                    ; preds = %315
  %319 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 1), align 4
  %320 = load i32, i32* %3, align 4
  %321 = add nsw i32 %319, %320
  store i32 %321, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 1), align 4
  %322 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 11), align 4
  %323 = load i32, i32* %3, align 4
  %324 = add nsw i32 %322, %323
  store i32 %324, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  %325 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %326 = load i32, i32* %3, align 4
  %327 = add nsw i32 %325, %326
  store i32 %327, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %338

; <label>:328:                                    ; preds = %315
  %329 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 2), align 8
  %330 = load i32, i32* %3, align 4
  %331 = sub nsw i32 %329, %330
  store i32 %331, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 2), align 8
  %332 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 12), align 16
  %333 = load i32, i32* %3, align 4
  %334 = sub nsw i32 %332, %333
  store i32 %334, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  %335 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %336 = load i32, i32* %3, align 4
  %337 = sub nsw i32 %335, %336
  store i32 %337, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %338

; <label>:338:                                    ; preds = %328, %318
  %339 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* %339)
  br label %341

; <label>:341:                                    ; preds = %338, %310
  %342 = load i8*, i8** %2, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 6
  %344 = call i8* @strstr(i8* %343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #6
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %366

; <label>:346:                                    ; preds = %341
  %347 = load i32, i32* @comp_color, align 4
  %348 = icmp eq i32 %347, 1
  br i1 %348, label %349, label %356

; <label>:349:                                    ; preds = %346
  %350 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 7), align 4
  %351 = load i32, i32* %3, align 4
  %352 = add nsw i32 %350, %351
  store i32 %352, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 7), align 4
  %353 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %354 = load i32, i32* %3, align 4
  %355 = add nsw i32 %353, %354
  store i32 %355, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %363

; <label>:356:                                    ; preds = %346
  %357 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 8), align 16
  %358 = load i32, i32* %3, align 4
  %359 = sub nsw i32 %357, %358
  store i32 %359, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 8), align 16
  %360 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %361 = load i32, i32* %3, align 4
  %362 = sub nsw i32 %360, %361
  store i32 %362, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %363

; <label>:363:                                    ; preds = %356, %349
  %364 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0), i8* %364)
  br label %366

; <label>:366:                                    ; preds = %363, %341
  br label %749

; <label>:367:                                    ; preds = %76
  %368 = load i8*, i8** %2, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 6
  %370 = call i32 @strncmp(i8* %369, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i64 1) #6
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %658, label %372

; <label>:372:                                    ; preds = %367
  %373 = load i8*, i8** %2, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 6
  %375 = call i8* @strstr(i8* %374, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #6
  %376 = icmp ne i8* %375, null
  br i1 %376, label %412, label %377

; <label>:377:                                    ; preds = %372
  %378 = load i8*, i8** %2, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 6
  %380 = call i8* @strstr(i8* %379, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #6
  %381 = icmp eq i8* %380, null
  br i1 %381, label %382, label %439

; <label>:382:                                    ; preds = %377
  %383 = load i8*, i8** %2, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 6
  %385 = call i8* @strstr(i8* %384, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)) #6
  %386 = icmp eq i8* %385, null
  br i1 %386, label %387, label %439

; <label>:387:                                    ; preds = %382
  %388 = load i8*, i8** %2, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 6
  %390 = call i8* @strstr(i8* %389, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #6
  %391 = icmp eq i8* %390, null
  br i1 %391, label %392, label %439

; <label>:392:                                    ; preds = %387
  %393 = load i8*, i8** %2, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 6
  %395 = call i8* @strstr(i8* %394, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)) #6
  %396 = icmp eq i8* %395, null
  br i1 %396, label %397, label %439

; <label>:397:                                    ; preds = %392
  %398 = load i8*, i8** %2, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 6
  %400 = call i8* @strstr(i8* %399, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #6
  %401 = icmp eq i8* %400, null
  br i1 %401, label %402, label %439

; <label>:402:                                    ; preds = %397
  %403 = load i8*, i8** %2, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 6
  %405 = call i8* @strstr(i8* %404, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #6
  %406 = icmp eq i8* %405, null
  br i1 %406, label %407, label %439

; <label>:407:                                    ; preds = %402
  %408 = load i8*, i8** %2, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 6
  %410 = call i8* @strstr(i8* %409, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #6
  %411 = icmp eq i8* %410, null
  br i1 %411, label %412, label %439

; <label>:412:                                    ; preds = %407, %372
  %413 = load i32, i32* @comp_color, align 4
  %414 = icmp eq i32 %413, 1
  br i1 %414, label %415, label %426

; <label>:415:                                    ; preds = %412
  %416 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 2), align 8
  %417 = sub nsw i32 %416, 20
  store i32 %417, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 2), align 8
  %418 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 4), align 16
  %419 = sub nsw i32 %418, 50
  store i32 %419, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 4), align 16
  %420 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  %421 = sub nsw i32 %420, 50
  store i32 %421, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  %422 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 8), align 16
  %423 = sub nsw i32 %422, 50
  store i32 %423, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 8), align 16
  %424 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  %425 = sub nsw i32 %424, 100
  store i32 %425, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %437

; <label>:426:                                    ; preds = %412
  %427 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 1), align 4
  %428 = add nsw i32 %427, 20
  store i32 %428, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 1), align 4
  %429 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 3), align 4
  %430 = add nsw i32 %429, 50
  store i32 %430, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 3), align 4
  %431 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  %432 = add nsw i32 %431, 50
  store i32 %432, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  %433 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 7), align 4
  %434 = add nsw i32 %433, 50
  store i32 %434, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 7), align 4
  %435 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  %436 = add nsw i32 %435, 100
  store i32 %436, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %437

; <label>:437:                                    ; preds = %426, %415
  %438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0))
  br label %467

; <label>:439:                                    ; preds = %407, %402, %397, %392, %387, %382, %377
  %440 = load i8*, i8** %2, align 8
  %441 = getelementptr inbounds i8, i8* %440, i64 6
  %442 = call i8* @strstr(i8* %441, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0)) #6
  %443 = icmp ne i8* %442, null
  br i1 %443, label %444, label %447

; <label>:444:                                    ; preds = %439
  store i32 50000, i32* %3, align 4
  %445 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %446 = call i8* @strcpy(i8* %445, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.51, i32 0, i32 0)) #5
  br label %466

; <label>:447:                                    ; preds = %439
  %448 = load i8*, i8** %2, align 8
  %449 = getelementptr inbounds i8, i8* %448, i64 6
  %450 = call i8* @strstr(i8* %449, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0)) #6
  %451 = icmp ne i8* %450, null
  br i1 %451, label %452, label %455

; <label>:452:                                    ; preds = %447
  store i32 1000, i32* %3, align 4
  %453 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %454 = call i8* @strcpy(i8* %453, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.53, i32 0, i32 0)) #5
  br label %465

; <label>:455:                                    ; preds = %447
  %456 = load i8*, i8** %2, align 8
  %457 = getelementptr inbounds i8, i8* %456, i64 6
  %458 = call i8* @strstr(i8* %457, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)) #6
  %459 = icmp ne i8* %458, null
  br i1 %459, label %460, label %463

; <label>:460:                                    ; preds = %455
  store i32 150, i32* %3, align 4
  %461 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %462 = call i8* @strcpy(i8* %461, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i32 0, i32 0)) #5
  br label %464

; <label>:463:                                    ; preds = %455
  store i32 0, i32* null, align 4
  br label %464

; <label>:464:                                    ; preds = %463, %460
  br label %465

; <label>:465:                                    ; preds = %464, %452
  br label %466

; <label>:466:                                    ; preds = %465, %444
  br label %467

; <label>:467:                                    ; preds = %466, %437
  %468 = load i8*, i8** %2, align 8
  %469 = getelementptr inbounds i8, i8* %468, i64 6
  %470 = call i8* @strstr(i8* %469, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #6
  %471 = icmp ne i8* %470, null
  br i1 %471, label %472, label %486

; <label>:472:                                    ; preds = %467
  %473 = load i32, i32* @comp_color, align 4
  %474 = icmp eq i32 %473, 1
  br i1 %474, label %475, label %479

; <label>:475:                                    ; preds = %472
  %476 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 4), align 16
  %477 = load i32, i32* %3, align 4
  %478 = sub nsw i32 %476, %477
  store i32 %478, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 4), align 16
  br label %483

; <label>:479:                                    ; preds = %472
  %480 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 3), align 4
  %481 = load i32, i32* %3, align 4
  %482 = add nsw i32 %480, %481
  store i32 %482, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 3), align 4
  br label %483

; <label>:483:                                    ; preds = %479, %475
  %484 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %485 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0), i8* %484)
  br label %486

; <label>:486:                                    ; preds = %483, %467
  %487 = load i8*, i8** %2, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 6
  %489 = call i8* @strstr(i8* %488, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)) #6
  %490 = icmp ne i8* %489, null
  br i1 %490, label %491, label %516

; <label>:491:                                    ; preds = %486
  %492 = load i32, i32* @comp_color, align 4
  %493 = icmp eq i32 %492, 1
  br i1 %493, label %494, label %498

; <label>:494:                                    ; preds = %491
  %495 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 12), align 16
  %496 = load i32, i32* %3, align 4
  %497 = sub nsw i32 %495, %496
  store i32 %497, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  br label %502

; <label>:498:                                    ; preds = %491
  %499 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 11), align 4
  %500 = load i32, i32* %3, align 4
  %501 = add nsw i32 %499, %500
  store i32 %501, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  br label %502

; <label>:502:                                    ; preds = %498, %494
  %503 = load i32, i32* @comp_color, align 4
  %504 = icmp eq i32 %503, 1
  br i1 %504, label %505, label %509

; <label>:505:                                    ; preds = %502
  %506 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %507 = load i32, i32* %3, align 4
  %508 = sub nsw i32 %506, %507
  store i32 %508, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %513

; <label>:509:                                    ; preds = %502
  %510 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %511 = load i32, i32* %3, align 4
  %512 = add nsw i32 %510, %511
  store i32 %512, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %513

; <label>:513:                                    ; preds = %509, %505
  %514 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %515 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0), i8* %514)
  br label %516

; <label>:516:                                    ; preds = %513, %486
  %517 = load i8*, i8** %2, align 8
  %518 = getelementptr inbounds i8, i8* %517, i64 6
  %519 = call i8* @strstr(i8* %518, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)) #6
  %520 = icmp ne i8* %519, null
  br i1 %520, label %521, label %546

; <label>:521:                                    ; preds = %516
  %522 = load i32, i32* @comp_color, align 4
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %524, label %528

; <label>:524:                                    ; preds = %521
  %525 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 8), align 16
  %526 = load i32, i32* %3, align 4
  %527 = sub nsw i32 %525, %526
  store i32 %527, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 8), align 16
  br label %532

; <label>:528:                                    ; preds = %521
  %529 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 7), align 4
  %530 = load i32, i32* %3, align 4
  %531 = add nsw i32 %529, %530
  store i32 %531, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 7), align 4
  br label %532

; <label>:532:                                    ; preds = %528, %524
  %533 = load i32, i32* @comp_color, align 4
  %534 = icmp eq i32 %533, 1
  br i1 %534, label %535, label %539

; <label>:535:                                    ; preds = %532
  %536 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %537 = load i32, i32* %3, align 4
  %538 = sub nsw i32 %536, %537
  store i32 %538, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %543

; <label>:539:                                    ; preds = %532
  %540 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %541 = load i32, i32* %3, align 4
  %542 = add nsw i32 %540, %541
  store i32 %542, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %543

; <label>:543:                                    ; preds = %539, %535
  %544 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %545 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0), i8* %544)
  br label %546

; <label>:546:                                    ; preds = %543, %516
  %547 = load i8*, i8** %2, align 8
  %548 = getelementptr inbounds i8, i8* %547, i64 6
  %549 = call i8* @strstr(i8* %548, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #6
  %550 = icmp ne i8* %549, null
  br i1 %550, label %551, label %565

; <label>:551:                                    ; preds = %546
  %552 = load i32, i32* @comp_color, align 4
  %553 = icmp eq i32 %552, 1
  br i1 %553, label %554, label %558

; <label>:554:                                    ; preds = %551
  %555 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %556 = load i32, i32* %3, align 4
  %557 = sub nsw i32 %555, %556
  store i32 %557, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %562

; <label>:558:                                    ; preds = %551
  %559 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %560 = load i32, i32* %3, align 4
  %561 = add nsw i32 %559, %560
  store i32 %561, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %562

; <label>:562:                                    ; preds = %558, %554
  %563 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %564 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0), i8* %563)
  br label %565

; <label>:565:                                    ; preds = %562, %546
  %566 = load i8*, i8** %2, align 8
  %567 = getelementptr inbounds i8, i8* %566, i64 6
  %568 = call i8* @strstr(i8* %567, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #6
  %569 = icmp ne i8* %568, null
  br i1 %569, label %570, label %601

; <label>:570:                                    ; preds = %565
  %571 = load i32, i32* @comp_color, align 4
  %572 = icmp eq i32 %571, 1
  br i1 %572, label %573, label %577

; <label>:573:                                    ; preds = %570
  %574 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 2), align 8
  %575 = load i32, i32* %3, align 4
  %576 = sub nsw i32 %574, %575
  store i32 %576, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 2), align 8
  br label %581

; <label>:577:                                    ; preds = %570
  %578 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 1), align 4
  %579 = load i32, i32* %3, align 4
  %580 = add nsw i32 %578, %579
  store i32 %580, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 1), align 4
  br label %581

; <label>:581:                                    ; preds = %577, %573
  %582 = load i32, i32* @comp_color, align 4
  %583 = icmp eq i32 %582, 1
  br i1 %583, label %584, label %591

; <label>:584:                                    ; preds = %581
  %585 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %586 = load i32, i32* %3, align 4
  %587 = sub nsw i32 %585, %586
  store i32 %587, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  %588 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 12), align 16
  %589 = load i32, i32* %3, align 4
  %590 = sub nsw i32 %588, %589
  store i32 %590, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  br label %598

; <label>:591:                                    ; preds = %581
  %592 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %593 = load i32, i32* %3, align 4
  %594 = add nsw i32 %592, %593
  store i32 %594, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  %595 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 11), align 4
  %596 = load i32, i32* %3, align 4
  %597 = add nsw i32 %595, %596
  store i32 %597, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  br label %598

; <label>:598:                                    ; preds = %591, %584
  %599 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %600 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0), i8* %599)
  br label %601

; <label>:601:                                    ; preds = %598, %565
  %602 = load i8*, i8** %2, align 8
  %603 = getelementptr inbounds i8, i8* %602, i64 6
  %604 = call i8* @strstr(i8* %603, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #6
  %605 = icmp ne i8* %604, null
  br i1 %605, label %606, label %632

; <label>:606:                                    ; preds = %601
  %607 = load i32, i32* @comp_color, align 4
  %608 = icmp eq i32 %607, 1
  br i1 %608, label %609, label %619

; <label>:609:                                    ; preds = %606
  %610 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 2), align 8
  %611 = load i32, i32* %3, align 4
  %612 = sub nsw i32 %610, %611
  store i32 %612, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 2), align 8
  %613 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 12), align 16
  %614 = load i32, i32* %3, align 4
  %615 = sub nsw i32 %613, %614
  store i32 %615, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 12), align 16
  %616 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %617 = load i32, i32* %3, align 4
  %618 = sub nsw i32 %616, %617
  store i32 %618, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %629

; <label>:619:                                    ; preds = %606
  %620 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 1), align 4
  %621 = load i32, i32* %3, align 4
  %622 = add nsw i32 %620, %621
  store i32 %622, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 1), align 4
  %623 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 11), align 4
  %624 = load i32, i32* %3, align 4
  %625 = add nsw i32 %623, %624
  store i32 %625, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 11), align 4
  %626 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %627 = load i32, i32* %3, align 4
  %628 = add nsw i32 %626, %627
  store i32 %628, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %629

; <label>:629:                                    ; preds = %619, %609
  %630 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %631 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* %630)
  br label %632

; <label>:632:                                    ; preds = %629, %601
  %633 = load i8*, i8** %2, align 8
  %634 = getelementptr inbounds i8, i8* %633, i64 6
  %635 = call i8* @strstr(i8* %634, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #6
  %636 = icmp ne i8* %635, null
  br i1 %636, label %637, label %657

; <label>:637:                                    ; preds = %632
  %638 = load i32, i32* @comp_color, align 4
  %639 = icmp eq i32 %638, 1
  br i1 %639, label %640, label %647

; <label>:640:                                    ; preds = %637
  %641 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 8), align 16
  %642 = load i32, i32* %3, align 4
  %643 = sub nsw i32 %641, %642
  store i32 %643, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 8), align 16
  %644 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 10), align 8
  %645 = load i32, i32* %3, align 4
  %646 = sub nsw i32 %644, %645
  store i32 %646, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 10), align 8
  br label %654

; <label>:647:                                    ; preds = %637
  %648 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 7), align 4
  %649 = load i32, i32* %3, align 4
  %650 = add nsw i32 %648, %649
  store i32 %650, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 7), align 4
  %651 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i64 0, i64 9), align 4
  %652 = load i32, i32* %3, align 4
  %653 = add nsw i32 %651, %652
  store i32 %653, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i64 0, i64 9), align 4
  br label %654

; <label>:654:                                    ; preds = %647, %640
  %655 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i32 0, i32 0
  %656 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0), i8* %655)
  br label %657

; <label>:657:                                    ; preds = %654, %632
  br label %748

; <label>:658:                                    ; preds = %367
  %659 = load i8*, i8** %2, align 8
  %660 = getelementptr inbounds i8, i8* %659, i64 6
  %661 = call i32 @strncmp(i8* %660, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i64 1) #6
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %683

; <label>:663:                                    ; preds = %658
  %664 = load i8*, i8** %2, align 8
  %665 = getelementptr inbounds i8, i8* %664, i64 6
  %666 = call i8* @strstr(i8* %665, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0)) #6
  %667 = icmp ne i8* %666, null
  br i1 %667, label %683, label %668

; <label>:668:                                    ; preds = %663
  %669 = load i8*, i8** %2, align 8
  %670 = getelementptr inbounds i8, i8* %669, i64 6
  %671 = call i8* @strstr(i8* %670, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0)) #6
  %672 = icmp ne i8* %671, null
  br i1 %672, label %673, label %678

; <label>:673:                                    ; preds = %668
  %674 = load i8*, i8** %2, align 8
  %675 = getelementptr inbounds i8, i8* %674, i64 6
  %676 = call i8* @strstr(i8* %675, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0)) #6
  %677 = icmp ne i8* %676, null
  br i1 %677, label %683, label %678

; <label>:678:                                    ; preds = %673, %668
  %679 = load i8*, i8** %2, align 8
  %680 = getelementptr inbounds i8, i8* %679, i64 6
  %681 = call i32 @strncmp(i8* %680, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i64 1) #6
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %690, label %683

; <label>:683:                                    ; preds = %678, %673, %663, %658
  %684 = load i8*, i8** %2, align 8
  %685 = getelementptr inbounds i8, i8* %684, i64 6
  %686 = call i8* @strstr(i8* %685, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0)) #6
  %687 = icmp eq i8* %686, null
  br i1 %687, label %688, label %690

; <label>:688:                                    ; preds = %683
  %689 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.61, i32 0, i32 0))
  call void @ResetHandValue()
  store i32 0, i32* @must_sit, align 4
  store i32 0, i32* @partnerdead, align 4
  store i32 0, i32* @piecedead, align 4
  br label %747

; <label>:690:                                    ; preds = %683, %678
  %691 = load i8*, i8** %2, align 8
  %692 = getelementptr inbounds i8, i8* %691, i64 6
  %693 = call i32 @strncmp(i8* %692, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i32 0, i32 0), i64 25) #6
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %700

; <label>:695:                                    ; preds = %690
  %696 = load i8*, i8** %2, align 8
  %697 = getelementptr inbounds i8, i8* %696, i64 6
  %698 = call i32 @strncmp(i8* %697, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i64 4) #6
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %701, label %700

; <label>:700:                                    ; preds = %695, %690
  store i32 1, i32* @go_fast, align 4
  store i32 0, i32* @must_sit, align 4
  store i32 1, i32* @partnerdead, align 4
  br label %746

; <label>:701:                                    ; preds = %695
  %702 = load i8*, i8** %2, align 8
  %703 = getelementptr inbounds i8, i8* %702, i64 6
  %704 = call i32 @strncmp(i8* %703, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i64 26) #6
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %707, label %706

; <label>:706:                                    ; preds = %701
  store i32 1, i32* @go_fast, align 4
  store i32 0, i32* @must_sit, align 4
  store i32 1, i32* @piecedead, align 4
  br label %745

; <label>:707:                                    ; preds = %701
  %708 = load i8*, i8** %2, align 8
  %709 = getelementptr inbounds i8, i8* %708, i64 6
  %710 = call i32 @strncmp(i8* %709, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i64 5) #6
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %713, label %712

; <label>:712:                                    ; preds = %707
  br label %756

; <label>:713:                                    ; preds = %707
  %714 = load i8*, i8** %2, align 8
  %715 = getelementptr inbounds i8, i8* %714, i64 6
  %716 = call i32 @strncmp(i8* %715, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i64 2) #6
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %719, label %718

; <label>:718:                                    ; preds = %713
  br label %756

; <label>:719:                                    ; preds = %713
  %720 = load i8*, i8** %2, align 8
  %721 = getelementptr inbounds i8, i8* %720, i64 6
  %722 = call i32 @strncmp(i8* %721, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i64 2) #6
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %729

; <label>:724:                                    ; preds = %719
  %725 = load i8*, i8** %2, align 8
  %726 = getelementptr inbounds i8, i8* %725, i64 6
  %727 = call i32 @strncmp(i8* %726, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i64 5) #6
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %731, label %729

; <label>:729:                                    ; preds = %724, %719
  %730 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0))
  br label %742

; <label>:731:                                    ; preds = %724
  %732 = load i8*, i8** %2, align 8
  %733 = getelementptr inbounds i8, i8* %732, i64 6
  %734 = call i8* @strstr(i8* %733, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0)) #6
  %735 = icmp ne i8* %734, null
  br i1 %735, label %736, label %739

; <label>:736:                                    ; preds = %731
  %737 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.70, i32 0, i32 0))
  %738 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %741

; <label>:739:                                    ; preds = %731
  %740 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.71, i32 0, i32 0))
  br label %741

; <label>:741:                                    ; preds = %739, %736
  br label %742

; <label>:742:                                    ; preds = %741, %729
  br label %743

; <label>:743:                                    ; preds = %742
  br label %744

; <label>:744:                                    ; preds = %743
  br label %745

; <label>:745:                                    ; preds = %744, %706
  br label %746

; <label>:746:                                    ; preds = %745, %700
  br label %747

; <label>:747:                                    ; preds = %746, %688
  br label %748

; <label>:748:                                    ; preds = %747, %657
  br label %749

; <label>:749:                                    ; preds = %748, %366
  br label %750

; <label>:750:                                    ; preds = %749, %73
  br label %751

; <label>:751:                                    ; preds = %750, %65
  br label %752

; <label>:752:                                    ; preds = %751, %58
  br label %753

; <label>:753:                                    ; preds = %752, %51
  br label %754

; <label>:754:                                    ; preds = %753, %39
  br label %755

; <label>:755:                                    ; preds = %754, %27
  br label %756

; <label>:756:                                    ; preds = %755, %718, %712, %20, %10
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @CheckBadFlow(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [512 x %struct.move_s], align 16
  %4 = alloca [512 x %struct.move_s], align 16
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %1
  store i32 0, i32* @CheckBadFlow.pawnmated, align 4
  store i32 0, i32* @CheckBadFlow.knightmated, align 4
  store i32 0, i32* @CheckBadFlow.bishopmated, align 4
  store i32 0, i32* @CheckBadFlow.rookmated, align 4
  store i32 0, i32* @CheckBadFlow.queenmated, align 4
  br label %631

; <label>:25:                                     ; preds = %1
  %26 = call i32 @in_check()
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @white_to_move, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %31
  %33 = load i32, i32* @white_to_move, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %113, label %41

; <label>:41:                                     ; preds = %25
  %42 = load i32, i32* @white_to_move, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 2
  %46 = load i32, i32* @white_to_move, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  call void @DropaddHolding(i32 %45, i32 %49)
  %50 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  call void @gen(%struct.move_s* %50)
  %51 = load i32, i32* @numb_moves, align 4
  store i32 %51, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %52

; <label>:52:                                     ; preds = %101, %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br label %59

; <label>:59:                                     ; preds = %56, %52
  %60 = phi i1 [ false, %52 ], [ %58, %56 ]
  br i1 %60, label %61, label %104

; <label>:61:                                     ; preds = %59
  %62 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %63 = load i32, i32* %8, align 4
  call void @make(%struct.move_s* %62, i32 %63)
  %64 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @check_legal(%struct.move_s* %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %98

; <label>:69:                                     ; preds = %61
  store i32 3, i32* %12, align 4
  %70 = call i32 @in_check()
  store i32 %70, i32* %10, align 4
  %71 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %71)
  %72 = load i32, i32* @numb_moves, align 4
  store i32 %72, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %73

; <label>:73:                                     ; preds = %94, %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

; <label>:80:                                     ; preds = %77, %73
  %81 = phi i1 [ false, %73 ], [ %79, %77 ]
  br i1 %81, label %82, label %97

; <label>:82:                                     ; preds = %80
  %83 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %84 = load i32, i32* %7, align 4
  call void @make(%struct.move_s* %83, i32 %84)
  %85 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @check_legal(%struct.move_s* %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %82
  store i32 0, i32* %12, align 4
  br label %91

; <label>:91:                                     ; preds = %90, %82
  %92 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %93 = load i32, i32* %7, align 4
  call void @unmake(%struct.move_s* %92, i32 %93)
  br label %94

; <label>:94:                                     ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %73

; <label>:97:                                     ; preds = %80
  br label %98

; <label>:98:                                     ; preds = %97, %61
  %99 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %100 = load i32, i32* %8, align 4
  call void @unmake(%struct.move_s* %99, i32 %100)
  br label %101

; <label>:101:                                    ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %52

; <label>:104:                                    ; preds = %59
  %105 = load i32, i32* @white_to_move, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 2
  %109 = load i32, i32* @white_to_move, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  call void @DropremoveHolding(i32 %108, i32 %112)
  br label %113

; <label>:113:                                    ; preds = %104, %25
  %114 = load i32, i32* @white_to_move, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %118
  %120 = load i32, i32* @white_to_move, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 3, i32 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %119, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %200, label %128

; <label>:128:                                    ; preds = %113
  %129 = load i32, i32* @white_to_move, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 3, i32 4
  %133 = load i32, i32* @white_to_move, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  call void @DropaddHolding(i32 %132, i32 %136)
  %137 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  call void @gen(%struct.move_s* %137)
  %138 = load i32, i32* @numb_moves, align 4
  store i32 %138, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %139

; <label>:139:                                    ; preds = %188, %128
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %146

; <label>:143:                                    ; preds = %139
  %144 = load i32, i32* %13, align 4
  %145 = icmp eq i32 %144, 0
  br label %146

; <label>:146:                                    ; preds = %143, %139
  %147 = phi i1 [ false, %139 ], [ %145, %143 ]
  br i1 %147, label %148, label %191

; <label>:148:                                    ; preds = %146
  %149 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %150 = load i32, i32* %8, align 4
  call void @make(%struct.move_s* %149, i32 %150)
  %151 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @check_legal(%struct.move_s* %151, i32 %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %185

; <label>:156:                                    ; preds = %148
  store i32 3, i32* %13, align 4
  %157 = call i32 @in_check()
  store i32 %157, i32* %10, align 4
  %158 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %158)
  %159 = load i32, i32* @numb_moves, align 4
  store i32 %159, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %160

; <label>:160:                                    ; preds = %181, %156
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %167

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br label %167

; <label>:167:                                    ; preds = %164, %160
  %168 = phi i1 [ false, %160 ], [ %166, %164 ]
  br i1 %168, label %169, label %184

; <label>:169:                                    ; preds = %167
  %170 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %171 = load i32, i32* %7, align 4
  call void @make(%struct.move_s* %170, i32 %171)
  %172 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @check_legal(%struct.move_s* %172, i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

; <label>:177:                                    ; preds = %169
  store i32 0, i32* %13, align 4
  br label %178

; <label>:178:                                    ; preds = %177, %169
  %179 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %180 = load i32, i32* %7, align 4
  call void @unmake(%struct.move_s* %179, i32 %180)
  br label %181

; <label>:181:                                    ; preds = %178
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %160

; <label>:184:                                    ; preds = %167
  br label %185

; <label>:185:                                    ; preds = %184, %148
  %186 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %187 = load i32, i32* %8, align 4
  call void @unmake(%struct.move_s* %186, i32 %187)
  br label %188

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %139

; <label>:191:                                    ; preds = %146
  %192 = load i32, i32* @white_to_move, align 4
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 3, i32 4
  %196 = load i32, i32* @white_to_move, align 4
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  call void @DropremoveHolding(i32 %195, i32 %199)
  br label %200

; <label>:200:                                    ; preds = %191, %113
  %201 = load i32, i32* @white_to_move, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %205
  %207 = load i32, i32* @white_to_move, align 4
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 11, i32 12
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [16 x i32], [16 x i32]* %206, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %287, label %215

; <label>:215:                                    ; preds = %200
  %216 = load i32, i32* @white_to_move, align 4
  %217 = icmp ne i32 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i32 11, i32 12
  %220 = load i32, i32* @white_to_move, align 4
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  call void @DropaddHolding(i32 %219, i32 %223)
  %224 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  call void @gen(%struct.move_s* %224)
  %225 = load i32, i32* @numb_moves, align 4
  store i32 %225, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %226

; <label>:226:                                    ; preds = %275, %215
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %5, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %233

; <label>:230:                                    ; preds = %226
  %231 = load i32, i32* %14, align 4
  %232 = icmp eq i32 %231, 0
  br label %233

; <label>:233:                                    ; preds = %230, %226
  %234 = phi i1 [ false, %226 ], [ %232, %230 ]
  br i1 %234, label %235, label %278

; <label>:235:                                    ; preds = %233
  %236 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %237 = load i32, i32* %8, align 4
  call void @make(%struct.move_s* %236, i32 %237)
  %238 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @check_legal(%struct.move_s* %238, i32 %239, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %272

; <label>:243:                                    ; preds = %235
  store i32 3, i32* %14, align 4
  %244 = call i32 @in_check()
  store i32 %244, i32* %10, align 4
  %245 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %245)
  %246 = load i32, i32* @numb_moves, align 4
  store i32 %246, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %247

; <label>:247:                                    ; preds = %268, %243
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %254

; <label>:251:                                    ; preds = %247
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br label %254

; <label>:254:                                    ; preds = %251, %247
  %255 = phi i1 [ false, %247 ], [ %253, %251 ]
  br i1 %255, label %256, label %271

; <label>:256:                                    ; preds = %254
  %257 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %258 = load i32, i32* %7, align 4
  call void @make(%struct.move_s* %257, i32 %258)
  %259 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %10, align 4
  %262 = call i32 @check_legal(%struct.move_s* %259, i32 %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

; <label>:264:                                    ; preds = %256
  store i32 0, i32* %14, align 4
  br label %265

; <label>:265:                                    ; preds = %264, %256
  %266 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %267 = load i32, i32* %7, align 4
  call void @unmake(%struct.move_s* %266, i32 %267)
  br label %268

; <label>:268:                                    ; preds = %265
  %269 = load i32, i32* %7, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %7, align 4
  br label %247

; <label>:271:                                    ; preds = %254
  br label %272

; <label>:272:                                    ; preds = %271, %235
  %273 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %274 = load i32, i32* %8, align 4
  call void @unmake(%struct.move_s* %273, i32 %274)
  br label %275

; <label>:275:                                    ; preds = %272
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %226

; <label>:278:                                    ; preds = %233
  %279 = load i32, i32* @white_to_move, align 4
  %280 = icmp ne i32 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 11, i32 12
  %283 = load i32, i32* @white_to_move, align 4
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  %286 = zext i1 %285 to i32
  call void @DropremoveHolding(i32 %282, i32 %286)
  br label %287

; <label>:287:                                    ; preds = %278, %200
  %288 = load i32, i32* @white_to_move, align 4
  %289 = icmp ne i32 %288, 0
  %290 = xor i1 %289, true
  %291 = zext i1 %290 to i32
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %292
  %294 = load i32, i32* @white_to_move, align 4
  %295 = icmp ne i32 %294, 0
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i32 7, i32 8
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [16 x i32], [16 x i32]* %293, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %374, label %302

; <label>:302:                                    ; preds = %287
  %303 = load i32, i32* @white_to_move, align 4
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i32 7, i32 8
  %307 = load i32, i32* @white_to_move, align 4
  %308 = icmp ne i32 %307, 0
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  call void @DropaddHolding(i32 %306, i32 %310)
  %311 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  call void @gen(%struct.move_s* %311)
  %312 = load i32, i32* @numb_moves, align 4
  store i32 %312, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %313

; <label>:313:                                    ; preds = %362, %302
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* %5, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %320

; <label>:317:                                    ; preds = %313
  %318 = load i32, i32* %15, align 4
  %319 = icmp eq i32 %318, 0
  br label %320

; <label>:320:                                    ; preds = %317, %313
  %321 = phi i1 [ false, %313 ], [ %319, %317 ]
  br i1 %321, label %322, label %365

; <label>:322:                                    ; preds = %320
  %323 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %324 = load i32, i32* %8, align 4
  call void @make(%struct.move_s* %323, i32 %324)
  %325 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* %9, align 4
  %328 = call i32 @check_legal(%struct.move_s* %325, i32 %326, i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %359

; <label>:330:                                    ; preds = %322
  store i32 3, i32* %15, align 4
  %331 = call i32 @in_check()
  store i32 %331, i32* %10, align 4
  %332 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %332)
  %333 = load i32, i32* @numb_moves, align 4
  store i32 %333, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %334

; <label>:334:                                    ; preds = %355, %330
  %335 = load i32, i32* %7, align 4
  %336 = load i32, i32* %6, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %341

; <label>:338:                                    ; preds = %334
  %339 = load i32, i32* %15, align 4
  %340 = icmp ne i32 %339, 0
  br label %341

; <label>:341:                                    ; preds = %338, %334
  %342 = phi i1 [ false, %334 ], [ %340, %338 ]
  br i1 %342, label %343, label %358

; <label>:343:                                    ; preds = %341
  %344 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %345 = load i32, i32* %7, align 4
  call void @make(%struct.move_s* %344, i32 %345)
  %346 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* %10, align 4
  %349 = call i32 @check_legal(%struct.move_s* %346, i32 %347, i32 %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

; <label>:351:                                    ; preds = %343
  store i32 0, i32* %15, align 4
  br label %352

; <label>:352:                                    ; preds = %351, %343
  %353 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %354 = load i32, i32* %7, align 4
  call void @unmake(%struct.move_s* %353, i32 %354)
  br label %355

; <label>:355:                                    ; preds = %352
  %356 = load i32, i32* %7, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %7, align 4
  br label %334

; <label>:358:                                    ; preds = %341
  br label %359

; <label>:359:                                    ; preds = %358, %322
  %360 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %361 = load i32, i32* %8, align 4
  call void @unmake(%struct.move_s* %360, i32 %361)
  br label %362

; <label>:362:                                    ; preds = %359
  %363 = load i32, i32* %8, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %8, align 4
  br label %313

; <label>:365:                                    ; preds = %320
  %366 = load i32, i32* @white_to_move, align 4
  %367 = icmp ne i32 %366, 0
  %368 = zext i1 %367 to i64
  %369 = select i1 %367, i32 7, i32 8
  %370 = load i32, i32* @white_to_move, align 4
  %371 = icmp ne i32 %370, 0
  %372 = xor i1 %371, true
  %373 = zext i1 %372 to i32
  call void @DropremoveHolding(i32 %369, i32 %373)
  br label %374

; <label>:374:                                    ; preds = %365, %287
  %375 = load i32, i32* @white_to_move, align 4
  %376 = icmp ne i32 %375, 0
  %377 = xor i1 %376, true
  %378 = zext i1 %377 to i32
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i64 0, i64 %379
  %381 = load i32, i32* @white_to_move, align 4
  %382 = icmp ne i32 %381, 0
  %383 = zext i1 %382 to i64
  %384 = select i1 %382, i32 9, i32 10
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [16 x i32], [16 x i32]* %380, i64 0, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %461, label %389

; <label>:389:                                    ; preds = %374
  %390 = load i32, i32* @white_to_move, align 4
  %391 = icmp ne i32 %390, 0
  %392 = zext i1 %391 to i64
  %393 = select i1 %391, i32 9, i32 10
  %394 = load i32, i32* @white_to_move, align 4
  %395 = icmp ne i32 %394, 0
  %396 = xor i1 %395, true
  %397 = zext i1 %396 to i32
  call void @DropaddHolding(i32 %393, i32 %397)
  %398 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  call void @gen(%struct.move_s* %398)
  %399 = load i32, i32* @numb_moves, align 4
  store i32 %399, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %400

; <label>:400:                                    ; preds = %449, %389
  %401 = load i32, i32* %8, align 4
  %402 = load i32, i32* %5, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %407

; <label>:404:                                    ; preds = %400
  %405 = load i32, i32* %16, align 4
  %406 = icmp eq i32 %405, 0
  br label %407

; <label>:407:                                    ; preds = %404, %400
  %408 = phi i1 [ false, %400 ], [ %406, %404 ]
  br i1 %408, label %409, label %452

; <label>:409:                                    ; preds = %407
  %410 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %411 = load i32, i32* %8, align 4
  call void @make(%struct.move_s* %410, i32 %411)
  %412 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %413 = load i32, i32* %8, align 4
  %414 = load i32, i32* %9, align 4
  %415 = call i32 @check_legal(%struct.move_s* %412, i32 %413, i32 %414)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %446

; <label>:417:                                    ; preds = %409
  store i32 3, i32* %16, align 4
  %418 = call i32 @in_check()
  store i32 %418, i32* %10, align 4
  %419 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  call void @gen(%struct.move_s* %419)
  %420 = load i32, i32* @numb_moves, align 4
  store i32 %420, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %421

; <label>:421:                                    ; preds = %442, %417
  %422 = load i32, i32* %7, align 4
  %423 = load i32, i32* %6, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %428

; <label>:425:                                    ; preds = %421
  %426 = load i32, i32* %16, align 4
  %427 = icmp ne i32 %426, 0
  br label %428

; <label>:428:                                    ; preds = %425, %421
  %429 = phi i1 [ false, %421 ], [ %427, %425 ]
  br i1 %429, label %430, label %445

; <label>:430:                                    ; preds = %428
  %431 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %432 = load i32, i32* %7, align 4
  call void @make(%struct.move_s* %431, i32 %432)
  %433 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %434 = load i32, i32* %7, align 4
  %435 = load i32, i32* %10, align 4
  %436 = call i32 @check_legal(%struct.move_s* %433, i32 %434, i32 %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %439

; <label>:438:                                    ; preds = %430
  store i32 0, i32* %16, align 4
  br label %439

; <label>:439:                                    ; preds = %438, %430
  %440 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %4, i64 0, i64 0
  %441 = load i32, i32* %7, align 4
  call void @unmake(%struct.move_s* %440, i32 %441)
  br label %442

; <label>:442:                                    ; preds = %439
  %443 = load i32, i32* %7, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %7, align 4
  br label %421

; <label>:445:                                    ; preds = %428
  br label %446

; <label>:446:                                    ; preds = %445, %409
  %447 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %3, i64 0, i64 0
  %448 = load i32, i32* %8, align 4
  call void @unmake(%struct.move_s* %447, i32 %448)
  br label %449

; <label>:449:                                    ; preds = %446
  %450 = load i32, i32* %8, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %8, align 4
  br label %400

; <label>:452:                                    ; preds = %407
  %453 = load i32, i32* @white_to_move, align 4
  %454 = icmp ne i32 %453, 0
  %455 = zext i1 %454 to i64
  %456 = select i1 %454, i32 9, i32 10
  %457 = load i32, i32* @white_to_move, align 4
  %458 = icmp ne i32 %457, 0
  %459 = xor i1 %458, true
  %460 = zext i1 %459 to i32
  call void @DropremoveHolding(i32 %456, i32 %460)
  br label %461

; <label>:461:                                    ; preds = %452, %374
  %462 = load i32, i32* %12, align 4
  %463 = load i32, i32* @CheckBadFlow.pawnmated, align 4
  %464 = icmp ne i32 %462, %463
  br i1 %464, label %465, label %479

; <label>:465:                                    ; preds = %461
  %466 = load i32, i32* %12, align 4
  %467 = icmp eq i32 %466, 3
  br i1 %467, label %468, label %469

; <label>:468:                                    ; preds = %465
  store i32 1, i32* %17, align 4
  br label %478

; <label>:469:                                    ; preds = %465
  %470 = load i32, i32* %12, align 4
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %477

; <label>:472:                                    ; preds = %469
  %473 = load i32, i32* @CheckBadFlow.pawnmated, align 4
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %477

; <label>:475:                                    ; preds = %472
  %476 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i32 0, i32 0))
  store i32 1, i32* %11, align 4
  br label %477

; <label>:477:                                    ; preds = %475, %472, %469
  br label %478

; <label>:478:                                    ; preds = %477, %468
  br label %479

; <label>:479:                                    ; preds = %478, %461
  %480 = load i32, i32* %13, align 4
  %481 = load i32, i32* @CheckBadFlow.knightmated, align 4
  %482 = icmp ne i32 %480, %481
  br i1 %482, label %483, label %497

; <label>:483:                                    ; preds = %479
  %484 = load i32, i32* %13, align 4
  %485 = icmp eq i32 %484, 3
  br i1 %485, label %486, label %487

; <label>:486:                                    ; preds = %483
  store i32 1, i32* %18, align 4
  br label %496

; <label>:487:                                    ; preds = %483
  %488 = load i32, i32* %13, align 4
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %495

; <label>:490:                                    ; preds = %487
  %491 = load i32, i32* @CheckBadFlow.knightmated, align 4
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %495

; <label>:493:                                    ; preds = %490
  %494 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.73, i32 0, i32 0))
  store i32 1, i32* %11, align 4
  br label %495

; <label>:495:                                    ; preds = %493, %490, %487
  br label %496

; <label>:496:                                    ; preds = %495, %486
  br label %497

; <label>:497:                                    ; preds = %496, %479
  %498 = load i32, i32* %14, align 4
  %499 = load i32, i32* @CheckBadFlow.bishopmated, align 4
  %500 = icmp ne i32 %498, %499
  br i1 %500, label %501, label %515

; <label>:501:                                    ; preds = %497
  %502 = load i32, i32* %14, align 4
  %503 = icmp eq i32 %502, 3
  br i1 %503, label %504, label %505

; <label>:504:                                    ; preds = %501
  store i32 1, i32* %19, align 4
  br label %514

; <label>:505:                                    ; preds = %501
  %506 = load i32, i32* %14, align 4
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %513

; <label>:508:                                    ; preds = %505
  %509 = load i32, i32* @CheckBadFlow.bishopmated, align 4
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %513

; <label>:511:                                    ; preds = %508
  %512 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.74, i32 0, i32 0))
  store i32 1, i32* %11, align 4
  br label %513

; <label>:513:                                    ; preds = %511, %508, %505
  br label %514

; <label>:514:                                    ; preds = %513, %504
  br label %515

; <label>:515:                                    ; preds = %514, %497
  %516 = load i32, i32* %15, align 4
  %517 = load i32, i32* @CheckBadFlow.rookmated, align 4
  %518 = icmp ne i32 %516, %517
  br i1 %518, label %519, label %533

; <label>:519:                                    ; preds = %515
  %520 = load i32, i32* %15, align 4
  %521 = icmp eq i32 %520, 3
  br i1 %521, label %522, label %523

; <label>:522:                                    ; preds = %519
  store i32 1, i32* %20, align 4
  br label %532

; <label>:523:                                    ; preds = %519
  %524 = load i32, i32* %15, align 4
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %531

; <label>:526:                                    ; preds = %523
  %527 = load i32, i32* @CheckBadFlow.rookmated, align 4
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %531

; <label>:529:                                    ; preds = %526
  %530 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.75, i32 0, i32 0))
  store i32 1, i32* %11, align 4
  br label %531

; <label>:531:                                    ; preds = %529, %526, %523
  br label %532

; <label>:532:                                    ; preds = %531, %522
  br label %533

; <label>:533:                                    ; preds = %532, %515
  %534 = load i32, i32* %16, align 4
  %535 = load i32, i32* @CheckBadFlow.queenmated, align 4
  %536 = icmp ne i32 %534, %535
  br i1 %536, label %537, label %551

; <label>:537:                                    ; preds = %533
  %538 = load i32, i32* %16, align 4
  %539 = icmp eq i32 %538, 3
  br i1 %539, label %540, label %541

; <label>:540:                                    ; preds = %537
  store i32 1, i32* %21, align 4
  br label %550

; <label>:541:                                    ; preds = %537
  %542 = load i32, i32* %16, align 4
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %549

; <label>:544:                                    ; preds = %541
  %545 = load i32, i32* @CheckBadFlow.queenmated, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %549

; <label>:547:                                    ; preds = %544
  %548 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.76, i32 0, i32 0))
  store i32 1, i32* %11, align 4
  br label %549

; <label>:549:                                    ; preds = %547, %544, %541
  br label %550

; <label>:550:                                    ; preds = %549, %540
  br label %551

; <label>:551:                                    ; preds = %550, %533
  %552 = load i32, i32* %17, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %556

; <label>:554:                                    ; preds = %551
  %555 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0))
  br label %556

; <label>:556:                                    ; preds = %554, %551
  %557 = load i32, i32* %18, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %561

; <label>:559:                                    ; preds = %556
  %560 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0))
  br label %561

; <label>:561:                                    ; preds = %559, %556
  %562 = load i32, i32* %19, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %566

; <label>:564:                                    ; preds = %561
  %565 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0))
  br label %566

; <label>:566:                                    ; preds = %564, %561
  %567 = load i32, i32* %20, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %571

; <label>:569:                                    ; preds = %566
  %570 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i32 0, i32 0))
  br label %571

; <label>:571:                                    ; preds = %569, %566
  %572 = load i32, i32* %21, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %576

; <label>:574:                                    ; preds = %571
  %575 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.81, i32 0, i32 0))
  br label %576

; <label>:576:                                    ; preds = %574, %571
  %577 = load i32, i32* @piecedead, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %585

; <label>:579:                                    ; preds = %576
  %580 = load i32, i32* %11, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %585

; <label>:582:                                    ; preds = %579
  store i32 0, i32* @piecedead, align 4
  %583 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i32 0, i32 0))
  %584 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0))
  store i32 0, i32* @go_fast, align 4
  br label %585

; <label>:585:                                    ; preds = %582, %579, %576
  %586 = load i32, i32* %12, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %590

; <label>:588:                                    ; preds = %585
  %589 = load i32, i32* %12, align 4
  store i32 %589, i32* @CheckBadFlow.pawnmated, align 4
  br label %593

; <label>:590:                                    ; preds = %585
  %591 = load i32, i32* @CheckBadFlow.pawnmated, align 4
  %592 = add nsw i32 %591, -1
  store i32 %592, i32* @CheckBadFlow.pawnmated, align 4
  br label %593

; <label>:593:                                    ; preds = %590, %588
  %594 = phi i32 [ %589, %588 ], [ %591, %590 ]
  %595 = load i32, i32* %14, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %599

; <label>:597:                                    ; preds = %593
  %598 = load i32, i32* %14, align 4
  store i32 %598, i32* @CheckBadFlow.bishopmated, align 4
  br label %602

; <label>:599:                                    ; preds = %593
  %600 = load i32, i32* @CheckBadFlow.bishopmated, align 4
  %601 = add nsw i32 %600, -1
  store i32 %601, i32* @CheckBadFlow.bishopmated, align 4
  br label %602

; <label>:602:                                    ; preds = %599, %597
  %603 = phi i32 [ %598, %597 ], [ %600, %599 ]
  %604 = load i32, i32* %15, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %608

; <label>:606:                                    ; preds = %602
  %607 = load i32, i32* %15, align 4
  store i32 %607, i32* @CheckBadFlow.rookmated, align 4
  br label %611

; <label>:608:                                    ; preds = %602
  %609 = load i32, i32* @CheckBadFlow.rookmated, align 4
  %610 = add nsw i32 %609, -1
  store i32 %610, i32* @CheckBadFlow.rookmated, align 4
  br label %611

; <label>:611:                                    ; preds = %608, %606
  %612 = phi i32 [ %607, %606 ], [ %609, %608 ]
  %613 = load i32, i32* %16, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %617

; <label>:615:                                    ; preds = %611
  %616 = load i32, i32* %16, align 4
  store i32 %616, i32* @CheckBadFlow.queenmated, align 4
  br label %620

; <label>:617:                                    ; preds = %611
  %618 = load i32, i32* @CheckBadFlow.queenmated, align 4
  %619 = add nsw i32 %618, -1
  store i32 %619, i32* @CheckBadFlow.queenmated, align 4
  br label %620

; <label>:620:                                    ; preds = %617, %615
  %621 = phi i32 [ %616, %615 ], [ %618, %617 ]
  %622 = load i32, i32* %13, align 4
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %626

; <label>:624:                                    ; preds = %620
  %625 = load i32, i32* %13, align 4
  store i32 %625, i32* @CheckBadFlow.knightmated, align 4
  br label %629

; <label>:626:                                    ; preds = %620
  %627 = load i32, i32* @CheckBadFlow.knightmated, align 4
  %628 = add nsw i32 %627, -1
  store i32 %628, i32* @CheckBadFlow.knightmated, align 4
  br label %629

; <label>:629:                                    ; preds = %626, %624
  %630 = phi i32 [ %625, %624 ], [ %627, %626 ]
  br label %631

; <label>:631:                                    ; preds = %629, %24
  ret void
}

declare i32 @in_check() #2

declare void @DropaddHolding(i32, i32) #2

declare void @gen(%struct.move_s*) #2

declare void @make(%struct.move_s*, i32) #2

declare i32 @check_legal(%struct.move_s*, i32, i32) #2

declare void @unmake(%struct.move_s*, i32) #2

declare void @DropremoveHolding(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
