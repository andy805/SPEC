; ModuleID = 'histogram.c'
source_filename = "histogram.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.histogram_s = type { i32*, i32, i32, i32, i32, i32, i32, float*, i32, [3 x float], float, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"histogram.c\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"AddToHistogram(): Can't add to a fitted histogram\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%5s %6s %6s  (one = represents %d sequences)\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"obs\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%5s %6s %6s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"<%4d %6d %6s|\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"oops\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c">%4d %6d %6s|\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%5d %6d %6d|\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%5d %6d %6s|\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"\0A\0A%% No statistical fit available\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"\0A\0A%% Statistical details of theoretical EVD fit:\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"              mu = %10.4f\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"          lambda = %10.4f\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"chi-sq statistic = %10.4f\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"  P(chi-square)  = %10.4g\0A\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"\0A\0A%% Statistical details of theoretical Gaussian fit:\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"            mean = %10.4f\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"              sd = %10.4f\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%-6d %f\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"&\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.histogram_s* @AllocHistogram(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.histogram_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %10, %11
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  %14 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 68, i64 64)
  %15 = bitcast i8* %14 to %struct.histogram_s*
  store %struct.histogram_s* %15, %struct.histogram_s** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %18 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %21 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %23 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %22, i32 0, i32 6
  store i32 0, i32* %23, align 4
  %24 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %25 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %24, i32 0, i32 4
  store i32 2147483647, i32* %25, align 4
  %26 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %27 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %26, i32 0, i32 3
  store i32 -2147483648, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %30 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 75, i64 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %37 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  store i32 0, i32* %9, align 4
  br label %38

; <label>:38:                                     ; preds = %49, %3
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

; <label>:42:                                     ; preds = %38
  %43 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %44 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 0, i32* %48, align 4
  br label %49

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %38

; <label>:52:                                     ; preds = %38
  %53 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %54 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %53, i32 0, i32 7
  store float* null, float** %54, align 8
  %55 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %56 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %55, i32 0, i32 8
  store i32 0, i32* %56, align 8
  %57 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  ret %struct.histogram_s* %57
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @FreeHistogram(%struct.histogram_s*) #0 {
  %2 = alloca %struct.histogram_s*, align 8
  store %struct.histogram_s* %0, %struct.histogram_s** %2, align 8
  %3 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %4 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* %6) #5
  %7 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %8 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %7, i32 0, i32 7
  %9 = load float*, float** %8, align 8
  %10 = icmp ne float* %9, null
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %1
  %12 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %13 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %12, i32 0, i32 7
  %14 = load float*, float** %13, align 8
  %15 = bitcast float* %14 to i8*
  call void @free(i8* %15) #5
  br label %16

; <label>:16:                                     ; preds = %11, %1
  %17 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %18 = bitcast %struct.histogram_s* %17 to i8*
  call void @free(i8* %18) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @UnfitHistogram(%struct.histogram_s*) #0 {
  %2 = alloca %struct.histogram_s*, align 8
  store %struct.histogram_s* %0, %struct.histogram_s** %2, align 8
  %3 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %4 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 7
  %5 = load float*, float** %4, align 8
  %6 = icmp ne float* %5, null
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %1
  %8 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %9 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 7
  %10 = load float*, float** %9, align 8
  %11 = bitcast float* %10 to i8*
  call void @free(i8* %11) #5
  br label %12

; <label>:12:                                     ; preds = %7, %1
  %13 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %14 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %13, i32 0, i32 7
  store float* null, float** %14, align 8
  %15 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %16 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %15, i32 0, i32 8
  store i32 0, i32* %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @AddToHistogram(%struct.histogram_s*, float) #0 {
  %3 = alloca %struct.histogram_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.histogram_s* %0, %struct.histogram_s** %3, align 8
  store float %1, float* %4, align 4
  %10 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %11 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %2
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %2
  %16 = load float, float* %4, align 4
  %17 = fpext float %16 to double
  %18 = call double @llvm.floor.f64(double %17)
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %22 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %91

; <label>:25:                                     ; preds = %15
  %26 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %27 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %30 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %35 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %40 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %48 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %52 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = call i8* @sre_realloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 148, i8* %54, i64 %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %61 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %63 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = bitcast i32* %67 to i8*
  %69 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %70 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %68, i8* %72, i64 %75, i32 4, i1 false)
  store i32 0, i32* %9, align 4
  br label %76

; <label>:76:                                     ; preds = %87, %25
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %90

; <label>:80:                                     ; preds = %76
  %81 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %82 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 0, i32* %86, align 4
  br label %87

; <label>:87:                                     ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %76

; <label>:90:                                     ; preds = %76
  br label %149

; <label>:91:                                     ; preds = %15
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %94 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %148

; <label>:97:                                     ; preds = %91
  %98 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %99 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %102 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %100, %103
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %107 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %108, %109
  %111 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %112 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %114 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %117 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %115, %118
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  %121 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %122 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = bitcast i32* %123 to i8*
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 4, %126
  %128 = call i8* @sre_realloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 159, i8* %124, i64 %127)
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %131 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %130, i32 0, i32 0
  store i32* %129, i32** %131, align 8
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %9, align 4
  br label %133

; <label>:133:                                    ; preds = %144, %97
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %147

; <label>:137:                                    ; preds = %133
  %138 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %139 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 0, i32* %143, align 4
  br label %144

; <label>:144:                                    ; preds = %137
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %133

; <label>:147:                                    ; preds = %133
  br label %148

; <label>:148:                                    ; preds = %147, %91
  br label %149

; <label>:149:                                    ; preds = %148, %90
  %150 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %151 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %155 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %153, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %163 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %168 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %175

; <label>:171:                                    ; preds = %149
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %174 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  br label %175

; <label>:175:                                    ; preds = %171, %149
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %178 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %176, %179
  br i1 %180, label %181, label %185

; <label>:181:                                    ; preds = %175
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.histogram_s*, %struct.histogram_s** %3, align 8
  %184 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  br label %185

; <label>:185:                                    ; preds = %181, %175
  ret void
}

declare void @Die(i8*, ...) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #3

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @PrintASCIIHistogram(%struct._IO_FILE*, %struct.histogram_s*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.histogram_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [81 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.histogram_s* %1, %struct.histogram_s** %4, align 8
  store i32 3, i32* %16, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %18 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %21 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %8, align 4
  br label %24

; <label>:24:                                     ; preds = %58, %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %27 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %30 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = icmp sle i32 %25, %32
  br i1 %33, label %34, label %61

; <label>:34:                                     ; preds = %24
  %35 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %36 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %57

; <label>:44:                                     ; preds = %34
  %45 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %46 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %54 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %12, align 4
  br label %57

; <label>:57:                                     ; preds = %44, %34
  br label %58

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %24

; <label>:61:                                     ; preds = %24
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %63

; <label>:63:                                     ; preds = %94, %61
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %66 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %97

; <label>:69:                                     ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %72 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %8, align 4
  %75 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %76 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %69
  store i32 0, i32* %7, align 4
  br label %94

; <label>:84:                                     ; preds = %69
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %84
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %97

; <label>:93:                                     ; preds = %84
  br label %94

; <label>:94:                                     ; preds = %93, %83
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  br label %63

; <label>:97:                                     ; preds = %89, %63
  store i32 0, i32* %7, align 4
  br label %98

; <label>:98:                                     ; preds = %129, %97
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %101 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %132

; <label>:104:                                    ; preds = %98
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %107 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %105, %108
  store i32 %109, i32* %8, align 4
  %110 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %111 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %104
  store i32 0, i32* %7, align 4
  br label %129

; <label>:119:                                    ; preds = %104
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

; <label>:124:                                    ; preds = %119
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %14, align 4
  br label %132

; <label>:128:                                    ; preds = %119
  br label %129

; <label>:129:                                    ; preds = %128, %118
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %98

; <label>:132:                                    ; preds = %124, %98
  store i32 0, i32* %13, align 4
  %133 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %134 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %137 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %135, %138
  store i32 %139, i32* %8, align 4
  br label %140

; <label>:140:                                    ; preds = %158, %132
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %144 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %142, %145
  %147 = icmp sle i32 %141, %146
  br i1 %147, label %148, label %161

; <label>:148:                                    ; preds = %140
  %149 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %150 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %13, align 4
  br label %158

; <label>:158:                                    ; preds = %148
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %140

; <label>:161:                                    ; preds = %140
  store i32 0, i32* %15, align 4
  %162 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %163 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %166 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %164, %167
  store i32 %168, i32* %8, align 4
  br label %169

; <label>:169:                                    ; preds = %187, %161
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %173 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %171, %174
  %176 = icmp sge i32 %170, %175
  br i1 %176, label %177, label %190

; <label>:177:                                    ; preds = %169
  %178 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %179 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %15, align 4
  br label %187

; <label>:187:                                    ; preds = %177
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %8, align 4
  br label %169

; <label>:190:                                    ; preds = %169
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %196

; <label>:194:                                    ; preds = %190
  %195 = load i32, i32* %13, align 4
  store i32 %195, i32* %6, align 4
  br label %196

; <label>:196:                                    ; preds = %194, %190
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %196
  %201 = load i32, i32* %15, align 4
  store i32 %201, i32* %6, align 4
  br label %202

; <label>:202:                                    ; preds = %200, %196
  %203 = load i32, i32* %6, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sdiv i32 %204, 59
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %5, align 4
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %208 = load i32, i32* %5, align 4
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %208)
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %210, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  %212 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 80
  store i8 0, i8* %212, align 16
  %213 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 79
  store i8 10, i8* %213, align 1
  %214 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %215 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %8, align 4
  br label %217

; <label>:217:                                    ; preds = %433, %202
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %220 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = icmp sle i32 %218, %221
  br i1 %222, label %223, label %436

; <label>:223:                                    ; preds = %217
  %224 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %224, i8 32, i64 79, i32 16, i1 false)
  %225 = load i32, i32* %8, align 4
  %226 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %227 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %225, %228
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %234

; <label>:233:                                    ; preds = %223
  br label %433

; <label>:234:                                    ; preds = %223
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %14, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %239

; <label>:238:                                    ; preds = %234
  br label %433

; <label>:239:                                    ; preds = %234
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %12, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %283

; <label>:243:                                    ; preds = %239
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %246 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %244, %247
  br i1 %248, label %249, label %283

; <label>:249:                                    ; preds = %243
  %250 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i32 0, i32 0
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  %253 = load i32, i32* %13, align 4
  %254 = call i32 (i8*, i8*, ...) @sprintf(i8* %250, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %252, i32 %253, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #5
  %255 = load i32, i32* %13, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %279

; <label>:257:                                    ; preds = %249
  %258 = load i32, i32* %13, align 4
  %259 = sub nsw i32 %258, 1
  %260 = load i32, i32* %5, align 4
  %261 = sdiv i32 %259, %260
  %262 = add nsw i32 1, %261
  store i32 %262, i32* %7, align 4
  %263 = load i32, i32* %7, align 4
  %264 = icmp sgt i32 %263, 60
  br i1 %264, label %265, label %266

; <label>:265:                                    ; preds = %257
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %266

; <label>:266:                                    ; preds = %265, %257
  store i32 20, i32* %11, align 4
  br label %267

; <label>:267:                                    ; preds = %275, %266
  %268 = load i32, i32* %7, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %278

; <label>:270:                                    ; preds = %267
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %11, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 %273
  store i8 61, i8* %274, align 1
  br label %275

; <label>:275:                                    ; preds = %270
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %7, align 4
  br label %267

; <label>:278:                                    ; preds = %267
  br label %279

; <label>:279:                                    ; preds = %278, %249
  %280 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i32 0, i32 0
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %282 = call i32 @fputs(i8* %280, %struct._IO_FILE* %281)
  br label %433

; <label>:283:                                    ; preds = %243, %239
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* %14, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %322

; <label>:287:                                    ; preds = %283
  %288 = load i32, i32* %8, align 4
  %289 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %290 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %288, %291
  br i1 %292, label %293, label %322

; <label>:293:                                    ; preds = %287
  %294 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i32 0, i32 0
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* %15, align 4
  %297 = call i32 (i8*, i8*, ...) @sprintf(i8* %294, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %295, i32 %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #5
  %298 = load i32, i32* %15, align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %318

; <label>:300:                                    ; preds = %293
  %301 = load i32, i32* %15, align 4
  %302 = sub nsw i32 %301, 1
  %303 = load i32, i32* %5, align 4
  %304 = sdiv i32 %302, %303
  %305 = add nsw i32 1, %304
  store i32 %305, i32* %7, align 4
  store i32 20, i32* %11, align 4
  br label %306

; <label>:306:                                    ; preds = %314, %300
  %307 = load i32, i32* %7, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %317

; <label>:309:                                    ; preds = %306
  %310 = load i32, i32* %11, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %11, align 4
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 %312
  store i8 61, i8* %313, align 1
  br label %314

; <label>:314:                                    ; preds = %309
  %315 = load i32, i32* %7, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %7, align 4
  br label %306

; <label>:317:                                    ; preds = %306
  br label %318

; <label>:318:                                    ; preds = %317, %293
  %319 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i32 0, i32 0
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %321 = call i32 @fputs(i8* %319, %struct._IO_FILE* %320)
  br label %433

; <label>:322:                                    ; preds = %287, %283
  br label %323

; <label>:323:                                    ; preds = %322
  br label %324

; <label>:324:                                    ; preds = %323
  br label %325

; <label>:325:                                    ; preds = %324
  %326 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %327 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %326, i32 0, i32 8
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %349

; <label>:330:                                    ; preds = %325
  %331 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i32 0, i32 0
  %332 = load i32, i32* %8, align 4
  %333 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %334 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %341 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %340, i32 0, i32 7
  %342 = load float*, float** %341, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %342, i64 %344
  %346 = load float, float* %345, align 4
  %347 = fptosi float %346 to i32
  %348 = call i32 (i8*, i8*, ...) @sprintf(i8* %331, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 %332, i32 %339, i32 %347) #5
  br label %360

; <label>:349:                                    ; preds = %325
  %350 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i32 0, i32 0
  %351 = load i32, i32* %8, align 4
  %352 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %353 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %352, i32 0, i32 0
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %9, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = call i32 (i8*, i8*, ...) @sprintf(i8* %350, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %351, i32 %358, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #5
  br label %360

; <label>:360:                                    ; preds = %349, %330
  %361 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 20
  store i8 32, i8* %361, align 4
  %362 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %363 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %9, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %394

; <label>:370:                                    ; preds = %360
  %371 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %372 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %371, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %9, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 %377, 1
  %379 = load i32, i32* %5, align 4
  %380 = sdiv i32 %378, %379
  %381 = add nsw i32 1, %380
  store i32 %381, i32* %7, align 4
  store i32 20, i32* %11, align 4
  br label %382

; <label>:382:                                    ; preds = %390, %370
  %383 = load i32, i32* %7, align 4
  %384 = icmp sgt i32 %383, 0
  br i1 %384, label %385, label %393

; <label>:385:                                    ; preds = %382
  %386 = load i32, i32* %11, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %11, align 4
  %388 = sext i32 %386 to i64
  %389 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 %388
  store i8 61, i8* %389, align 1
  br label %390

; <label>:390:                                    ; preds = %385
  %391 = load i32, i32* %7, align 4
  %392 = add nsw i32 %391, -1
  store i32 %392, i32* %7, align 4
  br label %382

; <label>:393:                                    ; preds = %382
  br label %394

; <label>:394:                                    ; preds = %393, %360
  %395 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %396 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %395, i32 0, i32 8
  %397 = load i32, i32* %396, align 8
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %429

; <label>:399:                                    ; preds = %394
  %400 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %401 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %400, i32 0, i32 7
  %402 = load float*, float** %401, align 8
  %403 = load i32, i32* %9, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds float, float* %402, i64 %404
  %406 = load float, float* %405, align 4
  %407 = fptosi float %406 to i32
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %429

; <label>:409:                                    ; preds = %399
  %410 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %411 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %410, i32 0, i32 7
  %412 = load float*, float** %411, align 8
  %413 = load i32, i32* %9, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds float, float* %412, i64 %414
  %416 = load float, float* %415, align 4
  %417 = fsub float %416, 1.000000e+00
  %418 = fptosi float %417 to i32
  %419 = load i32, i32* %5, align 4
  %420 = sdiv i32 %418, %419
  %421 = add nsw i32 20, %420
  store i32 %421, i32* %11, align 4
  %422 = load i32, i32* %11, align 4
  %423 = icmp sge i32 %422, 78
  br i1 %423, label %424, label %425

; <label>:424:                                    ; preds = %409
  store i32 78, i32* %11, align 4
  br label %425

; <label>:425:                                    ; preds = %424, %409
  %426 = load i32, i32* %11, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 %427
  store i8 42, i8* %428, align 1
  br label %429

; <label>:429:                                    ; preds = %425, %399, %394
  %430 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i32 0, i32 0
  %431 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %432 = call i32 @fputs(i8* %430, %struct._IO_FILE* %431)
  br label %433

; <label>:433:                                    ; preds = %429, %318, %279, %238, %233
  %434 = load i32, i32* %8, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %8, align 4
  br label %217

; <label>:436:                                    ; preds = %217
  %437 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %438 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %437, i32 0, i32 8
  %439 = load i32, i32* %438, align 8
  switch i32 %439, label %501 [
    i32 0, label %440
    i32 1, label %443
    i32 2, label %472
  ]

; <label>:440:                                    ; preds = %436
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %442 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %441, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0))
  br label %501

; <label>:443:                                    ; preds = %436
  %444 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %445 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %444, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0))
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %447 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %448 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %447, i32 0, i32 9
  %449 = getelementptr inbounds [3 x float], [3 x float]* %448, i64 0, i64 0
  %450 = load float, float* %449, align 4
  %451 = fpext float %450 to double
  %452 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %446, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), double %451)
  %453 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %454 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %455 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %454, i32 0, i32 9
  %456 = getelementptr inbounds [3 x float], [3 x float]* %455, i64 0, i64 1
  %457 = load float, float* %456, align 4
  %458 = fpext float %457 to double
  %459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %453, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), double %458)
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %461 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %462 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %461, i32 0, i32 10
  %463 = load float, float* %462, align 8
  %464 = fpext float %463 to double
  %465 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %460, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), double %464)
  %466 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %467 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %468 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %467, i32 0, i32 11
  %469 = load float, float* %468, align 4
  %470 = fpext float %469 to double
  %471 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %466, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), double %470)
  br label %501

; <label>:472:                                    ; preds = %436
  %473 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %474 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %473, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i32 0, i32 0))
  %475 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %476 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %477 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %476, i32 0, i32 9
  %478 = getelementptr inbounds [3 x float], [3 x float]* %477, i64 0, i64 0
  %479 = load float, float* %478, align 4
  %480 = fpext float %479 to double
  %481 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %475, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), double %480)
  %482 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %483 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %484 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %483, i32 0, i32 9
  %485 = getelementptr inbounds [3 x float], [3 x float]* %484, i64 0, i64 1
  %486 = load float, float* %485, align 4
  %487 = fpext float %486 to double
  %488 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %482, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), double %487)
  %489 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %490 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %491 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %490, i32 0, i32 10
  %492 = load float, float* %491, align 8
  %493 = fpext float %492 to double
  %494 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %489, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), double %493)
  %495 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %496 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %497 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %496, i32 0, i32 11
  %498 = load float, float* %497, align 4
  %499 = fpext float %498 to double
  %500 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %495, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), double %499)
  br label %501

; <label>:501:                                    ; preds = %436, %472, %443, %440
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @PrintXMGRHistogram(%struct._IO_FILE*, %struct.histogram_s*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.histogram_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.histogram_s* %1, %struct.histogram_s** %4, align 8
  %7 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %8 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %52, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %13 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %55

; <label>:16:                                     ; preds = %10
  %17 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %18 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %22 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %51

; <label>:29:                                     ; preds = %16
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %33 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %37 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %34, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to float
  %44 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %45 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = sitofp i32 %46 to float
  %48 = fdiv float %43, %47
  %49 = fpext float %48 to double
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %31, double %49)
  br label %51

; <label>:51:                                     ; preds = %29, %16
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %10

; <label>:55:                                     ; preds = %10
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  %58 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %59 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %109

; <label>:62:                                     ; preds = %55
  %63 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %64 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %66

; <label>:66:                                     ; preds = %103, %62
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %69 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp sle i32 %67, %70
  br i1 %71, label %72, label %106

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = sitofp i32 %73 to float
  %75 = fadd float %74, 1.000000e+00
  %76 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %77 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %76, i32 0, i32 9
  %78 = getelementptr inbounds [3 x float], [3 x float]* %77, i64 0, i64 0
  %79 = load float, float* %78, align 4
  %80 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %81 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %80, i32 0, i32 9
  %82 = getelementptr inbounds [3 x float], [3 x float]* %81, i64 0, i64 1
  %83 = load float, float* %82, align 4
  %84 = call double @ExtremeValueP(float %75, float %79, float %83)
  %85 = fsub double 1.000000e+00, %84
  %86 = load i32, i32* %5, align 4
  %87 = sitofp i32 %86 to float
  %88 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %89 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %88, i32 0, i32 9
  %90 = getelementptr inbounds [3 x float], [3 x float]* %89, i64 0, i64 0
  %91 = load float, float* %90, align 4
  %92 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %93 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %92, i32 0, i32 9
  %94 = getelementptr inbounds [3 x float], [3 x float]* %93, i64 0, i64 1
  %95 = load float, float* %94, align 4
  %96 = call double @ExtremeValueP(float %87, float %91, float %95)
  %97 = fsub double 1.000000e+00, %96
  %98 = fsub double %85, %97
  store double %98, double* %6, align 8
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load double, double* %6, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %100, double %101)
  br label %103

; <label>:103:                                    ; preds = %72
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %66

; <label>:106:                                    ; preds = %66
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  br label %109

; <label>:109:                                    ; preds = %106, %55
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define double @ExtremeValueP(float, float, float) #0 {
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca double, align 8
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %9 = load float, float* %7, align 4
  %10 = load float, float* %5, align 4
  %11 = load float, float* %6, align 4
  %12 = fsub float %10, %11
  %13 = fmul float %9, %12
  %14 = fpext float %13 to double
  %15 = call double @log(double 0x3CB0000000000000) #5
  %16 = fmul double -1.000000e+00, %15
  %17 = call double @log(double %16) #5
  %18 = fmul double -1.000000e+00, %17
  %19 = fcmp ole double %14, %18
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %3
  store double 1.000000e+00, double* %4, align 8
  br label %49

; <label>:21:                                     ; preds = %3
  %22 = load float, float* %7, align 4
  %23 = load float, float* %5, align 4
  %24 = load float, float* %6, align 4
  %25 = fsub float %23, %24
  %26 = fmul float %22, %25
  %27 = fpext float %26 to double
  %28 = fcmp oge double %27, 0x4086233333333333
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %21
  store double 0.000000e+00, double* %4, align 8
  br label %49

; <label>:30:                                     ; preds = %21
  %31 = load float, float* %7, align 4
  %32 = fpext float %31 to double
  %33 = fmul double -1.000000e+00, %32
  %34 = load float, float* %5, align 4
  %35 = load float, float* %6, align 4
  %36 = fsub float %34, %35
  %37 = fpext float %36 to double
  %38 = fmul double %33, %37
  %39 = call double @exp(double %38) #5
  store double %39, double* %8, align 8
  %40 = load double, double* %8, align 8
  %41 = fcmp olt double %40, 0x3E7AD7F29ABCAF48
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %30
  %43 = load double, double* %8, align 8
  store double %43, double* %4, align 8
  br label %49

; <label>:44:                                     ; preds = %30
  %45 = load double, double* %8, align 8
  %46 = fmul double -1.000000e+00, %45
  %47 = call double @exp(double %46) #5
  %48 = fsub double 1.000000e+00, %47
  store double %48, double* %4, align 8
  br label %49

; <label>:49:                                     ; preds = %44, %42, %29, %20
  %50 = load double, double* %4, align 8
  ret double %50
}

; Function Attrs: noinline nounwind optnone uwtable
define void @PrintXMGRDistribution(%struct._IO_FILE*, %struct.histogram_s*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.histogram_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.histogram_s* %1, %struct.histogram_s** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %9 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %43, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %14 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %46

; <label>:17:                                     ; preds = %11
  %18 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %19 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %23 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %6, align 4
  %35 = sitofp i32 %34 to float
  %36 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %37 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %35, %39
  %41 = fpext float %40 to double
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %33, double %41)
  br label %43

; <label>:43:                                     ; preds = %17
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %11

; <label>:46:                                     ; preds = %11
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  %49 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %50 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %86

; <label>:53:                                     ; preds = %46
  %54 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %55 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  br label %57

; <label>:57:                                     ; preds = %80, %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %60 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %63, label %83

; <label>:63:                                     ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = sitofp i32 %64 to float
  %66 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %67 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %66, i32 0, i32 9
  %68 = getelementptr inbounds [3 x float], [3 x float]* %67, i64 0, i64 0
  %69 = load float, float* %68, align 4
  %70 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %71 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %70, i32 0, i32 9
  %72 = getelementptr inbounds [3 x float], [3 x float]* %71, i64 0, i64 1
  %73 = load float, float* %72, align 4
  %74 = call double @ExtremeValueP(float %65, float %69, float %73)
  %75 = fsub double 1.000000e+00, %74
  store double %75, double* %7, align 8
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load double, double* %7, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %77, double %78)
  br label %80

; <label>:80:                                     ; preds = %63
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %57

; <label>:83:                                     ; preds = %57
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  br label %86

; <label>:86:                                     ; preds = %83, %46
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @PrintXMGRRegressionLine(%struct._IO_FILE*, %struct.histogram_s*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.histogram_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.histogram_s* %1, %struct.histogram_s** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %9 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %53, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %14 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %56

; <label>:17:                                     ; preds = %11
  %18 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %19 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %23 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sitofp i32 %31 to double
  %33 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %34 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %32, %36
  %38 = call double @log(double %37) #5
  %39 = fmul double -1.000000e+00, %38
  %40 = call double @log(double %39) #5
  store double %40, double* %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %43 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %52

; <label>:46:                                     ; preds = %17
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = load double, double* %7, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %49, double %50)
  br label %52

; <label>:52:                                     ; preds = %46, %17
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %11

; <label>:56:                                     ; preds = %11
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  %59 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %60 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %99

; <label>:63:                                     ; preds = %56
  %64 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %65 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %5, align 4
  br label %67

; <label>:67:                                     ; preds = %93, %63
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %70 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %96

; <label>:73:                                     ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = sitofp i32 %74 to float
  %76 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %77 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %76, i32 0, i32 9
  %78 = getelementptr inbounds [3 x float], [3 x float]* %77, i64 0, i64 0
  %79 = load float, float* %78, align 4
  %80 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %81 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %80, i32 0, i32 9
  %82 = getelementptr inbounds [3 x float], [3 x float]* %81, i64 0, i64 1
  %83 = load float, float* %82, align 4
  %84 = call double @ExtremeValueP(float %75, float %79, float %83)
  %85 = fsub double 1.000000e+00, %84
  %86 = call double @log(double %85) #5
  %87 = fmul double -1.000000e+00, %86
  %88 = call double @log(double %87) #5
  store double %88, double* %7, align 8
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load double, double* %7, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %90, double %91)
  br label %93

; <label>:93:                                     ; preds = %73
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %67

; <label>:96:                                     ; preds = %67
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  br label %99

; <label>:99:                                     ; preds = %96, %56
  ret void
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @EVDBasicFit(%struct.histogram_s*) #0 {
  %2 = alloca %struct.histogram_s*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.histogram_s* %0, %struct.histogram_s** %2, align 8
  %14 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %15 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %18 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 492, i64 %24)
  %26 = bitcast i8* %25 to float*
  store float* %26, float** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 493, i64 %29)
  %31 = bitcast i8* %30 to float*
  store float* %31, float** %4, align 8
  store i32 0, i32* %8, align 4
  br label %32

; <label>:32:                                     ; preds = %45, %1
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

; <label>:36:                                     ; preds = %32
  %37 = load float*, float** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  store float 0.000000e+00, float* %40, align 4
  %41 = load float*, float** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  store float 0.000000e+00, float* %44, align 4
  br label %45

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %32

; <label>:48:                                     ; preds = %32
  store i32 0, i32* %6, align 4
  %49 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %50 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  br label %52

; <label>:52:                                     ; preds = %98, %48
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %55 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp sle i32 %53, %56
  br i1 %57, label %58, label %101

; <label>:58:                                     ; preds = %52
  %59 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %60 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %64 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sitofp i32 %72 to float
  %74 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %75 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = sitofp i32 %76 to float
  %78 = fdiv float %73, %77
  %79 = load float*, float** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %82 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %79, i64 %85
  store float %78, float* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  %89 = sitofp i32 %88 to float
  %90 = load float*, float** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %93 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %90, i64 %96
  store float %89, float* %97, align 4
  br label %98

; <label>:98:                                     ; preds = %58
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %52

; <label>:101:                                    ; preds = %52
  %102 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %103 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  br label %105

; <label>:105:                                    ; preds = %134, %101
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %108 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %137

; <label>:111:                                    ; preds = %105
  %112 = load float*, float** %3, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %115 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %112, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fpext float %120 to double
  %122 = call double @log(double %121) #5
  %123 = fmul double -1.000000e+00, %122
  %124 = call double @log(double %123) #5
  %125 = fptrunc double %124 to float
  %126 = load float*, float** %3, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %129 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %126, i64 %132
  store float %125, float* %133, align 4
  br label %134

; <label>:134:                                    ; preds = %111
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %105

; <label>:137:                                    ; preds = %105
  %138 = load float*, float** %4, align 8
  %139 = load float*, float** %3, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sub nsw i32 %140, 1
  %142 = call i32 @Linefit(float* %138, float* %139, i32 %141, float* %10, float* %9, float* %11)
  %143 = load float, float* %9, align 4
  %144 = fpext float %143 to double
  %145 = fmul double -1.000000e+00, %144
  %146 = fptrunc double %145 to float
  store float %146, float* %12, align 4
  %147 = load float, float* %10, align 4
  %148 = load float, float* %12, align 4
  %149 = fdiv float %147, %148
  store float %149, float* %13, align 4
  %150 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %151 = load float, float* %13, align 4
  %152 = load float, float* %12, align 4
  %153 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %154 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = sitofp i32 %155 to float
  %157 = load %struct.histogram_s*, %struct.histogram_s** %2, align 8
  %158 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = sitofp i32 %159 to float
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %150, float %151, float %152, float %156, float %160, i32 2)
  %161 = load float*, float** %4, align 8
  %162 = bitcast float* %161 to i8*
  call void @free(i8* %162) #5
  %163 = load float*, float** %3, align 8
  %164 = bitcast float* %163 to i8*
  call void @free(i8* %164) #5
  ret void
}

declare i32 @Linefit(float*, float*, i32, float*, float*, float*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @ExtremeValueSetHistogram(%struct.histogram_s*, float, float, float, float, i32) #0 {
  %7 = alloca %struct.histogram_s*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  store %struct.histogram_s* %0, %struct.histogram_s** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  call void @UnfitHistogram(%struct.histogram_s* %18)
  %19 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %20 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %19, i32 0, i32 8
  store i32 1, i32* %20, align 8
  %21 = load float, float* %9, align 4
  %22 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %23 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %22, i32 0, i32 9
  %24 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 1
  store float %21, float* %24, align 4
  %25 = load float, float* %8, align 4
  %26 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %27 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %26, i32 0, i32 9
  %28 = getelementptr inbounds [3 x float], [3 x float]* %27, i64 0, i64 0
  store float %25, float* %28, align 4
  %29 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %30 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %33 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 696, i64 %39)
  %41 = bitcast i8* %40 to float*
  %42 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %43 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %42, i32 0, i32 7
  store float* %41, float** %43, align 8
  store i32 0, i32* %15, align 4
  br label %44

; <label>:44:                                     ; preds = %55, %6
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %58

; <label>:48:                                     ; preds = %44
  %49 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %50 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %49, i32 0, i32 7
  %51 = load float*, float** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  store float 0.000000e+00, float* %54, align 4
  br label %55

; <label>:55:                                     ; preds = %48
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %44

; <label>:58:                                     ; preds = %44
  %59 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %60 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %13, align 4
  br label %62

; <label>:62:                                     ; preds = %110, %58
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %65 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %63, %66
  br i1 %67, label %68, label %113

; <label>:68:                                     ; preds = %62
  %69 = load i32, i32* %13, align 4
  %70 = sitofp i32 %69 to float
  %71 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %72 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %71, i32 0, i32 9
  %73 = getelementptr inbounds [3 x float], [3 x float]* %72, i64 0, i64 0
  %74 = load float, float* %73, align 4
  %75 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %76 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %75, i32 0, i32 9
  %77 = getelementptr inbounds [3 x float], [3 x float]* %76, i64 0, i64 1
  %78 = load float, float* %77, align 4
  %79 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %80 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call double @ExtremeValueE(float %70, float %74, float %78, i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  %85 = sitofp i32 %84 to float
  %86 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %87 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %86, i32 0, i32 9
  %88 = getelementptr inbounds [3 x float], [3 x float]* %87, i64 0, i64 0
  %89 = load float, float* %88, align 4
  %90 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %91 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %90, i32 0, i32 9
  %92 = getelementptr inbounds [3 x float], [3 x float]* %91, i64 0, i64 1
  %93 = load float, float* %92, align 4
  %94 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %95 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call double @ExtremeValueE(float %85, float %89, float %93, i32 %96)
  %98 = fsub double %82, %97
  %99 = fptrunc double %98 to float
  %100 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %101 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %100, i32 0, i32 7
  %102 = load float*, float** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %105 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %102, i64 %108
  store float %99, float* %109, align 4
  br label %110

; <label>:110:                                    ; preds = %68
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %62

; <label>:113:                                    ; preds = %62
  %114 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %115 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %114, i32 0, i32 10
  store float 0.000000e+00, float* %115, align 8
  store i32 0, i32* %16, align 4
  %116 = load float, float* %10, align 4
  %117 = fptosi float %116 to i32
  store i32 %117, i32* %13, align 4
  br label %118

; <label>:118:                                    ; preds = %197, %113
  %119 = load i32, i32* %13, align 4
  %120 = sitofp i32 %119 to float
  %121 = load float, float* %11, align 4
  %122 = fcmp ole float %120, %121
  br i1 %122, label %123, label %200

; <label>:123:                                    ; preds = %118
  %124 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %125 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %124, i32 0, i32 7
  %126 = load float*, float** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %129 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %126, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fpext float %134 to double
  %136 = fcmp oge double %135, 5.000000e+00
  br i1 %136, label %137, label %196

; <label>:137:                                    ; preds = %123
  %138 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %139 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %143 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %140, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp sge i32 %148, 5
  br i1 %149, label %150, label %196

; <label>:150:                                    ; preds = %137
  %151 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %152 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %156 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %154, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %153, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sitofp i32 %161 to float
  %163 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %164 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %163, i32 0, i32 7
  %165 = load float*, float** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %168 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %166, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %165, i64 %171
  %173 = load float, float* %172, align 4
  %174 = fsub float %162, %173
  store float %174, float* %17, align 4
  %175 = load float, float* %17, align 4
  %176 = load float, float* %17, align 4
  %177 = fmul float %175, %176
  %178 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %179 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %178, i32 0, i32 7
  %180 = load float*, float** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %183 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %181, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %180, i64 %186
  %188 = load float, float* %187, align 4
  %189 = fdiv float %177, %188
  %190 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %191 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %190, i32 0, i32 10
  %192 = load float, float* %191, align 8
  %193 = fadd float %192, %189
  store float %193, float* %191, align 8
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %196

; <label>:196:                                    ; preds = %150, %137, %123
  br label %197

; <label>:197:                                    ; preds = %196
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %13, align 4
  br label %118

; <label>:200:                                    ; preds = %118
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 1, %202
  %204 = icmp sgt i32 %201, %203
  br i1 %204, label %205, label %221

; <label>:205:                                    ; preds = %200
  %206 = load i32, i32* %16, align 4
  %207 = sub nsw i32 %206, 1
  %208 = load i32, i32* %12, align 4
  %209 = sub nsw i32 %207, %208
  %210 = sitofp i32 %209 to double
  %211 = fdiv double %210, 2.000000e+00
  %212 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %213 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %212, i32 0, i32 10
  %214 = load float, float* %213, align 8
  %215 = fpext float %214 to double
  %216 = fdiv double %215, 2.000000e+00
  %217 = call double @IncompleteGamma(double %211, double %216)
  %218 = fptrunc double %217 to float
  %219 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %220 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %219, i32 0, i32 11
  store float %218, float* %220, align 4
  br label %224

; <label>:221:                                    ; preds = %200
  %222 = load %struct.histogram_s*, %struct.histogram_s** %7, align 8
  %223 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %222, i32 0, i32 11
  store float 0.000000e+00, float* %223, align 4
  br label %224

; <label>:224:                                    ; preds = %221, %205
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ExtremeValueFitHistogram(%struct.histogram_s*, i32, float) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.histogram_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  store %struct.histogram_s* %0, %struct.histogram_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  %22 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %23 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %69

; <label>:27:                                     ; preds = %3
  store i32 -1, i32* %20, align 4
  %28 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %29 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  br label %31

; <label>:31:                                     ; preds = %65, %27
  %32 = load i32, i32* %15, align 4
  %33 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %34 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %68

; <label>:37:                                     ; preds = %31
  %38 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %39 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %43 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %64

; <label>:51:                                     ; preds = %37
  %52 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %53 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %57 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %16, align 4
  br label %64

; <label>:64:                                     ; preds = %51, %37
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %31

; <label>:68:                                     ; preds = %31
  br label %69

; <label>:69:                                     ; preds = %68, %3
  %70 = load float, float* %7, align 4
  %71 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %72 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = sitofp i32 %73 to float
  %75 = fcmp olt float %70, %74
  br i1 %75, label %76, label %78

; <label>:76:                                     ; preds = %69
  %77 = load float, float* %7, align 4
  br label %83

; <label>:78:                                     ; preds = %69
  %79 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %80 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = sitofp i32 %81 to float
  br label %83

; <label>:83:                                     ; preds = %78, %76
  %84 = phi float [ %77, %76 ], [ %82, %78 ]
  %85 = fptosi float %84 to i32
  store i32 %85, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %86

; <label>:86:                                     ; preds = %285, %83
  %87 = load i32, i32* %19, align 4
  %88 = icmp slt i32 %87, 100
  br i1 %88, label %89, label %288

; <label>:89:                                     ; preds = %86
  store float* null, float** %8, align 8
  store i32* null, i32** %9, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %16, align 4
  %92 = sub nsw i32 %90, %91
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 5
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %89
  br label %296

; <label>:97:                                     ; preds = %89
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 600, i64 %100)
  %102 = bitcast i8* %101 to float*
  store float* %102, float** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 601, i64 %105)
  %107 = bitcast i8* %106 to i32*
  store i32* %107, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %15, align 4
  br label %109

; <label>:109:                                    ; preds = %155, %97
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %158

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* %15, align 4
  %115 = sitofp i32 %114 to float
  %116 = fpext float %115 to double
  %117 = fadd double %116, 5.000000e-01
  %118 = fptrunc double %117 to float
  %119 = load float*, float** %8, align 8
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %16, align 4
  %122 = sub nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %119, i64 %123
  store float %118, float* %124, align 4
  %125 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %126 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %130 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %128, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %127, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %143 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %147 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %145, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %144, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %10, align 4
  br label %155

; <label>:155:                                    ; preds = %113
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %109

; <label>:158:                                    ; preds = %109
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %159, 100
  br i1 %160, label %161, label %162

; <label>:161:                                    ; preds = %158
  br label %296

; <label>:162:                                    ; preds = %158
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %232

; <label>:165:                                    ; preds = %162
  %166 = load i32, i32* %19, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %194

; <label>:168:                                    ; preds = %165
  %169 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %170 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %10, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* %10, align 4
  %175 = sitofp i32 %174 to float
  %176 = fpext float %175 to double
  %177 = fmul double 5.819800e-01, %176
  %178 = fptosi double %177 to i32
  %179 = icmp slt i32 %173, %178
  br i1 %179, label %180, label %186

; <label>:180:                                    ; preds = %168
  %181 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %182 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 %183, %184
  br label %192

; <label>:186:                                    ; preds = %168
  %187 = load i32, i32* %10, align 4
  %188 = sitofp i32 %187 to float
  %189 = fpext float %188 to double
  %190 = fmul double 5.819800e-01, %189
  %191 = fptosi double %190 to i32
  br label %192

; <label>:192:                                    ; preds = %186, %180
  %193 = phi i32 [ %185, %180 ], [ %191, %186 ]
  store i32 %193, i32* %11, align 4
  br label %231

; <label>:194:                                    ; preds = %165
  %195 = load i32, i32* %16, align 4
  %196 = sitofp i32 %195 to float
  %197 = load float, float* %14, align 4
  %198 = load float, float* %13, align 4
  %199 = call double @EVDDistribution(float %196, float %197, float %198)
  store double %199, double* %21, align 8
  %200 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %201 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %10, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load i32, i32* %10, align 4
  %206 = sitofp i32 %205 to double
  %207 = load double, double* %21, align 8
  %208 = fmul double %206, %207
  %209 = load double, double* %21, align 8
  %210 = fsub double 1.000000e+00, %209
  %211 = fdiv double %208, %210
  %212 = fptosi double %211 to i32
  %213 = icmp slt i32 %204, %212
  br i1 %213, label %214, label %220

; <label>:214:                                    ; preds = %194
  %215 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %216 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %10, align 4
  %219 = sub nsw i32 %217, %218
  br label %229

; <label>:220:                                    ; preds = %194
  %221 = load i32, i32* %10, align 4
  %222 = sitofp i32 %221 to double
  %223 = load double, double* %21, align 8
  %224 = fmul double %222, %223
  %225 = load double, double* %21, align 8
  %226 = fsub double 1.000000e+00, %225
  %227 = fdiv double %224, %226
  %228 = fptosi double %227 to i32
  br label %229

; <label>:229:                                    ; preds = %220, %214
  %230 = phi i32 [ %219, %214 ], [ %228, %220 ]
  store i32 %230, i32* %11, align 4
  br label %231

; <label>:231:                                    ; preds = %229, %192
  br label %232

; <label>:232:                                    ; preds = %231, %162
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %246

; <label>:235:                                    ; preds = %232
  %236 = load float*, float** %8, align 8
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %16, align 4
  %241 = sitofp i32 %240 to float
  %242 = call i32 @EVDCensoredFit(float* %236, i32* %237, i32 %238, i32 %239, float %241, float* %14, float* %13)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

; <label>:244:                                    ; preds = %235
  br label %296

; <label>:245:                                    ; preds = %235
  br label %254

; <label>:246:                                    ; preds = %232
  %247 = load float*, float** %8, align 8
  %248 = load i32*, i32** %9, align 8
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @EVDMaxLikelyFit(float* %247, i32* %248, i32 %249, float* %14, float* %13)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

; <label>:252:                                    ; preds = %246
  br label %296

; <label>:253:                                    ; preds = %246
  br label %254

; <label>:254:                                    ; preds = %253, %245
  %255 = load float, float* %14, align 4
  %256 = fpext float %255 to double
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %257, %258
  %260 = sub nsw i32 %259, 1
  %261 = sitofp i32 %260 to double
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %262, %263
  %265 = sitofp i32 %264 to double
  %266 = fdiv double %261, %265
  %267 = call double @log(double %266) #5
  %268 = fmul double -1.000000e+00, %267
  %269 = call double @log(double %268) #5
  %270 = load float, float* %13, align 4
  %271 = fpext float %270 to double
  %272 = fdiv double %269, %271
  %273 = fsub double %256, %272
  %274 = fptosi double %273 to i32
  store i32 %274, i32* %18, align 4
  %275 = load float*, float** %8, align 8
  %276 = bitcast float* %275 to i8*
  call void @free(i8* %276) #5
  %277 = load i32*, i32** %9, align 8
  %278 = bitcast i32* %277 to i8*
  call void @free(i8* %278) #5
  %279 = load i32, i32* %18, align 4
  %280 = load i32, i32* %17, align 4
  %281 = icmp sge i32 %279, %280
  br i1 %281, label %282, label %283

; <label>:282:                                    ; preds = %254
  br label %288

; <label>:283:                                    ; preds = %254
  %284 = load i32, i32* %18, align 4
  store i32 %284, i32* %17, align 4
  br label %285

; <label>:285:                                    ; preds = %283
  %286 = load i32, i32* %19, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %19, align 4
  br label %86

; <label>:288:                                    ; preds = %282, %86
  %289 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  %290 = load float, float* %14, align 4
  %291 = load float, float* %13, align 4
  %292 = load i32, i32* %16, align 4
  %293 = sitofp i32 %292 to float
  %294 = load i32, i32* %17, align 4
  %295 = sitofp i32 %294 to float
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %289, float %290, float %291, float %293, float %295, i32 1)
  store i32 1, i32* %4, align 4
  br label %310

; <label>:296:                                    ; preds = %252, %244, %161, %96
  %297 = load %struct.histogram_s*, %struct.histogram_s** %5, align 8
  call void @UnfitHistogram(%struct.histogram_s* %297)
  %298 = load float*, float** %8, align 8
  %299 = icmp ne float* %298, null
  br i1 %299, label %300, label %303

; <label>:300:                                    ; preds = %296
  %301 = load float*, float** %8, align 8
  %302 = bitcast float* %301 to i8*
  call void @free(i8* %302) #5
  br label %303

; <label>:303:                                    ; preds = %300, %296
  %304 = load i32*, i32** %9, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %309

; <label>:306:                                    ; preds = %303
  %307 = load i32*, i32** %9, align 8
  %308 = bitcast i32* %307 to i8*
  call void @free(i8* %308) #5
  br label %309

; <label>:309:                                    ; preds = %306, %303
  store i32 0, i32* %4, align 4
  br label %310

; <label>:310:                                    ; preds = %309, %288
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

; Function Attrs: noinline nounwind optnone uwtable
define double @EVDDistribution(float, float, float) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load float, float* %6, align 4
  %8 = fpext float %7 to double
  %9 = fmul double -1.000000e+00, %8
  %10 = load float, float* %4, align 4
  %11 = load float, float* %5, align 4
  %12 = fsub float %10, %11
  %13 = fpext float %12 to double
  %14 = fmul double %9, %13
  %15 = call double @exp(double %14) #5
  %16 = fmul double -1.000000e+00, %15
  %17 = call double @exp(double %16) #5
  ret double %17
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @EVDCensoredFit(float*, i32*, i32, i32, float, float*, float*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  store float* %0, float** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float %4, float* %13, align 4
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float 0x3EE4F8B580000000, float* %23, align 4
  store float 0x3FC99999A0000000, float* %16, align 4
  store i32 0, i32* %24, align 4
  br label %28

; <label>:28:                                     ; preds = %56, %7
  %29 = load i32, i32* %24, align 4
  %30 = icmp slt i32 %29, 100
  br i1 %30, label %31, label %59

; <label>:31:                                     ; preds = %28
  %32 = load float*, float** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load float, float* %13, align 4
  %37 = load float, float* %16, align 4
  call void @Lawless422(float* %32, i32* %33, i32 %34, i32 %35, float %36, float %37, float* %18, float* %19)
  %38 = load float, float* %18, align 4
  %39 = fpext float %38 to double
  %40 = call double @llvm.fabs.f64(double %39)
  %41 = load float, float* %23, align 4
  %42 = fpext float %41 to double
  %43 = fcmp olt double %40, %42
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %31
  br label %59

; <label>:45:                                     ; preds = %31
  %46 = load float, float* %16, align 4
  %47 = load float, float* %18, align 4
  %48 = load float, float* %19, align 4
  %49 = fdiv float %47, %48
  %50 = fsub float %46, %49
  store float %50, float* %16, align 4
  %51 = load float, float* %16, align 4
  %52 = fpext float %51 to double
  %53 = fcmp ole double %52, 0.000000e+00
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %45
  store float 0x3F50624DE0000000, float* %16, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %45
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %24, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %24, align 4
  br label %28

; <label>:59:                                     ; preds = %44, %28
  %60 = load i32, i32* %24, align 4
  %61 = icmp eq i32 %60, 100
  br i1 %61, label %62, label %158

; <label>:62:                                     ; preds = %59
  store float 0x3FC99999A0000000, float* %25, align 4
  store float 0x3FC99999A0000000, float* %26, align 4
  store float 0x3FC99999A0000000, float* %16, align 4
  %63 = load float*, float** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load float, float* %13, align 4
  %68 = load float, float* %16, align 4
  call void @Lawless422(float* %63, i32* %64, i32 %65, i32 %66, float %67, float %68, float* %18, float* %19)
  %69 = load float, float* %18, align 4
  %70 = fpext float %69 to double
  %71 = fcmp olt double %70, 0.000000e+00
  br i1 %71, label %72, label %94

; <label>:72:                                     ; preds = %62
  br label %73

; <label>:73:                                     ; preds = %89, %72
  %74 = load float, float* %25, align 4
  %75 = fpext float %74 to double
  %76 = fsub double %75, 3.000000e-02
  %77 = fptrunc double %76 to float
  store float %77, float* %25, align 4
  %78 = load float, float* %25, align 4
  %79 = fpext float %78 to double
  %80 = fcmp olt double %79, 0.000000e+00
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %73
  store i32 0, i32* %8, align 4
  br label %223

; <label>:82:                                     ; preds = %73
  %83 = load float*, float** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load float, float* %13, align 4
  %88 = load float, float* %25, align 4
  call void @Lawless422(float* %83, i32* %84, i32 %85, i32 %86, float %87, float %88, float* %18, float* %19)
  br label %89

; <label>:89:                                     ; preds = %82
  %90 = load float, float* %18, align 4
  %91 = fpext float %90 to double
  %92 = fcmp olt double %91, 0.000000e+00
  br i1 %92, label %73, label %93

; <label>:93:                                     ; preds = %89
  br label %116

; <label>:94:                                     ; preds = %62
  br label %95

; <label>:95:                                     ; preds = %111, %94
  %96 = load float, float* %26, align 4
  %97 = fpext float %96 to double
  %98 = fadd double %97, 1.000000e-01
  %99 = fptrunc double %98 to float
  store float %99, float* %26, align 4
  %100 = load float*, float** %9, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load float, float* %13, align 4
  %105 = load float, float* %25, align 4
  call void @Lawless422(float* %100, i32* %101, i32 %102, i32 %103, float %104, float %105, float* %18, float* %19)
  %106 = load float, float* %26, align 4
  %107 = fpext float %106 to double
  %108 = fcmp ogt double %107, 1.000000e+02
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %95
  store i32 0, i32* %8, align 4
  br label %223

; <label>:110:                                    ; preds = %95
  br label %111

; <label>:111:                                    ; preds = %110
  %112 = load float, float* %18, align 4
  %113 = fpext float %112 to double
  %114 = fcmp ogt double %113, 0.000000e+00
  br i1 %114, label %95, label %115

; <label>:115:                                    ; preds = %111
  br label %116

; <label>:116:                                    ; preds = %115, %93
  store i32 0, i32* %24, align 4
  br label %117

; <label>:117:                                    ; preds = %149, %116
  %118 = load i32, i32* %24, align 4
  %119 = icmp slt i32 %118, 100
  br i1 %119, label %120, label %152

; <label>:120:                                    ; preds = %117
  %121 = load float, float* %25, align 4
  %122 = load float, float* %26, align 4
  %123 = fadd float %121, %122
  %124 = fpext float %123 to double
  %125 = fdiv double %124, 2.000000e+00
  %126 = fptrunc double %125 to float
  store float %126, float* %27, align 4
  %127 = load float*, float** %9, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load float, float* %13, align 4
  %132 = load float, float* %25, align 4
  call void @Lawless422(float* %127, i32* %128, i32 %129, i32 %130, float %131, float %132, float* %18, float* %19)
  %133 = load float, float* %18, align 4
  %134 = fpext float %133 to double
  %135 = call double @llvm.fabs.f64(double %134)
  %136 = load float, float* %23, align 4
  %137 = fpext float %136 to double
  %138 = fcmp olt double %135, %137
  br i1 %138, label %139, label %140

; <label>:139:                                    ; preds = %120
  br label %152

; <label>:140:                                    ; preds = %120
  %141 = load float, float* %18, align 4
  %142 = fpext float %141 to double
  %143 = fcmp ogt double %142, 0.000000e+00
  br i1 %143, label %144, label %146

; <label>:144:                                    ; preds = %140
  %145 = load float, float* %27, align 4
  store float %145, float* %25, align 4
  br label %148

; <label>:146:                                    ; preds = %140
  %147 = load float, float* %27, align 4
  store float %147, float* %26, align 4
  br label %148

; <label>:148:                                    ; preds = %146, %144
  br label %149

; <label>:149:                                    ; preds = %148
  %150 = load i32, i32* %24, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %24, align 4
  br label %117

; <label>:152:                                    ; preds = %139, %117
  %153 = load i32, i32* %24, align 4
  %154 = icmp eq i32 %153, 100
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %152
  store i32 0, i32* %8, align 4
  br label %223

; <label>:156:                                    ; preds = %152
  %157 = load float, float* %27, align 4
  store float %157, float* %16, align 4
  br label %158

; <label>:158:                                    ; preds = %156, %59
  store double 0.000000e+00, double* %22, align 8
  store double 0.000000e+00, double* %20, align 8
  store i32 0, i32* %24, align 4
  br label %159

; <label>:159:                                    ; preds = %194, %158
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %197

; <label>:163:                                    ; preds = %159
  %164 = load i32*, i32** %10, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %167

; <label>:166:                                    ; preds = %163
  br label %174

; <label>:167:                                    ; preds = %163
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %24, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sitofp i32 %172 to double
  br label %174

; <label>:174:                                    ; preds = %167, %166
  %175 = phi double [ 1.000000e+00, %166 ], [ %173, %167 ]
  store double %175, double* %21, align 8
  %176 = load double, double* %21, align 8
  %177 = load float, float* %16, align 4
  %178 = fpext float %177 to double
  %179 = fmul double -1.000000e+00, %178
  %180 = load float*, float** %9, align 8
  %181 = load i32, i32* %24, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = fpext float %184 to double
  %186 = fmul double %179, %185
  %187 = call double @exp(double %186) #5
  %188 = fmul double %176, %187
  %189 = load double, double* %20, align 8
  %190 = fadd double %189, %188
  store double %190, double* %20, align 8
  %191 = load double, double* %21, align 8
  %192 = load double, double* %22, align 8
  %193 = fadd double %192, %191
  store double %193, double* %22, align 8
  br label %194

; <label>:194:                                    ; preds = %174
  %195 = load i32, i32* %24, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %24, align 4
  br label %159

; <label>:197:                                    ; preds = %159
  %198 = load i32, i32* %12, align 4
  %199 = sitofp i32 %198 to double
  %200 = load float, float* %16, align 4
  %201 = fpext float %200 to double
  %202 = fmul double -1.000000e+00, %201
  %203 = load float, float* %13, align 4
  %204 = fpext float %203 to double
  %205 = fmul double %202, %204
  %206 = call double @exp(double %205) #5
  %207 = fmul double %199, %206
  %208 = load double, double* %20, align 8
  %209 = fadd double %208, %207
  store double %209, double* %20, align 8
  %210 = load double, double* %20, align 8
  %211 = load double, double* %22, align 8
  %212 = fdiv double %210, %211
  %213 = call double @log(double %212) #5
  %214 = fmul double -1.000000e+00, %213
  %215 = load float, float* %16, align 4
  %216 = fpext float %215 to double
  %217 = fdiv double %214, %216
  %218 = fptrunc double %217 to float
  store float %218, float* %17, align 4
  %219 = load float, float* %16, align 4
  %220 = load float*, float** %15, align 8
  store float %219, float* %220, align 4
  %221 = load float, float* %17, align 4
  %222 = load float*, float** %14, align 8
  store float %221, float* %222, align 4
  store i32 1, i32* %8, align 4
  br label %223

; <label>:223:                                    ; preds = %197, %155, %109, %81
  %224 = load i32, i32* %8, align 4
  ret i32 %224
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @EVDMaxLikelyFit(float*, i32*, i32, float*, float*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store float* %0, float** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float 0x3EE4F8B580000000, float* %19, align 4
  store float 0x3FC99999A0000000, float* %12, align 4
  store i32 0, i32* %20, align 4
  br label %24

; <label>:24:                                     ; preds = %50, %5
  %25 = load i32, i32* %20, align 4
  %26 = icmp slt i32 %25, 100
  br i1 %26, label %27, label %53

; <label>:27:                                     ; preds = %24
  %28 = load float*, float** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load float, float* %12, align 4
  call void @Lawless416(float* %28, i32* %29, i32 %30, float %31, float* %14, float* %15)
  %32 = load float, float* %14, align 4
  %33 = fpext float %32 to double
  %34 = call double @llvm.fabs.f64(double %33)
  %35 = load float, float* %19, align 4
  %36 = fpext float %35 to double
  %37 = fcmp olt double %34, %36
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %27
  br label %53

; <label>:39:                                     ; preds = %27
  %40 = load float, float* %12, align 4
  %41 = load float, float* %14, align 4
  %42 = load float, float* %15, align 4
  %43 = fdiv float %41, %42
  %44 = fsub float %40, %43
  store float %44, float* %12, align 4
  %45 = load float, float* %12, align 4
  %46 = fpext float %45 to double
  %47 = fcmp ole double %46, 0.000000e+00
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %39
  store float 0x3F50624DE0000000, float* %12, align 4
  br label %49

; <label>:49:                                     ; preds = %48, %39
  br label %50

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %20, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %20, align 4
  br label %24

; <label>:53:                                     ; preds = %38, %24
  %54 = load i32, i32* %20, align 4
  %55 = icmp eq i32 %54, 100
  br i1 %55, label %56, label %144

; <label>:56:                                     ; preds = %53
  store float 0x3FC99999A0000000, float* %21, align 4
  store float 0x3FC99999A0000000, float* %22, align 4
  store float 0x3FC99999A0000000, float* %12, align 4
  %57 = load float*, float** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load float, float* %12, align 4
  call void @Lawless416(float* %57, i32* %58, i32 %59, float %60, float* %14, float* %15)
  %61 = load float, float* %14, align 4
  %62 = fpext float %61 to double
  %63 = fcmp olt double %62, 0.000000e+00
  br i1 %63, label %64, label %84

; <label>:64:                                     ; preds = %56
  br label %65

; <label>:65:                                     ; preds = %79, %64
  %66 = load float, float* %21, align 4
  %67 = fpext float %66 to double
  %68 = fsub double %67, 1.000000e-01
  %69 = fptrunc double %68 to float
  store float %69, float* %21, align 4
  %70 = load float, float* %21, align 4
  %71 = fpext float %70 to double
  %72 = fcmp olt double %71, 0.000000e+00
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %65
  store i32 0, i32* %6, align 4
  br label %196

; <label>:74:                                     ; preds = %65
  %75 = load float*, float** %7, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load float, float* %21, align 4
  call void @Lawless416(float* %75, i32* %76, i32 %77, float %78, float* %14, float* %15)
  br label %79

; <label>:79:                                     ; preds = %74
  %80 = load float, float* %14, align 4
  %81 = fpext float %80 to double
  %82 = fcmp olt double %81, 0.000000e+00
  br i1 %82, label %65, label %83

; <label>:83:                                     ; preds = %79
  br label %104

; <label>:84:                                     ; preds = %56
  br label %85

; <label>:85:                                     ; preds = %99, %84
  %86 = load float, float* %22, align 4
  %87 = fpext float %86 to double
  %88 = fadd double %87, 1.000000e-01
  %89 = fptrunc double %88 to float
  store float %89, float* %22, align 4
  %90 = load float*, float** %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load float, float* %22, align 4
  call void @Lawless416(float* %90, i32* %91, i32 %92, float %93, float* %14, float* %15)
  %94 = load float, float* %22, align 4
  %95 = fpext float %94 to double
  %96 = fcmp ogt double %95, 1.000000e+02
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %85
  store i32 0, i32* %6, align 4
  br label %196

; <label>:98:                                     ; preds = %85
  br label %99

; <label>:99:                                     ; preds = %98
  %100 = load float, float* %14, align 4
  %101 = fpext float %100 to double
  %102 = fcmp ogt double %101, 0.000000e+00
  br i1 %102, label %85, label %103

; <label>:103:                                    ; preds = %99
  br label %104

; <label>:104:                                    ; preds = %103, %83
  store i32 0, i32* %20, align 4
  br label %105

; <label>:105:                                    ; preds = %135, %104
  %106 = load i32, i32* %20, align 4
  %107 = icmp slt i32 %106, 100
  br i1 %107, label %108, label %138

; <label>:108:                                    ; preds = %105
  %109 = load float, float* %21, align 4
  %110 = load float, float* %22, align 4
  %111 = fadd float %109, %110
  %112 = fpext float %111 to double
  %113 = fdiv double %112, 2.000000e+00
  %114 = fptrunc double %113 to float
  store float %114, float* %23, align 4
  %115 = load float*, float** %7, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load float, float* %23, align 4
  call void @Lawless416(float* %115, i32* %116, i32 %117, float %118, float* %14, float* %15)
  %119 = load float, float* %14, align 4
  %120 = fpext float %119 to double
  %121 = call double @llvm.fabs.f64(double %120)
  %122 = load float, float* %19, align 4
  %123 = fpext float %122 to double
  %124 = fcmp olt double %121, %123
  br i1 %124, label %125, label %126

; <label>:125:                                    ; preds = %108
  br label %138

; <label>:126:                                    ; preds = %108
  %127 = load float, float* %14, align 4
  %128 = fpext float %127 to double
  %129 = fcmp ogt double %128, 0.000000e+00
  br i1 %129, label %130, label %132

; <label>:130:                                    ; preds = %126
  %131 = load float, float* %23, align 4
  store float %131, float* %21, align 4
  br label %134

; <label>:132:                                    ; preds = %126
  %133 = load float, float* %23, align 4
  store float %133, float* %22, align 4
  br label %134

; <label>:134:                                    ; preds = %132, %130
  br label %135

; <label>:135:                                    ; preds = %134
  %136 = load i32, i32* %20, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %20, align 4
  br label %105

; <label>:138:                                    ; preds = %125, %105
  %139 = load i32, i32* %20, align 4
  %140 = icmp eq i32 %139, 100
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %138
  store i32 0, i32* %6, align 4
  br label %196

; <label>:142:                                    ; preds = %138
  %143 = load float, float* %23, align 4
  store float %143, float* %12, align 4
  br label %144

; <label>:144:                                    ; preds = %142, %53
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %18, align 8
  store i32 0, i32* %20, align 4
  br label %145

; <label>:145:                                    ; preds = %179, %144
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %182

; <label>:149:                                    ; preds = %145
  %150 = load i32*, i32** %8, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %149
  br label %160

; <label>:153:                                    ; preds = %149
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sitofp i32 %158 to double
  br label %160

; <label>:160:                                    ; preds = %153, %152
  %161 = phi double [ 1.000000e+00, %152 ], [ %159, %153 ]
  store double %161, double* %17, align 8
  %162 = load double, double* %17, align 8
  %163 = load float, float* %12, align 4
  %164 = fmul float -1.000000e+00, %163
  %165 = load float*, float** %7, align 8
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  %169 = load float, float* %168, align 4
  %170 = fmul float %164, %169
  %171 = fpext float %170 to double
  %172 = call double @exp(double %171) #5
  %173 = fmul double %162, %172
  %174 = load double, double* %16, align 8
  %175 = fadd double %174, %173
  store double %175, double* %16, align 8
  %176 = load double, double* %17, align 8
  %177 = load double, double* %18, align 8
  %178 = fadd double %177, %176
  store double %178, double* %18, align 8
  br label %179

; <label>:179:                                    ; preds = %160
  %180 = load i32, i32* %20, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %20, align 4
  br label %145

; <label>:182:                                    ; preds = %145
  %183 = load double, double* %16, align 8
  %184 = load double, double* %18, align 8
  %185 = fdiv double %183, %184
  %186 = call double @log(double %185) #5
  %187 = fmul double -1.000000e+00, %186
  %188 = load float, float* %12, align 4
  %189 = fpext float %188 to double
  %190 = fdiv double %187, %189
  %191 = fptrunc double %190 to float
  store float %191, float* %13, align 4
  %192 = load float, float* %12, align 4
  %193 = load float*, float** %11, align 8
  store float %192, float* %193, align 4
  %194 = load float, float* %13, align 4
  %195 = load float*, float** %10, align 8
  store float %194, float* %195, align 4
  store i32 1, i32* %6, align 4
  br label %196

; <label>:196:                                    ; preds = %182, %141, %97, %73
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

; Function Attrs: noinline nounwind optnone uwtable
define double @ExtremeValueE(float, float, float, i32) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = load float, float* %5, align 4
  %12 = load float, float* %6, align 4
  %13 = load float, float* %7, align 4
  %14 = call double @ExtremeValueP(float %11, float %12, float %13)
  %15 = fmul double %10, %14
  ret double %15
}

declare double @IncompleteGamma(double, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @GaussianFitHistogram(%struct.histogram_s*, float) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.histogram_s*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.histogram_s* %0, %struct.histogram_s** %4, align 8
  store float %1, float* %5, align 4
  %13 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  call void @UnfitHistogram(%struct.histogram_s* %13)
  %14 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %15 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 1000
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %2
  %19 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %20 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %19, i32 0, i32 8
  store i32 0, i32* %20, align 8
  store i32 0, i32* %3, align 4
  br label %318

; <label>:21:                                     ; preds = %2
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %6, align 4
  %22 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %23 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %25

; <label>:25:                                     ; preds = %71, %21
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %28 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %26, %29
  br i1 %30, label %31, label %74

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = sitofp i32 %32 to float
  %34 = fpext float %33 to double
  %35 = fadd double %34, 5.000000e-01
  %36 = fptrunc double %35 to float
  store float %36, float* %8, align 4
  %37 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %38 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %42 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sitofp i32 %47 to float
  %49 = load float, float* %8, align 4
  %50 = fmul float %48, %49
  %51 = load float, float* %6, align 4
  %52 = fadd float %51, %50
  store float %52, float* %6, align 4
  %53 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %54 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %58 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to float
  %65 = load float, float* %8, align 4
  %66 = fmul float %64, %65
  %67 = load float, float* %8, align 4
  %68 = fmul float %66, %67
  %69 = load float, float* %7, align 4
  %70 = fadd float %69, %68
  store float %70, float* %7, align 4
  br label %71

; <label>:71:                                     ; preds = %31
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %25

; <label>:74:                                     ; preds = %25
  %75 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %76 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %75, i32 0, i32 8
  store i32 2, i32* %76, align 8
  %77 = load float, float* %6, align 4
  %78 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %79 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = sitofp i32 %80 to float
  %82 = fdiv float %77, %81
  %83 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %84 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %83, i32 0, i32 9
  %85 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 0, i64 0
  store float %82, float* %85, align 4
  %86 = load float, float* %7, align 4
  %87 = load float, float* %6, align 4
  %88 = load float, float* %6, align 4
  %89 = fmul float %87, %88
  %90 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %91 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %89, %93
  %95 = fsub float %86, %94
  %96 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %97 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sitofp i32 %99 to float
  %101 = fdiv float %95, %100
  %102 = fpext float %101 to double
  %103 = call double @sqrt(double %102) #5
  %104 = fptrunc double %103 to float
  %105 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %106 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %105, i32 0, i32 9
  %107 = getelementptr inbounds [3 x float], [3 x float]* %106, i64 0, i64 1
  store float %104, float* %107, align 4
  %108 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %109 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %112 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %110, %113
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 790, i64 %118)
  %120 = bitcast i8* %119 to float*
  %121 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %122 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %121, i32 0, i32 7
  store float* %120, float** %122, align 8
  store i32 0, i32* %12, align 4
  br label %123

; <label>:123:                                    ; preds = %134, %74
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %137

; <label>:127:                                    ; preds = %123
  %128 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %129 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %128, i32 0, i32 7
  %130 = load float*, float** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  store float 0.000000e+00, float* %133, align 4
  br label %134

; <label>:134:                                    ; preds = %127
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %123

; <label>:137:                                    ; preds = %123
  %138 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %139 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %9, align 4
  br label %141

; <label>:141:                                    ; preds = %205, %137
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %144 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp sle i32 %142, %145
  br i1 %146, label %147, label %208

; <label>:147:                                    ; preds = %141
  %148 = load i32, i32* %9, align 4
  %149 = sitofp i32 %148 to float
  %150 = fpext float %149 to double
  %151 = fadd double %150, 5.000000e-01
  %152 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %153 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %152, i32 0, i32 9
  %154 = getelementptr inbounds [3 x float], [3 x float]* %153, i64 0, i64 0
  %155 = load float, float* %154, align 4
  %156 = fpext float %155 to double
  %157 = fsub double %151, %156
  %158 = fptrunc double %157 to float
  store float %158, float* %8, align 4
  %159 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %160 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = sitofp i32 %161 to float
  %163 = fpext float %162 to double
  %164 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %165 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %164, i32 0, i32 9
  %166 = getelementptr inbounds [3 x float], [3 x float]* %165, i64 0, i64 1
  %167 = load float, float* %166, align 4
  %168 = fpext float %167 to double
  %169 = call double @sqrt(double 6.283180e+00) #5
  %170 = fmul double %168, %169
  %171 = fdiv double 1.000000e+00, %170
  %172 = load float, float* %8, align 4
  %173 = fpext float %172 to double
  %174 = fmul double -1.000000e+00, %173
  %175 = load float, float* %8, align 4
  %176 = fpext float %175 to double
  %177 = fmul double %174, %176
  %178 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %179 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %178, i32 0, i32 9
  %180 = getelementptr inbounds [3 x float], [3 x float]* %179, i64 0, i64 1
  %181 = load float, float* %180, align 4
  %182 = fpext float %181 to double
  %183 = fmul double 2.000000e+00, %182
  %184 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %185 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %184, i32 0, i32 9
  %186 = getelementptr inbounds [3 x float], [3 x float]* %185, i64 0, i64 1
  %187 = load float, float* %186, align 4
  %188 = fpext float %187 to double
  %189 = fmul double %183, %188
  %190 = fdiv double %177, %189
  %191 = call double @exp(double %190) #5
  %192 = fmul double %171, %191
  %193 = fmul double %163, %192
  %194 = fptrunc double %193 to float
  %195 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %196 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %195, i32 0, i32 7
  %197 = load float*, float** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %200 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %198, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %197, i64 %203
  store float %194, float* %204, align 4
  br label %205

; <label>:205:                                    ; preds = %147
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %141

; <label>:208:                                    ; preds = %141
  %209 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %210 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %209, i32 0, i32 10
  store float 0.000000e+00, float* %210, align 8
  store i32 0, i32* %10, align 4
  %211 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %212 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %9, align 4
  br label %214

; <label>:214:                                    ; preds = %294, %208
  %215 = load i32, i32* %9, align 4
  %216 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %217 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp sle i32 %215, %218
  br i1 %219, label %220, label %297

; <label>:220:                                    ; preds = %214
  %221 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %222 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %221, i32 0, i32 7
  %223 = load float*, float** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %226 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %224, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %223, i64 %229
  %231 = load float, float* %230, align 4
  %232 = fpext float %231 to double
  %233 = fcmp oge double %232, 5.000000e+00
  br i1 %233, label %234, label %293

; <label>:234:                                    ; preds = %220
  %235 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %236 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %240 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %238, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %237, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = icmp sge i32 %245, 5
  br i1 %246, label %247, label %293

; <label>:247:                                    ; preds = %234
  %248 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %249 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %253 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %251, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %250, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = sitofp i32 %258 to float
  %260 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %261 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %260, i32 0, i32 7
  %262 = load float*, float** %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %265 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = sub nsw i32 %263, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %262, i64 %268
  %270 = load float, float* %269, align 4
  %271 = fsub float %259, %270
  store float %271, float* %8, align 4
  %272 = load float, float* %8, align 4
  %273 = load float, float* %8, align 4
  %274 = fmul float %272, %273
  %275 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %276 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %275, i32 0, i32 7
  %277 = load float*, float** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %280 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = sub nsw i32 %278, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %277, i64 %283
  %285 = load float, float* %284, align 4
  %286 = fdiv float %274, %285
  %287 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %288 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %287, i32 0, i32 10
  %289 = load float, float* %288, align 8
  %290 = fadd float %289, %286
  store float %290, float* %288, align 8
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %10, align 4
  br label %293

; <label>:293:                                    ; preds = %247, %234, %220
  br label %294

; <label>:294:                                    ; preds = %293
  %295 = load i32, i32* %9, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %9, align 4
  br label %214

; <label>:297:                                    ; preds = %214
  %298 = load i32, i32* %10, align 4
  %299 = icmp sgt i32 %298, 3
  br i1 %299, label %300, label %314

; <label>:300:                                    ; preds = %297
  %301 = load i32, i32* %10, align 4
  %302 = sub nsw i32 %301, 3
  %303 = sitofp i32 %302 to double
  %304 = fdiv double %303, 2.000000e+00
  %305 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %306 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %305, i32 0, i32 10
  %307 = load float, float* %306, align 8
  %308 = fpext float %307 to double
  %309 = fdiv double %308, 2.000000e+00
  %310 = call double @IncompleteGamma(double %304, double %309)
  %311 = fptrunc double %310 to float
  %312 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %313 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %312, i32 0, i32 11
  store float %311, float* %313, align 4
  br label %317

; <label>:314:                                    ; preds = %297
  %315 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %316 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %315, i32 0, i32 11
  store float 0.000000e+00, float* %316, align 4
  br label %317

; <label>:317:                                    ; preds = %314, %300
  store i32 1, i32* %3, align 4
  br label %318

; <label>:318:                                    ; preds = %317, %18
  %319 = load i32, i32* %3, align 4
  ret i32 %319
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @GaussianSetHistogram(%struct.histogram_s*, float, float) #0 {
  %4 = alloca %struct.histogram_s*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  store %struct.histogram_s* %0, %struct.histogram_s** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %12 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  call void @UnfitHistogram(%struct.histogram_s* %12)
  %13 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %14 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %13, i32 0, i32 8
  store i32 2, i32* %14, align 8
  %15 = load float, float* %5, align 4
  %16 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %17 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %16, i32 0, i32 9
  %18 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  store float %15, float* %18, align 4
  %19 = load float, float* %6, align 4
  %20 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %21 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %20, i32 0, i32 9
  %22 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 1
  store float %19, float* %22, align 4
  %23 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %24 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %27 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 845, i64 %33)
  %35 = bitcast i8* %34 to float*
  %36 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %37 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %36, i32 0, i32 7
  store float* %35, float** %37, align 8
  store i32 0, i32* %9, align 4
  br label %38

; <label>:38:                                     ; preds = %49, %3
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

; <label>:42:                                     ; preds = %38
  %43 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %44 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %43, i32 0, i32 7
  %45 = load float*, float** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  store float 0.000000e+00, float* %48, align 4
  br label %49

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %38

; <label>:52:                                     ; preds = %38
  %53 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %54 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  br label %56

; <label>:56:                                     ; preds = %120, %52
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %59 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %57, %60
  br i1 %61, label %62, label %123

; <label>:62:                                     ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = sitofp i32 %63 to float
  %65 = fpext float %64 to double
  %66 = fadd double %65, 5.000000e-01
  %67 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %68 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %67, i32 0, i32 9
  %69 = getelementptr inbounds [3 x float], [3 x float]* %68, i64 0, i64 0
  %70 = load float, float* %69, align 4
  %71 = fpext float %70 to double
  %72 = fsub double %66, %71
  %73 = fptrunc double %72 to float
  store float %73, float* %11, align 4
  %74 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %75 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = sitofp i32 %76 to float
  %78 = fpext float %77 to double
  %79 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %80 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %79, i32 0, i32 9
  %81 = getelementptr inbounds [3 x float], [3 x float]* %80, i64 0, i64 1
  %82 = load float, float* %81, align 4
  %83 = fpext float %82 to double
  %84 = call double @sqrt(double 6.283180e+00) #5
  %85 = fmul double %83, %84
  %86 = fdiv double 1.000000e+00, %85
  %87 = load float, float* %11, align 4
  %88 = fpext float %87 to double
  %89 = fmul double -1.000000e+00, %88
  %90 = load float, float* %11, align 4
  %91 = fpext float %90 to double
  %92 = fmul double %89, %91
  %93 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %94 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %93, i32 0, i32 9
  %95 = getelementptr inbounds [3 x float], [3 x float]* %94, i64 0, i64 1
  %96 = load float, float* %95, align 4
  %97 = fpext float %96 to double
  %98 = fmul double 2.000000e+00, %97
  %99 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %100 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %99, i32 0, i32 9
  %101 = getelementptr inbounds [3 x float], [3 x float]* %100, i64 0, i64 1
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = fmul double %98, %103
  %105 = fdiv double %92, %104
  %106 = call double @exp(double %105) #5
  %107 = fmul double %86, %106
  %108 = fmul double %78, %107
  %109 = fptrunc double %108 to float
  %110 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %111 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %110, i32 0, i32 7
  %112 = load float*, float** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %115 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %112, i64 %118
  store float %109, float* %119, align 4
  br label %120

; <label>:120:                                    ; preds = %62
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %56

; <label>:123:                                    ; preds = %56
  %124 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %125 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %124, i32 0, i32 10
  store float 0.000000e+00, float* %125, align 8
  store i32 0, i32* %10, align 4
  %126 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %127 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %7, align 4
  br label %129

; <label>:129:                                    ; preds = %209, %123
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %132 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp sle i32 %130, %133
  br i1 %134, label %135, label %212

; <label>:135:                                    ; preds = %129
  %136 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %137 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %136, i32 0, i32 7
  %138 = load float*, float** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %141 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %139, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %138, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fpext float %146 to double
  %148 = fcmp oge double %147, 5.000000e+00
  br i1 %148, label %149, label %208

; <label>:149:                                    ; preds = %135
  %150 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %151 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %155 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %153, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp sge i32 %160, 5
  br i1 %161, label %162, label %208

; <label>:162:                                    ; preds = %149
  %163 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %164 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %168 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %166, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %165, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sitofp i32 %173 to float
  %175 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %176 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %175, i32 0, i32 7
  %177 = load float*, float** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %180 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %177, i64 %183
  %185 = load float, float* %184, align 4
  %186 = fsub float %174, %185
  store float %186, float* %11, align 4
  %187 = load float, float* %11, align 4
  %188 = load float, float* %11, align 4
  %189 = fmul float %187, %188
  %190 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %191 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %190, i32 0, i32 7
  %192 = load float*, float** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %195 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %193, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %192, i64 %198
  %200 = load float, float* %199, align 4
  %201 = fdiv float %189, %200
  %202 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %203 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %202, i32 0, i32 10
  %204 = load float, float* %203, align 8
  %205 = fadd float %204, %201
  store float %205, float* %203, align 8
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %208

; <label>:208:                                    ; preds = %162, %149, %135
  br label %209

; <label>:209:                                    ; preds = %208
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %129

; <label>:212:                                    ; preds = %129
  %213 = load i32, i32* %10, align 4
  %214 = icmp sgt i32 %213, 1
  br i1 %214, label %215, label %229

; <label>:215:                                    ; preds = %212
  %216 = load i32, i32* %10, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sitofp i32 %217 to double
  %219 = fdiv double %218, 2.000000e+00
  %220 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %221 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %220, i32 0, i32 10
  %222 = load float, float* %221, align 8
  %223 = fpext float %222 to double
  %224 = fdiv double %223, 2.000000e+00
  %225 = call double @IncompleteGamma(double %219, double %224)
  %226 = fptrunc double %225 to float
  %227 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %228 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %227, i32 0, i32 11
  store float %226, float* %228, align 4
  br label %232

; <label>:229:                                    ; preds = %212
  %230 = load %struct.histogram_s*, %struct.histogram_s** %4, align 8
  %231 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %230, i32 0, i32 11
  store float 0.000000e+00, float* %231, align 4
  br label %232

; <label>:232:                                    ; preds = %229, %215
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define double @EVDDensity(float, float, float) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load float, float* %6, align 4
  %8 = fpext float %7 to double
  %9 = load float, float* %6, align 4
  %10 = fpext float %9 to double
  %11 = fmul double -1.000000e+00, %10
  %12 = load float, float* %4, align 4
  %13 = load float, float* %5, align 4
  %14 = fsub float %12, %13
  %15 = fpext float %14 to double
  %16 = fmul double %11, %15
  %17 = load float, float* %6, align 4
  %18 = fpext float %17 to double
  %19 = fmul double -1.000000e+00, %18
  %20 = load float, float* %4, align 4
  %21 = load float, float* %5, align 4
  %22 = fsub float %20, %21
  %23 = fpext float %22 to double
  %24 = fmul double %19, %23
  %25 = call double @exp(double %24) #5
  %26 = fsub double %16, %25
  %27 = call double @exp(double %26) #5
  %28 = fmul double %8, %27
  ret double %28
}

; Function Attrs: noinline nounwind optnone uwtable
define double @ExtremeValueP2(float, float, float, i32) #0 {
  %5 = alloca double, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = sitofp i32 %11 to double
  %13 = load float, float* %6, align 4
  %14 = load float, float* %7, align 4
  %15 = load float, float* %8, align 4
  %16 = call double @ExtremeValueP(float %13, float %14, float %15)
  %17 = fmul double %12, %16
  store double %17, double* %10, align 8
  %18 = load double, double* %10, align 8
  %19 = fcmp olt double %18, 0x3E7AD7F29ABCAF48
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %4
  %21 = load double, double* %10, align 8
  store double %21, double* %5, align 8
  br label %27

; <label>:22:                                     ; preds = %4
  %23 = load double, double* %10, align 8
  %24 = fmul double -1.000000e+00, %23
  %25 = call double @exp(double %24) #5
  %26 = fsub double 1.000000e+00, %25
  store double %26, double* %5, align 8
  br label %27

; <label>:27:                                     ; preds = %22, %20
  %28 = load double, double* %5, align 8
  ret double %28
}

; Function Attrs: noinline nounwind optnone uwtable
define float @EVDrandom(float, float) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %16, %2
  %7 = load float, float* %5, align 4
  %8 = fpext float %7 to double
  %9 = fcmp oeq double %8, 0.000000e+00
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %6
  %11 = load float, float* %5, align 4
  %12 = fpext float %11 to double
  %13 = fcmp oeq double %12, 1.000000e+00
  br label %14

; <label>:14:                                     ; preds = %10, %6
  %15 = phi i1 [ true, %6 ], [ %13, %10 ]
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %14
  %17 = call double @sre_random()
  %18 = fptrunc double %17 to float
  store float %18, float* %5, align 4
  br label %6

; <label>:19:                                     ; preds = %14
  %20 = load float, float* %3, align 4
  %21 = fpext float %20 to double
  %22 = load float, float* %5, align 4
  %23 = fpext float %22 to double
  %24 = call double @log(double %23) #5
  %25 = fmul double -1.000000e+00, %24
  %26 = call double @log(double %25) #5
  %27 = load float, float* %4, align 4
  %28 = fpext float %27 to double
  %29 = fdiv double %26, %28
  %30 = fsub double %21, %29
  %31 = fptrunc double %30 to float
  ret float %31
}

declare double @sre_random() #1

; Function Attrs: noinline nounwind optnone uwtable
define void @Lawless416(float*, i32*, i32, float, float*, float*) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %116, %6
  %21 = load i32, i32* %19, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %119

; <label>:24:                                     ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  br label %35

; <label>:28:                                     ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %19, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to double
  br label %35

; <label>:35:                                     ; preds = %28, %27
  %36 = phi double [ 1.000000e+00, %27 ], [ %34, %28 ]
  store double %36, double* %17, align 8
  %37 = load double, double* %17, align 8
  %38 = load float*, float** %7, align 8
  %39 = load i32, i32* %19, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = fmul double %37, %43
  %45 = load double, double* %16, align 8
  %46 = fadd double %45, %44
  store double %46, double* %16, align 8
  %47 = load double, double* %17, align 8
  %48 = load float*, float** %7, align 8
  %49 = load i32, i32* %19, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = fpext float %52 to double
  %54 = fmul double %47, %53
  %55 = load float, float* %10, align 4
  %56 = fpext float %55 to double
  %57 = fmul double -1.000000e+00, %56
  %58 = load float*, float** %7, align 8
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = fpext float %62 to double
  %64 = fmul double %57, %63
  %65 = call double @exp(double %64) #5
  %66 = fmul double %54, %65
  %67 = load double, double* %14, align 8
  %68 = fadd double %67, %66
  store double %68, double* %14, align 8
  %69 = load double, double* %17, align 8
  %70 = load float*, float** %7, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fpext float %74 to double
  %76 = fmul double %69, %75
  %77 = load float*, float** %7, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fpext float %81 to double
  %83 = fmul double %76, %82
  %84 = load float, float* %10, align 4
  %85 = fpext float %84 to double
  %86 = fmul double -1.000000e+00, %85
  %87 = load float*, float** %7, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fpext float %91 to double
  %93 = fmul double %86, %92
  %94 = call double @exp(double %93) #5
  %95 = fmul double %83, %94
  %96 = load double, double* %15, align 8
  %97 = fadd double %96, %95
  store double %97, double* %15, align 8
  %98 = load double, double* %17, align 8
  %99 = load float, float* %10, align 4
  %100 = fpext float %99 to double
  %101 = fmul double -1.000000e+00, %100
  %102 = load float*, float** %7, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fpext float %106 to double
  %108 = fmul double %101, %107
  %109 = call double @exp(double %108) #5
  %110 = fmul double %98, %109
  %111 = load double, double* %13, align 8
  %112 = fadd double %111, %110
  store double %112, double* %13, align 8
  %113 = load double, double* %17, align 8
  %114 = load double, double* %18, align 8
  %115 = fadd double %114, %113
  store double %115, double* %18, align 8
  br label %116

; <label>:116:                                    ; preds = %35
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %20

; <label>:119:                                    ; preds = %20
  %120 = load float, float* %10, align 4
  %121 = fpext float %120 to double
  %122 = fdiv double 1.000000e+00, %121
  %123 = load double, double* %16, align 8
  %124 = load double, double* %18, align 8
  %125 = fdiv double %123, %124
  %126 = fsub double %122, %125
  %127 = load double, double* %14, align 8
  %128 = load double, double* %13, align 8
  %129 = fdiv double %127, %128
  %130 = fadd double %126, %129
  %131 = fptrunc double %130 to float
  %132 = load float*, float** %11, align 8
  store float %131, float* %132, align 4
  %133 = load double, double* %14, align 8
  %134 = load double, double* %13, align 8
  %135 = fdiv double %133, %134
  %136 = load double, double* %14, align 8
  %137 = load double, double* %13, align 8
  %138 = fdiv double %136, %137
  %139 = fmul double %135, %138
  %140 = load double, double* %15, align 8
  %141 = load double, double* %13, align 8
  %142 = fdiv double %140, %141
  %143 = fsub double %139, %142
  %144 = load float, float* %10, align 4
  %145 = load float, float* %10, align 4
  %146 = fmul float %144, %145
  %147 = fpext float %146 to double
  %148 = fdiv double 1.000000e+00, %147
  %149 = fsub double %143, %148
  %150 = fptrunc double %149 to float
  %151 = load float*, float** %12, align 8
  store float %150, float* %151, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Lawless422(float*, i32*, i32, i32, float, float, float*, float*) #0 {
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  store double 0.000000e+00, double* %22, align 8
  store double 0.000000e+00, double* %19, align 8
  store double 0.000000e+00, double* %20, align 8
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %17, align 8
  store i32 0, i32* %23, align 4
  br label %24

; <label>:24:                                     ; preds = %120, %8
  %25 = load i32, i32* %23, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %123

; <label>:28:                                     ; preds = %24
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  br label %39

; <label>:32:                                     ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %23, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sitofp i32 %37 to double
  br label %39

; <label>:39:                                     ; preds = %32, %31
  %40 = phi double [ 1.000000e+00, %31 ], [ %38, %32 ]
  store double %40, double* %21, align 8
  %41 = load double, double* %21, align 8
  %42 = load float*, float** %9, align 8
  %43 = load i32, i32* %23, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = fmul double %41, %47
  %49 = load double, double* %20, align 8
  %50 = fadd double %49, %48
  store double %50, double* %20, align 8
  %51 = load double, double* %21, align 8
  %52 = load float, float* %14, align 4
  %53 = fpext float %52 to double
  %54 = fmul double -1.000000e+00, %53
  %55 = load float*, float** %9, align 8
  %56 = load i32, i32* %23, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  %61 = fmul double %54, %60
  %62 = call double @exp(double %61) #5
  %63 = fmul double %51, %62
  %64 = load double, double* %17, align 8
  %65 = fadd double %64, %63
  store double %65, double* %17, align 8
  %66 = load double, double* %21, align 8
  %67 = load float*, float** %9, align 8
  %68 = load i32, i32* %23, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %67, i64 %69
  %71 = load float, float* %70, align 4
  %72 = fpext float %71 to double
  %73 = fmul double %66, %72
  %74 = load float, float* %14, align 4
  %75 = fpext float %74 to double
  %76 = fmul double -1.000000e+00, %75
  %77 = load float*, float** %9, align 8
  %78 = load i32, i32* %23, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fpext float %81 to double
  %83 = fmul double %76, %82
  %84 = call double @exp(double %83) #5
  %85 = fmul double %73, %84
  %86 = load double, double* %18, align 8
  %87 = fadd double %86, %85
  store double %87, double* %18, align 8
  %88 = load double, double* %21, align 8
  %89 = load float*, float** %9, align 8
  %90 = load i32, i32* %23, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fpext float %93 to double
  %95 = fmul double %88, %94
  %96 = load float*, float** %9, align 8
  %97 = load i32, i32* %23, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fpext float %100 to double
  %102 = fmul double %95, %101
  %103 = load float, float* %14, align 4
  %104 = fpext float %103 to double
  %105 = fmul double -1.000000e+00, %104
  %106 = load float*, float** %9, align 8
  %107 = load i32, i32* %23, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fpext float %110 to double
  %112 = fmul double %105, %111
  %113 = call double @exp(double %112) #5
  %114 = fmul double %102, %113
  %115 = load double, double* %19, align 8
  %116 = fadd double %115, %114
  store double %116, double* %19, align 8
  %117 = load double, double* %21, align 8
  %118 = load double, double* %22, align 8
  %119 = fadd double %118, %117
  store double %119, double* %22, align 8
  br label %120

; <label>:120:                                    ; preds = %39
  %121 = load i32, i32* %23, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %23, align 4
  br label %24

; <label>:123:                                    ; preds = %24
  %124 = load i32, i32* %12, align 4
  %125 = sitofp i32 %124 to double
  %126 = load float, float* %14, align 4
  %127 = fpext float %126 to double
  %128 = fmul double -1.000000e+00, %127
  %129 = load float, float* %13, align 4
  %130 = fpext float %129 to double
  %131 = fmul double %128, %130
  %132 = call double @exp(double %131) #5
  %133 = fmul double %125, %132
  %134 = load double, double* %17, align 8
  %135 = fadd double %134, %133
  store double %135, double* %17, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sitofp i32 %136 to double
  %138 = load float, float* %13, align 4
  %139 = fpext float %138 to double
  %140 = fmul double %137, %139
  %141 = load float, float* %14, align 4
  %142 = fpext float %141 to double
  %143 = fmul double -1.000000e+00, %142
  %144 = load float, float* %13, align 4
  %145 = fpext float %144 to double
  %146 = fmul double %143, %145
  %147 = call double @exp(double %146) #5
  %148 = fmul double %140, %147
  %149 = load double, double* %18, align 8
  %150 = fadd double %149, %148
  store double %150, double* %18, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sitofp i32 %151 to double
  %153 = load float, float* %13, align 4
  %154 = fpext float %153 to double
  %155 = fmul double %152, %154
  %156 = load float, float* %13, align 4
  %157 = fpext float %156 to double
  %158 = fmul double %155, %157
  %159 = load float, float* %14, align 4
  %160 = fpext float %159 to double
  %161 = fmul double -1.000000e+00, %160
  %162 = load float, float* %13, align 4
  %163 = fpext float %162 to double
  %164 = fmul double %161, %163
  %165 = call double @exp(double %164) #5
  %166 = fmul double %158, %165
  %167 = load double, double* %19, align 8
  %168 = fadd double %167, %166
  store double %168, double* %19, align 8
  %169 = load float, float* %14, align 4
  %170 = fpext float %169 to double
  %171 = fdiv double 1.000000e+00, %170
  %172 = load double, double* %20, align 8
  %173 = load double, double* %22, align 8
  %174 = fdiv double %172, %173
  %175 = fsub double %171, %174
  %176 = load double, double* %18, align 8
  %177 = load double, double* %17, align 8
  %178 = fdiv double %176, %177
  %179 = fadd double %175, %178
  %180 = fptrunc double %179 to float
  %181 = load float*, float** %15, align 8
  store float %180, float* %181, align 4
  %182 = load double, double* %18, align 8
  %183 = load double, double* %17, align 8
  %184 = fdiv double %182, %183
  %185 = load double, double* %18, align 8
  %186 = load double, double* %17, align 8
  %187 = fdiv double %185, %186
  %188 = fmul double %184, %187
  %189 = load double, double* %19, align 8
  %190 = load double, double* %17, align 8
  %191 = fdiv double %189, %190
  %192 = fsub double %188, %191
  %193 = load float, float* %14, align 4
  %194 = load float, float* %14, align 4
  %195 = fmul float %193, %194
  %196 = fpext float %195 to double
  %197 = fdiv double 1.000000e+00, %196
  %198 = fsub double %192, %197
  %199 = fptrunc double %198 to float
  %200 = load float*, float** %16, align 8
  store float %199, float* %200, align 4
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
