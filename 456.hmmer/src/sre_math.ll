; ModuleID = 'sre_math.c'
source_filename = "sre_math.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Gammln.cof = internal global [11 x double] [double 0x40E6EC39B523E5C6, double 0xC1030CE42A8DE3A0, double 0x41093547A7877F7A, double 0xC100F46BD1F08565, double 0x40E891BEDA52E5F4, double 0xC0C2C0CBD1715240, double 0x408B74AF4B6E0230, double 0xC03F8D31A9F566E2, double 0x3FD29CB3C2263426, double 0xBF2E680CC2D54303, double 0x3DE133D0CA52FB5A], align 16
@.str = private unnamed_addr constant [11 x i8] c"sre_math.c\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"IncompleteGamma(): a must be > 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"IncompleteGamma(): x must be >= 0\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"IncompleteGamma(): failed to converge using continued fraction approx\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"IncompleteGamma(): failed to converge using series approx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Linefit(float*, float*, i32, float*, float*, float*) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  store float 0.000000e+00, float* %14, align 4
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %38, %6
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %41

; <label>:23:                                     ; preds = %19
  %24 = load float*, float** %7, align 8
  %25 = load i32, i32* %18, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = load float, float* %27, align 4
  %29 = load float, float* %13, align 4
  %30 = fadd float %29, %28
  store float %30, float* %13, align 4
  %31 = load float*, float** %8, align 8
  %32 = load i32, i32* %18, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float, float* %14, align 4
  %37 = fadd float %36, %35
  store float %37, float* %14, align 4
  br label %38

; <label>:38:                                     ; preds = %23
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %18, align 4
  br label %19

; <label>:41:                                     ; preds = %19
  %42 = load i32, i32* %9, align 4
  %43 = sitofp i32 %42 to float
  %44 = load float, float* %13, align 4
  %45 = fdiv float %44, %43
  store float %45, float* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sitofp i32 %46 to float
  %48 = load float, float* %14, align 4
  %49 = fdiv float %48, %47
  store float %49, float* %14, align 4
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %15, align 4
  store i32 0, i32* %18, align 4
  br label %50

; <label>:50:                                     ; preds = %106, %41
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %109

; <label>:54:                                     ; preds = %50
  %55 = load float*, float** %7, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load float, float* %13, align 4
  %61 = fsub float %59, %60
  %62 = load float*, float** %7, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* %13, align 4
  %68 = fsub float %66, %67
  %69 = fmul float %61, %68
  %70 = load float, float* %15, align 4
  %71 = fadd float %70, %69
  store float %71, float* %15, align 4
  %72 = load float*, float** %8, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float, float* %14, align 4
  %78 = fsub float %76, %77
  %79 = load float*, float** %8, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load float, float* %82, align 4
  %84 = load float, float* %13, align 4
  %85 = fsub float %83, %84
  %86 = fmul float %78, %85
  %87 = load float, float* %16, align 4
  %88 = fadd float %87, %86
  store float %88, float* %16, align 4
  %89 = load float*, float** %7, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float, float* %13, align 4
  %95 = fsub float %93, %94
  %96 = load float*, float** %8, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  %100 = load float, float* %99, align 4
  %101 = load float, float* %14, align 4
  %102 = fsub float %100, %101
  %103 = fmul float %95, %102
  %104 = load float, float* %17, align 4
  %105 = fadd float %104, %103
  store float %105, float* %17, align 4
  br label %106

; <label>:106:                                    ; preds = %54
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %50

; <label>:109:                                    ; preds = %50
  %110 = load float, float* %17, align 4
  %111 = load float, float* %15, align 4
  %112 = fdiv float %110, %111
  %113 = load float*, float** %11, align 8
  store float %112, float* %113, align 4
  %114 = load float, float* %14, align 4
  %115 = load float, float* %13, align 4
  %116 = load float*, float** %11, align 8
  %117 = load float, float* %116, align 4
  %118 = fmul float %115, %117
  %119 = fsub float %114, %118
  %120 = load float*, float** %10, align 8
  store float %119, float* %120, align 4
  %121 = load float, float* %17, align 4
  %122 = fpext float %121 to double
  %123 = load float, float* %15, align 4
  %124 = fpext float %123 to double
  %125 = call double @sqrt(double %124) #4
  %126 = load float, float* %16, align 4
  %127 = fpext float %126 to double
  %128 = call double @sqrt(double %127) #4
  %129 = fmul double %125, %128
  %130 = fdiv double %122, %129
  %131 = fptrunc double %130 to float
  %132 = load float*, float** %12, align 8
  store float %131, float* %132, align 4
  ret i32 1
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @WeightedLinefit(float*, float*, float*, i32, float*, float*) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %13, align 4
  br label %22

; <label>:22:                                     ; preds = %104, %6
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %107

; <label>:26:                                     ; preds = %22
  %27 = load float*, float** %9, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fpext float %31 to double
  %33 = fdiv double 1.000000e+00, %32
  %34 = load double, double* %14, align 8
  %35 = fadd double %34, %33
  store double %35, double* %14, align 8
  %36 = load float*, float** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %9, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fdiv float %40, %45
  %47 = fpext float %46 to double
  %48 = load double, double* %15, align 8
  %49 = fadd double %48, %47
  store double %49, double* %15, align 8
  %50 = load float*, float** %8, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %9, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fdiv float %54, %59
  %61 = fpext float %60 to double
  %62 = load double, double* %16, align 8
  %63 = fadd double %62, %61
  store double %63, double* %16, align 8
  %64 = load float*, float** %7, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float*, float** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fmul float %68, %73
  %75 = load float*, float** %9, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fdiv float %74, %79
  %81 = fpext float %80 to double
  %82 = load double, double* %17, align 8
  %83 = fadd double %82, %81
  store double %83, double* %17, align 8
  %84 = load float*, float** %7, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float*, float** %8, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fmul float %88, %93
  %95 = load float*, float** %9, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  %99 = load float, float* %98, align 4
  %100 = fdiv float %94, %99
  %101 = fpext float %100 to double
  %102 = load double, double* %18, align 8
  %103 = fadd double %102, %101
  store double %103, double* %18, align 8
  br label %104

; <label>:104:                                    ; preds = %26
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %22

; <label>:107:                                    ; preds = %22
  %108 = load double, double* %14, align 8
  %109 = load double, double* %17, align 8
  %110 = fmul double %108, %109
  %111 = load double, double* %15, align 8
  %112 = load double, double* %15, align 8
  %113 = fmul double %111, %112
  %114 = fsub double %110, %113
  store double %114, double* %19, align 8
  %115 = load double, double* %17, align 8
  %116 = load double, double* %16, align 8
  %117 = fmul double %115, %116
  %118 = load double, double* %15, align 8
  %119 = load double, double* %18, align 8
  %120 = fmul double %118, %119
  %121 = fsub double %117, %120
  %122 = load double, double* %19, align 8
  %123 = fdiv double %121, %122
  store double %123, double* %21, align 8
  %124 = load double, double* %14, align 8
  %125 = load double, double* %18, align 8
  %126 = fmul double %124, %125
  %127 = load double, double* %15, align 8
  %128 = load double, double* %16, align 8
  %129 = fmul double %127, %128
  %130 = fsub double %126, %129
  %131 = load double, double* %19, align 8
  %132 = fdiv double %130, %131
  store double %132, double* %20, align 8
  %133 = load double, double* %20, align 8
  %134 = fptrunc double %133 to float
  %135 = load float*, float** %11, align 8
  store float %134, float* %135, align 4
  %136 = load double, double* %21, align 8
  %137 = fptrunc double %136 to float
  %138 = load float*, float** %12, align 8
  store float %137, float* %138, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define double @Gammln(double) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %3, align 8
  %9 = load double, double* %3, align 8
  %10 = fcmp ole double %9, 0.000000e+00
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store double 9.999990e+05, double* %2, align 8
  br label %50

; <label>:12:                                     ; preds = %1
  %13 = load double, double* %3, align 8
  %14 = fsub double %13, 1.000000e+00
  store double %14, double* %5, align 8
  %15 = load double, double* %5, align 8
  %16 = fadd double %15, 1.100000e+01
  store double %16, double* %7, align 8
  store double %16, double* %6, align 8
  store double 1.000000e+00, double* %8, align 8
  store i32 10, i32* %4, align 4
  br label %17

; <label>:17:                                     ; preds = %31, %12
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [11 x double], [11 x double]* @Gammln.cof, i64 0, i64 %22
  %24 = load double, double* %23, align 8
  %25 = load double, double* %7, align 8
  %26 = fdiv double %24, %25
  %27 = load double, double* %8, align 8
  %28 = fadd double %27, %26
  store double %28, double* %8, align 8
  %29 = load double, double* %7, align 8
  %30 = fsub double %29, 1.000000e+00
  store double %30, double* %7, align 8
  br label %31

; <label>:31:                                     ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %17

; <label>:34:                                     ; preds = %17
  %35 = load double, double* %8, align 8
  %36 = call double @log(double %35) #4
  store double %36, double* %8, align 8
  %37 = load double, double* %6, align 8
  %38 = fadd double %37, 5.000000e-01
  store double %38, double* %6, align 8
  %39 = load double, double* %5, align 8
  %40 = fadd double %39, 5.000000e-01
  %41 = load double, double* %6, align 8
  %42 = call double @log(double %41) #4
  %43 = fmul double %40, %42
  %44 = fadd double 0x3FED67F1C8489D6C, %43
  %45 = load double, double* %6, align 8
  %46 = fsub double %44, %45
  %47 = load double, double* %8, align 8
  %48 = fadd double %47, %46
  store double %48, double* %8, align 8
  %49 = load double, double* %8, align 8
  store double %49, double* %2, align 8
  br label %50

; <label>:50:                                     ; preds = %34, %11
  %51 = load double, double* %2, align 8
  ret double %51
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define float** @FMX2Alloc(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 8, %8
  %10 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 172, i64 %9)
  %11 = bitcast i8* %10 to float**
  store float** %11, float*** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %14, %16
  %18 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 173, i64 %17)
  %19 = bitcast i8* %18 to float*
  %20 = load float**, float*** %5, align 8
  %21 = getelementptr inbounds float*, float** %20, i64 0
  store float* %19, float** %21, align 8
  store i32 1, i32* %6, align 4
  br label %22

; <label>:22:                                     ; preds = %39, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

; <label>:26:                                     ; preds = %22
  %27 = load float**, float*** %5, align 8
  %28 = getelementptr inbounds float*, float** %27, i64 0
  %29 = load float*, float** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %29, i64 %33
  %35 = load float**, float*** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float*, float** %35, i64 %37
  store float* %34, float** %38, align 8
  br label %39

; <label>:39:                                     ; preds = %26
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %22

; <label>:42:                                     ; preds = %22
  %43 = load float**, float*** %5, align 8
  ret float** %43
}

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @FMX2Free(float**) #0 {
  %2 = alloca float**, align 8
  store float** %0, float*** %2, align 8
  %3 = load float**, float*** %2, align 8
  %4 = getelementptr inbounds float*, float** %3, i64 0
  %5 = load float*, float** %4, align 8
  %6 = bitcast float* %5 to i8*
  call void @free(i8* %6) #4
  %7 = load float**, float*** %2, align 8
  %8 = bitcast float** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define double** @DMX2Alloc(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 8, %8
  %10 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 190, i64 %9)
  %11 = bitcast i8* %10 to double**
  store double** %11, double*** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %14, %16
  %18 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 191, i64 %17)
  %19 = bitcast i8* %18 to double*
  %20 = load double**, double*** %5, align 8
  %21 = getelementptr inbounds double*, double** %20, i64 0
  store double* %19, double** %21, align 8
  store i32 1, i32* %6, align 4
  br label %22

; <label>:22:                                     ; preds = %39, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

; <label>:26:                                     ; preds = %22
  %27 = load double**, double*** %5, align 8
  %28 = getelementptr inbounds double*, double** %27, i64 0
  %29 = load double*, double** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %29, i64 %33
  %35 = load double**, double*** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double*, double** %35, i64 %37
  store double* %34, double** %38, align 8
  br label %39

; <label>:39:                                     ; preds = %26
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %22

; <label>:42:                                     ; preds = %22
  %43 = load double**, double*** %5, align 8
  ret double** %43
}

; Function Attrs: noinline nounwind optnone uwtable
define void @DMX2Free(double**) #0 {
  %2 = alloca double**, align 8
  store double** %0, double*** %2, align 8
  %3 = load double**, double*** %2, align 8
  %4 = getelementptr inbounds double*, double** %3, i64 0
  %5 = load double*, double** %4, align 8
  %6 = bitcast double* %5 to i8*
  call void @free(i8* %6) #4
  %7 = load double**, double*** %2, align 8
  %8 = bitcast double** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @FMX2Multiply(float**, float**, float**, i32, i32, i32) #0 {
  %7 = alloca float**, align 8
  %8 = alloca float**, align 8
  %9 = alloca float**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store float** %0, float*** %7, align 8
  store float** %1, float*** %8, align 8
  store float** %2, float*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %16

; <label>:16:                                     ; preds = %76, %6
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %79

; <label>:20:                                     ; preds = %16
  store i32 0, i32* %14, align 4
  br label %21

; <label>:21:                                     ; preds = %72, %20
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %75

; <label>:25:                                     ; preds = %21
  %26 = load float**, float*** %9, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float*, float** %26, i64 %28
  %30 = load float*, float** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  store float 0.000000e+00, float* %33, align 4
  store i32 0, i32* %15, align 4
  br label %34

; <label>:34:                                     ; preds = %68, %25
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

; <label>:38:                                     ; preds = %34
  %39 = load float**, float*** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float*, float** %39, i64 %41
  %43 = load float*, float** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load float**, float*** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float*, float** %48, i64 %50
  %52 = load float*, float** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fmul float %47, %56
  %58 = load float**, float*** %9, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float*, float** %58, i64 %60
  %62 = load float*, float** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fadd float %66, %57
  store float %67, float* %65, align 4
  br label %68

; <label>:68:                                     ; preds = %38
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %34

; <label>:71:                                     ; preds = %34
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %21

; <label>:75:                                     ; preds = %21
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %16

; <label>:79:                                     ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define double @IncompleteGamma(double, double) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %14 = load double, double* %4, align 8
  %15 = fcmp ole double %14, 0.000000e+00
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %2
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %16, %2
  %18 = load double, double* %5, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %21

; <label>:21:                                     ; preds = %20, %17
  %22 = load double, double* %5, align 8
  %23 = load double, double* %4, align 8
  %24 = fadd double %23, 1.000000e+00
  %25 = fcmp ogt double %22, %24
  br i1 %25, label %26, label %104

; <label>:26:                                     ; preds = %21
  store double 0.000000e+00, double* %8, align 8
  store double 1.000000e+00, double* %10, align 8
  store double 1.000000e+00, double* %9, align 8
  %27 = load double, double* %5, align 8
  store double %27, double* %11, align 8
  %28 = load double, double* %9, align 8
  store double %28, double* %7, align 8
  store i32 1, i32* %6, align 4
  br label %29

; <label>:29:                                     ; preds = %100, %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %32, label %103

; <label>:32:                                     ; preds = %29
  %33 = load double, double* %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sitofp i32 %34 to double
  %36 = load double, double* %4, align 8
  %37 = fsub double %35, %36
  %38 = load double, double* %8, align 8
  %39 = fmul double %37, %38
  %40 = fadd double %33, %39
  store double %40, double* %8, align 8
  %41 = load double, double* %11, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sitofp i32 %42 to double
  %44 = load double, double* %4, align 8
  %45 = fsub double %43, %44
  %46 = load double, double* %10, align 8
  %47 = fmul double %45, %46
  %48 = fadd double %41, %47
  store double %48, double* %10, align 8
  %49 = load double, double* %5, align 8
  %50 = load double, double* %8, align 8
  %51 = fmul double %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = sitofp i32 %52 to double
  %54 = load double, double* %9, align 8
  %55 = fmul double %53, %54
  %56 = fadd double %51, %55
  store double %56, double* %9, align 8
  %57 = load double, double* %5, align 8
  %58 = load double, double* %10, align 8
  %59 = fmul double %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = sitofp i32 %60 to double
  %62 = load double, double* %11, align 8
  %63 = fmul double %61, %62
  %64 = fadd double %59, %63
  store double %64, double* %11, align 8
  %65 = load double, double* %11, align 8
  %66 = fcmp une double %65, 0.000000e+00
  br i1 %66, label %67, label %77

; <label>:67:                                     ; preds = %32
  %68 = load double, double* %11, align 8
  %69 = load double, double* %8, align 8
  %70 = fdiv double %69, %68
  store double %70, double* %8, align 8
  %71 = load double, double* %11, align 8
  %72 = load double, double* %10, align 8
  %73 = fdiv double %72, %71
  store double %73, double* %10, align 8
  %74 = load double, double* %11, align 8
  %75 = load double, double* %9, align 8
  %76 = fdiv double %75, %74
  store double %76, double* %9, align 8
  store double 1.000000e+00, double* %11, align 8
  br label %77

; <label>:77:                                     ; preds = %67, %32
  %78 = load double, double* %9, align 8
  %79 = load double, double* %7, align 8
  %80 = fsub double %78, %79
  %81 = load double, double* %9, align 8
  %82 = fdiv double %80, %81
  %83 = call double @llvm.fabs.f64(double %82)
  %84 = fcmp olt double %83, 0x3E7AD7F29ABCAF48
  br i1 %84, label %85, label %98

; <label>:85:                                     ; preds = %77
  %86 = load double, double* %9, align 8
  %87 = load double, double* %4, align 8
  %88 = load double, double* %5, align 8
  %89 = call double @log(double %88) #4
  %90 = fmul double %87, %89
  %91 = load double, double* %5, align 8
  %92 = fsub double %90, %91
  %93 = load double, double* %4, align 8
  %94 = call double @Gammln(double %93)
  %95 = fsub double %92, %94
  %96 = call double @exp(double %95) #4
  %97 = fmul double %86, %96
  store double %97, double* %3, align 8
  br label %147

; <label>:98:                                     ; preds = %77
  %99 = load double, double* %9, align 8
  store double %99, double* %7, align 8
  br label %100

; <label>:100:                                    ; preds = %98
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %29

; <label>:103:                                    ; preds = %29
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i32 0, i32 0))
  br label %146

; <label>:104:                                    ; preds = %21
  %105 = load double, double* %4, align 8
  %106 = fdiv double 1.000000e+00, %105
  store double %106, double* %13, align 8
  store double %106, double* %12, align 8
  store i32 1, i32* %6, align 4
  br label %107

; <label>:107:                                    ; preds = %142, %104
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 10000
  br i1 %109, label %110, label %145

; <label>:110:                                    ; preds = %107
  %111 = load double, double* %5, align 8
  %112 = load double, double* %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sitofp i32 %113 to double
  %115 = fadd double %112, %114
  %116 = fdiv double %111, %115
  %117 = load double, double* %13, align 8
  %118 = fmul double %117, %116
  store double %118, double* %13, align 8
  %119 = load double, double* %13, align 8
  %120 = load double, double* %12, align 8
  %121 = fadd double %120, %119
  store double %121, double* %12, align 8
  %122 = load double, double* %13, align 8
  %123 = load double, double* %12, align 8
  %124 = fdiv double %122, %123
  %125 = call double @llvm.fabs.f64(double %124)
  %126 = fcmp olt double %125, 0x3E7AD7F29ABCAF48
  br i1 %126, label %127, label %141

; <label>:127:                                    ; preds = %110
  %128 = load double, double* %12, align 8
  %129 = load double, double* %4, align 8
  %130 = load double, double* %5, align 8
  %131 = call double @log(double %130) #4
  %132 = fmul double %129, %131
  %133 = load double, double* %5, align 8
  %134 = fsub double %132, %133
  %135 = load double, double* %4, align 8
  %136 = call double @Gammln(double %135)
  %137 = fsub double %134, %136
  %138 = call double @exp(double %137) #4
  %139 = fmul double %128, %138
  %140 = fsub double 1.000000e+00, %139
  store double %140, double* %3, align 8
  br label %147

; <label>:141:                                    ; preds = %110
  br label %142

; <label>:142:                                    ; preds = %141
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %107

; <label>:145:                                    ; preds = %107
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0))
  br label %146

; <label>:146:                                    ; preds = %145, %103
  store double 0.000000e+00, double* %3, align 8
  br label %147

; <label>:147:                                    ; preds = %146, %127, %85
  %148 = load double, double* %3, align 8
  ret double %148
}

declare void @Die(i8*, ...) #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind
declare double @exp(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
