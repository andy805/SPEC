; ModuleID = 'tophits.c'
source_filename = "tophits.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tophit_s = type { %struct.hit_s**, %struct.hit_s*, i32, i32, i32 }
%struct.hit_s = type { double, float, double, float, double, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s* }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"tophits.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"tophits_s report:\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"     Total hits:           %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"     Satisfying E cutoff:  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"     Total memory:         %dK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.tophit_s* @AllocTophits(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tophit_s*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 82, i64 32)
  %5 = bitcast i8* %4 to %struct.tophit_s*
  store %struct.tophit_s* %5, %struct.tophit_s** %3, align 8
  %6 = load %struct.tophit_s*, %struct.tophit_s** %3, align 8
  %7 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %6, i32 0, i32 0
  store %struct.hit_s** null, %struct.hit_s*** %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 104
  %11 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 84, i64 %10)
  %12 = bitcast i8* %11 to %struct.hit_s*
  %13 = load %struct.tophit_s*, %struct.tophit_s** %3, align 8
  %14 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %13, i32 0, i32 1
  store %struct.hit_s* %12, %struct.hit_s** %14, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.tophit_s*, %struct.tophit_s** %3, align 8
  %17 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.tophit_s*, %struct.tophit_s** %3, align 8
  %19 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %18, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.tophit_s*, %struct.tophit_s** %3, align 8
  %22 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tophit_s*, %struct.tophit_s** %3, align 8
  ret %struct.tophit_s* %23
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @GrowTophits(%struct.tophit_s*) #0 {
  %2 = alloca %struct.tophit_s*, align 8
  store %struct.tophit_s* %0, %struct.tophit_s** %2, align 8
  %3 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %4 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %3, i32 0, i32 1
  %5 = load %struct.hit_s*, %struct.hit_s** %4, align 8
  %6 = bitcast %struct.hit_s* %5 to i8*
  %7 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %8 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %11 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %9, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 104
  %16 = call i8* @sre_realloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 93, i8* %6, i64 %15)
  %17 = bitcast i8* %16 to %struct.hit_s*
  %18 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %19 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %18, i32 0, i32 1
  store %struct.hit_s* %17, %struct.hit_s** %19, align 8
  %20 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %21 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %24 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 8
  ret void
}

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @FreeTophits(%struct.tophit_s*) #0 {
  %2 = alloca %struct.tophit_s*, align 8
  %3 = alloca i32, align 4
  store %struct.tophit_s* %0, %struct.tophit_s** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %87, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %7 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %90

; <label>:10:                                     ; preds = %4
  %11 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %12 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %11, i32 0, i32 1
  %13 = load %struct.hit_s*, %struct.hit_s** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %13, i64 %15
  %17 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %16, i32 0, i32 16
  %18 = load %struct.fancyali_s*, %struct.fancyali_s** %17, align 8
  %19 = icmp ne %struct.fancyali_s* %18, null
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %10
  %21 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %22 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %21, i32 0, i32 1
  %23 = load %struct.hit_s*, %struct.hit_s** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %23, i64 %25
  %27 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %26, i32 0, i32 16
  %28 = load %struct.fancyali_s*, %struct.fancyali_s** %27, align 8
  call void @FreeFancyAli(%struct.fancyali_s* %28)
  br label %29

; <label>:29:                                     ; preds = %20, %10
  %30 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %31 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %30, i32 0, i32 1
  %32 = load %struct.hit_s*, %struct.hit_s** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %32, i64 %34
  %36 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

; <label>:39:                                     ; preds = %29
  %40 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %41 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %40, i32 0, i32 1
  %42 = load %struct.hit_s*, %struct.hit_s** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %42, i64 %44
  %46 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  call void @free(i8* %47) #4
  br label %48

; <label>:48:                                     ; preds = %39, %29
  %49 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %50 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %49, i32 0, i32 1
  %51 = load %struct.hit_s*, %struct.hit_s** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %51, i64 %53
  %55 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %54, i32 0, i32 6
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %67

; <label>:58:                                     ; preds = %48
  %59 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %60 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %59, i32 0, i32 1
  %61 = load %struct.hit_s*, %struct.hit_s** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %61, i64 %63
  %65 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  call void @free(i8* %66) #4
  br label %67

; <label>:67:                                     ; preds = %58, %48
  %68 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %69 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %68, i32 0, i32 1
  %70 = load %struct.hit_s*, %struct.hit_s** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %70, i64 %72
  %74 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %73, i32 0, i32 7
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %86

; <label>:77:                                     ; preds = %67
  %78 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %79 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %78, i32 0, i32 1
  %80 = load %struct.hit_s*, %struct.hit_s** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %80, i64 %82
  %84 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %83, i32 0, i32 7
  %85 = load i8*, i8** %84, align 8
  call void @free(i8* %85) #4
  br label %86

; <label>:86:                                     ; preds = %77, %67
  br label %87

; <label>:87:                                     ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %4

; <label>:90:                                     ; preds = %4
  %91 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %92 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %91, i32 0, i32 1
  %93 = load %struct.hit_s*, %struct.hit_s** %92, align 8
  %94 = bitcast %struct.hit_s* %93 to i8*
  call void @free(i8* %94) #4
  %95 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %96 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %95, i32 0, i32 0
  %97 = load %struct.hit_s**, %struct.hit_s*** %96, align 8
  %98 = icmp ne %struct.hit_s** %97, null
  br i1 %98, label %99, label %104

; <label>:99:                                     ; preds = %90
  %100 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %101 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %100, i32 0, i32 0
  %102 = load %struct.hit_s**, %struct.hit_s*** %101, align 8
  %103 = bitcast %struct.hit_s** %102 to i8*
  call void @free(i8* %103) #4
  br label %104

; <label>:104:                                    ; preds = %99, %90
  %105 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %106 = bitcast %struct.tophit_s* %105 to i8*
  call void @free(i8* %106) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @FreeFancyAli(%struct.fancyali_s*) #0 {
  %2 = alloca %struct.fancyali_s*, align 8
  store %struct.fancyali_s* %0, %struct.fancyali_s** %2, align 8
  %3 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %4 = icmp ne %struct.fancyali_s* %3, null
  br i1 %4, label %5, label %71

; <label>:5:                                      ; preds = %1
  %6 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %7 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %5
  %11 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %12 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* %13) #4
  br label %14

; <label>:14:                                     ; preds = %10, %5
  %15 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %16 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %14
  %20 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %21 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  call void @free(i8* %22) #4
  br label %23

; <label>:23:                                     ; preds = %19, %14
  %24 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %25 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %23
  %29 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %30 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  call void @free(i8* %31) #4
  br label %32

; <label>:32:                                     ; preds = %28, %23
  %33 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %34 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %32
  %38 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %39 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  call void @free(i8* %40) #4
  br label %41

; <label>:41:                                     ; preds = %37, %32
  %42 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %43 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

; <label>:46:                                     ; preds = %41
  %47 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %48 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  call void @free(i8* %49) #4
  br label %50

; <label>:50:                                     ; preds = %46, %41
  %51 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %52 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %50
  %56 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %57 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %56, i32 0, i32 6
  %58 = load i8*, i8** %57, align 8
  call void @free(i8* %58) #4
  br label %59

; <label>:59:                                     ; preds = %55, %50
  %60 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %61 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %60, i32 0, i32 7
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %59
  %65 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %66 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %65, i32 0, i32 7
  %67 = load i8*, i8** %66, align 8
  call void @free(i8* %67) #4
  br label %68

; <label>:68:                                     ; preds = %64, %59
  %69 = load %struct.fancyali_s*, %struct.fancyali_s** %2, align 8
  %70 = bitcast %struct.fancyali_s* %69 to i8*
  call void @free(i8* %70) #4
  br label %71

; <label>:71:                                     ; preds = %68, %1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define %struct.fancyali_s* @AllocFancyAli() #0 {
  %1 = alloca %struct.fancyali_s*, align 8
  %2 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 117, i64 72)
  %3 = bitcast i8* %2 to %struct.fancyali_s*
  store %struct.fancyali_s* %3, %struct.fancyali_s** %1, align 8
  %4 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  %5 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %4, i32 0, i32 4
  store i8* null, i8** %5, align 8
  %6 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  %7 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %6, i32 0, i32 3
  store i8* null, i8** %7, align 8
  %8 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  %9 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %8, i32 0, i32 2
  store i8* null, i8** %9, align 8
  %10 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  %11 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %10, i32 0, i32 1
  store i8* null, i8** %11, align 8
  %12 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  %13 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %12, i32 0, i32 0
  store i8* null, i8** %13, align 8
  %14 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  %15 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %14, i32 0, i32 7
  store i8* null, i8** %15, align 8
  %16 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  %17 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %16, i32 0, i32 6
  store i8* null, i8** %17, align 8
  %18 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  %19 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %18, i32 0, i32 9
  store i32 0, i32* %19, align 4
  %20 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  %21 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %20, i32 0, i32 8
  store i32 0, i32* %21, align 8
  %22 = load %struct.fancyali_s*, %struct.fancyali_s** %1, align 8
  ret %struct.fancyali_s* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define void @RegisterHit(%struct.tophit_s*, double, double, float, double, float, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s*) #0 {
  %19 = alloca %struct.tophit_s*, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca float, align 4
  %23 = alloca double, align 8
  %24 = alloca float, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.fancyali_s*, align 8
  store %struct.tophit_s* %0, %struct.tophit_s** %19, align 8
  store double %1, double* %20, align 8
  store double %2, double* %21, align 8
  store float %3, float* %22, align 4
  store double %4, double* %23, align 8
  store float %5, float* %24, align 4
  store i8* %6, i8** %25, align 8
  store i8* %7, i8** %26, align 8
  store i8* %8, i8** %27, align 8
  store i32 %9, i32* %28, align 4
  store i32 %10, i32* %29, align 4
  store i32 %11, i32* %30, align 4
  store i32 %12, i32* %31, align 4
  store i32 %13, i32* %32, align 4
  store i32 %14, i32* %33, align 4
  store i32 %15, i32* %34, align 4
  store i32 %16, i32* %35, align 4
  store %struct.fancyali_s* %17, %struct.fancyali_s** %36, align 8
  %37 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %38 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %41 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %18
  %45 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  call void @GrowTophits(%struct.tophit_s* %45)
  br label %46

; <label>:46:                                     ; preds = %44, %18
  %47 = load i8*, i8** %25, align 8
  %48 = call i8* @Strdup(i8* %47)
  %49 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %50 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %49, i32 0, i32 1
  %51 = load %struct.hit_s*, %struct.hit_s** %50, align 8
  %52 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %53 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %51, i64 %55
  %57 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %56, i32 0, i32 5
  store i8* %48, i8** %57, align 8
  %58 = load i8*, i8** %26, align 8
  %59 = call i8* @Strdup(i8* %58)
  %60 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %61 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %60, i32 0, i32 1
  %62 = load %struct.hit_s*, %struct.hit_s** %61, align 8
  %63 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %64 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %62, i64 %66
  %68 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %67, i32 0, i32 6
  store i8* %59, i8** %68, align 8
  %69 = load i8*, i8** %27, align 8
  %70 = call i8* @Strdup(i8* %69)
  %71 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %72 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %71, i32 0, i32 1
  %73 = load %struct.hit_s*, %struct.hit_s** %72, align 8
  %74 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %75 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %73, i64 %77
  %79 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %78, i32 0, i32 7
  store i8* %70, i8** %79, align 8
  %80 = load double, double* %20, align 8
  %81 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %82 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %81, i32 0, i32 1
  %83 = load %struct.hit_s*, %struct.hit_s** %82, align 8
  %84 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %85 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %83, i64 %87
  %89 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %88, i32 0, i32 0
  store double %80, double* %89, align 8
  %90 = load double, double* %21, align 8
  %91 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %92 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %91, i32 0, i32 1
  %93 = load %struct.hit_s*, %struct.hit_s** %92, align 8
  %94 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %95 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %93, i64 %97
  %99 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %98, i32 0, i32 2
  store double %90, double* %99, align 8
  %100 = load float, float* %22, align 4
  %101 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %102 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %101, i32 0, i32 1
  %103 = load %struct.hit_s*, %struct.hit_s** %102, align 8
  %104 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %105 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %103, i64 %107
  %109 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %108, i32 0, i32 1
  store float %100, float* %109, align 8
  %110 = load double, double* %23, align 8
  %111 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %112 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %111, i32 0, i32 1
  %113 = load %struct.hit_s*, %struct.hit_s** %112, align 8
  %114 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %115 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %113, i64 %117
  %119 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %118, i32 0, i32 4
  store double %110, double* %119, align 8
  %120 = load float, float* %24, align 4
  %121 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %122 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %121, i32 0, i32 1
  %123 = load %struct.hit_s*, %struct.hit_s** %122, align 8
  %124 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %125 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %123, i64 %127
  %129 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %128, i32 0, i32 3
  store float %120, float* %129, align 8
  %130 = load i32, i32* %28, align 4
  %131 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %132 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %131, i32 0, i32 1
  %133 = load %struct.hit_s*, %struct.hit_s** %132, align 8
  %134 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %135 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %133, i64 %137
  %139 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %138, i32 0, i32 8
  store i32 %130, i32* %139, align 8
  %140 = load i32, i32* %29, align 4
  %141 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %142 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %141, i32 0, i32 1
  %143 = load %struct.hit_s*, %struct.hit_s** %142, align 8
  %144 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %145 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %143, i64 %147
  %149 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %148, i32 0, i32 9
  store i32 %140, i32* %149, align 4
  %150 = load i32, i32* %30, align 4
  %151 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %152 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %151, i32 0, i32 1
  %153 = load %struct.hit_s*, %struct.hit_s** %152, align 8
  %154 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %155 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %153, i64 %157
  %159 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %158, i32 0, i32 10
  store i32 %150, i32* %159, align 8
  %160 = load i32, i32* %31, align 4
  %161 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %162 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %161, i32 0, i32 1
  %163 = load %struct.hit_s*, %struct.hit_s** %162, align 8
  %164 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %165 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %163, i64 %167
  %169 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %168, i32 0, i32 11
  store i32 %160, i32* %169, align 4
  %170 = load i32, i32* %32, align 4
  %171 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %172 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %171, i32 0, i32 1
  %173 = load %struct.hit_s*, %struct.hit_s** %172, align 8
  %174 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %175 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %173, i64 %177
  %179 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %178, i32 0, i32 12
  store i32 %170, i32* %179, align 8
  %180 = load i32, i32* %33, align 4
  %181 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %182 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %181, i32 0, i32 1
  %183 = load %struct.hit_s*, %struct.hit_s** %182, align 8
  %184 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %185 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %183, i64 %187
  %189 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %188, i32 0, i32 13
  store i32 %180, i32* %189, align 4
  %190 = load i32, i32* %34, align 4
  %191 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %192 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %191, i32 0, i32 1
  %193 = load %struct.hit_s*, %struct.hit_s** %192, align 8
  %194 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %195 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %193, i64 %197
  %199 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %198, i32 0, i32 14
  store i32 %190, i32* %199, align 8
  %200 = load i32, i32* %35, align 4
  %201 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %202 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %201, i32 0, i32 1
  %203 = load %struct.hit_s*, %struct.hit_s** %202, align 8
  %204 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %205 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %203, i64 %207
  %209 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %208, i32 0, i32 15
  store i32 %200, i32* %209, align 4
  %210 = load %struct.fancyali_s*, %struct.fancyali_s** %36, align 8
  %211 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %212 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %211, i32 0, i32 1
  %213 = load %struct.hit_s*, %struct.hit_s** %212, align 8
  %214 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %215 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %213, i64 %217
  %219 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %218, i32 0, i32 16
  store %struct.fancyali_s* %210, %struct.fancyali_s** %219, align 8
  %220 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %221 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  ret void
}

declare i8* @Strdup(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @GetRankedHit(%struct.tophit_s*, i32, double*, float*, double*, float*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.fancyali_s**) #0 {
  %19 = alloca %struct.tophit_s*, align 8
  %20 = alloca i32, align 4
  %21 = alloca double*, align 8
  %22 = alloca float*, align 8
  %23 = alloca double*, align 8
  %24 = alloca float*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca %struct.fancyali_s**, align 8
  store %struct.tophit_s* %0, %struct.tophit_s** %19, align 8
  store i32 %1, i32* %20, align 4
  store double* %2, double** %21, align 8
  store float* %3, float** %22, align 8
  store double* %4, double** %23, align 8
  store float* %5, float** %24, align 8
  store i8** %6, i8*** %25, align 8
  store i8** %7, i8*** %26, align 8
  store i8** %8, i8*** %27, align 8
  store i32* %9, i32** %28, align 8
  store i32* %10, i32** %29, align 8
  store i32* %11, i32** %30, align 8
  store i32* %12, i32** %31, align 8
  store i32* %13, i32** %32, align 8
  store i32* %14, i32** %33, align 8
  store i32* %15, i32** %34, align 8
  store i32* %16, i32** %35, align 8
  store %struct.fancyali_s** %17, %struct.fancyali_s*** %36, align 8
  %37 = load double*, double** %21, align 8
  %38 = icmp ne double* %37, null
  br i1 %38, label %39, label %50

; <label>:39:                                     ; preds = %18
  %40 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %41 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %40, i32 0, i32 0
  %42 = load %struct.hit_s**, %struct.hit_s*** %41, align 8
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %42, i64 %44
  %46 = load %struct.hit_s*, %struct.hit_s** %45, align 8
  %47 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %46, i32 0, i32 2
  %48 = load double, double* %47, align 8
  %49 = load double*, double** %21, align 8
  store double %48, double* %49, align 8
  br label %50

; <label>:50:                                     ; preds = %39, %18
  %51 = load float*, float** %22, align 8
  %52 = icmp ne float* %51, null
  br i1 %52, label %53, label %64

; <label>:53:                                     ; preds = %50
  %54 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %55 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %54, i32 0, i32 0
  %56 = load %struct.hit_s**, %struct.hit_s*** %55, align 8
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %56, i64 %58
  %60 = load %struct.hit_s*, %struct.hit_s** %59, align 8
  %61 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %60, i32 0, i32 1
  %62 = load float, float* %61, align 8
  %63 = load float*, float** %22, align 8
  store float %62, float* %63, align 4
  br label %64

; <label>:64:                                     ; preds = %53, %50
  %65 = load double*, double** %23, align 8
  %66 = icmp ne double* %65, null
  br i1 %66, label %67, label %78

; <label>:67:                                     ; preds = %64
  %68 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %69 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %68, i32 0, i32 0
  %70 = load %struct.hit_s**, %struct.hit_s*** %69, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %70, i64 %72
  %74 = load %struct.hit_s*, %struct.hit_s** %73, align 8
  %75 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %74, i32 0, i32 4
  %76 = load double, double* %75, align 8
  %77 = load double*, double** %23, align 8
  store double %76, double* %77, align 8
  br label %78

; <label>:78:                                     ; preds = %67, %64
  %79 = load float*, float** %24, align 8
  %80 = icmp ne float* %79, null
  br i1 %80, label %81, label %92

; <label>:81:                                     ; preds = %78
  %82 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %83 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %82, i32 0, i32 0
  %84 = load %struct.hit_s**, %struct.hit_s*** %83, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %84, i64 %86
  %88 = load %struct.hit_s*, %struct.hit_s** %87, align 8
  %89 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %88, i32 0, i32 3
  %90 = load float, float* %89, align 8
  %91 = load float*, float** %24, align 8
  store float %90, float* %91, align 4
  br label %92

; <label>:92:                                     ; preds = %81, %78
  %93 = load i8**, i8*** %25, align 8
  %94 = icmp ne i8** %93, null
  br i1 %94, label %95, label %106

; <label>:95:                                     ; preds = %92
  %96 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %97 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %96, i32 0, i32 0
  %98 = load %struct.hit_s**, %struct.hit_s*** %97, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %98, i64 %100
  %102 = load %struct.hit_s*, %struct.hit_s** %101, align 8
  %103 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %102, i32 0, i32 5
  %104 = load i8*, i8** %103, align 8
  %105 = load i8**, i8*** %25, align 8
  store i8* %104, i8** %105, align 8
  br label %106

; <label>:106:                                    ; preds = %95, %92
  %107 = load i8**, i8*** %26, align 8
  %108 = icmp ne i8** %107, null
  br i1 %108, label %109, label %120

; <label>:109:                                    ; preds = %106
  %110 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %111 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %110, i32 0, i32 0
  %112 = load %struct.hit_s**, %struct.hit_s*** %111, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %112, i64 %114
  %116 = load %struct.hit_s*, %struct.hit_s** %115, align 8
  %117 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %116, i32 0, i32 6
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %26, align 8
  store i8* %118, i8** %119, align 8
  br label %120

; <label>:120:                                    ; preds = %109, %106
  %121 = load i8**, i8*** %27, align 8
  %122 = icmp ne i8** %121, null
  br i1 %122, label %123, label %134

; <label>:123:                                    ; preds = %120
  %124 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %125 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %124, i32 0, i32 0
  %126 = load %struct.hit_s**, %struct.hit_s*** %125, align 8
  %127 = load i32, i32* %20, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %126, i64 %128
  %130 = load %struct.hit_s*, %struct.hit_s** %129, align 8
  %131 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %130, i32 0, i32 7
  %132 = load i8*, i8** %131, align 8
  %133 = load i8**, i8*** %27, align 8
  store i8* %132, i8** %133, align 8
  br label %134

; <label>:134:                                    ; preds = %123, %120
  %135 = load i32*, i32** %28, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %148

; <label>:137:                                    ; preds = %134
  %138 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %139 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %138, i32 0, i32 0
  %140 = load %struct.hit_s**, %struct.hit_s*** %139, align 8
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %140, i64 %142
  %144 = load %struct.hit_s*, %struct.hit_s** %143, align 8
  %145 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = load i32*, i32** %28, align 8
  store i32 %146, i32* %147, align 4
  br label %148

; <label>:148:                                    ; preds = %137, %134
  %149 = load i32*, i32** %29, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %162

; <label>:151:                                    ; preds = %148
  %152 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %153 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %152, i32 0, i32 0
  %154 = load %struct.hit_s**, %struct.hit_s*** %153, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %154, i64 %156
  %158 = load %struct.hit_s*, %struct.hit_s** %157, align 8
  %159 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %29, align 8
  store i32 %160, i32* %161, align 4
  br label %162

; <label>:162:                                    ; preds = %151, %148
  %163 = load i32*, i32** %30, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %176

; <label>:165:                                    ; preds = %162
  %166 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %167 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %166, i32 0, i32 0
  %168 = load %struct.hit_s**, %struct.hit_s*** %167, align 8
  %169 = load i32, i32* %20, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %168, i64 %170
  %172 = load %struct.hit_s*, %struct.hit_s** %171, align 8
  %173 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 8
  %175 = load i32*, i32** %30, align 8
  store i32 %174, i32* %175, align 4
  br label %176

; <label>:176:                                    ; preds = %165, %162
  %177 = load i32*, i32** %31, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %190

; <label>:179:                                    ; preds = %176
  %180 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %181 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %180, i32 0, i32 0
  %182 = load %struct.hit_s**, %struct.hit_s*** %181, align 8
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %182, i64 %184
  %186 = load %struct.hit_s*, %struct.hit_s** %185, align 8
  %187 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %186, i32 0, i32 11
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %31, align 8
  store i32 %188, i32* %189, align 4
  br label %190

; <label>:190:                                    ; preds = %179, %176
  %191 = load i32*, i32** %32, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %204

; <label>:193:                                    ; preds = %190
  %194 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %195 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %194, i32 0, i32 0
  %196 = load %struct.hit_s**, %struct.hit_s*** %195, align 8
  %197 = load i32, i32* %20, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %196, i64 %198
  %200 = load %struct.hit_s*, %struct.hit_s** %199, align 8
  %201 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %200, i32 0, i32 12
  %202 = load i32, i32* %201, align 8
  %203 = load i32*, i32** %32, align 8
  store i32 %202, i32* %203, align 4
  br label %204

; <label>:204:                                    ; preds = %193, %190
  %205 = load i32*, i32** %33, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %218

; <label>:207:                                    ; preds = %204
  %208 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %209 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %208, i32 0, i32 0
  %210 = load %struct.hit_s**, %struct.hit_s*** %209, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %210, i64 %212
  %214 = load %struct.hit_s*, %struct.hit_s** %213, align 8
  %215 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %214, i32 0, i32 13
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %33, align 8
  store i32 %216, i32* %217, align 4
  br label %218

; <label>:218:                                    ; preds = %207, %204
  %219 = load i32*, i32** %34, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %232

; <label>:221:                                    ; preds = %218
  %222 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %223 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %222, i32 0, i32 0
  %224 = load %struct.hit_s**, %struct.hit_s*** %223, align 8
  %225 = load i32, i32* %20, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %224, i64 %226
  %228 = load %struct.hit_s*, %struct.hit_s** %227, align 8
  %229 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %228, i32 0, i32 14
  %230 = load i32, i32* %229, align 8
  %231 = load i32*, i32** %34, align 8
  store i32 %230, i32* %231, align 4
  br label %232

; <label>:232:                                    ; preds = %221, %218
  %233 = load i32*, i32** %35, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %246

; <label>:235:                                    ; preds = %232
  %236 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %237 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %236, i32 0, i32 0
  %238 = load %struct.hit_s**, %struct.hit_s*** %237, align 8
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %238, i64 %240
  %242 = load %struct.hit_s*, %struct.hit_s** %241, align 8
  %243 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %242, i32 0, i32 15
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %35, align 8
  store i32 %244, i32* %245, align 4
  br label %246

; <label>:246:                                    ; preds = %235, %232
  %247 = load %struct.fancyali_s**, %struct.fancyali_s*** %36, align 8
  %248 = icmp ne %struct.fancyali_s** %247, null
  br i1 %248, label %249, label %260

; <label>:249:                                    ; preds = %246
  %250 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %251 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %250, i32 0, i32 0
  %252 = load %struct.hit_s**, %struct.hit_s*** %251, align 8
  %253 = load i32, i32* %20, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %252, i64 %254
  %256 = load %struct.hit_s*, %struct.hit_s** %255, align 8
  %257 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %256, i32 0, i32 16
  %258 = load %struct.fancyali_s*, %struct.fancyali_s** %257, align 8
  %259 = load %struct.fancyali_s**, %struct.fancyali_s*** %36, align 8
  store %struct.fancyali_s* %258, %struct.fancyali_s** %259, align 8
  br label %260

; <label>:260:                                    ; preds = %249, %246
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @TophitsMaxName(%struct.tophit_s*) #0 {
  %2 = alloca %struct.tophit_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tophit_s* %0, %struct.tophit_s** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %29, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %9 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %32

; <label>:12:                                     ; preds = %6
  %13 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %14 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %13, i32 0, i32 1
  %15 = load %struct.hit_s*, %struct.hit_s** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %15, i64 %17
  %19 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* %20) #5
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %12
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %5, align 4
  br label %28

; <label>:28:                                     ; preds = %26, %12
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %6

; <label>:32:                                     ; preds = %6
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @hit_comparison(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hit_s*, align 8
  %7 = alloca %struct.hit_s*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hit_s**
  %10 = load %struct.hit_s*, %struct.hit_s** %9, align 8
  store %struct.hit_s* %10, %struct.hit_s** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.hit_s**
  %13 = load %struct.hit_s*, %struct.hit_s** %12, align 8
  store %struct.hit_s* %13, %struct.hit_s** %7, align 8
  %14 = load %struct.hit_s*, %struct.hit_s** %6, align 8
  %15 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = load %struct.hit_s*, %struct.hit_s** %7, align 8
  %18 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = fcmp olt double %16, %19
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

; <label>:22:                                     ; preds = %2
  %23 = load %struct.hit_s*, %struct.hit_s** %6, align 8
  %24 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = load %struct.hit_s*, %struct.hit_s** %7, align 8
  %27 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = fcmp ogt double %25, %28
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %43

; <label>:31:                                     ; preds = %22
  %32 = load %struct.hit_s*, %struct.hit_s** %6, align 8
  %33 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = load %struct.hit_s*, %struct.hit_s** %7, align 8
  %36 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = fcmp oeq double %34, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %31
  store i32 0, i32* %3, align 4
  br label %43

; <label>:40:                                     ; preds = %31
  br label %41

; <label>:41:                                     ; preds = %40
  br label %42

; <label>:42:                                     ; preds = %41
  store i32 0, i32* %3, align 4
  br label %43

; <label>:43:                                     ; preds = %42, %39, %30, %21
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define void @FullSortTophits(%struct.tophit_s*) #0 {
  %2 = alloca %struct.tophit_s*, align 8
  %3 = alloca i32, align 4
  store %struct.tophit_s* %0, %struct.tophit_s** %2, align 8
  %4 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %5 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  br label %54

; <label>:9:                                      ; preds = %1
  %10 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %11 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 300, i64 %14)
  %16 = bitcast i8* %15 to %struct.hit_s**
  %17 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %18 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %17, i32 0, i32 0
  store %struct.hit_s** %16, %struct.hit_s*** %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %38, %9
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %22 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %41

; <label>:25:                                     ; preds = %19
  %26 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %27 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %26, i32 0, i32 1
  %28 = load %struct.hit_s*, %struct.hit_s** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %28, i64 %30
  %32 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %33 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %32, i32 0, i32 0
  %34 = load %struct.hit_s**, %struct.hit_s*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %34, i64 %36
  store %struct.hit_s* %31, %struct.hit_s** %37, align 8
  br label %38

; <label>:38:                                     ; preds = %25
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %19

; <label>:41:                                     ; preds = %19
  %42 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %43 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %41
  %47 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %48 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %47, i32 0, i32 0
  %49 = load %struct.hit_s**, %struct.hit_s*** %48, align 8
  %50 = load %struct.tophit_s*, %struct.tophit_s** %2, align 8
  %51 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.hit_s**, i32, i64, i32 (i8*, i8*)*, ...) bitcast (i32 (...)* @specqsort to i32 (%struct.hit_s**, i32, i64, i32 (i8*, i8*)*, ...)*)(%struct.hit_s** %49, i32 %52, i64 8, i32 (i8*, i8*)* @hit_comparison)
  br label %54

; <label>:54:                                     ; preds = %8, %46, %41
  ret void
}

declare i32 @specqsort(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @TophitsReport(%struct.tophit_s*, double, i32) #0 {
  %4 = alloca %struct.tophit_s*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tophit_s* %0, %struct.tophit_s** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %12 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 104, %14
  %16 = add i64 %15, 32
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %263, %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %21 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %266

; <label>:24:                                     ; preds = %18
  %25 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %26 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %25, i32 0, i32 1
  %27 = load %struct.hit_s*, %struct.hit_s** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %27, i64 %29
  %31 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %49

; <label>:34:                                     ; preds = %24
  %35 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %36 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %35, i32 0, i32 1
  %37 = load %struct.hit_s*, %struct.hit_s** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %37, i64 %39
  %41 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %40, i32 0, i32 5
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* %42) #5
  %44 = add i64 %43, 1
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %49

; <label>:49:                                     ; preds = %34, %24
  %50 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %51 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %50, i32 0, i32 1
  %52 = load %struct.hit_s*, %struct.hit_s** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %52, i64 %54
  %56 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %74

; <label>:59:                                     ; preds = %49
  %60 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %61 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %60, i32 0, i32 1
  %62 = load %struct.hit_s*, %struct.hit_s** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %62, i64 %64
  %66 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strlen(i8* %67) #5
  %69 = add i64 %68, 1
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  br label %74

; <label>:74:                                     ; preds = %59, %49
  %75 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %76 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %75, i32 0, i32 1
  %77 = load %struct.hit_s*, %struct.hit_s** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %77, i64 %79
  %81 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %80, i32 0, i32 7
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %99

; <label>:84:                                     ; preds = %74
  %85 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %86 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %85, i32 0, i32 1
  %87 = load %struct.hit_s*, %struct.hit_s** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %87, i64 %89
  %91 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %90, i32 0, i32 7
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strlen(i8* %92) #5
  %94 = add i64 %93, 1
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %8, align 4
  br label %99

; <label>:99:                                     ; preds = %84, %74
  %100 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %101 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %100, i32 0, i32 1
  %102 = load %struct.hit_s*, %struct.hit_s** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %102, i64 %104
  %106 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %105, i32 0, i32 16
  %107 = load %struct.fancyali_s*, %struct.fancyali_s** %106, align 8
  %108 = icmp ne %struct.fancyali_s* %107, null
  br i1 %108, label %109, label %262

; <label>:109:                                    ; preds = %99
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 72
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %114 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %115 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %114, i32 0, i32 1
  %116 = load %struct.hit_s*, %struct.hit_s** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %116, i64 %118
  %120 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %119, i32 0, i32 16
  %121 = load %struct.fancyali_s*, %struct.fancyali_s** %120, align 8
  %122 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

; <label>:125:                                    ; preds = %109
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %128

; <label>:128:                                    ; preds = %125, %109
  %129 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %130 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %129, i32 0, i32 1
  %131 = load %struct.hit_s*, %struct.hit_s** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %131, i64 %133
  %135 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %134, i32 0, i32 16
  %136 = load %struct.fancyali_s*, %struct.fancyali_s** %135, align 8
  %137 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %143

; <label>:140:                                    ; preds = %128
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %143

; <label>:143:                                    ; preds = %140, %128
  %144 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %145 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %144, i32 0, i32 1
  %146 = load %struct.hit_s*, %struct.hit_s** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %146, i64 %148
  %150 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %149, i32 0, i32 16
  %151 = load %struct.fancyali_s*, %struct.fancyali_s** %150, align 8
  %152 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %158

; <label>:155:                                    ; preds = %143
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %158

; <label>:158:                                    ; preds = %155, %143
  %159 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %160 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %159, i32 0, i32 1
  %161 = load %struct.hit_s*, %struct.hit_s** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %161, i64 %163
  %165 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %164, i32 0, i32 16
  %166 = load %struct.fancyali_s*, %struct.fancyali_s** %165, align 8
  %167 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %173

; <label>:170:                                    ; preds = %158
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %173

; <label>:173:                                    ; preds = %170, %158
  %174 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %175 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %174, i32 0, i32 1
  %176 = load %struct.hit_s*, %struct.hit_s** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %176, i64 %178
  %180 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %179, i32 0, i32 16
  %181 = load %struct.fancyali_s*, %struct.fancyali_s** %180, align 8
  %182 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %181, i32 0, i32 4
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %188

; <label>:185:                                    ; preds = %173
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %188

; <label>:188:                                    ; preds = %185, %173
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %191 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %190, i32 0, i32 1
  %192 = load %struct.hit_s*, %struct.hit_s** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %192, i64 %194
  %196 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %195, i32 0, i32 16
  %197 = load %struct.fancyali_s*, %struct.fancyali_s** %196, align 8
  %198 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  %201 = mul nsw i32 %189, %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %8, align 4
  %204 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %205 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %204, i32 0, i32 1
  %206 = load %struct.hit_s*, %struct.hit_s** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %206, i64 %208
  %210 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %209, i32 0, i32 16
  %211 = load %struct.fancyali_s*, %struct.fancyali_s** %210, align 8
  %212 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %211, i32 0, i32 6
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %232

; <label>:215:                                    ; preds = %188
  %216 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %217 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %216, i32 0, i32 1
  %218 = load %struct.hit_s*, %struct.hit_s** %217, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %218, i64 %220
  %222 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %221, i32 0, i32 16
  %223 = load %struct.fancyali_s*, %struct.fancyali_s** %222, align 8
  %224 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %223, i32 0, i32 6
  %225 = load i8*, i8** %224, align 8
  %226 = call i64 @strlen(i8* %225) #5
  %227 = add i64 %226, 1
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = add i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %8, align 4
  br label %232

; <label>:232:                                    ; preds = %215, %188
  %233 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %234 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %233, i32 0, i32 1
  %235 = load %struct.hit_s*, %struct.hit_s** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %235, i64 %237
  %239 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %238, i32 0, i32 16
  %240 = load %struct.fancyali_s*, %struct.fancyali_s** %239, align 8
  %241 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %240, i32 0, i32 7
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %261

; <label>:244:                                    ; preds = %232
  %245 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %246 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %245, i32 0, i32 1
  %247 = load %struct.hit_s*, %struct.hit_s** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %247, i64 %249
  %251 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %250, i32 0, i32 16
  %252 = load %struct.fancyali_s*, %struct.fancyali_s** %251, align 8
  %253 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %252, i32 0, i32 7
  %254 = load i8*, i8** %253, align 8
  %255 = call i64 @strlen(i8* %254) #5
  %256 = add i64 %255, 1
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = add i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %8, align 4
  br label %261

; <label>:261:                                    ; preds = %244, %232
  br label %262

; <label>:262:                                    ; preds = %261, %99
  br label %263

; <label>:263:                                    ; preds = %262
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %18

; <label>:266:                                    ; preds = %18
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %267

; <label>:267:                                    ; preds = %292, %266
  %268 = load i32, i32* %7, align 4
  %269 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %270 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %295

; <label>:273:                                    ; preds = %267
  %274 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %275 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %274, i32 0, i32 0
  %276 = load %struct.hit_s**, %struct.hit_s*** %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %276, i64 %278
  %280 = load %struct.hit_s*, %struct.hit_s** %279, align 8
  %281 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %280, i32 0, i32 2
  %282 = load double, double* %281, align 8
  %283 = load i32, i32* %6, align 4
  %284 = sitofp i32 %283 to double
  %285 = fmul double %282, %284
  %286 = load double, double* %5, align 8
  %287 = fcmp oge double %285, %286
  br i1 %287, label %288, label %289

; <label>:288:                                    ; preds = %273
  br label %295

; <label>:289:                                    ; preds = %273
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %10, align 4
  br label %292

; <label>:292:                                    ; preds = %289
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %7, align 4
  br label %267

; <label>:295:                                    ; preds = %288, %267
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  %297 = load %struct.tophit_s*, %struct.tophit_s** %4, align 8
  %298 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 %299)
  %301 = load i32, i32* %10, align 4
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 %301)
  %303 = load i32, i32* %8, align 4
  %304 = sdiv i32 %303, 1000
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 %304)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
