; ModuleID = 'plan9.c'
source_filename = "plan9.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [8 x i8] c"plan9.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unnamed\00", align 1
@Alphabet_size = external global i32, align 4
@Alphabet_type = external global i32, align 4
@aafq = external global [0 x float], align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"No support for non-protein, non-nucleic acid alphabets.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.plan9_s* @P9AllocHMM(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.plan9_s*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 35, i64 152)
  %5 = bitcast i8* %4 to %struct.plan9_s*
  store %struct.plan9_s* %5, %struct.plan9_s** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 2
  %8 = sext i32 %7 to i64
  %9 = mul i64 92, %8
  %10 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 36, i64 %9)
  %11 = bitcast i8* %10 to %struct.basic_state*
  %12 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %13 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %12, i32 0, i32 1
  store %struct.basic_state* %11, %struct.basic_state** %13, align 8
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = mul i64 92, %16
  %18 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 37, i64 %17)
  %19 = bitcast i8* %18 to %struct.basic_state*
  %20 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %21 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %20, i32 0, i32 3
  store %struct.basic_state* %19, %struct.basic_state** %21, align 8
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = mul i64 92, %24
  %26 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 38, i64 %25)
  %27 = bitcast i8* %26 to %struct.basic_state*
  %28 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %29 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %28, i32 0, i32 2
  store %struct.basic_state* %27, %struct.basic_state** %29, align 8
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 39, i64 %33)
  %35 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %36 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 40, i64 %40)
  %42 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %43 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = mul i64 %47, 4
  %49 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 41, i64 %48)
  %50 = bitcast i8* %49 to float*
  %51 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %52 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %51, i32 0, i32 8
  store float* %50, float** %52, align 8
  %53 = load i32, i32* %2, align 4
  %54 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %55 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = call i8* @Strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %57 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %58 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %60 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %59, i32 0, i32 9
  store i32 0, i32* %60, align 8
  %61 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  call void @P9ZeroHMM(%struct.plan9_s* %61)
  %62 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  ret %struct.plan9_s* %62
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare i8* @Strdup(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P9ZeroHMM(%struct.plan9_s*) #0 {
  %2 = alloca %struct.plan9_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.plan9_s* %0, %struct.plan9_s** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %91, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %9 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %13, label %94

; <label>:13:                                     ; preds = %6
  store i32 0, i32* %4, align 4
  br label %14

; <label>:14:                                     ; preds = %48, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %51

; <label>:17:                                     ; preds = %14
  %18 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %19 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %18, i32 0, i32 2
  %20 = load %struct.basic_state*, %struct.basic_state** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %20, i64 %22
  %24 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x float], [3 x float]* %24, i64 0, i64 %26
  store float 0.000000e+00, float* %27, align 4
  %28 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %29 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %28, i32 0, i32 1
  %30 = load %struct.basic_state*, %struct.basic_state** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %30, i64 %32
  %34 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x float], [3 x float]* %34, i64 0, i64 %36
  store float 0.000000e+00, float* %37, align 4
  %38 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %39 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %38, i32 0, i32 3
  %40 = load %struct.basic_state*, %struct.basic_state** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %40, i64 %42
  %44 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %43, i32 0, i32 0
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x float], [3 x float]* %44, i64 0, i64 %46
  store float 0.000000e+00, float* %47, align 4
  br label %48

; <label>:48:                                     ; preds = %17
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %14

; <label>:51:                                     ; preds = %14
  store i32 0, i32* %5, align 4
  br label %52

; <label>:52:                                     ; preds = %87, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @Alphabet_size, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %90

; <label>:56:                                     ; preds = %52
  %57 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %58 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %57, i32 0, i32 2
  %59 = load %struct.basic_state*, %struct.basic_state** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %59, i64 %61
  %63 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %62, i32 0, i32 1
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [20 x float], [20 x float]* %63, i64 0, i64 %65
  store float 0.000000e+00, float* %66, align 4
  %67 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %68 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %67, i32 0, i32 1
  %69 = load %struct.basic_state*, %struct.basic_state** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %69, i64 %71
  %73 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %72, i32 0, i32 1
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [20 x float], [20 x float]* %73, i64 0, i64 %75
  store float 0.000000e+00, float* %76, align 4
  %77 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %78 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %77, i32 0, i32 3
  %79 = load %struct.basic_state*, %struct.basic_state** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %79, i64 %81
  %83 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %82, i32 0, i32 1
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [20 x float], [20 x float]* %83, i64 0, i64 %85
  store float 0.000000e+00, float* %86, align 4
  br label %87

; <label>:87:                                     ; preds = %56
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %52

; <label>:90:                                     ; preds = %52
  br label %91

; <label>:91:                                     ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %6

; <label>:94:                                     ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @P9FreeHMM(%struct.plan9_s*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.plan9_s*, align 8
  store %struct.plan9_s* %0, %struct.plan9_s** %3, align 8
  %4 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %5 = icmp eq %struct.plan9_s* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

; <label>:7:                                      ; preds = %1
  %8 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %9 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %8, i32 0, i32 6
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* %10) #3
  %11 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %12 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %11, i32 0, i32 7
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* %13) #3
  %14 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %15 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %14, i32 0, i32 8
  %16 = load float*, float** %15, align 8
  %17 = bitcast float* %16 to i8*
  call void @free(i8* %17) #3
  %18 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %19 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  call void @free(i8* %20) #3
  %21 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %22 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %21, i32 0, i32 2
  %23 = load %struct.basic_state*, %struct.basic_state** %22, align 8
  %24 = icmp ne %struct.basic_state* %23, null
  br i1 %24, label %25, label %30

; <label>:25:                                     ; preds = %7
  %26 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %27 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %26, i32 0, i32 2
  %28 = load %struct.basic_state*, %struct.basic_state** %27, align 8
  %29 = bitcast %struct.basic_state* %28 to i8*
  call void @free(i8* %29) #3
  br label %30

; <label>:30:                                     ; preds = %25, %7
  %31 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %32 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %31, i32 0, i32 1
  %33 = load %struct.basic_state*, %struct.basic_state** %32, align 8
  %34 = icmp ne %struct.basic_state* %33, null
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %30
  %36 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %37 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %36, i32 0, i32 1
  %38 = load %struct.basic_state*, %struct.basic_state** %37, align 8
  %39 = bitcast %struct.basic_state* %38 to i8*
  call void @free(i8* %39) #3
  br label %40

; <label>:40:                                     ; preds = %35, %30
  %41 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %42 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %41, i32 0, i32 3
  %43 = load %struct.basic_state*, %struct.basic_state** %42, align 8
  %44 = icmp ne %struct.basic_state* %43, null
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %40
  %46 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %47 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %46, i32 0, i32 3
  %48 = load %struct.basic_state*, %struct.basic_state** %47, align 8
  %49 = bitcast %struct.basic_state* %48 to i8*
  call void @free(i8* %49) #3
  br label %50

; <label>:50:                                     ; preds = %45, %40
  %51 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %52 = bitcast %struct.plan9_s* %51 to i8*
  call void @free(i8* %52) #3
  store i32 1, i32* %2, align 4
  br label %53

; <label>:53:                                     ; preds = %50, %6
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @P9Renormalize(%struct.plan9_s*) #0 {
  %2 = alloca %struct.plan9_s*, align 8
  %3 = alloca i32, align 4
  store %struct.plan9_s* %0, %struct.plan9_s** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %61, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %7 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sle i32 %5, %8
  br i1 %9, label %10, label %64

; <label>:10:                                     ; preds = %4
  %11 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %12 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %11, i32 0, i32 2
  %13 = load %struct.basic_state*, %struct.basic_state** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %13, i64 %15
  %17 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  call void @FNorm(float* %18, i32 3)
  %19 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %20 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %19, i32 0, i32 1
  %21 = load %struct.basic_state*, %struct.basic_state** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %21, i64 %23
  %25 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  call void @FNorm(float* %26, i32 3)
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %38

; <label>:29:                                     ; preds = %10
  %30 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %31 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %30, i32 0, i32 3
  %32 = load %struct.basic_state*, %struct.basic_state** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %32, i64 %34
  %36 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 0
  call void @FNorm(float* %37, i32 3)
  br label %38

; <label>:38:                                     ; preds = %29, %10
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %51

; <label>:41:                                     ; preds = %38
  %42 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %43 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %42, i32 0, i32 2
  %44 = load %struct.basic_state*, %struct.basic_state** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %44, i64 %46
  %48 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds [20 x float], [20 x float]* %48, i32 0, i32 0
  %50 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %49, i32 %50)
  br label %51

; <label>:51:                                     ; preds = %41, %38
  %52 = load %struct.plan9_s*, %struct.plan9_s** %2, align 8
  %53 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %52, i32 0, i32 1
  %54 = load %struct.basic_state*, %struct.basic_state** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %54, i64 %56
  %58 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %57, i32 0, i32 1
  %59 = getelementptr inbounds [20 x float], [20 x float]* %58, i32 0, i32 0
  %60 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %59, i32 %60)
  br label %61

; <label>:61:                                     ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %4

; <label>:64:                                     ; preds = %4
  ret void
}

declare void @FNorm(float*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P9DefaultNullModel(float*) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  store float* %0, float** %2, align 8
  %4 = load i32, i32* @Alphabet_type, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %24

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

; <label>:7:                                      ; preds = %20, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @Alphabet_size, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [0 x float], [0 x float]* @aafq, i64 0, i64 %13
  %15 = load float, float* %14, align 4
  %16 = load float*, float** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %16, i64 %18
  store float %15, float* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %7

; <label>:23:                                     ; preds = %7
  br label %43

; <label>:24:                                     ; preds = %1
  %25 = load i32, i32* @Alphabet_type, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %41

; <label>:27:                                     ; preds = %24
  store i32 0, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %37, %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @Alphabet_size, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

; <label>:32:                                     ; preds = %28
  %33 = load float*, float** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  store float 2.500000e-01, float* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %28

; <label>:40:                                     ; preds = %28
  br label %42

; <label>:41:                                     ; preds = %24
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0))
  br label %42

; <label>:42:                                     ; preds = %41, %40
  br label %43

; <label>:43:                                     ; preds = %42, %23
  ret void
}

declare void @Die(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
