; ModuleID = 'seqencode.c'
source_filename = "seqencode.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iupactype = type { i8, i8, i8, i8 }

@iupac = external global [0 x %struct.iupactype], align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @seqcmp(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %39, %3
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %19, %20
  br label %22

; <label>:22:                                     ; preds = %18, %13, %8
  %23 = phi i1 [ false, %13 ], [ false, %8 ], [ %21, %18 ]
  br i1 %23, label %24, label %44

; <label>:24:                                     ; preds = %22
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = and i32 %27, %30
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %39, label %36

; <label>:36:                                     ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %39

; <label>:39:                                     ; preds = %36, %24
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  br label %8

; <label>:44:                                     ; preds = %22
  br label %45

; <label>:45:                                     ; preds = %57, %44
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sle i32 %52, %53
  br label %55

; <label>:55:                                     ; preds = %51, %45
  %56 = phi i1 [ false, %45 ], [ %54, %51 ]
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %55
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %45

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @seqncmp(i8*, i8*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

; <label>:11:                                     ; preds = %41, %4
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %17, 0
  br label %20

; <label>:20:                                     ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  br i1 %21, label %22, label %46

; <label>:22:                                     ; preds = %20
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %25, %28
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %41, label %34

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %68

; <label>:41:                                     ; preds = %34, %22
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %11

; <label>:46:                                     ; preds = %20
  br label %47

; <label>:47:                                     ; preds = %63, %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %61

; <label>:51:                                     ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

; <label>:57:                                     ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sle i32 %58, %59
  br label %61

; <label>:61:                                     ; preds = %57, %51, %47
  %62 = phi i1 [ false, %51 ], [ false, %47 ], [ %60, %57 ]
  br i1 %62, label %63, label %66

; <label>:63:                                     ; preds = %61
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %47

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

; <label>:68:                                     ; preds = %66, %39
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @seqencode(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  br label %9

; <label>:9:                                      ; preds = %66, %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %71

; <label>:14:                                     ; preds = %9
  %15 = call i16** @__ctype_b_loc() #3
  %16 = load i16*, i16** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %16, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 512
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %14
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 @toupper(i32 %29) #4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %5, align 8
  store i8 %31, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %26, %14
  store i32 0, i32* %7, align 4
  br label %34

; <label>:34:                                     ; preds = %51, %33
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.iupactype, %struct.iupactype* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %37, %43
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = icmp sle i32 %46, 17
  br label %48

; <label>:48:                                     ; preds = %45, %34
  %49 = phi i1 [ false, %34 ], [ %47, %45 ]
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %48
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %34

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 17
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %6, align 8
  store i8 0, i8* %58, align 1
  store i32 0, i32* %3, align 4
  br label %73

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.iupactype, %struct.iupactype* %62, i32 0, i32 2
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %6, align 8
  store i8 %64, i8* %65, align 1
  br label %66

; <label>:66:                                     ; preds = %59
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  br label %9

; <label>:71:                                     ; preds = %9
  %72 = load i8*, i8** %6, align 8
  store i8 0, i8* %72, align 1
  store i32 1, i32* %3, align 4
  br label %73

; <label>:73:                                     ; preds = %71, %57
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @coded_revcomp(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strlen(i8* %11) #4
  store i64 %12, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %7, align 8
  store i64 0, i64* %10, align 8
  br label %18

; <label>:18:                                     ; preds = %60, %2
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %63

; <label>:22:                                     ; preds = %18
  store i32 0, i32* %9, align 4
  br label %23

; <label>:23:                                     ; preds = %40, %22
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.iupactype, %struct.iupactype* %29, i32 0, i32 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %26, %32
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 17
  br label %37

; <label>:37:                                     ; preds = %34, %23
  %38 = phi i1 [ false, %23 ], [ %36, %34 ]
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %37
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %23

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 17
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %43
  %47 = load i8*, i8** %8, align 8
  store i8 0, i8* %47, align 1
  store i32 0, i32* %3, align 4
  br label %65

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.iupactype, %struct.iupactype* %51, i32 0, i32 3
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %8, align 8
  store i8 %53, i8* %54, align 1
  br label %55

; <label>:55:                                     ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %7, align 8
  br label %60

; <label>:60:                                     ; preds = %55
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %18

; <label>:63:                                     ; preds = %18
  %64 = load i8*, i8** %8, align 8
  store i8 0, i8* %64, align 1
  store i32 1, i32* %3, align 4
  br label %65

; <label>:65:                                     ; preds = %63, %46
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @seqdecode(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %52, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %57

; <label>:13:                                     ; preds = %8
  store i32 0, i32* %6, align 4
  br label %14

; <label>:14:                                     ; preds = %31, %13
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.iupactype, %struct.iupactype* %20, i32 0, i32 2
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %17, %23
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 17
  br label %28

; <label>:28:                                     ; preds = %25, %14
  %29 = phi i1 [ false, %14 ], [ %27, %25 ]
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %14

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 17
  br i1 %36, label %37, label %42

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 88, i8* %41, align 1
  store i32 0, i32* %3, align 4
  br label %62

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.iupactype, %struct.iupactype* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %47, i8* %51, align 1
  br label %52

; <label>:52:                                     ; preds = %42
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %8

; <label>:57:                                     ; preds = %8
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  store i32 1, i32* %3, align 4
  br label %62

; <label>:62:                                     ; preds = %57, %37
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @seqndecode(i8*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %53, %3
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %7, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %58

; <label>:14:                                     ; preds = %10
  store i32 0, i32* %8, align 4
  br label %15

; <label>:15:                                     ; preds = %32, %14
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.iupactype, %struct.iupactype* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %18, %24
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 17
  br label %29

; <label>:29:                                     ; preds = %26, %15
  %30 = phi i1 [ false, %15 ], [ %28, %26 ]
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %29
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %15

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 17
  br i1 %37, label %38, label %43

; <label>:38:                                     ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 88, i8* %42, align 1
  store i32 0, i32* %4, align 4
  br label %63

; <label>:43:                                     ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.iupactype, %struct.iupactype* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  br label %53

; <label>:53:                                     ; preds = %43
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %10

; <label>:58:                                     ; preds = %10
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  store i32 1, i32* %4, align 4
  br label %63

; <label>:63:                                     ; preds = %58, %38
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
