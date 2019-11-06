; ModuleID = 'sre_string.c'
source_filename = "sre_string.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"malloc of %ld bytes failed: file %s line %d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"realloc of %ld bytes failed: file %s line %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sre_string.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @Strdup(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i8* null, i8** %2, align 8
  br label %20

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9) #6
  %11 = add i64 %10, 1
  %12 = call noalias i8* @malloc(i64 %11) #7
  store i8* %12, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %8
  store i8* null, i8** %2, align 8
  br label %20

; <label>:15:                                     ; preds = %8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @strcpy(i8* %16, i8* %17) #7
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %2, align 8
  br label %20

; <label>:20:                                     ; preds = %15, %14, %7
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @StringChop(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #6
  %6 = sub i64 %5, 1
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  br label %8

; <label>:8:                                      ; preds = %28, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %26

; <label>:11:                                     ; preds = %8
  %12 = call i16** @__ctype_b_loc() #8
  %13 = load i16*, i16** %12, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %13, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 8192
  %25 = icmp ne i32 %24, 0
  br label %26

; <label>:26:                                     ; preds = %11, %8
  %27 = phi i1 [ false, %8 ], [ %25, %11 ]
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %26
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %3, align 4
  br label %8

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 0, i8* %36, align 1
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Strinsert(i8*, i8 signext, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8* %12, i8** %8, align 8
  br label %13

; <label>:13:                                     ; preds = %22, %3
  %14 = load i8, i8* %5, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %7, align 1
  %19 = load i8, i8* %5, align 1
  %20 = load i8*, i8** %8, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* %7, align 1
  store i8 %21, i8* %5, align 1
  br label %22

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %8, align 8
  br label %13

; <label>:25:                                     ; preds = %13
  %26 = load i8*, i8** %8, align 8
  store i8 0, i8* %26, align 1
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Strdelete(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  store i8* %9, i8** %5, align 8
  br label %10

; <label>:10:                                     ; preds = %19, %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %22

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %5, align 8
  store i8 %17, i8* %18, align 1
  br label %19

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  br label %10

; <label>:22:                                     ; preds = %10
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define void @s2lower(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %15, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 @sre_tolower(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %2, align 8
  store i8 %13, i8* %14, align 1
  br label %15

; <label>:15:                                     ; preds = %8
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  br label %3

; <label>:18:                                     ; preds = %3
  ret void
}

declare i32 @sre_tolower(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @s2upper(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %15, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 @sre_toupper(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %2, align 8
  store i8 %13, i8* %14, align 1
  br label %15

; <label>:15:                                     ; preds = %8
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  br label %3

; <label>:18:                                     ; preds = %3
  ret void
}

declare i32 @sre_toupper(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define i8* @sre_malloc(i8*, i32, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call noalias i8* @malloc(i64 %8) #7
  store i8* %9, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i64 %12, i8* %13, i32 %14)
  br label %15

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %7, align 8
  ret i8* %16
}

declare void @Die(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define i8* @sre_realloc(i8*, i32, i8*, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i8* @realloc(i8* %10, i64 %11) #7
  store i8* %12, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i64 %15, i8* %16, i32 %17)
  br label %18

; <label>:18:                                     ; preds = %14, %4
  %19 = load i8*, i8** %9, align 8
  ret i8* %19
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @Free2DArray(i8**, i32) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8**, i8*** %3, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %8, label %33

; <label>:8:                                      ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

; <label>:9:                                      ; preds = %27, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

; <label>:13:                                     ; preds = %9
  %14 = load i8**, i8*** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %13
  %21 = load i8**, i8*** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  call void @free(i8* %25) #7
  br label %26

; <label>:26:                                     ; preds = %20, %13
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9

; <label>:30:                                     ; preds = %9
  %31 = load i8**, i8*** %3, align 8
  %32 = bitcast i8** %31 to i8*
  call void @free(i8* %32) #7
  br label %33

; <label>:33:                                     ; preds = %30, %2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @Free3DArray(i8***, i32, i32) #0 {
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8*** %0, i8**** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8***, i8**** %4, align 8
  %10 = icmp ne i8*** %9, null
  br i1 %10, label %11, label %67

; <label>:11:                                     ; preds = %3
  store i32 0, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %61, %11
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %64

; <label>:16:                                     ; preds = %12
  %17 = load i8***, i8**** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8**, i8*** %17, i64 %19
  %21 = load i8**, i8*** %20, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %60

; <label>:23:                                     ; preds = %16
  store i32 0, i32* %8, align 4
  br label %24

; <label>:24:                                     ; preds = %50, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

; <label>:28:                                     ; preds = %24
  %29 = load i8***, i8**** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8**, i8*** %29, i64 %31
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %49

; <label>:39:                                     ; preds = %28
  %40 = load i8***, i8**** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8**, i8*** %40, i64 %42
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  call void @free(i8* %48) #7
  br label %49

; <label>:49:                                     ; preds = %39, %28
  br label %50

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %24

; <label>:53:                                     ; preds = %24
  %54 = load i8***, i8**** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8**, i8*** %54, i64 %56
  %58 = load i8**, i8*** %57, align 8
  %59 = bitcast i8** %58 to i8*
  call void @free(i8* %59) #7
  br label %60

; <label>:60:                                     ; preds = %53, %16
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %12

; <label>:64:                                     ; preds = %12
  %65 = load i8***, i8**** %4, align 8
  %66 = bitcast i8*** %65 to i8*
  call void @free(i8* %66) #7
  br label %67

; <label>:67:                                     ; preds = %64, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @RandomSequence(i8*, float*, i32, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 1, %13
  %15 = call i8* @sre_malloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 199, i64 %14)
  store i8* %15, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

; <label>:16:                                     ; preds = %32, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load float*, float** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @FChoose(float* %22, i32 %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 %27, i8* %31, align 1
  br label %32

; <label>:32:                                     ; preds = %20
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %16

; <label>:35:                                     ; preds = %16
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %9, align 8
  ret i8* %40
}

declare i32 @FChoose(float*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %3
  %15 = call i8* @sre_malloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 253, i64 128)
  %16 = load i8**, i8*** %5, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i32*, i32** %6, align 8
  store i32 128, i32* %17, align 4
  br label %18

; <label>:18:                                     ; preds = %14, %3
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = call i8* @fgets(i8* %20, i32 %22, %struct._IO_FILE* %23)
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %18
  store i8* null, i8** %4, align 8
  br label %97

; <label>:27:                                     ; preds = %18
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %29 = call i32 @feof(%struct._IO_FILE* %28) #7
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %4, align 8
  br label %97

; <label>:34:                                     ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* %36) #6
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %34
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %4, align 8
  br label %97

; <label>:51:                                     ; preds = %34
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %55

; <label>:55:                                     ; preds = %51, %94
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 128
  store i32 %58, i32* %56, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 1, %63
  %65 = call i8* @sre_realloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 283, i8* %60, i64 %64)
  %66 = load i8**, i8*** %5, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %74 = call i8* @fgets(i8* %72, i32 129, %struct._IO_FILE* %73)
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %55
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %4, align 8
  br label %97

; <label>:79:                                     ; preds = %55
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @strlen(i8* %80) #6
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %94

; <label>:91:                                     ; preds = %79
  %92 = load i8**, i8*** %5, align 8
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %4, align 8
  br label %97

; <label>:94:                                     ; preds = %79
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 128
  store i32 %96, i32* %10, align 4
  br label %55

; <label>:97:                                     ; preds = %91, %76, %48, %31, %26
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sre_strcat(i8**, i32, i8*, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %4
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14
  br label %23

; <label>:19:                                     ; preds = %14
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* %21) #6
  br label %23

; <label>:23:                                     ; preds = %19, %18
  %24 = phi i64 [ 0, %18 ], [ %22, %19 ]
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  br label %28

; <label>:26:                                     ; preds = %4
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %10, align 4
  br label %28

; <label>:28:                                     ; preds = %26, %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %41

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31
  br label %38

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @strlen(i8* %36) #6
  br label %38

; <label>:38:                                     ; preds = %35, %34
  %39 = phi i64 [ 0, %34 ], [ %37, %35 ]
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  br label %43

; <label>:41:                                     ; preds = %28
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %11, align 4
  br label %43

; <label>:43:                                     ; preds = %41, %38
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %83

; <label>:48:                                     ; preds = %43
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %59

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = mul i64 1, %55
  %57 = call i8* @sre_malloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 344, i64 %56)
  %58 = load i8**, i8*** %6, align 8
  store i8* %57, i8** %58, align 8
  br label %70

; <label>:59:                                     ; preds = %48
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 1, %66
  %68 = call i8* @sre_realloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 345, i8* %61, i64 %67)
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  br label %70

; <label>:70:                                     ; preds = %59, %52
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 %79, i32 1, i1 false)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %5, align 4
  br label %83

; <label>:83:                                     ; preds = %70, %46
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: noinline nounwind optnone uwtable
define i8* @sre_strtok(i8**, i8*, i32*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strspn(i8* %13, i8* %14) #6
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 %15
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %3
  store i8* null, i8** %4, align 8
  br label %51

; <label>:22:                                     ; preds = %3
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcspn(i8* %23, i8* %24) #6
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %22
  %36 = load i8*, i8** %9, align 8
  %37 = load i8**, i8*** %5, align 8
  store i8* %36, i8** %37, align 8
  br label %43

; <label>:38:                                     ; preds = %22
  %39 = load i8*, i8** %9, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8**, i8*** %5, align 8
  store i8* %41, i8** %42, align 8
  br label %43

; <label>:43:                                     ; preds = %38, %35
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %49

; <label>:49:                                     ; preds = %46, %43
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %4, align 8
  br label %51

; <label>:51:                                     ; preds = %49, %21
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i8* @sre_strdup(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store i8* null, i8** %3, align 8
  br label %27

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14) #6
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %13, %10
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 1, %20
  %22 = call i8* @sre_malloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 442, i64 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @strcpy(i8* %23, i8* %24) #7
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %3, align 8
  br label %27

; <label>:27:                                     ; preds = %17, %9
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @sre_strncpy(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = call i8* @strncpy(i8* %7, i8* %8, i64 %10) #7
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %4, align 8
  ret i8* %16
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @IsBlankline(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %4

; <label>:4:                                      ; preds = %23, %1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

; <label>:9:                                      ; preds = %4
  %10 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %10, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %11, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 8192
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %9
  store i32 0, i32* %2, align 4
  br label %27

; <label>:22:                                     ; preds = %9
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %4

; <label>:26:                                     ; preds = %4
  store i32 1, i32* %2, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %21
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
