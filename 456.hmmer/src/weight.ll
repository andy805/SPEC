; ModuleID = 'weight.c'
source_filename = "weight.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.phylo_s = type { i32, i32, i32, float, float, float, i8*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [17 x i8] c"Cluster() failed\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"weight.c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"simple_diffmx() failed\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"removing %12s -- fractional identity %.2f to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"chose %d: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @GSCWeights(i8**, i32, i32, float*) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float**, align 8
  %10 = alloca %struct.phylo_s*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %4
  %18 = load float*, float** %8, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  store float 1.000000e+00, float* %19, align 4
  br label %111

; <label>:20:                                     ; preds = %4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %6, align 4
  call void @MakeDiffMx(i8** %21, i32 %22, float*** %9)
  %23 = load float**, float*** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @Cluster(float** %23, i32 %24, i32 2, %struct.phylo_s** %10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

; <label>:27:                                     ; preds = %20
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %28

; <label>:28:                                     ; preds = %27, %20
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 2, %29
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 67, i64 %33)
  %35 = bitcast i8* %34 to float*
  store float* %35, float** %11, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 2, %36
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 68, i64 %40)
  %42 = bitcast i8* %41 to float*
  store float* %42, float** %12, align 8
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 2, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 69, i64 %47)
  %49 = bitcast i8* %48 to float*
  store float* %49, float** %13, align 8
  store i32 0, i32* %14, align 4
  br label %50

; <label>:50:                                     ; preds = %63, %28
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

; <label>:54:                                     ; preds = %50
  %55 = load float*, float** %12, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  store float 0.000000e+00, float* %58, align 4
  %59 = load float*, float** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  store float 0.000000e+00, float* %62, align 4
  br label %63

; <label>:63:                                     ; preds = %54
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %50

; <label>:66:                                     ; preds = %50
  %67 = load %struct.phylo_s*, %struct.phylo_s** %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load float*, float** %11, align 8
  %70 = load float*, float** %12, align 8
  %71 = load i32, i32* %6, align 4
  call void @upweight(%struct.phylo_s* %67, i32 %68, float* %69, float* %70, i32 %71)
  %72 = load i32, i32* %6, align 4
  %73 = sitofp i32 %72 to float
  %74 = load float*, float** %13, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  store float %73, float* %77, align 4
  %78 = load %struct.phylo_s*, %struct.phylo_s** %10, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load float*, float** %11, align 8
  %81 = load float*, float** %12, align 8
  %82 = load float*, float** %13, align 8
  %83 = load i32, i32* %6, align 4
  call void @downweight(%struct.phylo_s* %78, i32 %79, float* %80, float* %81, float* %82, i32 %83)
  store i32 0, i32* %14, align 4
  br label %84

; <label>:84:                                     ; preds = %98, %66
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %101

; <label>:88:                                     ; preds = %84
  %89 = load float*, float** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %8, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  store float %93, float* %97, align 4
  br label %98

; <label>:98:                                     ; preds = %88
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %84

; <label>:101:                                    ; preds = %84
  %102 = load float**, float*** %9, align 8
  call void @FMX2Free(float** %102)
  %103 = load %struct.phylo_s*, %struct.phylo_s** %10, align 8
  %104 = load i32, i32* %6, align 4
  call void @FreePhylo(%struct.phylo_s* %103, i32 %104)
  %105 = load float*, float** %11, align 8
  %106 = bitcast float* %105 to i8*
  call void @free(i8* %106) #6
  %107 = load float*, float** %12, align 8
  %108 = bitcast float* %107 to i8*
  call void @free(i8* %108) #6
  %109 = load float*, float** %13, align 8
  %110 = bitcast float* %109 to i8*
  call void @free(i8* %110) #6
  br label %111

; <label>:111:                                    ; preds = %101, %17
  ret void
}

declare void @MakeDiffMx(i8**, i32, float***) #1

declare i32 @Cluster(float**, i32, i32, %struct.phylo_s**) #1

declare void @Die(i8*, ...) #1

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upweight(%struct.phylo_s*, i32, float*, float*, i32) #0 {
  %6 = alloca %struct.phylo_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.phylo_s* %0, %struct.phylo_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.phylo_s*, %struct.phylo_s** %6, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %13, i64 %17
  %19 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %5
  %25 = load %struct.phylo_s*, %struct.phylo_s** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load float*, float** %8, align 8
  %28 = load float*, float** %9, align 8
  %29 = load i32, i32* %11, align 4
  call void @upweight(%struct.phylo_s* %25, i32 %26, float* %27, float* %28, i32 %29)
  br label %30

; <label>:30:                                     ; preds = %24, %5
  %31 = load %struct.phylo_s*, %struct.phylo_s** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %31, i64 %35
  %37 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %30
  %43 = load %struct.phylo_s*, %struct.phylo_s** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load float*, float** %8, align 8
  %46 = load float*, float** %9, align 8
  %47 = load i32, i32* %12, align 4
  call void @upweight(%struct.phylo_s* %43, i32 %44, float* %45, float* %46, i32 %47)
  br label %48

; <label>:48:                                     ; preds = %42, %30
  %49 = load float*, float** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = load float*, float** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = load float, float* %57, align 4
  %59 = fadd float %53, %58
  %60 = load %struct.phylo_s*, %struct.phylo_s** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %60, i64 %64
  %66 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %65, i32 0, i32 4
  %67 = load float, float* %66, align 8
  %68 = fadd float %59, %67
  %69 = load float*, float** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  store float %68, float* %72, align 4
  %73 = load float*, float** %8, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load float*, float** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = fadd float %77, %82
  %84 = load %struct.phylo_s*, %struct.phylo_s** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %84, i64 %88
  %90 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %89, i32 0, i32 5
  %91 = load float, float* %90, align 4
  %92 = fadd float %83, %91
  %93 = load float*, float** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  store float %92, float* %96, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @downweight(%struct.phylo_s*, i32, float*, float*, float*, i32) #0 {
  %7 = alloca %struct.phylo_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store %struct.phylo_s* %0, %struct.phylo_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %17, i64 %21
  %23 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %25, i64 %29
  %31 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %14, align 4
  %33 = load float*, float** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %10, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fadd float %37, %42
  %44 = fpext float %43 to double
  %45 = fcmp ogt double %44, 0.000000e+00
  br i1 %45, label %46, label %101

; <label>:46:                                     ; preds = %6
  %47 = load float*, float** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %9, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float*, float** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fadd float %61, %66
  %68 = fdiv float %56, %67
  %69 = fmul float %51, %68
  %70 = load float*, float** %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  store float %69, float* %73, align 4
  %74 = load float*, float** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load float*, float** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load float, float* %82, align 4
  %84 = load float*, float** %9, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float*, float** %10, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fadd float %88, %93
  %95 = fdiv float %83, %94
  %96 = fmul float %78, %95
  %97 = load float*, float** %11, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  store float %96, float* %100, align 4
  br label %166

; <label>:101:                                    ; preds = %6
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %115

; <label>:105:                                    ; preds = %101
  %106 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %8, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %106, i64 %110
  %112 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = sitofp i32 %113 to double
  br label %116

; <label>:115:                                    ; preds = %101
  br label %116

; <label>:116:                                    ; preds = %115, %105
  %117 = phi double [ %114, %105 ], [ 1.000000e+00, %115 ]
  %118 = fptrunc double %117 to float
  store float %118, float* %15, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %132

; <label>:122:                                    ; preds = %116
  %123 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %123, i64 %127
  %129 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = sitofp i32 %130 to double
  br label %133

; <label>:132:                                    ; preds = %116
  br label %133

; <label>:133:                                    ; preds = %132, %122
  %134 = phi double [ %131, %122 ], [ 1.000000e+00, %132 ]
  %135 = fptrunc double %134 to float
  store float %135, float* %16, align 4
  %136 = load float*, float** %11, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %136, i64 %138
  %140 = load float, float* %139, align 4
  %141 = load float, float* %15, align 4
  %142 = fmul float %140, %141
  %143 = load float, float* %15, align 4
  %144 = load float, float* %16, align 4
  %145 = fadd float %143, %144
  %146 = fdiv float %142, %145
  %147 = load float*, float** %11, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %147, i64 %149
  store float %146, float* %150, align 4
  %151 = load float*, float** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  %155 = load float, float* %154, align 4
  %156 = load float, float* %16, align 4
  %157 = fmul float %155, %156
  %158 = load float, float* %15, align 4
  %159 = load float, float* %16, align 4
  %160 = fadd float %158, %159
  %161 = fdiv float %157, %160
  %162 = load float*, float** %11, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  store float %161, float* %165, align 4
  br label %166

; <label>:166:                                    ; preds = %133, %46
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %177

; <label>:170:                                    ; preds = %166
  %171 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load float*, float** %9, align 8
  %174 = load float*, float** %10, align 8
  %175 = load float*, float** %11, align 8
  %176 = load i32, i32* %13, align 4
  call void @downweight(%struct.phylo_s* %171, i32 %172, float* %173, float* %174, float* %175, i32 %176)
  br label %177

; <label>:177:                                    ; preds = %170, %166
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %188

; <label>:181:                                    ; preds = %177
  %182 = load %struct.phylo_s*, %struct.phylo_s** %7, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load float*, float** %9, align 8
  %185 = load float*, float** %10, align 8
  %186 = load float*, float** %11, align 8
  %187 = load i32, i32* %14, align 4
  call void @downweight(%struct.phylo_s* %182, i32 %183, float* %184, float* %185, float* %186, i32 %187)
  br label %188

; <label>:188:                                    ; preds = %181, %177
  ret void
}

declare void @FMX2Free(float**) #1

declare void @FreePhylo(%struct.phylo_s*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @VoronoiWeights(i8**, i32, i32, float*) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float**, align 8
  %10 = alloca float*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [27 x i32], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %4
  %29 = load float*, float** %8, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  store float 1.000000e+00, float* %30, align 4
  br label %475

; <label>:31:                                     ; preds = %4
  store i32 50, i32* %23, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @simple_diffmx(i8** %32, i32 %33, float*** %9)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %31
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %37

; <label>:37:                                     ; preds = %36, %31
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 184, i64 %40)
  %42 = bitcast i8* %41 to float*
  store float* %42, float** %10, align 8
  store i32 0, i32* %16, align 4
  br label %43

; <label>:43:                                     ; preds = %92, %37
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %95

; <label>:47:                                     ; preds = %43
  store float 1.000000e+00, float* %19, align 4
  store i32 0, i32* %18, align 4
  br label %48

; <label>:48:                                     ; preds = %80, %47
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %83

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %52
  br label %80

; <label>:57:                                     ; preds = %52
  %58 = load float**, float*** %9, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float*, float** %58, i64 %60
  %62 = load float*, float** %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* %19, align 4
  %68 = fcmp olt float %66, %67
  br i1 %68, label %69, label %79

; <label>:69:                                     ; preds = %57
  %70 = load float**, float*** %9, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float*, float** %70, i64 %72
  %74 = load float*, float** %73, align 8
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  store float %78, float* %19, align 4
  br label %79

; <label>:79:                                     ; preds = %69, %57
  br label %80

; <label>:80:                                     ; preds = %79, %56
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %18, align 4
  br label %48

; <label>:83:                                     ; preds = %48
  %84 = load float, float* %19, align 4
  %85 = fpext float %84 to double
  %86 = fdiv double %85, 2.000000e+00
  %87 = fptrunc double %86 to float
  %88 = load float*, float** %10, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  store float %87, float* %91, align 4
  br label %92

; <label>:92:                                     ; preds = %83
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %43

; <label>:95:                                     ; preds = %43
  %96 = load float**, float*** %9, align 8
  %97 = bitcast float** %96 to i8**
  %98 = load i32, i32* %6, align 4
  call void @Free2DArray(i8** %97, i32 %98)
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 8
  %102 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 198, i64 %101)
  %103 = bitcast i8* %102 to i8**
  store i8** %103, i8*** %11, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 199, i64 %106)
  %108 = bitcast i8* %107 to i32*
  store i32* %108, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %109

; <label>:109:                                    ; preds = %119, %95
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %122

; <label>:113:                                    ; preds = %109
  %114 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 201, i64 27)
  %115 = load i8**, i8*** %11, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %114, i8** %118, align 8
  br label %119

; <label>:119:                                    ; preds = %113
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %109

; <label>:122:                                    ; preds = %109
  store i32 0, i32* %15, align 4
  br label %123

; <label>:123:                                    ; preds = %318, %122
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %321

; <label>:127:                                    ; preds = %123
  %128 = getelementptr inbounds [27 x i32], [27 x i32]* %13, i32 0, i32 0
  %129 = bitcast i32* %128 to i8*
  call void @llvm.memset.p0i8.i64(i8* %129, i8 0, i64 108, i32 16, i1 false)
  store i32 0, i32* %16, align 4
  br label %130

; <label>:130:                                    ; preds = %251, %127
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %254

; <label>:134:                                    ; preds = %130
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 32
  br i1 %145, label %248, label %146

; <label>:146:                                    ; preds = %134
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 46
  br i1 %157, label %248, label %158

; <label>:158:                                    ; preds = %146
  %159 = load i8**, i8*** %5, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 95
  br i1 %169, label %248, label %170

; <label>:170:                                    ; preds = %158
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 45
  br i1 %181, label %248, label %182

; <label>:182:                                    ; preds = %170
  %183 = load i8**, i8*** %5, align 8
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 126
  br i1 %193, label %248, label %194

; <label>:194:                                    ; preds = %182
  %195 = call i16** @__ctype_b_loc() #7
  %196 = load i16*, i16** %195, align 8
  %197 = load i8**, i8*** %5, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i16, i16* %196, i64 %207
  %209 = load i16, i16* %208, align 2
  %210 = zext i16 %209 to i32
  %211 = and i32 %210, 256
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %225

; <label>:213:                                    ; preds = %194
  %214 = load i8**, i8*** %5, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = sub nsw i32 %223, 65
  store i32 %224, i32* %17, align 4
  br label %237

; <label>:225:                                    ; preds = %194
  %226 = load i8**, i8*** %5, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = sub nsw i32 %235, 97
  store i32 %236, i32* %17, align 4
  br label %237

; <label>:237:                                    ; preds = %225, %213
  %238 = load i32, i32* %17, align 4
  %239 = icmp sge i32 %238, 0
  br i1 %239, label %240, label %247

; <label>:240:                                    ; preds = %237
  %241 = load i32, i32* %17, align 4
  %242 = icmp slt i32 %241, 26
  br i1 %242, label %243, label %247

; <label>:243:                                    ; preds = %240
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [27 x i32], [27 x i32]* %13, i64 0, i64 %245
  store i32 1, i32* %246, align 4
  br label %247

; <label>:247:                                    ; preds = %243, %240, %237
  br label %250

; <label>:248:                                    ; preds = %182, %170, %158, %146, %134
  %249 = getelementptr inbounds [27 x i32], [27 x i32]* %13, i64 0, i64 26
  store i32 1, i32* %249, align 8
  br label %250

; <label>:250:                                    ; preds = %248, %247
  br label %251

; <label>:251:                                    ; preds = %250
  %252 = load i32, i32* %16, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %16, align 4
  br label %130

; <label>:254:                                    ; preds = %130
  %255 = load i32*, i32** %12, align 8
  %256 = load i32, i32* %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 0, i32* %258, align 4
  store i32 0, i32* %18, align 4
  br label %259

; <label>:259:                                    ; preds = %291, %254
  %260 = load i32, i32* %18, align 4
  %261 = icmp slt i32 %260, 26
  br i1 %261, label %262, label %294

; <label>:262:                                    ; preds = %259
  %263 = load i32, i32* %18, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [27 x i32], [27 x i32]* %13, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %290

; <label>:268:                                    ; preds = %262
  %269 = load i32, i32* %18, align 4
  %270 = add nsw i32 65, %269
  %271 = trunc i32 %270 to i8
  %272 = load i8**, i8*** %11, align 8
  %273 = load i32, i32* %15, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = load i32*, i32** %12, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %276, i64 %282
  store i8 %271, i8* %283, align 1
  %284 = load i32*, i32** %12, align 8
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 4
  br label %290

; <label>:290:                                    ; preds = %268, %262
  br label %291

; <label>:291:                                    ; preds = %290
  %292 = load i32, i32* %18, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %18, align 4
  br label %259

; <label>:294:                                    ; preds = %259
  %295 = getelementptr inbounds [27 x i32], [27 x i32]* %13, i64 0, i64 26
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %317

; <label>:298:                                    ; preds = %294
  %299 = load i8**, i8*** %11, align 8
  %300 = load i32, i32* %15, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8*, i8** %299, i64 %301
  %303 = load i8*, i8** %302, align 8
  %304 = load i32*, i32** %12, align 8
  %305 = load i32, i32* %15, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %303, i64 %309
  store i8 32, i8* %310, align 1
  %311 = load i32*, i32** %12, align 8
  %312 = load i32, i32* %15, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 4
  br label %317

; <label>:317:                                    ; preds = %298, %294
  br label %318

; <label>:318:                                    ; preds = %317
  %319 = load i32, i32* %15, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %15, align 4
  br label %123

; <label>:321:                                    ; preds = %123
  %322 = load i32, i32* %7, align 4
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = mul i64 %324, 1
  %326 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 268, i64 %325)
  store i8* %326, i8** %14, align 8
  store i32 42, i32* %25, align 4
  %327 = load float*, float** %8, align 8
  %328 = load i32, i32* %6, align 4
  call void @FSet(float* %327, i32 %328, float 0.000000e+00)
  store i32 0, i32* %24, align 4
  br label %329

; <label>:329:                                    ; preds = %443, %321
  %330 = load i32, i32* %24, align 4
  %331 = load i32, i32* %23, align 4
  %332 = load i32, i32* %6, align 4
  %333 = mul nsw i32 %331, %332
  %334 = icmp slt i32 %330, %333
  br i1 %334, label %335, label %446

; <label>:335:                                    ; preds = %329
  store i32 0, i32* %15, align 4
  br label %336

; <label>:336:                                    ; preds = %374, %335
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* %7, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %377

; <label>:340:                                    ; preds = %336
  %341 = load i32*, i32** %12, align 8
  %342 = load i32, i32* %15, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %348

; <label>:347:                                    ; preds = %340
  br label %367

; <label>:348:                                    ; preds = %340
  %349 = load i8**, i8*** %11, align 8
  %350 = load i32, i32* %15, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8*, i8** %349, i64 %351
  %353 = load i8*, i8** %352, align 8
  %354 = call double @sre_random()
  %355 = load i32*, i32** %12, align 8
  %356 = load i32, i32* %15, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = sitofp i32 %359 to double
  %361 = fmul double %354, %360
  %362 = fptosi double %361 to i32
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %353, i64 %363
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  br label %367

; <label>:367:                                    ; preds = %348, %347
  %368 = phi i32 [ 32, %347 ], [ %366, %348 ]
  %369 = trunc i32 %368 to i8
  %370 = load i8*, i8** %14, align 8
  %371 = load i32, i32* %15, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %370, i64 %372
  store i8 %369, i8* %373, align 1
  br label %374

; <label>:374:                                    ; preds = %367
  %375 = load i32, i32* %15, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %15, align 4
  br label %336

; <label>:377:                                    ; preds = %336
  %378 = load i8*, i8** %14, align 8
  %379 = load i32, i32* %15, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %378, i64 %380
  store i8 0, i8* %381, align 1
  %382 = call double @sre_random()
  %383 = fptrunc double %382 to float
  store float %383, float* %22, align 4
  store float 1.000000e+00, float* %19, align 4
  store i32 0, i32* %16, align 4
  br label %384

; <label>:384:                                    ; preds = %431, %377
  %385 = load i32, i32* %16, align 4
  %386 = load i32, i32* %6, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %434

; <label>:388:                                    ; preds = %384
  %389 = load i8**, i8*** %5, align 8
  %390 = load i32, i32* %16, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8*, i8** %389, i64 %391
  %393 = load i8*, i8** %392, align 8
  %394 = load i8*, i8** %14, align 8
  %395 = call float @simple_distance(i8* %393, i8* %394)
  store float %395, float* %20, align 4
  %396 = load float, float* %20, align 4
  %397 = load float*, float** %10, align 8
  %398 = load i32, i32* %16, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float* %397, i64 %399
  %401 = load float, float* %400, align 4
  %402 = fcmp olt float %396, %401
  br i1 %402, label %403, label %405

; <label>:403:                                    ; preds = %388
  %404 = load i32, i32* %16, align 4
  store i32 %404, i32* %25, align 4
  br label %434

; <label>:405:                                    ; preds = %388
  %406 = load float, float* %20, align 4
  %407 = load float, float* %19, align 4
  %408 = fcmp olt float %406, %407
  br i1 %408, label %409, label %414

; <label>:409:                                    ; preds = %405
  %410 = call double @sre_random()
  %411 = fptrunc double %410 to float
  store float %411, float* %22, align 4
  %412 = load i32, i32* %16, align 4
  store i32 %412, i32* %25, align 4
  %413 = load float, float* %20, align 4
  store float %413, float* %19, align 4
  br label %430

; <label>:414:                                    ; preds = %405
  %415 = load float, float* %20, align 4
  %416 = load float, float* %19, align 4
  %417 = fcmp oeq float %415, %416
  br i1 %417, label %418, label %429

; <label>:418:                                    ; preds = %414
  %419 = call double @sre_random()
  %420 = fptrunc double %419 to float
  store float %420, float* %21, align 4
  %421 = load float, float* %21, align 4
  %422 = load float, float* %22, align 4
  %423 = fcmp ogt float %421, %422
  br i1 %423, label %424, label %428

; <label>:424:                                    ; preds = %418
  %425 = load float, float* %21, align 4
  store float %425, float* %22, align 4
  %426 = load i32, i32* %16, align 4
  store i32 %426, i32* %25, align 4
  %427 = load float, float* %20, align 4
  store float %427, float* %19, align 4
  br label %428

; <label>:428:                                    ; preds = %424, %418
  br label %429

; <label>:429:                                    ; preds = %428, %414
  br label %430

; <label>:430:                                    ; preds = %429, %409
  br label %431

; <label>:431:                                    ; preds = %430
  %432 = load i32, i32* %16, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %16, align 4
  br label %384

; <label>:434:                                    ; preds = %403, %384
  %435 = load float*, float** %8, align 8
  %436 = load i32, i32* %25, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds float, float* %435, i64 %437
  %439 = load float, float* %438, align 4
  %440 = fpext float %439 to double
  %441 = fadd double %440, 1.000000e+00
  %442 = fptrunc double %441 to float
  store float %442, float* %438, align 4
  br label %443

; <label>:443:                                    ; preds = %434
  %444 = load i32, i32* %24, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %24, align 4
  br label %329

; <label>:446:                                    ; preds = %329
  store i32 0, i32* %16, align 4
  br label %447

; <label>:447:                                    ; preds = %464, %446
  %448 = load i32, i32* %16, align 4
  %449 = load i32, i32* %6, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %451, label %467

; <label>:451:                                    ; preds = %447
  %452 = load float*, float** %8, align 8
  %453 = load i32, i32* %16, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds float, float* %452, i64 %454
  %456 = load float, float* %455, align 4
  %457 = load i32, i32* %23, align 4
  %458 = sitofp i32 %457 to float
  %459 = fdiv float %456, %458
  %460 = load float*, float** %8, align 8
  %461 = load i32, i32* %16, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds float, float* %460, i64 %462
  store float %459, float* %463, align 4
  br label %464

; <label>:464:                                    ; preds = %451
  %465 = load i32, i32* %16, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %16, align 4
  br label %447

; <label>:467:                                    ; preds = %447
  %468 = load i8*, i8** %14, align 8
  call void @free(i8* %468) #6
  %469 = load i32*, i32** %12, align 8
  %470 = bitcast i32* %469 to i8*
  call void @free(i8* %470) #6
  %471 = load float*, float** %10, align 8
  %472 = bitcast float* %471 to i8*
  call void @free(i8* %472) #6
  %473 = load i8**, i8*** %11, align 8
  %474 = load i32, i32* %7, align 4
  call void @Free2DArray(i8** %473, i32 %474)
  br label %475

; <label>:475:                                    ; preds = %467, %28
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_diffmx(i8**, i32, float***) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca float***, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store float*** %2, float**** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = call noalias i8* @malloc(i64 %12) #6
  %14 = bitcast i8* %13 to float**
  store float** %14, float*** %7, align 8
  %15 = icmp eq float** %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %16, %3
  store i32 0, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %35, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = call noalias i8* @malloc(i64 %25) #6
  %27 = bitcast i8* %26 to float*
  %28 = load float**, float*** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float*, float** %28, i64 %30
  store float* %27, float** %31, align 8
  %32 = icmp eq float* %27, null
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %22
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %34

; <label>:34:                                     ; preds = %33, %22
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %18

; <label>:38:                                     ; preds = %18
  store i32 0, i32* %8, align 4
  br label %39

; <label>:39:                                     ; preds = %81, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %84

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %9, align 4
  br label %45

; <label>:45:                                     ; preds = %77, %43
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %80

; <label>:49:                                     ; preds = %45
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call float @simple_distance(i8* %54, i8* %59)
  %61 = load float**, float*** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float*, float** %61, i64 %63
  %65 = load float*, float** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  store float %60, float* %68, align 4
  %69 = load float**, float*** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float*, float** %69, i64 %71
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  store float %60, float* %76, align 4
  br label %77

; <label>:77:                                     ; preds = %49
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %45

; <label>:80:                                     ; preds = %45
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %39

; <label>:84:                                     ; preds = %39
  %85 = load float**, float*** %7, align 8
  %86 = load float***, float**** %6, align 8
  store float** %85, float*** %86, align 8
  ret i32 1
}

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare void @FSet(float*, i32, float) #1

declare double @sre_random() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal float @simple_distance(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %77, %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %82

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %62, label %17

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 46
  br i1 %21, label %62, label %22

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 95
  br i1 %26, label %62, label %27

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %62, label %32

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 126
  br i1 %36, label %62, label %37

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %62, label %42

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br i1 %46, label %62, label %47

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 95
  br i1 %51, label %62, label %52

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 45
  br i1 %56, label %62, label %57

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 126
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %57, %52, %47, %42, %37, %32, %27, %22, %17, %12
  br label %77

; <label>:63:                                     ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %74

; <label>:71:                                     ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %74

; <label>:74:                                     ; preds = %71, %63
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %77

; <label>:77:                                     ; preds = %74, %62
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %3, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %4, align 8
  br label %7

; <label>:82:                                     ; preds = %7
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %92

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = sitofp i32 %86 to float
  %88 = load i32, i32* %6, align 4
  %89 = sitofp i32 %88 to float
  %90 = fdiv float %87, %89
  %91 = fpext float %90 to double
  br label %93

; <label>:92:                                     ; preds = %82
  br label %93

; <label>:93:                                     ; preds = %92, %85
  %94 = phi double [ %91, %85 ], [ 0.000000e+00, %92 ]
  %95 = fptrunc double %94 to float
  ret float %95
}

; Function Attrs: noinline nounwind optnone uwtable
define void @BlosumWeights(i8**, i32, i32, float, float*) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load float, float* %9, align 4
  call void @SingleLinkCluster(i8** %15, i32 %16, i32 %17, float %18, i32** %11, i32* %12)
  %19 = load float*, float** %10, align 8
  %20 = load i32, i32* %7, align 4
  call void @FSet(float* %19, i32 %20, float 1.000000e+00)
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 403, i64 %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %26

; <label>:26:                                     ; preds = %35, %5
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

; <label>:30:                                     ; preds = %26
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 0, i32* %34, align 4
  br label %35

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %14, align 4
  br label %26

; <label>:38:                                     ; preds = %26
  store i32 0, i32* %14, align 4
  br label %39

; <label>:39:                                     ; preds = %54, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

; <label>:43:                                     ; preds = %39
  %44 = load i32*, i32** %13, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %44, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

; <label>:54:                                     ; preds = %43
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %39

; <label>:57:                                     ; preds = %39
  store i32 0, i32* %14, align 4
  br label %58

; <label>:58:                                     ; preds = %80, %57
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %83

; <label>:62:                                     ; preds = %58
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sitofp i32 %71 to float
  %73 = fpext float %72 to double
  %74 = fdiv double 1.000000e+00, %73
  %75 = fptrunc double %74 to float
  %76 = load float*, float** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  store float %75, float* %79, align 4
  br label %80

; <label>:80:                                     ; preds = %62
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %58

; <label>:83:                                     ; preds = %58
  %84 = load i32*, i32** %13, align 8
  %85 = bitcast i32* %84 to i8*
  call void @free(i8* %85) #6
  %86 = load i32*, i32** %11, align 8
  %87 = bitcast i32* %86 to i8*
  call void @free(i8* %87) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @SingleLinkCluster(i8**, i32, i32, float, i32**, i32*) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 716, i64 %24)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %13, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 717, i64 %29)
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %15, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 718, i64 %34)
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %17, align 8
  store i32 0, i32* %21, align 4
  br label %37

; <label>:37:                                     ; preds = %47, %6
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %50

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %21, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %21, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

; <label>:47:                                     ; preds = %41
  %48 = load i32, i32* %21, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %21, align 4
  br label %37

; <label>:50:                                     ; preds = %37
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %52

; <label>:52:                                     ; preds = %144, %50
  %53 = load i32, i32* %14, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %147

; <label>:55:                                     ; preds = %52
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %71

; <label>:71:                                     ; preds = %143, %55
  %72 = load i32, i32* %16, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %144

; <label>:74:                                     ; preds = %71
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %21, align 4
  br label %90

; <label>:90:                                     ; preds = %140, %74
  %91 = load i32, i32* %21, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %143

; <label>:93:                                     ; preds = %90
  %94 = load i8**, i8*** %7, align 8
  %95 = load i32, i32* %19, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** %7, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %21, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %99, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call float @simple_distance(i8* %98, i8* %107)
  %109 = fpext float %108 to double
  %110 = load float, float* %10, align 4
  %111 = fpext float %110 to double
  %112 = fsub double 1.000000e+00, %111
  %113 = fcmp ole double %109, %112
  br i1 %113, label %114, label %139

; <label>:114:                                    ; preds = %93
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %20, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %20, align 4
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %139

; <label>:139:                                    ; preds = %114, %93
  br label %140

; <label>:140:                                    ; preds = %139
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %21, align 4
  br label %90

; <label>:143:                                    ; preds = %90
  br label %71

; <label>:144:                                    ; preds = %71
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %52

; <label>:147:                                    ; preds = %52
  %148 = load i32*, i32** %13, align 8
  %149 = bitcast i32* %148 to i8*
  call void @free(i8* %149) #6
  %150 = load i32*, i32** %15, align 8
  %151 = bitcast i32* %150 to i8*
  call void @free(i8* %151) #6
  %152 = load i32*, i32** %17, align 8
  %153 = load i32**, i32*** %11, align 8
  store i32* %152, i32** %153, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32*, i32** %12, align 8
  store i32 %154, i32* %155, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @PositionBasedWeights(i8**, i32, i32, float*) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca [26 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  %15 = load float*, float** %8, align 8
  %16 = load i32, i32* %6, align 4
  call void @FSet(float* %15, i32 %16, float 0.000000e+00)
  store i32 0, i32* %12, align 4
  br label %17

; <label>:17:                                     ; preds = %152, %4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %155

; <label>:21:                                     ; preds = %17
  store i32 0, i32* %13, align 4
  br label %22

; <label>:22:                                     ; preds = %29, %21
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 26
  br i1 %24, label %25, label %32

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %27
  store i32 0, i32* %28, align 4
  br label %29

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  br label %22

; <label>:32:                                     ; preds = %22
  store i32 0, i32* %11, align 4
  br label %33

; <label>:33:                                     ; preds = %74, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %77

; <label>:37:                                     ; preds = %33
  %38 = call i16** @__ctype_b_loc() #7
  %39 = load i16*, i16** %38, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %39, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 1024
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

; <label>:56:                                     ; preds = %37
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 @toupper(i32 %66) #8
  %68 = sub nsw i32 %67, 65
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

; <label>:73:                                     ; preds = %56, %37
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %33

; <label>:77:                                     ; preds = %33
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %78

; <label>:78:                                     ; preds = %91, %77
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 26
  br i1 %80, label %81, label %94

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %90

; <label>:87:                                     ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %90

; <label>:90:                                     ; preds = %87, %81
  br label %91

; <label>:91:                                     ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %78

; <label>:94:                                     ; preds = %78
  store i32 0, i32* %11, align 4
  br label %95

; <label>:95:                                     ; preds = %148, %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %151

; <label>:99:                                     ; preds = %95
  %100 = call i16** @__ctype_b_loc() #7
  %101 = load i16*, i16** %100, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, i16* %101, i64 %112
  %114 = load i16, i16* %113, align 2
  %115 = zext i16 %114 to i32
  %116 = and i32 %115, 1024
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %147

; <label>:118:                                    ; preds = %99
  %119 = load i32, i32* %10, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = call i32 @toupper(i32 %129) #8
  %131 = sub nsw i32 %130, 65
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %119, %134
  %136 = sitofp i32 %135 to float
  %137 = fpext float %136 to double
  %138 = fdiv double 1.000000e+00, %137
  %139 = load float*, float** %8, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %139, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fpext float %143 to double
  %145 = fadd double %144, %138
  %146 = fptrunc double %145 to float
  store float %146, float* %142, align 4
  br label %147

; <label>:147:                                    ; preds = %118, %99
  br label %148

; <label>:148:                                    ; preds = %147
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %95

; <label>:151:                                    ; preds = %95
  br label %152

; <label>:152:                                    ; preds = %151
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %17

; <label>:155:                                    ; preds = %17
  store i32 0, i32* %11, align 4
  br label %156

; <label>:156:                                    ; preds = %174, %155
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %177

; <label>:160:                                    ; preds = %156
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @DealignedLength(i8* %165)
  %167 = sitofp i32 %166 to float
  %168 = load float*, float** %8, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %168, i64 %170
  %172 = load float, float* %171, align 4
  %173 = fdiv float %172, %167
  store float %173, float* %171, align 4
  br label %174

; <label>:174:                                    ; preds = %160
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %156

; <label>:177:                                    ; preds = %156
  %178 = load i32, i32* %6, align 4
  %179 = sitofp i32 %178 to float
  %180 = load float*, float** %8, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call float @FSum(float* %180, i32 %181)
  %183 = fdiv float %179, %182
  store float %183, float* %14, align 4
  %184 = load float*, float** %8, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load float, float* %14, align 4
  call void @FScale(float* %184, i32 %185, float %186)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #5

declare i32 @DealignedLength(i8*) #1

declare float @FSum(float*, i32) #1

declare void @FScale(float*, i32, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @FilterAlignment(%struct.msa_struct*, float, %struct.msa_struct**) #0 {
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.msa_struct**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store float %1, float* %5, align 4
  store %struct.msa_struct** %2, %struct.msa_struct*** %6, align 8
  %14 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 532, i64 %18)
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %8, align 8
  %21 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 533, i64 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %28

; <label>:28:                                     ; preds = %39, %3
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %31 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 0, i32* %38, align 4
  br label %39

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %28

; <label>:42:                                     ; preds = %28
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %43

; <label>:43:                                     ; preds = %118, %42
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %46 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %121

; <label>:49:                                     ; preds = %43
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %50

; <label>:50:                                     ; preds = %100, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %103

; <label>:54:                                     ; preds = %50
  %55 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %63 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %64, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call float @PairwiseIdentity(i8* %61, i8* %72)
  store float %73, float* %10, align 4
  %74 = load float, float* %10, align 4
  %75 = load float, float* %5, align 4
  %76 = fcmp ogt float %74, %75
  br i1 %76, label %77, label %99

; <label>:77:                                     ; preds = %54
  store i32 1, i32* %13, align 4
  %78 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %79 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load float, float* %10, align 4
  %86 = fpext float %85 to double
  %87 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %88 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %89, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i8* %84, double %86, i8* %97)
  br label %103

; <label>:99:                                     ; preds = %54
  br label %100

; <label>:100:                                    ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %50

; <label>:103:                                    ; preds = %77, %50
  %104 = load i32, i32* %13, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 1, i32* %116, align 4
  br label %117

; <label>:117:                                    ; preds = %106, %103
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %43

; <label>:121:                                    ; preds = %43
  %122 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.msa_struct**, %struct.msa_struct*** %6, align 8
  call void @MSASmallerAlignment(%struct.msa_struct* %122, i32* %123, %struct.msa_struct** %124)
  %125 = load i32*, i32** %8, align 8
  %126 = bitcast i32* %125 to i8*
  call void @free(i8* %126) #6
  %127 = load i32*, i32** %9, align 8
  %128 = bitcast i32* %127 to i8*
  call void @free(i8* %128) #6
  ret void
}

declare float @PairwiseIdentity(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare void @MSASmallerAlignment(%struct.msa_struct*, i32*, %struct.msa_struct**) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @SampleAlignment(%struct.msa_struct*, i32, %struct.msa_struct**) #0 {
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msa_struct**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.msa_struct** %2, %struct.msa_struct*** %6, align 8
  %12 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 596, i64 %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %7, align 8
  %19 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 597, i64 %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %26

; <label>:26:                                     ; preds = %42, %3
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %45

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 0, i32* %41, align 4
  br label %42

; <label>:42:                                     ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %26

; <label>:45:                                     ; preds = %26
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %48 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %55

; <label>:51:                                     ; preds = %45
  %52 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  br label %55

; <label>:55:                                     ; preds = %51, %45
  %56 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %57 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %59

; <label>:59:                                     ; preds = %104, %55
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %107

; <label>:63:                                     ; preds = %59
  %64 = call double @sre_random()
  %65 = load i32, i32* %11, align 4
  %66 = sitofp i32 %65 to double
  %67 = fmul double %64, %66
  %68 = fptosi double %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %75 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %76, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %73, i8* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  store i32 1, i32* %93, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  br label %104

; <label>:104:                                    ; preds = %63
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %59

; <label>:107:                                    ; preds = %59
  %108 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.msa_struct**, %struct.msa_struct*** %6, align 8
  call void @MSASmallerAlignment(%struct.msa_struct* %108, i32* %109, %struct.msa_struct** %110)
  %111 = load i32*, i32** %7, align 8
  %112 = bitcast i32* %111 to i8*
  call void @free(i8* %112) #6
  %113 = load i32*, i32** %8, align 8
  %114 = bitcast i32* %113 to i8*
  call void @free(i8* %114) #6
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
