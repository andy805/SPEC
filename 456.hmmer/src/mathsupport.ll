; ModuleID = 'mathsupport.c'
source_filename = "mathsupport.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@ILogsum.firsttime = internal global i32 1, align 4
@ilogsum_lookup = internal global [20000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [46 x i8] c"Invalid argument alpha < 0.0 to SampleGamma()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Prob2Score(float, float) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = fpext float %6 to double
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store i32 -987654321, i32* %3, align 4
  br label %29

; <label>:10:                                     ; preds = %2
  %11 = load float, float* %4, align 4
  %12 = load float, float* %5, align 4
  %13 = fdiv float %11, %12
  %14 = fcmp ogt float %13, 0.000000e+00
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %10
  %16 = load float, float* %4, align 4
  %17 = load float, float* %5, align 4
  %18 = fdiv float %16, %17
  %19 = fpext float %18 to double
  %20 = call double @log(double %19) #4
  %21 = fmul double %20, 0x3FF7154764EE6C2F
  br label %23

; <label>:22:                                     ; preds = %10
  br label %23

; <label>:23:                                     ; preds = %22, %15
  %24 = phi double [ %21, %15 ], [ -9.999000e+03, %22 ]
  %25 = fmul double 1.000000e+03, %24
  %26 = fadd double 5.000000e-01, %25
  %27 = call double @llvm.floor.f64(double %26)
  %28 = fptosi double %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %23, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define float @Score2Prob(i32, float) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, -987654321
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %20

; <label>:9:                                      ; preds = %2
  %10 = load float, float* %5, align 4
  %11 = fpext float %10 to double
  %12 = load i32, i32* %4, align 4
  %13 = sitofp i32 %12 to float
  %14 = fpext float %13 to double
  %15 = fdiv double %14, 1.000000e+03
  %16 = fmul double %15, 0x3FE62E42FEAD449C
  %17 = call double @exp(double %16) #4
  %18 = fmul double %11, %17
  %19 = fptrunc double %18 to float
  store float %19, float* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %9, %8
  %21 = load float, float* %3, align 4
  ret float %21
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define float @Scorify(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to float
  %5 = fpext float %4 to double
  %6 = fdiv double %5, 1.000000e+03
  %7 = fptrunc double %6 to float
  ret float %7
}

; Function Attrs: noinline nounwind optnone uwtable
define double @PValue(%struct.plan7_s*, float) #0 {
  %3 = alloca %struct.plan7_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %3, align 8
  store float %1, float* %4, align 4
  %7 = load float, float* %4, align 4
  %8 = fpext float %7 to double
  %9 = call double @log(double 0x7FEFFFFFFFFFFFFF) #4
  %10 = fmul double %9, 0x3FF7154764EE6C2F
  %11 = fcmp oge double %8, %10
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store double 0.000000e+00, double* %5, align 8
  br label %29

; <label>:13:                                     ; preds = %2
  %14 = load float, float* %4, align 4
  %15 = fpext float %14 to double
  %16 = call double @log(double 0x7FEFFFFFFFFFFFFF) #4
  %17 = fmul double %16, 0x3FF7154764EE6C2F
  %18 = fmul double -1.000000e+00, %17
  %19 = fcmp ole double %15, %18
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %13
  store double 1.000000e+00, double* %5, align 8
  br label %28

; <label>:21:                                     ; preds = %13
  %22 = load float, float* %4, align 4
  %23 = fpext float %22 to double
  %24 = fmul double %23, 0x3FE62E42FEAD449C
  %25 = call double @exp(double %24) #4
  %26 = fadd double 1.000000e+00, %25
  %27 = fdiv double 1.000000e+00, %26
  store double %27, double* %5, align 8
  br label %28

; <label>:28:                                     ; preds = %21, %20
  br label %29

; <label>:29:                                     ; preds = %28, %12
  %30 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %31 = icmp ne %struct.plan7_s* %30, null
  br i1 %31, label %32, label %53

; <label>:32:                                     ; preds = %29
  %33 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %33, i32 0, i32 47
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

; <label>:38:                                     ; preds = %32
  %39 = load float, float* %4, align 4
  %40 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 45
  %42 = load float, float* %41, align 8
  %43 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 46
  %45 = load float, float* %44, align 4
  %46 = call double @ExtremeValueP(float %39, float %42, float %45)
  store double %46, double* %6, align 8
  %47 = load double, double* %6, align 8
  %48 = load double, double* %5, align 8
  %49 = fcmp olt double %47, %48
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %38
  %51 = load double, double* %6, align 8
  store double %51, double* %5, align 8
  br label %52

; <label>:52:                                     ; preds = %50, %38
  br label %53

; <label>:53:                                     ; preds = %52, %32, %29
  %54 = load double, double* %5, align 8
  ret double %54
}

declare double @ExtremeValueP(float, float, float) #3

; Function Attrs: noinline nounwind optnone uwtable
define float @LogSum(float, float) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = load float, float* %5, align 4
  %8 = fcmp ogt float %6, %7
  br i1 %8, label %9, label %32

; <label>:9:                                      ; preds = %2
  %10 = load float, float* %4, align 4
  %11 = load float, float* %5, align 4
  %12 = fsub float %10, %11
  %13 = fpext float %12 to double
  %14 = fcmp ogt double %13, 5.000000e+01
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %9
  %16 = load float, float* %4, align 4
  %17 = fpext float %16 to double
  br label %29

; <label>:18:                                     ; preds = %9
  %19 = load float, float* %4, align 4
  %20 = fpext float %19 to double
  %21 = load float, float* %5, align 4
  %22 = load float, float* %4, align 4
  %23 = fsub float %21, %22
  %24 = fpext float %23 to double
  %25 = call double @exp(double %24) #4
  %26 = fadd double 1.000000e+00, %25
  %27 = call double @log(double %26) #4
  %28 = fadd double %20, %27
  br label %29

; <label>:29:                                     ; preds = %18, %15
  %30 = phi double [ %17, %15 ], [ %28, %18 ]
  %31 = fptrunc double %30 to float
  store float %31, float* %3, align 4
  br label %55

; <label>:32:                                     ; preds = %2
  %33 = load float, float* %5, align 4
  %34 = load float, float* %4, align 4
  %35 = fsub float %33, %34
  %36 = fpext float %35 to double
  %37 = fcmp ogt double %36, 5.000000e+01
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %32
  %39 = load float, float* %5, align 4
  %40 = fpext float %39 to double
  br label %52

; <label>:41:                                     ; preds = %32
  %42 = load float, float* %5, align 4
  %43 = fpext float %42 to double
  %44 = load float, float* %4, align 4
  %45 = load float, float* %5, align 4
  %46 = fsub float %44, %45
  %47 = fpext float %46 to double
  %48 = call double @exp(double %47) #4
  %49 = fadd double 1.000000e+00, %48
  %50 = call double @log(double %49) #4
  %51 = fadd double %43, %50
  br label %52

; <label>:52:                                     ; preds = %41, %38
  %53 = phi double [ %40, %38 ], [ %51, %41 ]
  %54 = fptrunc double %53 to float
  store float %54, float* %3, align 4
  br label %55

; <label>:55:                                     ; preds = %52, %29
  %56 = load float, float* %3, align 4
  ret float %56
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ILogsum(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ILogsum.firsttime, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @init_ilogsum()
  store i32 0, i32* @ILogsum.firsttime, align 4
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 20000
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %3, align 4
  br label %41

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, -20000
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %3, align 4
  br label %41

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [20000 x i32], [20000 x i32]* @ilogsum_lookup, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* %3, align 4
  br label %41

; <label>:33:                                     ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 0, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [20000 x i32], [20000 x i32]* @ilogsum_lookup, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %34, %39
  store i32 %40, i32* %3, align 4
  br label %41

; <label>:41:                                     ; preds = %33, %26, %21, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ilogsum() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %20, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 20000
  br i1 %4, label %5, label %23

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sub nsw i32 0, %6
  %8 = sitofp i32 %7 to float
  %9 = fpext float %8 to double
  %10 = fmul double 0x3FE62E42FEAD449C, %9
  %11 = fdiv double %10, 1.000000e+03
  %12 = call double @exp(double %11) #4
  %13 = fadd double 1.000000e+00, %12
  %14 = call double @log(double %13) #4
  %15 = fmul double 0x40968AC7B890D5A6, %14
  %16 = fptosi double %15 to i32
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [20000 x i32], [20000 x i32]* @ilogsum_lookup, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %5
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %2

; <label>:23:                                     ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @LogNorm(float*, i32) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store float 0xC6293E5940000000, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %27, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

; <label>:12:                                     ; preds = %8
  %13 = load float*, float** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %13, i64 %15
  %17 = load float, float* %16, align 4
  %18 = load float, float* %6, align 4
  %19 = fcmp ogt float %17, %18
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %12
  %21 = load float*, float** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = load float, float* %24, align 4
  store float %25, float* %6, align 4
  br label %26

; <label>:26:                                     ; preds = %20, %12
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %8

; <label>:30:                                     ; preds = %8
  store i32 0, i32* %5, align 4
  br label %31

; <label>:31:                                     ; preds = %61, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %64

; <label>:35:                                     ; preds = %31
  %36 = load float*, float** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = load float, float* %6, align 4
  %43 = fpext float %42 to double
  %44 = fsub double %43, 5.000000e+01
  %45 = fcmp ogt double %41, %44
  br i1 %45, label %46, label %60

; <label>:46:                                     ; preds = %35
  %47 = load float*, float** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float, float* %6, align 4
  %53 = fsub float %51, %52
  %54 = fpext float %53 to double
  %55 = call double @exp(double %54) #4
  %56 = load float, float* %7, align 4
  %57 = fpext float %56 to double
  %58 = fadd double %57, %55
  %59 = fptrunc double %58 to float
  store float %59, float* %7, align 4
  br label %60

; <label>:60:                                     ; preds = %46, %35
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %31

; <label>:64:                                     ; preds = %31
  store i32 0, i32* %5, align 4
  br label %65

; <label>:65:                                     ; preds = %104, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %107

; <label>:69:                                     ; preds = %65
  %70 = load float*, float** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fpext float %74 to double
  %76 = load float, float* %6, align 4
  %77 = fpext float %76 to double
  %78 = fsub double %77, 5.000000e+01
  %79 = fcmp ogt double %75, %78
  br i1 %79, label %80, label %98

; <label>:80:                                     ; preds = %69
  %81 = load float*, float** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = load float, float* %6, align 4
  %87 = fsub float %85, %86
  %88 = fpext float %87 to double
  %89 = call double @exp(double %88) #4
  %90 = load float, float* %7, align 4
  %91 = fpext float %90 to double
  %92 = fdiv double %89, %91
  %93 = fptrunc double %92 to float
  %94 = load float*, float** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  store float %93, float* %97, align 4
  br label %103

; <label>:98:                                     ; preds = %69
  %99 = load float*, float** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  store float 0.000000e+00, float* %102, align 4
  br label %103

; <label>:103:                                    ; preds = %98, %80
  br label %104

; <label>:104:                                    ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %65

; <label>:107:                                    ; preds = %65
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define float @Logp_cvec(float*, i32, float*) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %8, align 4
  store i32 0, i32* %11, align 4
  br label %12

; <label>:12:                                     ; preds = %84, %3
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %87

; <label>:16:                                     ; preds = %12
  %17 = load float*, float** %4, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %17, i64 %19
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %22, i64 %24
  %26 = load float, float* %25, align 4
  %27 = fadd float %21, %26
  %28 = load float, float* %8, align 4
  %29 = fadd float %28, %27
  store float %29, float* %8, align 4
  %30 = load float*, float** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = load float, float* %9, align 4
  %36 = fadd float %35, %34
  store float %36, float* %9, align 4
  %37 = load float*, float** %4, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float, float* %10, align 4
  %43 = fadd float %42, %41
  store float %43, float* %10, align 4
  %44 = load float*, float** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %4, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fadd float %48, %53
  %55 = fpext float %54 to double
  %56 = call double @Gammln(double %55)
  %57 = load float, float* %7, align 4
  %58 = fpext float %57 to double
  %59 = fadd double %58, %56
  %60 = fptrunc double %59 to float
  store float %60, float* %7, align 4
  %61 = load float*, float** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  %65 = load float, float* %64, align 4
  %66 = fpext float %65 to double
  %67 = fadd double %66, 1.000000e+00
  %68 = call double @Gammln(double %67)
  %69 = load float, float* %7, align 4
  %70 = fpext float %69 to double
  %71 = fsub double %70, %68
  %72 = fptrunc double %71 to float
  store float %72, float* %7, align 4
  %73 = load float*, float** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  %79 = call double @Gammln(double %78)
  %80 = load float, float* %7, align 4
  %81 = fpext float %80 to double
  %82 = fsub double %81, %79
  %83 = fptrunc double %82 to float
  store float %83, float* %7, align 4
  br label %84

; <label>:84:                                     ; preds = %16
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %12

; <label>:87:                                     ; preds = %12
  %88 = load float, float* %8, align 4
  %89 = fpext float %88 to double
  %90 = call double @Gammln(double %89)
  %91 = load float, float* %7, align 4
  %92 = fpext float %91 to double
  %93 = fsub double %92, %90
  %94 = fptrunc double %93 to float
  store float %94, float* %7, align 4
  %95 = load float, float* %9, align 4
  %96 = fpext float %95 to double
  %97 = call double @Gammln(double %96)
  %98 = load float, float* %7, align 4
  %99 = fpext float %98 to double
  %100 = fadd double %99, %97
  %101 = fptrunc double %100 to float
  store float %101, float* %7, align 4
  %102 = load float, float* %10, align 4
  %103 = fpext float %102 to double
  %104 = fadd double %103, 1.000000e+00
  %105 = call double @Gammln(double %104)
  %106 = load float, float* %7, align 4
  %107 = fpext float %106 to double
  %108 = fadd double %107, %105
  %109 = fptrunc double %108 to float
  store float %109, float* %7, align 4
  %110 = load float, float* %7, align 4
  ret float %110
}

declare double @Gammln(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @SampleDirichlet(float*, i32, float*) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %23, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

; <label>:12:                                     ; preds = %8
  %13 = load float*, float** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %13, i64 %15
  %17 = load float, float* %16, align 4
  %18 = call float @SampleGamma(float %17)
  %19 = load float*, float** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  store float %18, float* %22, align 4
  br label %23

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %8

; <label>:26:                                     ; preds = %8
  %27 = load float*, float** %6, align 8
  %28 = load i32, i32* %5, align 4
  call void @FNorm(float* %27, i32 %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define float @SampleGamma(float) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %3, align 4
  %9 = load float, float* %3, align 4
  %10 = fpext float %9 to double
  %11 = fcmp oge double %10, 1.000000e+00
  br i1 %11, label %12, label %66

; <label>:12:                                     ; preds = %1
  br label %13

; <label>:13:                                     ; preds = %12, %65
  %14 = load float, float* %3, align 4
  %15 = fpext float %14 to double
  %16 = fmul double 2.000000e+00, %15
  %17 = fsub double %16, 1.000000e+00
  %18 = call double @sqrt(double %17) #4
  %19 = fptrunc double %18 to float
  store float %19, float* %8, align 4
  %20 = call double @sre_random()
  %21 = fptrunc double %20 to float
  store float %21, float* %4, align 4
  %22 = load float, float* %4, align 4
  %23 = load float, float* %4, align 4
  %24 = fsub float 1.000000e+00, %23
  %25 = fdiv float %22, %24
  store float %25, float* %5, align 4
  %26 = load float, float* %3, align 4
  %27 = fpext float %26 to double
  %28 = load float, float* %5, align 4
  %29 = fpext float %28 to double
  %30 = load float, float* %8, align 4
  %31 = fdiv float 1.000000e+00, %30
  %32 = fpext float %31 to double
  %33 = call double @pow(double %29, double %32) #4
  %34 = fmul double %27, %33
  %35 = fptrunc double %34 to float
  store float %35, float* %6, align 4
  %36 = load float, float* %6, align 4
  %37 = fsub float -0.000000e+00, %36
  %38 = load float, float* %3, align 4
  %39 = fadd float %37, %38
  %40 = fpext float %39 to double
  %41 = call double @exp(double %40) #4
  %42 = fmul double 2.500000e-01, %41
  %43 = load float, float* %5, align 4
  %44 = fpext float %43 to double
  %45 = load float, float* %3, align 4
  %46 = load float, float* %8, align 4
  %47 = fdiv float %45, %46
  %48 = fpext float %47 to double
  %49 = fadd double 1.000000e+00, %48
  %50 = call double @pow(double %44, double %49) #4
  %51 = fmul double %42, %50
  %52 = load float, float* %5, align 4
  %53 = fpext float %52 to double
  %54 = fdiv double 1.000000e+00, %53
  %55 = fadd double 1.000000e+00, %54
  %56 = call double @pow(double %55, double 2.000000e+00) #4
  %57 = fmul double %51, %56
  %58 = fptrunc double %57 to float
  store float %58, float* %7, align 4
  %59 = call double @sre_random()
  %60 = load float, float* %7, align 4
  %61 = fpext float %60 to double
  %62 = fcmp ole double %59, %61
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %13
  %64 = load float, float* %6, align 4
  store float %64, float* %2, align 4
  br label %132

; <label>:65:                                     ; preds = %13
  br label %13

; <label>:66:                                     ; preds = %1
  %67 = load float, float* %3, align 4
  %68 = fpext float %67 to double
  %69 = fcmp ogt double %68, 0.000000e+00
  br i1 %69, label %70, label %130

; <label>:70:                                     ; preds = %66
  br label %71

; <label>:71:                                     ; preds = %70, %129
  %72 = call double @sre_random()
  %73 = fptrunc double %72 to float
  store float %73, float* %4, align 4
  %74 = load float, float* %4, align 4
  %75 = fpext float %74 to double
  %76 = load float, float* %3, align 4
  %77 = fpext float %76 to double
  %78 = call double @exp(double 1.000000e+00) #4
  %79 = fdiv double %77, %78
  %80 = fadd double 1.000000e+00, %79
  %81 = fmul double %75, %80
  %82 = fptrunc double %81 to float
  store float %82, float* %5, align 4
  %83 = load float, float* %5, align 4
  %84 = fpext float %83 to double
  %85 = fcmp ogt double %84, 1.000000e+00
  br i1 %85, label %86, label %112

; <label>:86:                                     ; preds = %71
  %87 = load float, float* %5, align 4
  %88 = fsub float 1.000000e+00, %87
  %89 = fpext float %88 to double
  %90 = load float, float* %3, align 4
  %91 = fpext float %90 to double
  %92 = call double @exp(double 1.000000e+00) #4
  %93 = fdiv double %91, %92
  %94 = fadd double %89, %93
  %95 = load float, float* %3, align 4
  %96 = fpext float %95 to double
  %97 = fdiv double %94, %96
  %98 = call double @log(double %97) #4
  %99 = fsub double -0.000000e+00, %98
  %100 = fptrunc double %99 to float
  store float %100, float* %6, align 4
  %101 = call double @sre_random()
  %102 = load float, float* %6, align 4
  %103 = fpext float %102 to double
  %104 = load float, float* %3, align 4
  %105 = fpext float %104 to double
  %106 = fsub double %105, 1.000000e+00
  %107 = call double @pow(double %103, double %106) #4
  %108 = fcmp ole double %101, %107
  br i1 %108, label %109, label %111

; <label>:109:                                    ; preds = %86
  %110 = load float, float* %6, align 4
  store float %110, float* %2, align 4
  br label %132

; <label>:111:                                    ; preds = %86
  br label %129

; <label>:112:                                    ; preds = %71
  %113 = load float, float* %5, align 4
  %114 = fpext float %113 to double
  %115 = load float, float* %3, align 4
  %116 = fpext float %115 to double
  %117 = fdiv double 1.000000e+00, %116
  %118 = call double @pow(double %114, double %117) #4
  %119 = fptrunc double %118 to float
  store float %119, float* %6, align 4
  %120 = call double @sre_random()
  %121 = load float, float* %6, align 4
  %122 = fsub float -0.000000e+00, %121
  %123 = fpext float %122 to double
  %124 = call double @exp(double %123) #4
  %125 = fcmp ole double %120, %124
  br i1 %125, label %126, label %128

; <label>:126:                                    ; preds = %112
  %127 = load float, float* %6, align 4
  store float %127, float* %2, align 4
  br label %132

; <label>:128:                                    ; preds = %112
  br label %129

; <label>:129:                                    ; preds = %128, %111
  br label %71

; <label>:130:                                    ; preds = %66
  br label %131

; <label>:131:                                    ; preds = %130
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0))
  store float 0.000000e+00, float* %2, align 4
  br label %132

; <label>:132:                                    ; preds = %131, %126, %109, %63
  %133 = load float, float* %2, align 4
  ret float %133
}

declare void @FNorm(float*, i32) #3

; Function Attrs: nounwind
declare double @sqrt(double) #1

declare double @sre_random() #3

; Function Attrs: nounwind
declare double @pow(double, double) #1

declare void @Die(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @SampleCountvector(float*, i32, i32, float*) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  %10 = load float*, float** %8, align 8
  %11 = load i32, i32* %6, align 4
  call void @FSet(float* %10, i32 %11, float 0.000000e+00)
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %27, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %12
  %17 = load float*, float** %8, align 8
  %18 = load float*, float** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @FChoose(float* %18, i32 %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %17, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = fadd double %24, 1.000000e+00
  %26 = fptrunc double %25 to float
  store float %26, float* %22, align 4
  br label %27

; <label>:27:                                     ; preds = %16
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %12

; <label>:30:                                     ; preds = %12
  ret void
}

declare void @FSet(float*, i32, float) #3

declare i32 @FChoose(float*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define float @P_PvecGivenDirichlet(float*, i32, float*) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %61, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %64

; <label>:14:                                     ; preds = %10
  %15 = load float*, float** %4, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %15, i64 %17
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = fcmp ogt double %20, 0.000000e+00
  br i1 %21, label %22, label %60

; <label>:22:                                     ; preds = %14
  %23 = load float*, float** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = fpext float %27 to double
  %29 = fsub double %28, 1.000000e+00
  %30 = load float*, float** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  %36 = call double @log(double %35) #4
  %37 = fmul double %29, %36
  %38 = load float, float* %8, align 4
  %39 = fpext float %38 to double
  %40 = fadd double %39, %37
  %41 = fptrunc double %40 to float
  store float %41, float* %8, align 4
  %42 = load float*, float** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = call double @Gammln(double %47)
  %49 = load float, float* %8, align 4
  %50 = fpext float %49 to double
  %51 = fsub double %50, %48
  %52 = fptrunc double %51 to float
  store float %52, float* %8, align 4
  %53 = load float*, float** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float, float* %7, align 4
  %59 = fadd float %58, %57
  store float %59, float* %7, align 4
  br label %60

; <label>:60:                                     ; preds = %22, %14
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %10

; <label>:64:                                     ; preds = %10
  %65 = load float, float* %7, align 4
  %66 = fpext float %65 to double
  %67 = call double @Gammln(double %66)
  %68 = load float, float* %8, align 4
  %69 = fpext float %68 to double
  %70 = fadd double %69, %67
  %71 = fptrunc double %70 to float
  store float %71, float* %8, align 4
  %72 = load float, float* %8, align 4
  ret float %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
