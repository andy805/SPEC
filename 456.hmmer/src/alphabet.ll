; ModuleID = 'alphabet.c'
source_filename = "alphabet.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [22 x i8] c"No such alphabet type\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Looks like nucleic acid sequence, hope that's right\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Looks like amino acid sequence, hope that's right\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Sorry, I can't tell if that's protein or DNA\00", align 1
@Alphabet_type = external global i32, align 4
@.str.4 = private unnamed_addr constant [107 x i8] c"An alphabet type conflict occurred.\0AYou probably mixed a DNA seq file with a protein model, or vice versa.\00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.5 = private unnamed_addr constant [25 x i8] c"ACDEFGHIKLMNPQRSTVWYUBZX\00", align 1
@Alphabet_size = external global i32, align 4
@Alphabet_iupac = external global i32, align 4
@Degenerate = external global [24 x [20 x i8]], align 16
@DegenCount = external global [24 x i32], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ND\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"QE\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ACDEFGHIKLMNPQRSTVWY\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"ACGTUNRYMKSWHBVDX\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ACGT\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"AG\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"GT\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ACT\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"CGT\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ACG\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"AGT\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"No support for non-nucleic or protein alphabets\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"alphabet.c\00", align 1
@stdcode1 = external global [0 x i8*], align 8

; Function Attrs: noinline nounwind optnone uwtable
define void @DetermineAlphabet(i8**, i32) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %35, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %38

; <label>:14:                                     ; preds = %10
  %15 = load i8**, i8*** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @Seqtype(i8* %19)
  switch i32 %20, label %33 [
    i32 2, label %21
    i32 1, label %24
    i32 3, label %27
    i32 0, label %30
  ]

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %34

; <label>:24:                                     ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %34

; <label>:27:                                     ; preds = %14
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %34

; <label>:30:                                     ; preds = %14
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %34

; <label>:33:                                     ; preds = %14
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  br label %34

; <label>:34:                                     ; preds = %33, %30, %27, %24, %21
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %10

; <label>:38:                                     ; preds = %10
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %38
  store i32 2, i32* %9, align 4
  br label %70

; <label>:43:                                     ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %43
  store i32 3, i32* %9, align 4
  br label %69

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %52
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0))
  store i32 2, i32* %9, align 4
  br label %68

; <label>:57:                                     ; preds = %52, %48
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %66

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %61
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store i32 3, i32* %9, align 4
  br label %67

; <label>:66:                                     ; preds = %61, %57
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %67

; <label>:67:                                     ; preds = %66, %65
  br label %68

; <label>:68:                                     ; preds = %67, %56
  br label %69

; <label>:69:                                     ; preds = %68, %47
  br label %70

; <label>:70:                                     ; preds = %69, %42
  %71 = load i32, i32* %9, align 4
  call void @SetAlphabet(i32 %71)
  ret void
}

declare i32 @Seqtype(i8*) #1

declare void @Die(i8*, ...) #1

declare void @Warn(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @SetAlphabet(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @Alphabet_type, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @Alphabet_type, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %6
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i32 0, i32 0))
  br label %11

; <label>:11:                                     ; preds = %10, %6
  br label %87

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %86 [
    i32 3, label %14
    i32 2, label %50
  ]

; <label>:14:                                     ; preds = %12
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* @Alphabet_type, align 4
  %16 = call i8* @strcpy(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 20, i32* @Alphabet_size, align 4
  store i32 24, i32* @Alphabet_iupac, align 4
  store i32 0, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %28, %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @Alphabet_iupac, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i64 0, i64 %23
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i32 0, i32 0
  %26 = load i32, i32* @Alphabet_size, align 4
  %27 = sext i32 %26 to i64
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 %27, i32 4, i1 false)
  br label %28

; <label>:28:                                     ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %17

; <label>:31:                                     ; preds = %17
  store i32 0, i32* %3, align 4
  br label %32

; <label>:32:                                     ; preds = %46, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @Alphabet_size, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %49

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i64 0, i64 %38
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %39, i64 0, i64 %41
  store i8 1, i8* %42, align 1
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [24 x i32], [24 x i32]* @DegenCount, i64 0, i64 %44
  store i32 1, i32* %45, align 4
  br label %46

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %32

; <label>:49:                                     ; preds = %32
  call void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  call void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  call void @set_degenerate(i8 signext 90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  call void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0))
  br label %87

; <label>:50:                                     ; preds = %12
  %51 = load i32, i32* %2, align 4
  store i32 %51, i32* @Alphabet_type, align 4
  %52 = call i8* @strcpy(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #5
  store i32 4, i32* @Alphabet_size, align 4
  store i32 17, i32* @Alphabet_iupac, align 4
  store i32 0, i32* %3, align 4
  br label %53

; <label>:53:                                     ; preds = %64, %50
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @Alphabet_iupac, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %67

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i64 0, i64 %59
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %60, i32 0, i32 0
  %62 = load i32, i32* @Alphabet_size, align 4
  %63 = sext i32 %62 to i64
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 %63, i32 4, i1 false)
  br label %64

; <label>:64:                                     ; preds = %57
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %53

; <label>:67:                                     ; preds = %53
  store i32 0, i32* %3, align 4
  br label %68

; <label>:68:                                     ; preds = %82, %67
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @Alphabet_size, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %85

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i64 0, i64 %74
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [20 x i8], [20 x i8]* %75, i64 0, i64 %77
  store i8 1, i8* %78, align 1
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [24 x i32], [24 x i32]* @DegenCount, i64 0, i64 %80
  store i32 1, i32* %81, align 4
  br label %82

; <label>:82:                                     ; preds = %72
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %68

; <label>:85:                                     ; preds = %68
  call void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  call void @set_degenerate(i8 signext 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  call void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  call void @set_degenerate(i8 signext 82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  call void @set_degenerate(i8 signext 89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  call void @set_degenerate(i8 signext 77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  call void @set_degenerate(i8 signext 75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  call void @set_degenerate(i8 signext 83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  call void @set_degenerate(i8 signext 87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  call void @set_degenerate(i8 signext 72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  call void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  call void @set_degenerate(i8 signext 86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  call void @set_degenerate(i8 signext 68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0))
  br label %87

; <label>:86:                                     ; preds = %12
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0))
  br label %87

; <label>:87:                                     ; preds = %11, %86, %85, %49
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_degenerate(i8 signext, i8*) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i64 @strlen(i8* %5) #6
  %7 = trunc i64 %6 to i32
  %8 = load i8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %9) #6
  %11 = ptrtoint i8* %10 to i64
  %12 = sub i64 %11, ptrtoint ([25 x i8]* @Alphabet to i64)
  %13 = getelementptr inbounds [24 x i32], [24 x i32]* @DegenCount, i64 0, i64 %12
  store i32 %7, i32* %13, align 4
  br label %14

; <label>:14:                                     ; preds = %18, %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %34

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* %3, align 1
  %20 = sext i8 %19 to i32
  %21 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %20) #6
  %22 = ptrtoint i8* %21 to i64
  %23 = sub i64 %22, ptrtoint ([25 x i8]* @Alphabet to i64)
  %24 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i64 0, i64 %23
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %27) #6
  %29 = ptrtoint i8* %28 to i64
  %30 = sub i64 %29, ptrtoint ([25 x i8]* @Alphabet to i64)
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 %30
  store i8 1, i8* %31, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  br label %14

; <label>:34:                                     ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SymbolIndex(i8 signext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  %6 = call i32 @toupper(i32 %5) #6
  %7 = trunc i32 %6 to i8
  %8 = sext i8 %7 to i32
  %9 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %8) #6
  store i8* %9, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* @Alphabet_iupac, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  br label %19

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = sub i64 %17, ptrtoint ([25 x i8]* @Alphabet to i64)
  br label %19

; <label>:19:                                     ; preds = %15, %11
  %20 = phi i64 [ %14, %11 ], [ %18, %15 ]
  %21 = trunc i64 %20 to i32
  ret i32 %21
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define i8* @DigitizeSequence(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = mul i64 1, %9
  %11 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 215, i64 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @Alphabet_iupac, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 %13, i8* %18, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %13, i8* %20, align 1
  store i32 1, i32* %6, align 4
  br label %21

; <label>:21:                                     ; preds = %38, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %41

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @SymbolIndex(i8 signext %31)
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  br label %38

; <label>:38:                                     ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %21

; <label>:41:                                     ; preds = %21
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @DedigitizeSequence(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul i64 1, %9
  %11 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 235, i64 %10)
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

; <label>:12:                                     ; preds = %31, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  br label %31

; <label>:31:                                     ; preds = %16
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %12

; <label>:34:                                     ; preds = %12
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %5, align 8
  ret i8* %39
}

; Function Attrs: noinline nounwind optnone uwtable
define void @DigitizeAlignment(%struct.msa_struct*, i8***) #0 {
  %3 = alloca %struct.msa_struct*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %9 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %10 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 264, i64 %13)
  %15 = bitcast i8* %14 to i8**
  store i8** %15, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

; <label>:16:                                     ; preds = %156, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %159

; <label>:22:                                     ; preds = %16
  %23 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = mul i64 1, %27
  %29 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 266, i64 %28)
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %29, i8** %33, align 8
  %34 = load i32, i32* @Alphabet_iupac, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %35, i8* %41, align 1
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %42

; <label>:42:                                     ; preds = %142, %22
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %145

; <label>:48:                                     ; preds = %42
  %49 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %50 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %141, label %62

; <label>:62:                                     ; preds = %48
  %63 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %64 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 46
  br i1 %75, label %141, label %76

; <label>:76:                                     ; preds = %62
  %77 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %78 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 95
  br i1 %89, label %141, label %90

; <label>:90:                                     ; preds = %76
  %91 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %92 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 45
  br i1 %103, label %141, label %104

; <label>:104:                                    ; preds = %90
  %105 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %106 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 126
  br i1 %117, label %141, label %118

; <label>:118:                                    ; preds = %104
  %119 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %120 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @SymbolIndex(i8 signext %129)
  %131 = trunc i32 %130 to i8
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 %131, i8* %140, align 1
  br label %141

; <label>:141:                                    ; preds = %118, %104, %90, %76, %62, %48
  br label %142

; <label>:142:                                    ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %42

; <label>:145:                                    ; preds = %42
  %146 = load i32, i32* @Alphabet_iupac, align 4
  %147 = trunc i32 %146 to i8
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 %147, i8* %155, align 1
  br label %156

; <label>:156:                                    ; preds = %145
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %16

; <label>:159:                                    ; preds = %16
  %160 = load i8**, i8*** %5, align 8
  %161 = load i8***, i8**** %4, align 8
  store i8** %160, i8*** %161, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P7CountSymbol(float*, i8 signext, float) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i8, align 1
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i8 %1, i8* %5, align 1
  store float %2, float* %6, align 4
  %8 = load i8, i8* %5, align 1
  %9 = sext i8 %8 to i32
  %10 = load i32, i32* @Alphabet_size, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

; <label>:12:                                     ; preds = %3
  %13 = load float, float* %6, align 4
  %14 = load float*, float** %4, align 8
  %15 = load i8, i8* %5, align 1
  %16 = sext i8 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %14, i64 %17
  %19 = load float, float* %18, align 4
  %20 = fadd float %19, %13
  store float %20, float* %18, align 4
  br label %56

; <label>:21:                                     ; preds = %3
  store i32 0, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %52, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @Alphabet_size, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %55

; <label>:26:                                     ; preds = %22
  %27 = load i8, i8* %5, align 1
  %28 = sext i8 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i64 0, i64 %29
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %30, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %51

; <label>:36:                                     ; preds = %26
  %37 = load float, float* %6, align 4
  %38 = load i8, i8* %5, align 1
  %39 = sext i8 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [24 x i32], [24 x i32]* @DegenCount, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %37, %43
  %45 = load float*, float** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fadd float %49, %44
  store float %50, float* %48, align 4
  br label %51

; <label>:51:                                     ; preds = %36, %26
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %22

; <label>:55:                                     ; preds = %22
  br label %56

; <label>:56:                                     ; preds = %55, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @DefaultGeneticCode(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %36, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 64
  br i1 %6, label %7, label %39

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [0 x i8*], [0 x i8*]* @stdcode1, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 42
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %7
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 -1, i32* %19, align 4
  br label %35

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i8*], [0 x i8*]* @stdcode1, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %26) #6
  %28 = ptrtoint i8* %27 to i64
  %29 = sub i64 %28, ptrtoint ([25 x i8]* @Alphabet to i64)
  %30 = trunc i64 %29 to i32
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  br label %35

; <label>:35:                                     ; preds = %20, %15
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %4

; <label>:39:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @DefaultCodonBias(float*) #0 {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  %4 = getelementptr inbounds float, float* %3, i64 0
  store float 5.000000e-01, float* %4, align 4
  %5 = load float*, float** %2, align 8
  %6 = getelementptr inbounds float, float* %5, i64 1
  store float 5.000000e-01, float* %6, align 4
  %7 = load float*, float** %2, align 8
  %8 = getelementptr inbounds float, float* %7, i64 2
  store float 5.000000e-01, float* %8, align 4
  %9 = load float*, float** %2, align 8
  %10 = getelementptr inbounds float, float* %9, i64 3
  store float 5.000000e-01, float* %10, align 4
  %11 = load float*, float** %2, align 8
  %12 = getelementptr inbounds float, float* %11, i64 4
  store float 2.500000e-01, float* %12, align 4
  %13 = load float*, float** %2, align 8
  %14 = getelementptr inbounds float, float* %13, i64 5
  store float 2.500000e-01, float* %14, align 4
  %15 = load float*, float** %2, align 8
  %16 = getelementptr inbounds float, float* %15, i64 6
  store float 2.500000e-01, float* %16, align 4
  %17 = load float*, float** %2, align 8
  %18 = getelementptr inbounds float, float* %17, i64 7
  store float 2.500000e-01, float* %18, align 4
  %19 = load float*, float** %2, align 8
  %20 = getelementptr inbounds float, float* %19, i64 8
  store float 0x3FC5555560000000, float* %20, align 4
  %21 = load float*, float** %2, align 8
  %22 = getelementptr inbounds float, float* %21, i64 9
  store float 0x3FC5555560000000, float* %22, align 4
  %23 = load float*, float** %2, align 8
  %24 = getelementptr inbounds float, float* %23, i64 10
  store float 0x3FC5555560000000, float* %24, align 4
  %25 = load float*, float** %2, align 8
  %26 = getelementptr inbounds float, float* %25, i64 11
  store float 0x3FC5555560000000, float* %26, align 4
  %27 = load float*, float** %2, align 8
  %28 = getelementptr inbounds float, float* %27, i64 12
  store float 0x3FD5555560000000, float* %28, align 4
  %29 = load float*, float** %2, align 8
  %30 = getelementptr inbounds float, float* %29, i64 13
  store float 0x3FD5555560000000, float* %30, align 4
  %31 = load float*, float** %2, align 8
  %32 = getelementptr inbounds float, float* %31, i64 14
  store float 1.000000e+00, float* %32, align 4
  %33 = load float*, float** %2, align 8
  %34 = getelementptr inbounds float, float* %33, i64 15
  store float 0x3FD5555560000000, float* %34, align 4
  %35 = load float*, float** %2, align 8
  %36 = getelementptr inbounds float, float* %35, i64 16
  store float 5.000000e-01, float* %36, align 4
  %37 = load float*, float** %2, align 8
  %38 = getelementptr inbounds float, float* %37, i64 17
  store float 5.000000e-01, float* %38, align 4
  %39 = load float*, float** %2, align 8
  %40 = getelementptr inbounds float, float* %39, i64 18
  store float 5.000000e-01, float* %40, align 4
  %41 = load float*, float** %2, align 8
  %42 = getelementptr inbounds float, float* %41, i64 19
  store float 5.000000e-01, float* %42, align 4
  %43 = load float*, float** %2, align 8
  %44 = getelementptr inbounds float, float* %43, i64 20
  store float 2.500000e-01, float* %44, align 4
  %45 = load float*, float** %2, align 8
  %46 = getelementptr inbounds float, float* %45, i64 21
  store float 2.500000e-01, float* %46, align 4
  %47 = load float*, float** %2, align 8
  %48 = getelementptr inbounds float, float* %47, i64 22
  store float 2.500000e-01, float* %48, align 4
  %49 = load float*, float** %2, align 8
  %50 = getelementptr inbounds float, float* %49, i64 23
  store float 2.500000e-01, float* %50, align 4
  %51 = load float*, float** %2, align 8
  %52 = getelementptr inbounds float, float* %51, i64 24
  store float 0x3FC5555560000000, float* %52, align 4
  %53 = load float*, float** %2, align 8
  %54 = getelementptr inbounds float, float* %53, i64 25
  store float 0x3FC5555560000000, float* %54, align 4
  %55 = load float*, float** %2, align 8
  %56 = getelementptr inbounds float, float* %55, i64 26
  store float 0x3FC5555560000000, float* %56, align 4
  %57 = load float*, float** %2, align 8
  %58 = getelementptr inbounds float, float* %57, i64 27
  store float 0x3FC5555560000000, float* %58, align 4
  %59 = load float*, float** %2, align 8
  %60 = getelementptr inbounds float, float* %59, i64 28
  store float 0x3FC5555560000000, float* %60, align 4
  %61 = load float*, float** %2, align 8
  %62 = getelementptr inbounds float, float* %61, i64 29
  store float 0x3FC5555560000000, float* %62, align 4
  %63 = load float*, float** %2, align 8
  %64 = getelementptr inbounds float, float* %63, i64 30
  store float 0x3FC5555560000000, float* %64, align 4
  %65 = load float*, float** %2, align 8
  %66 = getelementptr inbounds float, float* %65, i64 31
  store float 0x3FC5555560000000, float* %66, align 4
  %67 = load float*, float** %2, align 8
  %68 = getelementptr inbounds float, float* %67, i64 32
  store float 5.000000e-01, float* %68, align 4
  %69 = load float*, float** %2, align 8
  %70 = getelementptr inbounds float, float* %69, i64 33
  store float 5.000000e-01, float* %70, align 4
  %71 = load float*, float** %2, align 8
  %72 = getelementptr inbounds float, float* %71, i64 34
  store float 5.000000e-01, float* %72, align 4
  %73 = load float*, float** %2, align 8
  %74 = getelementptr inbounds float, float* %73, i64 35
  store float 5.000000e-01, float* %74, align 4
  %75 = load float*, float** %2, align 8
  %76 = getelementptr inbounds float, float* %75, i64 36
  store float 2.500000e-01, float* %76, align 4
  %77 = load float*, float** %2, align 8
  %78 = getelementptr inbounds float, float* %77, i64 37
  store float 2.500000e-01, float* %78, align 4
  %79 = load float*, float** %2, align 8
  %80 = getelementptr inbounds float, float* %79, i64 38
  store float 2.500000e-01, float* %80, align 4
  %81 = load float*, float** %2, align 8
  %82 = getelementptr inbounds float, float* %81, i64 39
  store float 2.500000e-01, float* %82, align 4
  %83 = load float*, float** %2, align 8
  %84 = getelementptr inbounds float, float* %83, i64 40
  store float 2.500000e-01, float* %84, align 4
  %85 = load float*, float** %2, align 8
  %86 = getelementptr inbounds float, float* %85, i64 41
  store float 2.500000e-01, float* %86, align 4
  %87 = load float*, float** %2, align 8
  %88 = getelementptr inbounds float, float* %87, i64 42
  store float 2.500000e-01, float* %88, align 4
  %89 = load float*, float** %2, align 8
  %90 = getelementptr inbounds float, float* %89, i64 43
  store float 2.500000e-01, float* %90, align 4
  %91 = load float*, float** %2, align 8
  %92 = getelementptr inbounds float, float* %91, i64 44
  store float 2.500000e-01, float* %92, align 4
  %93 = load float*, float** %2, align 8
  %94 = getelementptr inbounds float, float* %93, i64 45
  store float 2.500000e-01, float* %94, align 4
  %95 = load float*, float** %2, align 8
  %96 = getelementptr inbounds float, float* %95, i64 46
  store float 2.500000e-01, float* %96, align 4
  %97 = load float*, float** %2, align 8
  %98 = getelementptr inbounds float, float* %97, i64 47
  store float 2.500000e-01, float* %98, align 4
  %99 = load float*, float** %2, align 8
  %100 = getelementptr inbounds float, float* %99, i64 48
  store float 0.000000e+00, float* %100, align 4
  %101 = load float*, float** %2, align 8
  %102 = getelementptr inbounds float, float* %101, i64 49
  store float 5.000000e-01, float* %102, align 4
  %103 = load float*, float** %2, align 8
  %104 = getelementptr inbounds float, float* %103, i64 50
  store float 0.000000e+00, float* %104, align 4
  %105 = load float*, float** %2, align 8
  %106 = getelementptr inbounds float, float* %105, i64 51
  store float 5.000000e-01, float* %106, align 4
  %107 = load float*, float** %2, align 8
  %108 = getelementptr inbounds float, float* %107, i64 52
  store float 0x3FC5555560000000, float* %108, align 4
  %109 = load float*, float** %2, align 8
  %110 = getelementptr inbounds float, float* %109, i64 53
  store float 0x3FC5555560000000, float* %110, align 4
  %111 = load float*, float** %2, align 8
  %112 = getelementptr inbounds float, float* %111, i64 54
  store float 0x3FC5555560000000, float* %112, align 4
  %113 = load float*, float** %2, align 8
  %114 = getelementptr inbounds float, float* %113, i64 55
  store float 0x3FC5555560000000, float* %114, align 4
  %115 = load float*, float** %2, align 8
  %116 = getelementptr inbounds float, float* %115, i64 56
  store float 0.000000e+00, float* %116, align 4
  %117 = load float*, float** %2, align 8
  %118 = getelementptr inbounds float, float* %117, i64 57
  store float 5.000000e-01, float* %118, align 4
  %119 = load float*, float** %2, align 8
  %120 = getelementptr inbounds float, float* %119, i64 58
  store float 1.000000e+00, float* %120, align 4
  %121 = load float*, float** %2, align 8
  %122 = getelementptr inbounds float, float* %121, i64 59
  store float 5.000000e-01, float* %122, align 4
  %123 = load float*, float** %2, align 8
  %124 = getelementptr inbounds float, float* %123, i64 60
  store float 0x3FC5555560000000, float* %124, align 4
  %125 = load float*, float** %2, align 8
  %126 = getelementptr inbounds float, float* %125, i64 61
  store float 5.000000e-01, float* %126, align 4
  %127 = load float*, float** %2, align 8
  %128 = getelementptr inbounds float, float* %127, i64 62
  store float 0x3FC5555560000000, float* %128, align 4
  %129 = load float*, float** %2, align 8
  %130 = getelementptr inbounds float, float* %129, i64 63
  store float 5.000000e-01, float* %130, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
