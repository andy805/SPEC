; ModuleID = 'lbm.c'
source_filename = "lbm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"LBM_allocateGrid: could not allocate %.1f MByte\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [138 x i8] c"LBM_showGridStatistics:\0A\09nObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\0A\09minRho: %8.4f maxRho: %8.4f mass: %e\0A\09minU: %e maxU: %e\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%e %e %e\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"LBM_compareVelocityField: maxDiff = %e  \0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_allocateGrid(double**) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store double** %0, double*** %2, align 8
  store i64 400000, i64* %3, align 8
  store i64 214400000, i64* %4, align 8
  %5 = call noalias i8* @malloc(i64 214400000) #4
  %6 = bitcast i8* %5 to double*
  %7 = load double**, double*** %2, align 8
  store double* %6, double** %7, align 8
  %8 = load double**, double*** %2, align 8
  %9 = load double*, double** %8, align 8
  %10 = icmp ne double* %9, null
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), double 0x40698EF800000000)
  call void @exit(i32 1) #5
  unreachable

; <label>:13:                                     ; preds = %1
  %14 = load double**, double*** %2, align 8
  %15 = load double*, double** %14, align 8
  %16 = getelementptr inbounds double, double* %15, i64 400000
  store double* %16, double** %14, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_freeGrid(double**) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i64, align 8
  store double** %0, double*** %2, align 8
  store i64 400000, i64* %3, align 8
  %4 = load double**, double*** %2, align 8
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds double, double* %5, i64 -400000
  %7 = bitcast double* %6 to i8*
  call void @free(i8* %7) #4
  %8 = load double**, double*** %2, align 8
  store double* null, double** %8, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_initializeGrid(double*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store double* %0, double** %2, align 8
  store i32 -400000, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %112, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 26400000
  br i1 %7, label %8, label %115

; <label>:8:                                      ; preds = %5
  %9 = load double*, double** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 0, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, double* %9, i64 %12
  store double 0x3FD5555555555555, double* %13, align 8
  %14 = load double*, double** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 1, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, double* %14, i64 %17
  store double 0x3FAC71C71C71C71C, double* %18, align 8
  %19 = load double*, double** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %19, i64 %22
  store double 0x3FAC71C71C71C71C, double* %23, align 8
  %24 = load double*, double** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 3, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %24, i64 %27
  store double 0x3FAC71C71C71C71C, double* %28, align 8
  %29 = load double*, double** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 4, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %29, i64 %32
  store double 0x3FAC71C71C71C71C, double* %33, align 8
  %34 = load double*, double** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 5, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %34, i64 %37
  store double 0x3FAC71C71C71C71C, double* %38, align 8
  %39 = load double*, double** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 6, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %39, i64 %42
  store double 0x3FAC71C71C71C71C, double* %43, align 8
  %44 = load double*, double** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 7, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %44, i64 %47
  store double 0x3F9C71C71C71C71C, double* %48, align 8
  %49 = load double*, double** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 8, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %49, i64 %52
  store double 0x3F9C71C71C71C71C, double* %53, align 8
  %54 = load double*, double** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 9, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %54, i64 %57
  store double 0x3F9C71C71C71C71C, double* %58, align 8
  %59 = load double*, double** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 10, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %59, i64 %62
  store double 0x3F9C71C71C71C71C, double* %63, align 8
  %64 = load double*, double** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 11, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %64, i64 %67
  store double 0x3F9C71C71C71C71C, double* %68, align 8
  %69 = load double*, double** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 12, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %69, i64 %72
  store double 0x3F9C71C71C71C71C, double* %73, align 8
  %74 = load double*, double** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 13, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %74, i64 %77
  store double 0x3F9C71C71C71C71C, double* %78, align 8
  %79 = load double*, double** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 14, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %79, i64 %82
  store double 0x3F9C71C71C71C71C, double* %83, align 8
  %84 = load double*, double** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 15, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %84, i64 %87
  store double 0x3F9C71C71C71C71C, double* %88, align 8
  %89 = load double*, double** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 16, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %89, i64 %92
  store double 0x3F9C71C71C71C71C, double* %93, align 8
  %94 = load double*, double** %2, align 8
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 17, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %94, i64 %97
  store double 0x3F9C71C71C71C71C, double* %98, align 8
  %99 = load double*, double** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 18, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %99, i64 %102
  store double 0x3F9C71C71C71C71C, double* %103, align 8
  %104 = load double*, double** %2, align 8
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 19, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %104, i64 %107
  %109 = bitcast double* %108 to i8*
  %110 = bitcast i8* %109 to i32*
  store i32* %110, i32** %4, align 8
  %111 = load i32*, i32** %4, align 8
  store i32 0, i32* %111, align 4
  br label %112

; <label>:112:                                    ; preds = %8
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 20
  store i32 %114, i32* %3, align 4
  br label %5

; <label>:115:                                    ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_swapGrids([26000000 x double]**, [26000000 x double]**) #0 {
  %3 = alloca [26000000 x double]**, align 8
  %4 = alloca [26000000 x double]**, align 8
  %5 = alloca [26000000 x double]*, align 8
  store [26000000 x double]** %0, [26000000 x double]*** %3, align 8
  store [26000000 x double]** %1, [26000000 x double]*** %4, align 8
  %6 = load [26000000 x double]**, [26000000 x double]*** %3, align 8
  %7 = load [26000000 x double]*, [26000000 x double]** %6, align 8
  store [26000000 x double]* %7, [26000000 x double]** %5, align 8
  %8 = load [26000000 x double]**, [26000000 x double]*** %4, align 8
  %9 = load [26000000 x double]*, [26000000 x double]** %8, align 8
  %10 = load [26000000 x double]**, [26000000 x double]*** %3, align 8
  store [26000000 x double]* %9, [26000000 x double]** %10, align 8
  %11 = load [26000000 x double]*, [26000000 x double]** %5, align 8
  %12 = load [26000000 x double]**, [26000000 x double]*** %4, align 8
  store [26000000 x double]* %11, [26000000 x double]** %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_loadObstacleFile(double*, i8*) #0 {
  %3 = alloca double*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32*, align 8
  store double* %0, double** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** %8, align 8
  store i32 0, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %59, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 130
  br i1 %14, label %15, label %62

; <label>:15:                                     ; preds = %12
  store i32 0, i32* %6, align 4
  br label %16

; <label>:16:                                     ; preds = %53, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %19, label %56

; <label>:19:                                     ; preds = %16
  store i32 0, i32* %5, align 4
  br label %20

; <label>:20:                                     ; preds = %47, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 100
  br i1 %22, label %23, label %50

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %25 = call i32 @fgetc(%struct._IO_FILE* %24)
  %26 = icmp ne i32 %25, 46
  br i1 %26, label %27, label %46

; <label>:27:                                     ; preds = %23
  %28 = load double*, double** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %30, 100
  %32 = add nsw i32 %29, %31
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 100
  %35 = mul nsw i32 %34, 100
  %36 = add nsw i32 %32, %35
  %37 = mul nsw i32 20, %36
  %38 = add nsw i32 19, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %28, i64 %39
  %41 = bitcast double* %40 to i8*
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

; <label>:46:                                     ; preds = %27, %23
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %20

; <label>:50:                                     ; preds = %20
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %52 = call i32 @fgetc(%struct._IO_FILE* %51)
  br label %53

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %16

; <label>:56:                                     ; preds = %16
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %58 = call i32 @fgetc(%struct._IO_FILE* %57)
  br label %59

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %12

; <label>:62:                                     ; preds = %12
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %64 = call i32 @fclose(%struct._IO_FILE* %63)
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fgetc(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_initializeSpecialCellsForLDC(double*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store double* %0, double** %2, align 8
  store i32 -2, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %103, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 132
  br i1 %10, label %11, label %106

; <label>:11:                                     ; preds = %8
  store i32 0, i32* %4, align 4
  br label %12

; <label>:12:                                     ; preds = %99, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %102

; <label>:15:                                     ; preds = %12
  store i32 0, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %95, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %19, label %98

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 99
  br i1 %24, label %37, label %25

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 99
  br i1 %30, label %37, label %31

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 129
  br i1 %36, label %37, label %56

; <label>:37:                                     ; preds = %34, %31, %28, %25, %22, %19
  %38 = load double*, double** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = mul nsw i32 %40, 100
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 100
  %45 = mul nsw i32 %44, 100
  %46 = add nsw i32 %42, %45
  %47 = mul nsw i32 20, %46
  %48 = add nsw i32 19, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %38, i64 %49
  %51 = bitcast double* %50 to i8*
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %94

; <label>:56:                                     ; preds = %34
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %62, label %59

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %93

; <label>:62:                                     ; preds = %59, %56
  %63 = load i32, i32* %3, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %93

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 98
  br i1 %67, label %68, label %93

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %93

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 98
  br i1 %73, label %74, label %93

; <label>:74:                                     ; preds = %71
  %75 = load double*, double** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = mul nsw i32 %77, 100
  %79 = add nsw i32 %76, %78
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 %80, 100
  %82 = mul nsw i32 %81, 100
  %83 = add nsw i32 %79, %82
  %84 = mul nsw i32 20, %83
  %85 = add nsw i32 19, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %75, i64 %86
  %88 = bitcast double* %87 to i8*
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, 2
  store i32 %92, i32* %90, align 4
  br label %93

; <label>:93:                                     ; preds = %74, %71, %68, %65, %62, %59
  br label %94

; <label>:94:                                     ; preds = %93, %37
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %16

; <label>:98:                                     ; preds = %16
  br label %99

; <label>:99:                                     ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %12

; <label>:102:                                    ; preds = %12
  br label %103

; <label>:103:                                    ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %8

; <label>:106:                                    ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_initializeSpecialCellsForChannel(double*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store double* %0, double** %2, align 8
  store i32 -2, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %103, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 132
  br i1 %10, label %11, label %106

; <label>:11:                                     ; preds = %8
  store i32 0, i32* %4, align 4
  br label %12

; <label>:12:                                     ; preds = %99, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %102

; <label>:15:                                     ; preds = %12
  store i32 0, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %95, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %19, label %98

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 99
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 99
  br i1 %30, label %31, label %94

; <label>:31:                                     ; preds = %28, %25, %22, %19
  %32 = load double*, double** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, 100
  %36 = add nsw i32 %33, %35
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 100
  %39 = mul nsw i32 %38, 100
  %40 = add nsw i32 %36, %39
  %41 = mul nsw i32 20, %40
  %42 = add nsw i32 19, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %32, i64 %43
  %45 = bitcast double* %44 to i8*
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

; <label>:52:                                     ; preds = %31
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 129
  br i1 %54, label %55, label %93

; <label>:55:                                     ; preds = %52, %31
  %56 = load double*, double** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = mul nsw i32 %58, 100
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 100
  %63 = mul nsw i32 %62, 100
  %64 = add nsw i32 %60, %63
  %65 = mul nsw i32 20, %64
  %66 = add nsw i32 19, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %56, i64 %67
  %69 = bitcast double* %68 to i8*
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %93, label %74

; <label>:74:                                     ; preds = %55
  %75 = load double*, double** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = mul nsw i32 %77, 100
  %79 = add nsw i32 %76, %78
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 %80, 100
  %82 = mul nsw i32 %81, 100
  %83 = add nsw i32 %79, %82
  %84 = mul nsw i32 20, %83
  %85 = add nsw i32 19, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %75, i64 %86
  %88 = bitcast double* %87 to i8*
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, 4
  store i32 %92, i32* %90, align 4
  br label %93

; <label>:93:                                     ; preds = %74, %55, %52
  br label %94

; <label>:94:                                     ; preds = %93, %28
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %16

; <label>:98:                                     ; preds = %16
  br label %99

; <label>:99:                                     ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %12

; <label>:102:                                    ; preds = %12
  br label %103

; <label>:103:                                    ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %8

; <label>:106:                                    ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_performStreamCollide(double*, double*) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %1118, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 26000000
  br i1 %13, label %14, label %1121

; <label>:14:                                     ; preds = %11
  %15 = load double*, double** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 19, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %15, i64 %18
  %20 = bitcast double* %19 to i8*
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %235

; <label>:25:                                     ; preds = %14
  %26 = load double*, double** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 0, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %26, i64 %29
  %31 = load double, double* %30, align 8
  %32 = load double*, double** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 0, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %32, i64 %35
  store double %31, double* %36, align 8
  %37 = load double*, double** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 1, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %37, i64 %40
  %42 = load double, double* %41, align 8
  %43 = load double*, double** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 -1998, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %43, i64 %46
  store double %42, double* %47, align 8
  %48 = load double*, double** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %48, i64 %51
  %53 = load double, double* %52, align 8
  %54 = load double*, double** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 2001, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %54, i64 %57
  store double %53, double* %58, align 8
  %59 = load double*, double** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 3, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %59, i64 %62
  %64 = load double, double* %63, align 8
  %65 = load double*, double** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 -16, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %65, i64 %68
  store double %64, double* %69, align 8
  %70 = load double*, double** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 4, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %70, i64 %73
  %75 = load double, double* %74, align 8
  %76 = load double*, double** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 23, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %76, i64 %79
  store double %75, double* %80, align 8
  %81 = load double*, double** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 5, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %81, i64 %84
  %86 = load double, double* %85, align 8
  %87 = load double*, double** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 -199994, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %87, i64 %90
  store double %86, double* %91, align 8
  %92 = load double*, double** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 6, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %92, i64 %95
  %97 = load double, double* %96, align 8
  %98 = load double*, double** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 200005, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %98, i64 %101
  store double %97, double* %102, align 8
  %103 = load double*, double** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 7, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %103, i64 %106
  %108 = load double, double* %107, align 8
  %109 = load double*, double** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 -2010, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %109, i64 %112
  store double %108, double* %113, align 8
  %114 = load double*, double** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 8, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %114, i64 %117
  %119 = load double, double* %118, align 8
  %120 = load double*, double** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 -1971, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %120, i64 %123
  store double %119, double* %124, align 8
  %125 = load double*, double** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 9, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %125, i64 %128
  %130 = load double, double* %129, align 8
  %131 = load double*, double** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 1988, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds double, double* %131, i64 %134
  store double %130, double* %135, align 8
  %136 = load double*, double** %3, align 8
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 10, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %136, i64 %139
  %141 = load double, double* %140, align 8
  %142 = load double*, double** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 2027, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds double, double* %142, i64 %145
  store double %141, double* %146, align 8
  %147 = load double*, double** %3, align 8
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 11, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %147, i64 %150
  %152 = load double, double* %151, align 8
  %153 = load double*, double** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 -201986, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %153, i64 %156
  store double %152, double* %157, align 8
  %158 = load double*, double** %3, align 8
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 12, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, double* %158, i64 %161
  %163 = load double, double* %162, align 8
  %164 = load double*, double** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 198013, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %164, i64 %167
  store double %163, double* %168, align 8
  %169 = load double*, double** %3, align 8
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 13, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %169, i64 %172
  %174 = load double, double* %173, align 8
  %175 = load double*, double** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 -197988, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %175, i64 %178
  store double %174, double* %179, align 8
  %180 = load double*, double** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 14, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds double, double* %180, i64 %183
  %185 = load double, double* %184, align 8
  %186 = load double*, double** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 202011, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double, double* %186, i64 %189
  store double %185, double* %190, align 8
  %191 = load double*, double** %3, align 8
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 15, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, double* %191, i64 %194
  %196 = load double, double* %195, align 8
  %197 = load double*, double** %4, align 8
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 -200002, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %197, i64 %200
  store double %196, double* %201, align 8
  %202 = load double*, double** %3, align 8
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 16, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds double, double* %202, i64 %205
  %207 = load double, double* %206, align 8
  %208 = load double*, double** %4, align 8
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 199997, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double, double* %208, i64 %211
  store double %207, double* %212, align 8
  %213 = load double*, double** %3, align 8
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 17, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds double, double* %213, i64 %216
  %218 = load double, double* %217, align 8
  %219 = load double*, double** %4, align 8
  %220 = load i32, i32* %5, align 4
  %221 = add nsw i32 -199964, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %219, i64 %222
  store double %218, double* %223, align 8
  %224 = load double*, double** %3, align 8
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 18, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds double, double* %224, i64 %227
  %229 = load double, double* %228, align 8
  %230 = load double*, double** %4, align 8
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 200035, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %230, i64 %233
  store double %229, double* %234, align 8
  br label %1118

; <label>:235:                                    ; preds = %14
  %236 = load double*, double** %3, align 8
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 0, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds double, double* %236, i64 %239
  %241 = load double, double* %240, align 8
  %242 = load double*, double** %3, align 8
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 1, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %242, i64 %245
  %247 = load double, double* %246, align 8
  %248 = fadd double %241, %247
  %249 = load double*, double** %3, align 8
  %250 = load i32, i32* %5, align 4
  %251 = add nsw i32 2, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds double, double* %249, i64 %252
  %254 = load double, double* %253, align 8
  %255 = fadd double %248, %254
  %256 = load double*, double** %3, align 8
  %257 = load i32, i32* %5, align 4
  %258 = add nsw i32 3, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds double, double* %256, i64 %259
  %261 = load double, double* %260, align 8
  %262 = fadd double %255, %261
  %263 = load double*, double** %3, align 8
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 4, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds double, double* %263, i64 %266
  %268 = load double, double* %267, align 8
  %269 = fadd double %262, %268
  %270 = load double*, double** %3, align 8
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 5, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds double, double* %270, i64 %273
  %275 = load double, double* %274, align 8
  %276 = fadd double %269, %275
  %277 = load double*, double** %3, align 8
  %278 = load i32, i32* %5, align 4
  %279 = add nsw i32 6, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds double, double* %277, i64 %280
  %282 = load double, double* %281, align 8
  %283 = fadd double %276, %282
  %284 = load double*, double** %3, align 8
  %285 = load i32, i32* %5, align 4
  %286 = add nsw i32 7, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds double, double* %284, i64 %287
  %289 = load double, double* %288, align 8
  %290 = fadd double %283, %289
  %291 = load double*, double** %3, align 8
  %292 = load i32, i32* %5, align 4
  %293 = add nsw i32 8, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds double, double* %291, i64 %294
  %296 = load double, double* %295, align 8
  %297 = fadd double %290, %296
  %298 = load double*, double** %3, align 8
  %299 = load i32, i32* %5, align 4
  %300 = add nsw i32 9, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds double, double* %298, i64 %301
  %303 = load double, double* %302, align 8
  %304 = fadd double %297, %303
  %305 = load double*, double** %3, align 8
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 10, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double, double* %305, i64 %308
  %310 = load double, double* %309, align 8
  %311 = fadd double %304, %310
  %312 = load double*, double** %3, align 8
  %313 = load i32, i32* %5, align 4
  %314 = add nsw i32 11, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds double, double* %312, i64 %315
  %317 = load double, double* %316, align 8
  %318 = fadd double %311, %317
  %319 = load double*, double** %3, align 8
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 12, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds double, double* %319, i64 %322
  %324 = load double, double* %323, align 8
  %325 = fadd double %318, %324
  %326 = load double*, double** %3, align 8
  %327 = load i32, i32* %5, align 4
  %328 = add nsw i32 13, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds double, double* %326, i64 %329
  %331 = load double, double* %330, align 8
  %332 = fadd double %325, %331
  %333 = load double*, double** %3, align 8
  %334 = load i32, i32* %5, align 4
  %335 = add nsw i32 14, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double, double* %333, i64 %336
  %338 = load double, double* %337, align 8
  %339 = fadd double %332, %338
  %340 = load double*, double** %3, align 8
  %341 = load i32, i32* %5, align 4
  %342 = add nsw i32 15, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds double, double* %340, i64 %343
  %345 = load double, double* %344, align 8
  %346 = fadd double %339, %345
  %347 = load double*, double** %3, align 8
  %348 = load i32, i32* %5, align 4
  %349 = add nsw i32 16, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds double, double* %347, i64 %350
  %352 = load double, double* %351, align 8
  %353 = fadd double %346, %352
  %354 = load double*, double** %3, align 8
  %355 = load i32, i32* %5, align 4
  %356 = add nsw i32 17, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds double, double* %354, i64 %357
  %359 = load double, double* %358, align 8
  %360 = fadd double %353, %359
  %361 = load double*, double** %3, align 8
  %362 = load i32, i32* %5, align 4
  %363 = add nsw i32 18, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds double, double* %361, i64 %364
  %366 = load double, double* %365, align 8
  %367 = fadd double %360, %366
  store double %367, double* %10, align 8
  %368 = load double*, double** %3, align 8
  %369 = load i32, i32* %5, align 4
  %370 = add nsw i32 3, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds double, double* %368, i64 %371
  %373 = load double, double* %372, align 8
  %374 = load double*, double** %3, align 8
  %375 = load i32, i32* %5, align 4
  %376 = add nsw i32 4, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds double, double* %374, i64 %377
  %379 = load double, double* %378, align 8
  %380 = fsub double %373, %379
  %381 = load double*, double** %3, align 8
  %382 = load i32, i32* %5, align 4
  %383 = add nsw i32 7, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds double, double* %381, i64 %384
  %386 = load double, double* %385, align 8
  %387 = fadd double %380, %386
  %388 = load double*, double** %3, align 8
  %389 = load i32, i32* %5, align 4
  %390 = add nsw i32 8, %389
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds double, double* %388, i64 %391
  %393 = load double, double* %392, align 8
  %394 = fsub double %387, %393
  %395 = load double*, double** %3, align 8
  %396 = load i32, i32* %5, align 4
  %397 = add nsw i32 9, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds double, double* %395, i64 %398
  %400 = load double, double* %399, align 8
  %401 = fadd double %394, %400
  %402 = load double*, double** %3, align 8
  %403 = load i32, i32* %5, align 4
  %404 = add nsw i32 10, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds double, double* %402, i64 %405
  %407 = load double, double* %406, align 8
  %408 = fsub double %401, %407
  %409 = load double*, double** %3, align 8
  %410 = load i32, i32* %5, align 4
  %411 = add nsw i32 15, %410
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds double, double* %409, i64 %412
  %414 = load double, double* %413, align 8
  %415 = fadd double %408, %414
  %416 = load double*, double** %3, align 8
  %417 = load i32, i32* %5, align 4
  %418 = add nsw i32 16, %417
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds double, double* %416, i64 %419
  %421 = load double, double* %420, align 8
  %422 = fadd double %415, %421
  %423 = load double*, double** %3, align 8
  %424 = load i32, i32* %5, align 4
  %425 = add nsw i32 17, %424
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds double, double* %423, i64 %426
  %428 = load double, double* %427, align 8
  %429 = fsub double %422, %428
  %430 = load double*, double** %3, align 8
  %431 = load i32, i32* %5, align 4
  %432 = add nsw i32 18, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %430, i64 %433
  %435 = load double, double* %434, align 8
  %436 = fsub double %429, %435
  store double %436, double* %6, align 8
  %437 = load double*, double** %3, align 8
  %438 = load i32, i32* %5, align 4
  %439 = add nsw i32 1, %438
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds double, double* %437, i64 %440
  %442 = load double, double* %441, align 8
  %443 = load double*, double** %3, align 8
  %444 = load i32, i32* %5, align 4
  %445 = add nsw i32 2, %444
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds double, double* %443, i64 %446
  %448 = load double, double* %447, align 8
  %449 = fsub double %442, %448
  %450 = load double*, double** %3, align 8
  %451 = load i32, i32* %5, align 4
  %452 = add nsw i32 7, %451
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds double, double* %450, i64 %453
  %455 = load double, double* %454, align 8
  %456 = fadd double %449, %455
  %457 = load double*, double** %3, align 8
  %458 = load i32, i32* %5, align 4
  %459 = add nsw i32 8, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds double, double* %457, i64 %460
  %462 = load double, double* %461, align 8
  %463 = fadd double %456, %462
  %464 = load double*, double** %3, align 8
  %465 = load i32, i32* %5, align 4
  %466 = add nsw i32 9, %465
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds double, double* %464, i64 %467
  %469 = load double, double* %468, align 8
  %470 = fsub double %463, %469
  %471 = load double*, double** %3, align 8
  %472 = load i32, i32* %5, align 4
  %473 = add nsw i32 10, %472
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds double, double* %471, i64 %474
  %476 = load double, double* %475, align 8
  %477 = fsub double %470, %476
  %478 = load double*, double** %3, align 8
  %479 = load i32, i32* %5, align 4
  %480 = add nsw i32 11, %479
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds double, double* %478, i64 %481
  %483 = load double, double* %482, align 8
  %484 = fadd double %477, %483
  %485 = load double*, double** %3, align 8
  %486 = load i32, i32* %5, align 4
  %487 = add nsw i32 12, %486
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds double, double* %485, i64 %488
  %490 = load double, double* %489, align 8
  %491 = fadd double %484, %490
  %492 = load double*, double** %3, align 8
  %493 = load i32, i32* %5, align 4
  %494 = add nsw i32 13, %493
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds double, double* %492, i64 %495
  %497 = load double, double* %496, align 8
  %498 = fsub double %491, %497
  %499 = load double*, double** %3, align 8
  %500 = load i32, i32* %5, align 4
  %501 = add nsw i32 14, %500
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds double, double* %499, i64 %502
  %504 = load double, double* %503, align 8
  %505 = fsub double %498, %504
  store double %505, double* %7, align 8
  %506 = load double*, double** %3, align 8
  %507 = load i32, i32* %5, align 4
  %508 = add nsw i32 5, %507
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds double, double* %506, i64 %509
  %511 = load double, double* %510, align 8
  %512 = load double*, double** %3, align 8
  %513 = load i32, i32* %5, align 4
  %514 = add nsw i32 6, %513
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds double, double* %512, i64 %515
  %517 = load double, double* %516, align 8
  %518 = fsub double %511, %517
  %519 = load double*, double** %3, align 8
  %520 = load i32, i32* %5, align 4
  %521 = add nsw i32 11, %520
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds double, double* %519, i64 %522
  %524 = load double, double* %523, align 8
  %525 = fadd double %518, %524
  %526 = load double*, double** %3, align 8
  %527 = load i32, i32* %5, align 4
  %528 = add nsw i32 12, %527
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds double, double* %526, i64 %529
  %531 = load double, double* %530, align 8
  %532 = fsub double %525, %531
  %533 = load double*, double** %3, align 8
  %534 = load i32, i32* %5, align 4
  %535 = add nsw i32 13, %534
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds double, double* %533, i64 %536
  %538 = load double, double* %537, align 8
  %539 = fadd double %532, %538
  %540 = load double*, double** %3, align 8
  %541 = load i32, i32* %5, align 4
  %542 = add nsw i32 14, %541
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds double, double* %540, i64 %543
  %545 = load double, double* %544, align 8
  %546 = fsub double %539, %545
  %547 = load double*, double** %3, align 8
  %548 = load i32, i32* %5, align 4
  %549 = add nsw i32 15, %548
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds double, double* %547, i64 %550
  %552 = load double, double* %551, align 8
  %553 = fadd double %546, %552
  %554 = load double*, double** %3, align 8
  %555 = load i32, i32* %5, align 4
  %556 = add nsw i32 16, %555
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds double, double* %554, i64 %557
  %559 = load double, double* %558, align 8
  %560 = fsub double %553, %559
  %561 = load double*, double** %3, align 8
  %562 = load i32, i32* %5, align 4
  %563 = add nsw i32 17, %562
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds double, double* %561, i64 %564
  %566 = load double, double* %565, align 8
  %567 = fadd double %560, %566
  %568 = load double*, double** %3, align 8
  %569 = load i32, i32* %5, align 4
  %570 = add nsw i32 18, %569
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds double, double* %568, i64 %571
  %573 = load double, double* %572, align 8
  %574 = fsub double %567, %573
  store double %574, double* %8, align 8
  %575 = load double, double* %10, align 8
  %576 = load double, double* %6, align 8
  %577 = fdiv double %576, %575
  store double %577, double* %6, align 8
  %578 = load double, double* %10, align 8
  %579 = load double, double* %7, align 8
  %580 = fdiv double %579, %578
  store double %580, double* %7, align 8
  %581 = load double, double* %10, align 8
  %582 = load double, double* %8, align 8
  %583 = fdiv double %582, %581
  store double %583, double* %8, align 8
  %584 = load double*, double** %3, align 8
  %585 = load i32, i32* %5, align 4
  %586 = add nsw i32 19, %585
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds double, double* %584, i64 %587
  %589 = bitcast double* %588 to i8*
  %590 = bitcast i8* %589 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = and i32 %591, 2
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %595

; <label>:594:                                    ; preds = %235
  store double 5.000000e-03, double* %6, align 8
  store double 2.000000e-03, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  br label %595

; <label>:595:                                    ; preds = %594, %235
  %596 = load double, double* %6, align 8
  %597 = load double, double* %6, align 8
  %598 = fmul double %596, %597
  %599 = load double, double* %7, align 8
  %600 = load double, double* %7, align 8
  %601 = fmul double %599, %600
  %602 = fadd double %598, %601
  %603 = load double, double* %8, align 8
  %604 = load double, double* %8, align 8
  %605 = fmul double %603, %604
  %606 = fadd double %602, %605
  %607 = fmul double 1.500000e+00, %606
  store double %607, double* %9, align 8
  %608 = load double*, double** %3, align 8
  %609 = load i32, i32* %5, align 4
  %610 = add nsw i32 0, %609
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds double, double* %608, i64 %611
  %613 = load double, double* %612, align 8
  %614 = fmul double 0xBFEE666666666666, %613
  %615 = load double, double* %10, align 8
  %616 = fmul double 0x3FE4CCCCCCCCCCCC, %615
  %617 = load double, double* %9, align 8
  %618 = fsub double 1.000000e+00, %617
  %619 = fmul double %616, %618
  %620 = fadd double %614, %619
  %621 = load double*, double** %4, align 8
  %622 = load i32, i32* %5, align 4
  %623 = add nsw i32 0, %622
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds double, double* %621, i64 %624
  store double %620, double* %625, align 8
  %626 = load double*, double** %3, align 8
  %627 = load i32, i32* %5, align 4
  %628 = add nsw i32 1, %627
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds double, double* %626, i64 %629
  %631 = load double, double* %630, align 8
  %632 = fmul double 0xBFEE666666666666, %631
  %633 = load double, double* %10, align 8
  %634 = fmul double 0x3FBBBBBBBBBBBBBB, %633
  %635 = load double, double* %7, align 8
  %636 = load double, double* %7, align 8
  %637 = fmul double 4.500000e+00, %636
  %638 = fadd double %637, 3.000000e+00
  %639 = fmul double %635, %638
  %640 = fadd double 1.000000e+00, %639
  %641 = load double, double* %9, align 8
  %642 = fsub double %640, %641
  %643 = fmul double %634, %642
  %644 = fadd double %632, %643
  %645 = load double*, double** %4, align 8
  %646 = load i32, i32* %5, align 4
  %647 = add nsw i32 2001, %646
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds double, double* %645, i64 %648
  store double %644, double* %649, align 8
  %650 = load double*, double** %3, align 8
  %651 = load i32, i32* %5, align 4
  %652 = add nsw i32 2, %651
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds double, double* %650, i64 %653
  %655 = load double, double* %654, align 8
  %656 = fmul double 0xBFEE666666666666, %655
  %657 = load double, double* %10, align 8
  %658 = fmul double 0x3FBBBBBBBBBBBBBB, %657
  %659 = load double, double* %7, align 8
  %660 = load double, double* %7, align 8
  %661 = fmul double 4.500000e+00, %660
  %662 = fsub double %661, 3.000000e+00
  %663 = fmul double %659, %662
  %664 = fadd double 1.000000e+00, %663
  %665 = load double, double* %9, align 8
  %666 = fsub double %664, %665
  %667 = fmul double %658, %666
  %668 = fadd double %656, %667
  %669 = load double*, double** %4, align 8
  %670 = load i32, i32* %5, align 4
  %671 = add nsw i32 -1998, %670
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds double, double* %669, i64 %672
  store double %668, double* %673, align 8
  %674 = load double*, double** %3, align 8
  %675 = load i32, i32* %5, align 4
  %676 = add nsw i32 3, %675
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds double, double* %674, i64 %677
  %679 = load double, double* %678, align 8
  %680 = fmul double 0xBFEE666666666666, %679
  %681 = load double, double* %10, align 8
  %682 = fmul double 0x3FBBBBBBBBBBBBBB, %681
  %683 = load double, double* %6, align 8
  %684 = load double, double* %6, align 8
  %685 = fmul double 4.500000e+00, %684
  %686 = fadd double %685, 3.000000e+00
  %687 = fmul double %683, %686
  %688 = fadd double 1.000000e+00, %687
  %689 = load double, double* %9, align 8
  %690 = fsub double %688, %689
  %691 = fmul double %682, %690
  %692 = fadd double %680, %691
  %693 = load double*, double** %4, align 8
  %694 = load i32, i32* %5, align 4
  %695 = add nsw i32 23, %694
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds double, double* %693, i64 %696
  store double %692, double* %697, align 8
  %698 = load double*, double** %3, align 8
  %699 = load i32, i32* %5, align 4
  %700 = add nsw i32 4, %699
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds double, double* %698, i64 %701
  %703 = load double, double* %702, align 8
  %704 = fmul double 0xBFEE666666666666, %703
  %705 = load double, double* %10, align 8
  %706 = fmul double 0x3FBBBBBBBBBBBBBB, %705
  %707 = load double, double* %6, align 8
  %708 = load double, double* %6, align 8
  %709 = fmul double 4.500000e+00, %708
  %710 = fsub double %709, 3.000000e+00
  %711 = fmul double %707, %710
  %712 = fadd double 1.000000e+00, %711
  %713 = load double, double* %9, align 8
  %714 = fsub double %712, %713
  %715 = fmul double %706, %714
  %716 = fadd double %704, %715
  %717 = load double*, double** %4, align 8
  %718 = load i32, i32* %5, align 4
  %719 = add nsw i32 -16, %718
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds double, double* %717, i64 %720
  store double %716, double* %721, align 8
  %722 = load double*, double** %3, align 8
  %723 = load i32, i32* %5, align 4
  %724 = add nsw i32 5, %723
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds double, double* %722, i64 %725
  %727 = load double, double* %726, align 8
  %728 = fmul double 0xBFEE666666666666, %727
  %729 = load double, double* %10, align 8
  %730 = fmul double 0x3FBBBBBBBBBBBBBB, %729
  %731 = load double, double* %8, align 8
  %732 = load double, double* %8, align 8
  %733 = fmul double 4.500000e+00, %732
  %734 = fadd double %733, 3.000000e+00
  %735 = fmul double %731, %734
  %736 = fadd double 1.000000e+00, %735
  %737 = load double, double* %9, align 8
  %738 = fsub double %736, %737
  %739 = fmul double %730, %738
  %740 = fadd double %728, %739
  %741 = load double*, double** %4, align 8
  %742 = load i32, i32* %5, align 4
  %743 = add nsw i32 200005, %742
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds double, double* %741, i64 %744
  store double %740, double* %745, align 8
  %746 = load double*, double** %3, align 8
  %747 = load i32, i32* %5, align 4
  %748 = add nsw i32 6, %747
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds double, double* %746, i64 %749
  %751 = load double, double* %750, align 8
  %752 = fmul double 0xBFEE666666666666, %751
  %753 = load double, double* %10, align 8
  %754 = fmul double 0x3FBBBBBBBBBBBBBB, %753
  %755 = load double, double* %8, align 8
  %756 = load double, double* %8, align 8
  %757 = fmul double 4.500000e+00, %756
  %758 = fsub double %757, 3.000000e+00
  %759 = fmul double %755, %758
  %760 = fadd double 1.000000e+00, %759
  %761 = load double, double* %9, align 8
  %762 = fsub double %760, %761
  %763 = fmul double %754, %762
  %764 = fadd double %752, %763
  %765 = load double*, double** %4, align 8
  %766 = load i32, i32* %5, align 4
  %767 = add nsw i32 -199994, %766
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds double, double* %765, i64 %768
  store double %764, double* %769, align 8
  %770 = load double*, double** %3, align 8
  %771 = load i32, i32* %5, align 4
  %772 = add nsw i32 7, %771
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds double, double* %770, i64 %773
  %775 = load double, double* %774, align 8
  %776 = fmul double 0xBFEE666666666666, %775
  %777 = load double, double* %10, align 8
  %778 = fmul double 0x3FABBBBBBBBBBBBB, %777
  %779 = load double, double* %6, align 8
  %780 = load double, double* %7, align 8
  %781 = fadd double %779, %780
  %782 = load double, double* %6, align 8
  %783 = load double, double* %7, align 8
  %784 = fadd double %782, %783
  %785 = fmul double 4.500000e+00, %784
  %786 = fadd double %785, 3.000000e+00
  %787 = fmul double %781, %786
  %788 = fadd double 1.000000e+00, %787
  %789 = load double, double* %9, align 8
  %790 = fsub double %788, %789
  %791 = fmul double %778, %790
  %792 = fadd double %776, %791
  %793 = load double*, double** %4, align 8
  %794 = load i32, i32* %5, align 4
  %795 = add nsw i32 2027, %794
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds double, double* %793, i64 %796
  store double %792, double* %797, align 8
  %798 = load double*, double** %3, align 8
  %799 = load i32, i32* %5, align 4
  %800 = add nsw i32 8, %799
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds double, double* %798, i64 %801
  %803 = load double, double* %802, align 8
  %804 = fmul double 0xBFEE666666666666, %803
  %805 = load double, double* %10, align 8
  %806 = fmul double 0x3FABBBBBBBBBBBBB, %805
  %807 = load double, double* %6, align 8
  %808 = fsub double -0.000000e+00, %807
  %809 = load double, double* %7, align 8
  %810 = fadd double %808, %809
  %811 = load double, double* %6, align 8
  %812 = fsub double -0.000000e+00, %811
  %813 = load double, double* %7, align 8
  %814 = fadd double %812, %813
  %815 = fmul double 4.500000e+00, %814
  %816 = fadd double %815, 3.000000e+00
  %817 = fmul double %810, %816
  %818 = fadd double 1.000000e+00, %817
  %819 = load double, double* %9, align 8
  %820 = fsub double %818, %819
  %821 = fmul double %806, %820
  %822 = fadd double %804, %821
  %823 = load double*, double** %4, align 8
  %824 = load i32, i32* %5, align 4
  %825 = add nsw i32 1988, %824
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds double, double* %823, i64 %826
  store double %822, double* %827, align 8
  %828 = load double*, double** %3, align 8
  %829 = load i32, i32* %5, align 4
  %830 = add nsw i32 9, %829
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds double, double* %828, i64 %831
  %833 = load double, double* %832, align 8
  %834 = fmul double 0xBFEE666666666666, %833
  %835 = load double, double* %10, align 8
  %836 = fmul double 0x3FABBBBBBBBBBBBB, %835
  %837 = load double, double* %6, align 8
  %838 = load double, double* %7, align 8
  %839 = fsub double %837, %838
  %840 = load double, double* %6, align 8
  %841 = load double, double* %7, align 8
  %842 = fsub double %840, %841
  %843 = fmul double 4.500000e+00, %842
  %844 = fadd double %843, 3.000000e+00
  %845 = fmul double %839, %844
  %846 = fadd double 1.000000e+00, %845
  %847 = load double, double* %9, align 8
  %848 = fsub double %846, %847
  %849 = fmul double %836, %848
  %850 = fadd double %834, %849
  %851 = load double*, double** %4, align 8
  %852 = load i32, i32* %5, align 4
  %853 = add nsw i32 -1971, %852
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds double, double* %851, i64 %854
  store double %850, double* %855, align 8
  %856 = load double*, double** %3, align 8
  %857 = load i32, i32* %5, align 4
  %858 = add nsw i32 10, %857
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds double, double* %856, i64 %859
  %861 = load double, double* %860, align 8
  %862 = fmul double 0xBFEE666666666666, %861
  %863 = load double, double* %10, align 8
  %864 = fmul double 0x3FABBBBBBBBBBBBB, %863
  %865 = load double, double* %6, align 8
  %866 = fsub double -0.000000e+00, %865
  %867 = load double, double* %7, align 8
  %868 = fsub double %866, %867
  %869 = load double, double* %6, align 8
  %870 = fsub double -0.000000e+00, %869
  %871 = load double, double* %7, align 8
  %872 = fsub double %870, %871
  %873 = fmul double 4.500000e+00, %872
  %874 = fadd double %873, 3.000000e+00
  %875 = fmul double %868, %874
  %876 = fadd double 1.000000e+00, %875
  %877 = load double, double* %9, align 8
  %878 = fsub double %876, %877
  %879 = fmul double %864, %878
  %880 = fadd double %862, %879
  %881 = load double*, double** %4, align 8
  %882 = load i32, i32* %5, align 4
  %883 = add nsw i32 -2010, %882
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds double, double* %881, i64 %884
  store double %880, double* %885, align 8
  %886 = load double*, double** %3, align 8
  %887 = load i32, i32* %5, align 4
  %888 = add nsw i32 11, %887
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds double, double* %886, i64 %889
  %891 = load double, double* %890, align 8
  %892 = fmul double 0xBFEE666666666666, %891
  %893 = load double, double* %10, align 8
  %894 = fmul double 0x3FABBBBBBBBBBBBB, %893
  %895 = load double, double* %7, align 8
  %896 = load double, double* %8, align 8
  %897 = fadd double %895, %896
  %898 = load double, double* %7, align 8
  %899 = load double, double* %8, align 8
  %900 = fadd double %898, %899
  %901 = fmul double 4.500000e+00, %900
  %902 = fadd double %901, 3.000000e+00
  %903 = fmul double %897, %902
  %904 = fadd double 1.000000e+00, %903
  %905 = load double, double* %9, align 8
  %906 = fsub double %904, %905
  %907 = fmul double %894, %906
  %908 = fadd double %892, %907
  %909 = load double*, double** %4, align 8
  %910 = load i32, i32* %5, align 4
  %911 = add nsw i32 202011, %910
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds double, double* %909, i64 %912
  store double %908, double* %913, align 8
  %914 = load double*, double** %3, align 8
  %915 = load i32, i32* %5, align 4
  %916 = add nsw i32 12, %915
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds double, double* %914, i64 %917
  %919 = load double, double* %918, align 8
  %920 = fmul double 0xBFEE666666666666, %919
  %921 = load double, double* %10, align 8
  %922 = fmul double 0x3FABBBBBBBBBBBBB, %921
  %923 = load double, double* %7, align 8
  %924 = load double, double* %8, align 8
  %925 = fsub double %923, %924
  %926 = load double, double* %7, align 8
  %927 = load double, double* %8, align 8
  %928 = fsub double %926, %927
  %929 = fmul double 4.500000e+00, %928
  %930 = fadd double %929, 3.000000e+00
  %931 = fmul double %925, %930
  %932 = fadd double 1.000000e+00, %931
  %933 = load double, double* %9, align 8
  %934 = fsub double %932, %933
  %935 = fmul double %922, %934
  %936 = fadd double %920, %935
  %937 = load double*, double** %4, align 8
  %938 = load i32, i32* %5, align 4
  %939 = add nsw i32 -197988, %938
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds double, double* %937, i64 %940
  store double %936, double* %941, align 8
  %942 = load double*, double** %3, align 8
  %943 = load i32, i32* %5, align 4
  %944 = add nsw i32 13, %943
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds double, double* %942, i64 %945
  %947 = load double, double* %946, align 8
  %948 = fmul double 0xBFEE666666666666, %947
  %949 = load double, double* %10, align 8
  %950 = fmul double 0x3FABBBBBBBBBBBBB, %949
  %951 = load double, double* %7, align 8
  %952 = fsub double -0.000000e+00, %951
  %953 = load double, double* %8, align 8
  %954 = fadd double %952, %953
  %955 = load double, double* %7, align 8
  %956 = fsub double -0.000000e+00, %955
  %957 = load double, double* %8, align 8
  %958 = fadd double %956, %957
  %959 = fmul double 4.500000e+00, %958
  %960 = fadd double %959, 3.000000e+00
  %961 = fmul double %954, %960
  %962 = fadd double 1.000000e+00, %961
  %963 = load double, double* %9, align 8
  %964 = fsub double %962, %963
  %965 = fmul double %950, %964
  %966 = fadd double %948, %965
  %967 = load double*, double** %4, align 8
  %968 = load i32, i32* %5, align 4
  %969 = add nsw i32 198013, %968
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds double, double* %967, i64 %970
  store double %966, double* %971, align 8
  %972 = load double*, double** %3, align 8
  %973 = load i32, i32* %5, align 4
  %974 = add nsw i32 14, %973
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds double, double* %972, i64 %975
  %977 = load double, double* %976, align 8
  %978 = fmul double 0xBFEE666666666666, %977
  %979 = load double, double* %10, align 8
  %980 = fmul double 0x3FABBBBBBBBBBBBB, %979
  %981 = load double, double* %7, align 8
  %982 = fsub double -0.000000e+00, %981
  %983 = load double, double* %8, align 8
  %984 = fsub double %982, %983
  %985 = load double, double* %7, align 8
  %986 = fsub double -0.000000e+00, %985
  %987 = load double, double* %8, align 8
  %988 = fsub double %986, %987
  %989 = fmul double 4.500000e+00, %988
  %990 = fadd double %989, 3.000000e+00
  %991 = fmul double %984, %990
  %992 = fadd double 1.000000e+00, %991
  %993 = load double, double* %9, align 8
  %994 = fsub double %992, %993
  %995 = fmul double %980, %994
  %996 = fadd double %978, %995
  %997 = load double*, double** %4, align 8
  %998 = load i32, i32* %5, align 4
  %999 = add nsw i32 -201986, %998
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds double, double* %997, i64 %1000
  store double %996, double* %1001, align 8
  %1002 = load double*, double** %3, align 8
  %1003 = load i32, i32* %5, align 4
  %1004 = add nsw i32 15, %1003
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds double, double* %1002, i64 %1005
  %1007 = load double, double* %1006, align 8
  %1008 = fmul double 0xBFEE666666666666, %1007
  %1009 = load double, double* %10, align 8
  %1010 = fmul double 0x3FABBBBBBBBBBBBB, %1009
  %1011 = load double, double* %6, align 8
  %1012 = load double, double* %8, align 8
  %1013 = fadd double %1011, %1012
  %1014 = load double, double* %6, align 8
  %1015 = load double, double* %8, align 8
  %1016 = fadd double %1014, %1015
  %1017 = fmul double 4.500000e+00, %1016
  %1018 = fadd double %1017, 3.000000e+00
  %1019 = fmul double %1013, %1018
  %1020 = fadd double 1.000000e+00, %1019
  %1021 = load double, double* %9, align 8
  %1022 = fsub double %1020, %1021
  %1023 = fmul double %1010, %1022
  %1024 = fadd double %1008, %1023
  %1025 = load double*, double** %4, align 8
  %1026 = load i32, i32* %5, align 4
  %1027 = add nsw i32 200035, %1026
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds double, double* %1025, i64 %1028
  store double %1024, double* %1029, align 8
  %1030 = load double*, double** %3, align 8
  %1031 = load i32, i32* %5, align 4
  %1032 = add nsw i32 16, %1031
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds double, double* %1030, i64 %1033
  %1035 = load double, double* %1034, align 8
  %1036 = fmul double 0xBFEE666666666666, %1035
  %1037 = load double, double* %10, align 8
  %1038 = fmul double 0x3FABBBBBBBBBBBBB, %1037
  %1039 = load double, double* %6, align 8
  %1040 = load double, double* %8, align 8
  %1041 = fsub double %1039, %1040
  %1042 = load double, double* %6, align 8
  %1043 = load double, double* %8, align 8
  %1044 = fsub double %1042, %1043
  %1045 = fmul double 4.500000e+00, %1044
  %1046 = fadd double %1045, 3.000000e+00
  %1047 = fmul double %1041, %1046
  %1048 = fadd double 1.000000e+00, %1047
  %1049 = load double, double* %9, align 8
  %1050 = fsub double %1048, %1049
  %1051 = fmul double %1038, %1050
  %1052 = fadd double %1036, %1051
  %1053 = load double*, double** %4, align 8
  %1054 = load i32, i32* %5, align 4
  %1055 = add nsw i32 -199964, %1054
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds double, double* %1053, i64 %1056
  store double %1052, double* %1057, align 8
  %1058 = load double*, double** %3, align 8
  %1059 = load i32, i32* %5, align 4
  %1060 = add nsw i32 17, %1059
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds double, double* %1058, i64 %1061
  %1063 = load double, double* %1062, align 8
  %1064 = fmul double 0xBFEE666666666666, %1063
  %1065 = load double, double* %10, align 8
  %1066 = fmul double 0x3FABBBBBBBBBBBBB, %1065
  %1067 = load double, double* %6, align 8
  %1068 = fsub double -0.000000e+00, %1067
  %1069 = load double, double* %8, align 8
  %1070 = fadd double %1068, %1069
  %1071 = load double, double* %6, align 8
  %1072 = fsub double -0.000000e+00, %1071
  %1073 = load double, double* %8, align 8
  %1074 = fadd double %1072, %1073
  %1075 = fmul double 4.500000e+00, %1074
  %1076 = fadd double %1075, 3.000000e+00
  %1077 = fmul double %1070, %1076
  %1078 = fadd double 1.000000e+00, %1077
  %1079 = load double, double* %9, align 8
  %1080 = fsub double %1078, %1079
  %1081 = fmul double %1066, %1080
  %1082 = fadd double %1064, %1081
  %1083 = load double*, double** %4, align 8
  %1084 = load i32, i32* %5, align 4
  %1085 = add nsw i32 199997, %1084
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds double, double* %1083, i64 %1086
  store double %1082, double* %1087, align 8
  %1088 = load double*, double** %3, align 8
  %1089 = load i32, i32* %5, align 4
  %1090 = add nsw i32 18, %1089
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds double, double* %1088, i64 %1091
  %1093 = load double, double* %1092, align 8
  %1094 = fmul double 0xBFEE666666666666, %1093
  %1095 = load double, double* %10, align 8
  %1096 = fmul double 0x3FABBBBBBBBBBBBB, %1095
  %1097 = load double, double* %6, align 8
  %1098 = fsub double -0.000000e+00, %1097
  %1099 = load double, double* %8, align 8
  %1100 = fsub double %1098, %1099
  %1101 = load double, double* %6, align 8
  %1102 = fsub double -0.000000e+00, %1101
  %1103 = load double, double* %8, align 8
  %1104 = fsub double %1102, %1103
  %1105 = fmul double 4.500000e+00, %1104
  %1106 = fadd double %1105, 3.000000e+00
  %1107 = fmul double %1100, %1106
  %1108 = fadd double 1.000000e+00, %1107
  %1109 = load double, double* %9, align 8
  %1110 = fsub double %1108, %1109
  %1111 = fmul double %1096, %1110
  %1112 = fadd double %1094, %1111
  %1113 = load double*, double** %4, align 8
  %1114 = load i32, i32* %5, align 4
  %1115 = add nsw i32 -200002, %1114
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds double, double* %1113, i64 %1116
  store double %1112, double* %1117, align 8
  br label %1118

; <label>:1118:                                   ; preds = %595, %25
  %1119 = load i32, i32* %5, align 4
  %1120 = add nsw i32 %1119, 20
  store i32 %1120, i32* %5, align 4
  br label %11

; <label>:1121:                                   ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_handleInOutFlow(double*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  store double* %0, double** %2, align 8
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %684, %1
  %20 = load i32, i32* %18, align 4
  %21 = icmp slt i32 %20, 200000
  br i1 %21, label %22, label %687

; <label>:22:                                     ; preds = %19
  %23 = load double*, double** %2, align 8
  %24 = load i32, i32* %18, align 4
  %25 = add nsw i32 200000, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %23, i64 %26
  %28 = load double, double* %27, align 8
  %29 = load double*, double** %2, align 8
  %30 = load i32, i32* %18, align 4
  %31 = add nsw i32 200001, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %29, i64 %32
  %34 = load double, double* %33, align 8
  %35 = fadd double %28, %34
  %36 = load double*, double** %2, align 8
  %37 = load i32, i32* %18, align 4
  %38 = add nsw i32 200002, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %36, i64 %39
  %41 = load double, double* %40, align 8
  %42 = fadd double %35, %41
  %43 = load double*, double** %2, align 8
  %44 = load i32, i32* %18, align 4
  %45 = add nsw i32 200003, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %43, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fadd double %42, %48
  %50 = load double*, double** %2, align 8
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 200004, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %50, i64 %53
  %55 = load double, double* %54, align 8
  %56 = fadd double %49, %55
  %57 = load double*, double** %2, align 8
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 200005, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %57, i64 %60
  %62 = load double, double* %61, align 8
  %63 = fadd double %56, %62
  %64 = load double*, double** %2, align 8
  %65 = load i32, i32* %18, align 4
  %66 = add nsw i32 200006, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %64, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fadd double %63, %69
  %71 = load double*, double** %2, align 8
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 200007, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, double* %71, i64 %74
  %76 = load double, double* %75, align 8
  %77 = fadd double %70, %76
  %78 = load double*, double** %2, align 8
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 200008, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %78, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fadd double %77, %83
  %85 = load double*, double** %2, align 8
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 200009, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %85, i64 %88
  %90 = load double, double* %89, align 8
  %91 = fadd double %84, %90
  %92 = load double*, double** %2, align 8
  %93 = load i32, i32* %18, align 4
  %94 = add nsw i32 200010, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %92, i64 %95
  %97 = load double, double* %96, align 8
  %98 = fadd double %91, %97
  %99 = load double*, double** %2, align 8
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 200011, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %99, i64 %102
  %104 = load double, double* %103, align 8
  %105 = fadd double %98, %104
  %106 = load double*, double** %2, align 8
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 200012, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %106, i64 %109
  %111 = load double, double* %110, align 8
  %112 = fadd double %105, %111
  %113 = load double*, double** %2, align 8
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 200013, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %113, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fadd double %112, %118
  %120 = load double*, double** %2, align 8
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 200014, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %120, i64 %123
  %125 = load double, double* %124, align 8
  %126 = fadd double %119, %125
  %127 = load double*, double** %2, align 8
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 200015, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %127, i64 %130
  %132 = load double, double* %131, align 8
  %133 = fadd double %126, %132
  %134 = load double*, double** %2, align 8
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 200016, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %134, i64 %137
  %139 = load double, double* %138, align 8
  %140 = fadd double %133, %139
  %141 = load double*, double** %2, align 8
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 200017, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, double* %141, i64 %144
  %146 = load double, double* %145, align 8
  %147 = fadd double %140, %146
  %148 = load double*, double** %2, align 8
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 200018, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %148, i64 %151
  %153 = load double, double* %152, align 8
  %154 = fadd double %147, %153
  store double %154, double* %10, align 8
  %155 = load double*, double** %2, align 8
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 400000, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %155, i64 %158
  %160 = load double, double* %159, align 8
  %161 = load double*, double** %2, align 8
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 400001, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %161, i64 %164
  %166 = load double, double* %165, align 8
  %167 = fadd double %160, %166
  %168 = load double*, double** %2, align 8
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 400002, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %168, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fadd double %167, %173
  %175 = load double*, double** %2, align 8
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 400003, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %175, i64 %178
  %180 = load double, double* %179, align 8
  %181 = fadd double %174, %180
  %182 = load double*, double** %2, align 8
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 400004, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %182, i64 %185
  %187 = load double, double* %186, align 8
  %188 = fadd double %181, %187
  %189 = load double*, double** %2, align 8
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 400005, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %189, i64 %192
  %194 = load double, double* %193, align 8
  %195 = fadd double %188, %194
  %196 = load double*, double** %2, align 8
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 400006, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds double, double* %196, i64 %199
  %201 = load double, double* %200, align 8
  %202 = fadd double %195, %201
  %203 = load double*, double** %2, align 8
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 400007, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %203, i64 %206
  %208 = load double, double* %207, align 8
  %209 = fadd double %202, %208
  %210 = load double*, double** %2, align 8
  %211 = load i32, i32* %18, align 4
  %212 = add nsw i32 400008, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %210, i64 %213
  %215 = load double, double* %214, align 8
  %216 = fadd double %209, %215
  %217 = load double*, double** %2, align 8
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 400009, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds double, double* %217, i64 %220
  %222 = load double, double* %221, align 8
  %223 = fadd double %216, %222
  %224 = load double*, double** %2, align 8
  %225 = load i32, i32* %18, align 4
  %226 = add nsw i32 400010, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds double, double* %224, i64 %227
  %229 = load double, double* %228, align 8
  %230 = fadd double %223, %229
  %231 = load double*, double** %2, align 8
  %232 = load i32, i32* %18, align 4
  %233 = add nsw i32 400011, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, double* %231, i64 %234
  %236 = load double, double* %235, align 8
  %237 = fadd double %230, %236
  %238 = load double*, double** %2, align 8
  %239 = load i32, i32* %18, align 4
  %240 = add nsw i32 400012, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, double* %238, i64 %241
  %243 = load double, double* %242, align 8
  %244 = fadd double %237, %243
  %245 = load double*, double** %2, align 8
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 400013, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds double, double* %245, i64 %248
  %250 = load double, double* %249, align 8
  %251 = fadd double %244, %250
  %252 = load double*, double** %2, align 8
  %253 = load i32, i32* %18, align 4
  %254 = add nsw i32 400014, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds double, double* %252, i64 %255
  %257 = load double, double* %256, align 8
  %258 = fadd double %251, %257
  %259 = load double*, double** %2, align 8
  %260 = load i32, i32* %18, align 4
  %261 = add nsw i32 400015, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double, double* %259, i64 %262
  %264 = load double, double* %263, align 8
  %265 = fadd double %258, %264
  %266 = load double*, double** %2, align 8
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 400016, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds double, double* %266, i64 %269
  %271 = load double, double* %270, align 8
  %272 = fadd double %265, %271
  %273 = load double*, double** %2, align 8
  %274 = load i32, i32* %18, align 4
  %275 = add nsw i32 400017, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds double, double* %273, i64 %276
  %278 = load double, double* %277, align 8
  %279 = fadd double %272, %278
  %280 = load double*, double** %2, align 8
  %281 = load i32, i32* %18, align 4
  %282 = add nsw i32 400018, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds double, double* %280, i64 %283
  %285 = load double, double* %284, align 8
  %286 = fadd double %279, %285
  store double %286, double* %14, align 8
  %287 = load double, double* %10, align 8
  %288 = fmul double 2.000000e+00, %287
  %289 = load double, double* %14, align 8
  %290 = fsub double %288, %289
  store double %290, double* %6, align 8
  %291 = load i32, i32* %18, align 4
  %292 = sdiv i32 %291, 20
  %293 = srem i32 %292, 100
  %294 = sitofp i32 %293 to double
  %295 = fdiv double %294, 4.950000e+01
  %296 = fsub double %295, 1.000000e+00
  store double %296, double* %16, align 8
  %297 = load i32, i32* %18, align 4
  %298 = sdiv i32 %297, 20
  %299 = sdiv i32 %298, 100
  %300 = srem i32 %299, 100
  %301 = sitofp i32 %300 to double
  %302 = fdiv double %301, 4.950000e+01
  %303 = fsub double %302, 1.000000e+00
  store double %303, double* %17, align 8
  store double 0.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %304 = load double, double* %16, align 8
  %305 = load double, double* %16, align 8
  %306 = fmul double %304, %305
  %307 = fsub double 1.000000e+00, %306
  %308 = fmul double 1.000000e-02, %307
  %309 = load double, double* %17, align 8
  %310 = load double, double* %17, align 8
  %311 = fmul double %309, %310
  %312 = fsub double 1.000000e+00, %311
  %313 = fmul double %308, %312
  store double %313, double* %5, align 8
  %314 = load double, double* %3, align 8
  %315 = load double, double* %3, align 8
  %316 = fmul double %314, %315
  %317 = load double, double* %4, align 8
  %318 = load double, double* %4, align 8
  %319 = fmul double %317, %318
  %320 = fadd double %316, %319
  %321 = load double, double* %5, align 8
  %322 = load double, double* %5, align 8
  %323 = fmul double %321, %322
  %324 = fadd double %320, %323
  %325 = fmul double 1.500000e+00, %324
  store double %325, double* %15, align 8
  %326 = load double, double* %6, align 8
  %327 = fmul double 0x3FD5555555555555, %326
  %328 = load double, double* %15, align 8
  %329 = fsub double 1.000000e+00, %328
  %330 = fmul double %327, %329
  %331 = load double*, double** %2, align 8
  %332 = load i32, i32* %18, align 4
  %333 = add nsw i32 0, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds double, double* %331, i64 %334
  store double %330, double* %335, align 8
  %336 = load double, double* %6, align 8
  %337 = fmul double 0x3FAC71C71C71C71C, %336
  %338 = load double, double* %4, align 8
  %339 = load double, double* %4, align 8
  %340 = fmul double 4.500000e+00, %339
  %341 = fadd double %340, 3.000000e+00
  %342 = fmul double %338, %341
  %343 = fadd double 1.000000e+00, %342
  %344 = load double, double* %15, align 8
  %345 = fsub double %343, %344
  %346 = fmul double %337, %345
  %347 = load double*, double** %2, align 8
  %348 = load i32, i32* %18, align 4
  %349 = add nsw i32 1, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds double, double* %347, i64 %350
  store double %346, double* %351, align 8
  %352 = load double, double* %6, align 8
  %353 = fmul double 0x3FAC71C71C71C71C, %352
  %354 = load double, double* %4, align 8
  %355 = load double, double* %4, align 8
  %356 = fmul double 4.500000e+00, %355
  %357 = fsub double %356, 3.000000e+00
  %358 = fmul double %354, %357
  %359 = fadd double 1.000000e+00, %358
  %360 = load double, double* %15, align 8
  %361 = fsub double %359, %360
  %362 = fmul double %353, %361
  %363 = load double*, double** %2, align 8
  %364 = load i32, i32* %18, align 4
  %365 = add nsw i32 2, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds double, double* %363, i64 %366
  store double %362, double* %367, align 8
  %368 = load double, double* %6, align 8
  %369 = fmul double 0x3FAC71C71C71C71C, %368
  %370 = load double, double* %3, align 8
  %371 = load double, double* %3, align 8
  %372 = fmul double 4.500000e+00, %371
  %373 = fadd double %372, 3.000000e+00
  %374 = fmul double %370, %373
  %375 = fadd double 1.000000e+00, %374
  %376 = load double, double* %15, align 8
  %377 = fsub double %375, %376
  %378 = fmul double %369, %377
  %379 = load double*, double** %2, align 8
  %380 = load i32, i32* %18, align 4
  %381 = add nsw i32 3, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds double, double* %379, i64 %382
  store double %378, double* %383, align 8
  %384 = load double, double* %6, align 8
  %385 = fmul double 0x3FAC71C71C71C71C, %384
  %386 = load double, double* %3, align 8
  %387 = load double, double* %3, align 8
  %388 = fmul double 4.500000e+00, %387
  %389 = fsub double %388, 3.000000e+00
  %390 = fmul double %386, %389
  %391 = fadd double 1.000000e+00, %390
  %392 = load double, double* %15, align 8
  %393 = fsub double %391, %392
  %394 = fmul double %385, %393
  %395 = load double*, double** %2, align 8
  %396 = load i32, i32* %18, align 4
  %397 = add nsw i32 4, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds double, double* %395, i64 %398
  store double %394, double* %399, align 8
  %400 = load double, double* %6, align 8
  %401 = fmul double 0x3FAC71C71C71C71C, %400
  %402 = load double, double* %5, align 8
  %403 = load double, double* %5, align 8
  %404 = fmul double 4.500000e+00, %403
  %405 = fadd double %404, 3.000000e+00
  %406 = fmul double %402, %405
  %407 = fadd double 1.000000e+00, %406
  %408 = load double, double* %15, align 8
  %409 = fsub double %407, %408
  %410 = fmul double %401, %409
  %411 = load double*, double** %2, align 8
  %412 = load i32, i32* %18, align 4
  %413 = add nsw i32 5, %412
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds double, double* %411, i64 %414
  store double %410, double* %415, align 8
  %416 = load double, double* %6, align 8
  %417 = fmul double 0x3FAC71C71C71C71C, %416
  %418 = load double, double* %5, align 8
  %419 = load double, double* %5, align 8
  %420 = fmul double 4.500000e+00, %419
  %421 = fsub double %420, 3.000000e+00
  %422 = fmul double %418, %421
  %423 = fadd double 1.000000e+00, %422
  %424 = load double, double* %15, align 8
  %425 = fsub double %423, %424
  %426 = fmul double %417, %425
  %427 = load double*, double** %2, align 8
  %428 = load i32, i32* %18, align 4
  %429 = add nsw i32 6, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds double, double* %427, i64 %430
  store double %426, double* %431, align 8
  %432 = load double, double* %6, align 8
  %433 = fmul double 0x3F9C71C71C71C71C, %432
  %434 = load double, double* %3, align 8
  %435 = load double, double* %4, align 8
  %436 = fadd double %434, %435
  %437 = load double, double* %3, align 8
  %438 = load double, double* %4, align 8
  %439 = fadd double %437, %438
  %440 = fmul double 4.500000e+00, %439
  %441 = fadd double %440, 3.000000e+00
  %442 = fmul double %436, %441
  %443 = fadd double 1.000000e+00, %442
  %444 = load double, double* %15, align 8
  %445 = fsub double %443, %444
  %446 = fmul double %433, %445
  %447 = load double*, double** %2, align 8
  %448 = load i32, i32* %18, align 4
  %449 = add nsw i32 7, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds double, double* %447, i64 %450
  store double %446, double* %451, align 8
  %452 = load double, double* %6, align 8
  %453 = fmul double 0x3F9C71C71C71C71C, %452
  %454 = load double, double* %3, align 8
  %455 = fsub double -0.000000e+00, %454
  %456 = load double, double* %4, align 8
  %457 = fadd double %455, %456
  %458 = load double, double* %3, align 8
  %459 = fsub double -0.000000e+00, %458
  %460 = load double, double* %4, align 8
  %461 = fadd double %459, %460
  %462 = fmul double 4.500000e+00, %461
  %463 = fadd double %462, 3.000000e+00
  %464 = fmul double %457, %463
  %465 = fadd double 1.000000e+00, %464
  %466 = load double, double* %15, align 8
  %467 = fsub double %465, %466
  %468 = fmul double %453, %467
  %469 = load double*, double** %2, align 8
  %470 = load i32, i32* %18, align 4
  %471 = add nsw i32 8, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds double, double* %469, i64 %472
  store double %468, double* %473, align 8
  %474 = load double, double* %6, align 8
  %475 = fmul double 0x3F9C71C71C71C71C, %474
  %476 = load double, double* %3, align 8
  %477 = load double, double* %4, align 8
  %478 = fsub double %476, %477
  %479 = load double, double* %3, align 8
  %480 = load double, double* %4, align 8
  %481 = fsub double %479, %480
  %482 = fmul double 4.500000e+00, %481
  %483 = fadd double %482, 3.000000e+00
  %484 = fmul double %478, %483
  %485 = fadd double 1.000000e+00, %484
  %486 = load double, double* %15, align 8
  %487 = fsub double %485, %486
  %488 = fmul double %475, %487
  %489 = load double*, double** %2, align 8
  %490 = load i32, i32* %18, align 4
  %491 = add nsw i32 9, %490
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds double, double* %489, i64 %492
  store double %488, double* %493, align 8
  %494 = load double, double* %6, align 8
  %495 = fmul double 0x3F9C71C71C71C71C, %494
  %496 = load double, double* %3, align 8
  %497 = fsub double -0.000000e+00, %496
  %498 = load double, double* %4, align 8
  %499 = fsub double %497, %498
  %500 = load double, double* %3, align 8
  %501 = fsub double -0.000000e+00, %500
  %502 = load double, double* %4, align 8
  %503 = fsub double %501, %502
  %504 = fmul double 4.500000e+00, %503
  %505 = fadd double %504, 3.000000e+00
  %506 = fmul double %499, %505
  %507 = fadd double 1.000000e+00, %506
  %508 = load double, double* %15, align 8
  %509 = fsub double %507, %508
  %510 = fmul double %495, %509
  %511 = load double*, double** %2, align 8
  %512 = load i32, i32* %18, align 4
  %513 = add nsw i32 10, %512
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds double, double* %511, i64 %514
  store double %510, double* %515, align 8
  %516 = load double, double* %6, align 8
  %517 = fmul double 0x3F9C71C71C71C71C, %516
  %518 = load double, double* %4, align 8
  %519 = load double, double* %5, align 8
  %520 = fadd double %518, %519
  %521 = load double, double* %4, align 8
  %522 = load double, double* %5, align 8
  %523 = fadd double %521, %522
  %524 = fmul double 4.500000e+00, %523
  %525 = fadd double %524, 3.000000e+00
  %526 = fmul double %520, %525
  %527 = fadd double 1.000000e+00, %526
  %528 = load double, double* %15, align 8
  %529 = fsub double %527, %528
  %530 = fmul double %517, %529
  %531 = load double*, double** %2, align 8
  %532 = load i32, i32* %18, align 4
  %533 = add nsw i32 11, %532
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds double, double* %531, i64 %534
  store double %530, double* %535, align 8
  %536 = load double, double* %6, align 8
  %537 = fmul double 0x3F9C71C71C71C71C, %536
  %538 = load double, double* %4, align 8
  %539 = load double, double* %5, align 8
  %540 = fsub double %538, %539
  %541 = load double, double* %4, align 8
  %542 = load double, double* %5, align 8
  %543 = fsub double %541, %542
  %544 = fmul double 4.500000e+00, %543
  %545 = fadd double %544, 3.000000e+00
  %546 = fmul double %540, %545
  %547 = fadd double 1.000000e+00, %546
  %548 = load double, double* %15, align 8
  %549 = fsub double %547, %548
  %550 = fmul double %537, %549
  %551 = load double*, double** %2, align 8
  %552 = load i32, i32* %18, align 4
  %553 = add nsw i32 12, %552
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds double, double* %551, i64 %554
  store double %550, double* %555, align 8
  %556 = load double, double* %6, align 8
  %557 = fmul double 0x3F9C71C71C71C71C, %556
  %558 = load double, double* %4, align 8
  %559 = fsub double -0.000000e+00, %558
  %560 = load double, double* %5, align 8
  %561 = fadd double %559, %560
  %562 = load double, double* %4, align 8
  %563 = fsub double -0.000000e+00, %562
  %564 = load double, double* %5, align 8
  %565 = fadd double %563, %564
  %566 = fmul double 4.500000e+00, %565
  %567 = fadd double %566, 3.000000e+00
  %568 = fmul double %561, %567
  %569 = fadd double 1.000000e+00, %568
  %570 = load double, double* %15, align 8
  %571 = fsub double %569, %570
  %572 = fmul double %557, %571
  %573 = load double*, double** %2, align 8
  %574 = load i32, i32* %18, align 4
  %575 = add nsw i32 13, %574
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds double, double* %573, i64 %576
  store double %572, double* %577, align 8
  %578 = load double, double* %6, align 8
  %579 = fmul double 0x3F9C71C71C71C71C, %578
  %580 = load double, double* %4, align 8
  %581 = fsub double -0.000000e+00, %580
  %582 = load double, double* %5, align 8
  %583 = fsub double %581, %582
  %584 = load double, double* %4, align 8
  %585 = fsub double -0.000000e+00, %584
  %586 = load double, double* %5, align 8
  %587 = fsub double %585, %586
  %588 = fmul double 4.500000e+00, %587
  %589 = fadd double %588, 3.000000e+00
  %590 = fmul double %583, %589
  %591 = fadd double 1.000000e+00, %590
  %592 = load double, double* %15, align 8
  %593 = fsub double %591, %592
  %594 = fmul double %579, %593
  %595 = load double*, double** %2, align 8
  %596 = load i32, i32* %18, align 4
  %597 = add nsw i32 14, %596
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds double, double* %595, i64 %598
  store double %594, double* %599, align 8
  %600 = load double, double* %6, align 8
  %601 = fmul double 0x3F9C71C71C71C71C, %600
  %602 = load double, double* %3, align 8
  %603 = load double, double* %5, align 8
  %604 = fadd double %602, %603
  %605 = load double, double* %3, align 8
  %606 = load double, double* %5, align 8
  %607 = fadd double %605, %606
  %608 = fmul double 4.500000e+00, %607
  %609 = fadd double %608, 3.000000e+00
  %610 = fmul double %604, %609
  %611 = fadd double 1.000000e+00, %610
  %612 = load double, double* %15, align 8
  %613 = fsub double %611, %612
  %614 = fmul double %601, %613
  %615 = load double*, double** %2, align 8
  %616 = load i32, i32* %18, align 4
  %617 = add nsw i32 15, %616
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds double, double* %615, i64 %618
  store double %614, double* %619, align 8
  %620 = load double, double* %6, align 8
  %621 = fmul double 0x3F9C71C71C71C71C, %620
  %622 = load double, double* %3, align 8
  %623 = load double, double* %5, align 8
  %624 = fsub double %622, %623
  %625 = load double, double* %3, align 8
  %626 = load double, double* %5, align 8
  %627 = fsub double %625, %626
  %628 = fmul double 4.500000e+00, %627
  %629 = fadd double %628, 3.000000e+00
  %630 = fmul double %624, %629
  %631 = fadd double 1.000000e+00, %630
  %632 = load double, double* %15, align 8
  %633 = fsub double %631, %632
  %634 = fmul double %621, %633
  %635 = load double*, double** %2, align 8
  %636 = load i32, i32* %18, align 4
  %637 = add nsw i32 16, %636
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds double, double* %635, i64 %638
  store double %634, double* %639, align 8
  %640 = load double, double* %6, align 8
  %641 = fmul double 0x3F9C71C71C71C71C, %640
  %642 = load double, double* %3, align 8
  %643 = fsub double -0.000000e+00, %642
  %644 = load double, double* %5, align 8
  %645 = fadd double %643, %644
  %646 = load double, double* %3, align 8
  %647 = fsub double -0.000000e+00, %646
  %648 = load double, double* %5, align 8
  %649 = fadd double %647, %648
  %650 = fmul double 4.500000e+00, %649
  %651 = fadd double %650, 3.000000e+00
  %652 = fmul double %645, %651
  %653 = fadd double 1.000000e+00, %652
  %654 = load double, double* %15, align 8
  %655 = fsub double %653, %654
  %656 = fmul double %641, %655
  %657 = load double*, double** %2, align 8
  %658 = load i32, i32* %18, align 4
  %659 = add nsw i32 17, %658
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds double, double* %657, i64 %660
  store double %656, double* %661, align 8
  %662 = load double, double* %6, align 8
  %663 = fmul double 0x3F9C71C71C71C71C, %662
  %664 = load double, double* %3, align 8
  %665 = fsub double -0.000000e+00, %664
  %666 = load double, double* %5, align 8
  %667 = fsub double %665, %666
  %668 = load double, double* %3, align 8
  %669 = fsub double -0.000000e+00, %668
  %670 = load double, double* %5, align 8
  %671 = fsub double %669, %670
  %672 = fmul double 4.500000e+00, %671
  %673 = fadd double %672, 3.000000e+00
  %674 = fmul double %667, %673
  %675 = fadd double 1.000000e+00, %674
  %676 = load double, double* %15, align 8
  %677 = fsub double %675, %676
  %678 = fmul double %663, %677
  %679 = load double*, double** %2, align 8
  %680 = load i32, i32* %18, align 4
  %681 = add nsw i32 18, %680
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds double, double* %679, i64 %682
  store double %678, double* %683, align 8
  br label %684

; <label>:684:                                    ; preds = %22
  %685 = load i32, i32* %18, align 4
  %686 = add nsw i32 %685, 20
  store i32 %686, i32* %18, align 4
  br label %19

; <label>:687:                                    ; preds = %19
  store i32 25800000, i32* %18, align 4
  br label %688

; <label>:688:                                    ; preds = %1770, %687
  %689 = load i32, i32* %18, align 4
  %690 = icmp slt i32 %689, 26000000
  br i1 %690, label %691, label %1773

; <label>:691:                                    ; preds = %688
  %692 = load double*, double** %2, align 8
  %693 = load i32, i32* %18, align 4
  %694 = add nsw i32 -200000, %693
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds double, double* %692, i64 %695
  %697 = load double, double* %696, align 8
  %698 = load double*, double** %2, align 8
  %699 = load i32, i32* %18, align 4
  %700 = add nsw i32 -199999, %699
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds double, double* %698, i64 %701
  %703 = load double, double* %702, align 8
  %704 = fadd double %697, %703
  %705 = load double*, double** %2, align 8
  %706 = load i32, i32* %18, align 4
  %707 = add nsw i32 -199998, %706
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds double, double* %705, i64 %708
  %710 = load double, double* %709, align 8
  %711 = fadd double %704, %710
  %712 = load double*, double** %2, align 8
  %713 = load i32, i32* %18, align 4
  %714 = add nsw i32 -199997, %713
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds double, double* %712, i64 %715
  %717 = load double, double* %716, align 8
  %718 = fadd double %711, %717
  %719 = load double*, double** %2, align 8
  %720 = load i32, i32* %18, align 4
  %721 = add nsw i32 -199996, %720
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds double, double* %719, i64 %722
  %724 = load double, double* %723, align 8
  %725 = fadd double %718, %724
  %726 = load double*, double** %2, align 8
  %727 = load i32, i32* %18, align 4
  %728 = add nsw i32 -199995, %727
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds double, double* %726, i64 %729
  %731 = load double, double* %730, align 8
  %732 = fadd double %725, %731
  %733 = load double*, double** %2, align 8
  %734 = load i32, i32* %18, align 4
  %735 = add nsw i32 -199994, %734
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds double, double* %733, i64 %736
  %738 = load double, double* %737, align 8
  %739 = fadd double %732, %738
  %740 = load double*, double** %2, align 8
  %741 = load i32, i32* %18, align 4
  %742 = add nsw i32 -199993, %741
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds double, double* %740, i64 %743
  %745 = load double, double* %744, align 8
  %746 = fadd double %739, %745
  %747 = load double*, double** %2, align 8
  %748 = load i32, i32* %18, align 4
  %749 = add nsw i32 -199992, %748
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds double, double* %747, i64 %750
  %752 = load double, double* %751, align 8
  %753 = fadd double %746, %752
  %754 = load double*, double** %2, align 8
  %755 = load i32, i32* %18, align 4
  %756 = add nsw i32 -199991, %755
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds double, double* %754, i64 %757
  %759 = load double, double* %758, align 8
  %760 = fadd double %753, %759
  %761 = load double*, double** %2, align 8
  %762 = load i32, i32* %18, align 4
  %763 = add nsw i32 -199990, %762
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds double, double* %761, i64 %764
  %766 = load double, double* %765, align 8
  %767 = fadd double %760, %766
  %768 = load double*, double** %2, align 8
  %769 = load i32, i32* %18, align 4
  %770 = add nsw i32 -199989, %769
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds double, double* %768, i64 %771
  %773 = load double, double* %772, align 8
  %774 = fadd double %767, %773
  %775 = load double*, double** %2, align 8
  %776 = load i32, i32* %18, align 4
  %777 = add nsw i32 -199988, %776
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds double, double* %775, i64 %778
  %780 = load double, double* %779, align 8
  %781 = fadd double %774, %780
  %782 = load double*, double** %2, align 8
  %783 = load i32, i32* %18, align 4
  %784 = add nsw i32 -199987, %783
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds double, double* %782, i64 %785
  %787 = load double, double* %786, align 8
  %788 = fadd double %781, %787
  %789 = load double*, double** %2, align 8
  %790 = load i32, i32* %18, align 4
  %791 = add nsw i32 -199986, %790
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds double, double* %789, i64 %792
  %794 = load double, double* %793, align 8
  %795 = fadd double %788, %794
  %796 = load double*, double** %2, align 8
  %797 = load i32, i32* %18, align 4
  %798 = add nsw i32 -199985, %797
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds double, double* %796, i64 %799
  %801 = load double, double* %800, align 8
  %802 = fadd double %795, %801
  %803 = load double*, double** %2, align 8
  %804 = load i32, i32* %18, align 4
  %805 = add nsw i32 -199984, %804
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds double, double* %803, i64 %806
  %808 = load double, double* %807, align 8
  %809 = fadd double %802, %808
  %810 = load double*, double** %2, align 8
  %811 = load i32, i32* %18, align 4
  %812 = add nsw i32 -199983, %811
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds double, double* %810, i64 %813
  %815 = load double, double* %814, align 8
  %816 = fadd double %809, %815
  %817 = load double*, double** %2, align 8
  %818 = load i32, i32* %18, align 4
  %819 = add nsw i32 -199982, %818
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds double, double* %817, i64 %820
  %822 = load double, double* %821, align 8
  %823 = fadd double %816, %822
  store double %823, double* %10, align 8
  %824 = load double*, double** %2, align 8
  %825 = load i32, i32* %18, align 4
  %826 = add nsw i32 -199997, %825
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds double, double* %824, i64 %827
  %829 = load double, double* %828, align 8
  %830 = load double*, double** %2, align 8
  %831 = load i32, i32* %18, align 4
  %832 = add nsw i32 -199996, %831
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds double, double* %830, i64 %833
  %835 = load double, double* %834, align 8
  %836 = fsub double %829, %835
  %837 = load double*, double** %2, align 8
  %838 = load i32, i32* %18, align 4
  %839 = add nsw i32 -199993, %838
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds double, double* %837, i64 %840
  %842 = load double, double* %841, align 8
  %843 = fadd double %836, %842
  %844 = load double*, double** %2, align 8
  %845 = load i32, i32* %18, align 4
  %846 = add nsw i32 -199992, %845
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds double, double* %844, i64 %847
  %849 = load double, double* %848, align 8
  %850 = fsub double %843, %849
  %851 = load double*, double** %2, align 8
  %852 = load i32, i32* %18, align 4
  %853 = add nsw i32 -199991, %852
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds double, double* %851, i64 %854
  %856 = load double, double* %855, align 8
  %857 = fadd double %850, %856
  %858 = load double*, double** %2, align 8
  %859 = load i32, i32* %18, align 4
  %860 = add nsw i32 -199990, %859
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds double, double* %858, i64 %861
  %863 = load double, double* %862, align 8
  %864 = fsub double %857, %863
  %865 = load double*, double** %2, align 8
  %866 = load i32, i32* %18, align 4
  %867 = add nsw i32 -199985, %866
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds double, double* %865, i64 %868
  %870 = load double, double* %869, align 8
  %871 = fadd double %864, %870
  %872 = load double*, double** %2, align 8
  %873 = load i32, i32* %18, align 4
  %874 = add nsw i32 -199984, %873
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds double, double* %872, i64 %875
  %877 = load double, double* %876, align 8
  %878 = fadd double %871, %877
  %879 = load double*, double** %2, align 8
  %880 = load i32, i32* %18, align 4
  %881 = add nsw i32 -199983, %880
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds double, double* %879, i64 %882
  %884 = load double, double* %883, align 8
  %885 = fsub double %878, %884
  %886 = load double*, double** %2, align 8
  %887 = load i32, i32* %18, align 4
  %888 = add nsw i32 -199982, %887
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds double, double* %886, i64 %889
  %891 = load double, double* %890, align 8
  %892 = fsub double %885, %891
  store double %892, double* %7, align 8
  %893 = load double*, double** %2, align 8
  %894 = load i32, i32* %18, align 4
  %895 = add nsw i32 -199999, %894
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds double, double* %893, i64 %896
  %898 = load double, double* %897, align 8
  %899 = load double*, double** %2, align 8
  %900 = load i32, i32* %18, align 4
  %901 = add nsw i32 -199998, %900
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds double, double* %899, i64 %902
  %904 = load double, double* %903, align 8
  %905 = fsub double %898, %904
  %906 = load double*, double** %2, align 8
  %907 = load i32, i32* %18, align 4
  %908 = add nsw i32 -199993, %907
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds double, double* %906, i64 %909
  %911 = load double, double* %910, align 8
  %912 = fadd double %905, %911
  %913 = load double*, double** %2, align 8
  %914 = load i32, i32* %18, align 4
  %915 = add nsw i32 -199992, %914
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds double, double* %913, i64 %916
  %918 = load double, double* %917, align 8
  %919 = fadd double %912, %918
  %920 = load double*, double** %2, align 8
  %921 = load i32, i32* %18, align 4
  %922 = add nsw i32 -199991, %921
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds double, double* %920, i64 %923
  %925 = load double, double* %924, align 8
  %926 = fsub double %919, %925
  %927 = load double*, double** %2, align 8
  %928 = load i32, i32* %18, align 4
  %929 = add nsw i32 -199990, %928
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds double, double* %927, i64 %930
  %932 = load double, double* %931, align 8
  %933 = fsub double %926, %932
  %934 = load double*, double** %2, align 8
  %935 = load i32, i32* %18, align 4
  %936 = add nsw i32 -199989, %935
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds double, double* %934, i64 %937
  %939 = load double, double* %938, align 8
  %940 = fadd double %933, %939
  %941 = load double*, double** %2, align 8
  %942 = load i32, i32* %18, align 4
  %943 = add nsw i32 -199988, %942
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds double, double* %941, i64 %944
  %946 = load double, double* %945, align 8
  %947 = fadd double %940, %946
  %948 = load double*, double** %2, align 8
  %949 = load i32, i32* %18, align 4
  %950 = add nsw i32 -199987, %949
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds double, double* %948, i64 %951
  %953 = load double, double* %952, align 8
  %954 = fsub double %947, %953
  %955 = load double*, double** %2, align 8
  %956 = load i32, i32* %18, align 4
  %957 = add nsw i32 -199986, %956
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds double, double* %955, i64 %958
  %960 = load double, double* %959, align 8
  %961 = fsub double %954, %960
  store double %961, double* %8, align 8
  %962 = load double*, double** %2, align 8
  %963 = load i32, i32* %18, align 4
  %964 = add nsw i32 -199995, %963
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds double, double* %962, i64 %965
  %967 = load double, double* %966, align 8
  %968 = load double*, double** %2, align 8
  %969 = load i32, i32* %18, align 4
  %970 = add nsw i32 -199994, %969
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds double, double* %968, i64 %971
  %973 = load double, double* %972, align 8
  %974 = fsub double %967, %973
  %975 = load double*, double** %2, align 8
  %976 = load i32, i32* %18, align 4
  %977 = add nsw i32 -199989, %976
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds double, double* %975, i64 %978
  %980 = load double, double* %979, align 8
  %981 = fadd double %974, %980
  %982 = load double*, double** %2, align 8
  %983 = load i32, i32* %18, align 4
  %984 = add nsw i32 -199988, %983
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds double, double* %982, i64 %985
  %987 = load double, double* %986, align 8
  %988 = fsub double %981, %987
  %989 = load double*, double** %2, align 8
  %990 = load i32, i32* %18, align 4
  %991 = add nsw i32 -199987, %990
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds double, double* %989, i64 %992
  %994 = load double, double* %993, align 8
  %995 = fadd double %988, %994
  %996 = load double*, double** %2, align 8
  %997 = load i32, i32* %18, align 4
  %998 = add nsw i32 -199986, %997
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds double, double* %996, i64 %999
  %1001 = load double, double* %1000, align 8
  %1002 = fsub double %995, %1001
  %1003 = load double*, double** %2, align 8
  %1004 = load i32, i32* %18, align 4
  %1005 = add nsw i32 -199985, %1004
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds double, double* %1003, i64 %1006
  %1008 = load double, double* %1007, align 8
  %1009 = fadd double %1002, %1008
  %1010 = load double*, double** %2, align 8
  %1011 = load i32, i32* %18, align 4
  %1012 = add nsw i32 -199984, %1011
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds double, double* %1010, i64 %1013
  %1015 = load double, double* %1014, align 8
  %1016 = fsub double %1009, %1015
  %1017 = load double*, double** %2, align 8
  %1018 = load i32, i32* %18, align 4
  %1019 = add nsw i32 -199983, %1018
  %1020 = sext i32 %1019 to i64
  %1021 = getelementptr inbounds double, double* %1017, i64 %1020
  %1022 = load double, double* %1021, align 8
  %1023 = fadd double %1016, %1022
  %1024 = load double*, double** %2, align 8
  %1025 = load i32, i32* %18, align 4
  %1026 = add nsw i32 -199982, %1025
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds double, double* %1024, i64 %1027
  %1029 = load double, double* %1028, align 8
  %1030 = fsub double %1023, %1029
  store double %1030, double* %9, align 8
  %1031 = load double, double* %10, align 8
  %1032 = load double, double* %7, align 8
  %1033 = fdiv double %1032, %1031
  store double %1033, double* %7, align 8
  %1034 = load double, double* %10, align 8
  %1035 = load double, double* %8, align 8
  %1036 = fdiv double %1035, %1034
  store double %1036, double* %8, align 8
  %1037 = load double, double* %10, align 8
  %1038 = load double, double* %9, align 8
  %1039 = fdiv double %1038, %1037
  store double %1039, double* %9, align 8
  %1040 = load double*, double** %2, align 8
  %1041 = load i32, i32* %18, align 4
  %1042 = add nsw i32 -400000, %1041
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds double, double* %1040, i64 %1043
  %1045 = load double, double* %1044, align 8
  %1046 = load double*, double** %2, align 8
  %1047 = load i32, i32* %18, align 4
  %1048 = add nsw i32 -399999, %1047
  %1049 = sext i32 %1048 to i64
  %1050 = getelementptr inbounds double, double* %1046, i64 %1049
  %1051 = load double, double* %1050, align 8
  %1052 = fadd double %1045, %1051
  %1053 = load double*, double** %2, align 8
  %1054 = load i32, i32* %18, align 4
  %1055 = add nsw i32 -399998, %1054
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds double, double* %1053, i64 %1056
  %1058 = load double, double* %1057, align 8
  %1059 = fadd double %1052, %1058
  %1060 = load double*, double** %2, align 8
  %1061 = load i32, i32* %18, align 4
  %1062 = add nsw i32 -399997, %1061
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds double, double* %1060, i64 %1063
  %1065 = load double, double* %1064, align 8
  %1066 = fadd double %1059, %1065
  %1067 = load double*, double** %2, align 8
  %1068 = load i32, i32* %18, align 4
  %1069 = add nsw i32 -399996, %1068
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds double, double* %1067, i64 %1070
  %1072 = load double, double* %1071, align 8
  %1073 = fadd double %1066, %1072
  %1074 = load double*, double** %2, align 8
  %1075 = load i32, i32* %18, align 4
  %1076 = add nsw i32 -399995, %1075
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds double, double* %1074, i64 %1077
  %1079 = load double, double* %1078, align 8
  %1080 = fadd double %1073, %1079
  %1081 = load double*, double** %2, align 8
  %1082 = load i32, i32* %18, align 4
  %1083 = add nsw i32 -399994, %1082
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds double, double* %1081, i64 %1084
  %1086 = load double, double* %1085, align 8
  %1087 = fadd double %1080, %1086
  %1088 = load double*, double** %2, align 8
  %1089 = load i32, i32* %18, align 4
  %1090 = add nsw i32 -399993, %1089
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds double, double* %1088, i64 %1091
  %1093 = load double, double* %1092, align 8
  %1094 = fadd double %1087, %1093
  %1095 = load double*, double** %2, align 8
  %1096 = load i32, i32* %18, align 4
  %1097 = add nsw i32 -399992, %1096
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds double, double* %1095, i64 %1098
  %1100 = load double, double* %1099, align 8
  %1101 = fadd double %1094, %1100
  %1102 = load double*, double** %2, align 8
  %1103 = load i32, i32* %18, align 4
  %1104 = add nsw i32 -399991, %1103
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds double, double* %1102, i64 %1105
  %1107 = load double, double* %1106, align 8
  %1108 = fadd double %1101, %1107
  %1109 = load double*, double** %2, align 8
  %1110 = load i32, i32* %18, align 4
  %1111 = add nsw i32 -399990, %1110
  %1112 = sext i32 %1111 to i64
  %1113 = getelementptr inbounds double, double* %1109, i64 %1112
  %1114 = load double, double* %1113, align 8
  %1115 = fadd double %1108, %1114
  %1116 = load double*, double** %2, align 8
  %1117 = load i32, i32* %18, align 4
  %1118 = add nsw i32 -399989, %1117
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds double, double* %1116, i64 %1119
  %1121 = load double, double* %1120, align 8
  %1122 = fadd double %1115, %1121
  %1123 = load double*, double** %2, align 8
  %1124 = load i32, i32* %18, align 4
  %1125 = add nsw i32 -399988, %1124
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds double, double* %1123, i64 %1126
  %1128 = load double, double* %1127, align 8
  %1129 = fadd double %1122, %1128
  %1130 = load double*, double** %2, align 8
  %1131 = load i32, i32* %18, align 4
  %1132 = add nsw i32 -399987, %1131
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds double, double* %1130, i64 %1133
  %1135 = load double, double* %1134, align 8
  %1136 = fadd double %1129, %1135
  %1137 = load double*, double** %2, align 8
  %1138 = load i32, i32* %18, align 4
  %1139 = add nsw i32 -399986, %1138
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds double, double* %1137, i64 %1140
  %1142 = load double, double* %1141, align 8
  %1143 = fadd double %1136, %1142
  %1144 = load double*, double** %2, align 8
  %1145 = load i32, i32* %18, align 4
  %1146 = add nsw i32 -399985, %1145
  %1147 = sext i32 %1146 to i64
  %1148 = getelementptr inbounds double, double* %1144, i64 %1147
  %1149 = load double, double* %1148, align 8
  %1150 = fadd double %1143, %1149
  %1151 = load double*, double** %2, align 8
  %1152 = load i32, i32* %18, align 4
  %1153 = add nsw i32 -399984, %1152
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds double, double* %1151, i64 %1154
  %1156 = load double, double* %1155, align 8
  %1157 = fadd double %1150, %1156
  %1158 = load double*, double** %2, align 8
  %1159 = load i32, i32* %18, align 4
  %1160 = add nsw i32 -399983, %1159
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds double, double* %1158, i64 %1161
  %1163 = load double, double* %1162, align 8
  %1164 = fadd double %1157, %1163
  %1165 = load double*, double** %2, align 8
  %1166 = load i32, i32* %18, align 4
  %1167 = add nsw i32 -399982, %1166
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds double, double* %1165, i64 %1168
  %1170 = load double, double* %1169, align 8
  %1171 = fadd double %1164, %1170
  store double %1171, double* %14, align 8
  %1172 = load double*, double** %2, align 8
  %1173 = load i32, i32* %18, align 4
  %1174 = add nsw i32 -399997, %1173
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds double, double* %1172, i64 %1175
  %1177 = load double, double* %1176, align 8
  %1178 = load double*, double** %2, align 8
  %1179 = load i32, i32* %18, align 4
  %1180 = add nsw i32 -399996, %1179
  %1181 = sext i32 %1180 to i64
  %1182 = getelementptr inbounds double, double* %1178, i64 %1181
  %1183 = load double, double* %1182, align 8
  %1184 = fsub double %1177, %1183
  %1185 = load double*, double** %2, align 8
  %1186 = load i32, i32* %18, align 4
  %1187 = add nsw i32 -399993, %1186
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds double, double* %1185, i64 %1188
  %1190 = load double, double* %1189, align 8
  %1191 = fadd double %1184, %1190
  %1192 = load double*, double** %2, align 8
  %1193 = load i32, i32* %18, align 4
  %1194 = add nsw i32 -399992, %1193
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds double, double* %1192, i64 %1195
  %1197 = load double, double* %1196, align 8
  %1198 = fsub double %1191, %1197
  %1199 = load double*, double** %2, align 8
  %1200 = load i32, i32* %18, align 4
  %1201 = add nsw i32 -399991, %1200
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds double, double* %1199, i64 %1202
  %1204 = load double, double* %1203, align 8
  %1205 = fadd double %1198, %1204
  %1206 = load double*, double** %2, align 8
  %1207 = load i32, i32* %18, align 4
  %1208 = add nsw i32 -399990, %1207
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds double, double* %1206, i64 %1209
  %1211 = load double, double* %1210, align 8
  %1212 = fsub double %1205, %1211
  %1213 = load double*, double** %2, align 8
  %1214 = load i32, i32* %18, align 4
  %1215 = add nsw i32 -399985, %1214
  %1216 = sext i32 %1215 to i64
  %1217 = getelementptr inbounds double, double* %1213, i64 %1216
  %1218 = load double, double* %1217, align 8
  %1219 = fadd double %1212, %1218
  %1220 = load double*, double** %2, align 8
  %1221 = load i32, i32* %18, align 4
  %1222 = add nsw i32 -399984, %1221
  %1223 = sext i32 %1222 to i64
  %1224 = getelementptr inbounds double, double* %1220, i64 %1223
  %1225 = load double, double* %1224, align 8
  %1226 = fadd double %1219, %1225
  %1227 = load double*, double** %2, align 8
  %1228 = load i32, i32* %18, align 4
  %1229 = add nsw i32 -399983, %1228
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds double, double* %1227, i64 %1230
  %1232 = load double, double* %1231, align 8
  %1233 = fsub double %1226, %1232
  %1234 = load double*, double** %2, align 8
  %1235 = load i32, i32* %18, align 4
  %1236 = add nsw i32 -399982, %1235
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds double, double* %1234, i64 %1237
  %1239 = load double, double* %1238, align 8
  %1240 = fsub double %1233, %1239
  store double %1240, double* %11, align 8
  %1241 = load double*, double** %2, align 8
  %1242 = load i32, i32* %18, align 4
  %1243 = add nsw i32 -399999, %1242
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds double, double* %1241, i64 %1244
  %1246 = load double, double* %1245, align 8
  %1247 = load double*, double** %2, align 8
  %1248 = load i32, i32* %18, align 4
  %1249 = add nsw i32 -399998, %1248
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds double, double* %1247, i64 %1250
  %1252 = load double, double* %1251, align 8
  %1253 = fsub double %1246, %1252
  %1254 = load double*, double** %2, align 8
  %1255 = load i32, i32* %18, align 4
  %1256 = add nsw i32 -399993, %1255
  %1257 = sext i32 %1256 to i64
  %1258 = getelementptr inbounds double, double* %1254, i64 %1257
  %1259 = load double, double* %1258, align 8
  %1260 = fadd double %1253, %1259
  %1261 = load double*, double** %2, align 8
  %1262 = load i32, i32* %18, align 4
  %1263 = add nsw i32 -399992, %1262
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds double, double* %1261, i64 %1264
  %1266 = load double, double* %1265, align 8
  %1267 = fadd double %1260, %1266
  %1268 = load double*, double** %2, align 8
  %1269 = load i32, i32* %18, align 4
  %1270 = add nsw i32 -399991, %1269
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds double, double* %1268, i64 %1271
  %1273 = load double, double* %1272, align 8
  %1274 = fsub double %1267, %1273
  %1275 = load double*, double** %2, align 8
  %1276 = load i32, i32* %18, align 4
  %1277 = add nsw i32 -399990, %1276
  %1278 = sext i32 %1277 to i64
  %1279 = getelementptr inbounds double, double* %1275, i64 %1278
  %1280 = load double, double* %1279, align 8
  %1281 = fsub double %1274, %1280
  %1282 = load double*, double** %2, align 8
  %1283 = load i32, i32* %18, align 4
  %1284 = add nsw i32 -399989, %1283
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds double, double* %1282, i64 %1285
  %1287 = load double, double* %1286, align 8
  %1288 = fadd double %1281, %1287
  %1289 = load double*, double** %2, align 8
  %1290 = load i32, i32* %18, align 4
  %1291 = add nsw i32 -399988, %1290
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds double, double* %1289, i64 %1292
  %1294 = load double, double* %1293, align 8
  %1295 = fadd double %1288, %1294
  %1296 = load double*, double** %2, align 8
  %1297 = load i32, i32* %18, align 4
  %1298 = add nsw i32 -399987, %1297
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds double, double* %1296, i64 %1299
  %1301 = load double, double* %1300, align 8
  %1302 = fsub double %1295, %1301
  %1303 = load double*, double** %2, align 8
  %1304 = load i32, i32* %18, align 4
  %1305 = add nsw i32 -399986, %1304
  %1306 = sext i32 %1305 to i64
  %1307 = getelementptr inbounds double, double* %1303, i64 %1306
  %1308 = load double, double* %1307, align 8
  %1309 = fsub double %1302, %1308
  store double %1309, double* %12, align 8
  %1310 = load double*, double** %2, align 8
  %1311 = load i32, i32* %18, align 4
  %1312 = add nsw i32 -399995, %1311
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds double, double* %1310, i64 %1313
  %1315 = load double, double* %1314, align 8
  %1316 = load double*, double** %2, align 8
  %1317 = load i32, i32* %18, align 4
  %1318 = add nsw i32 -399994, %1317
  %1319 = sext i32 %1318 to i64
  %1320 = getelementptr inbounds double, double* %1316, i64 %1319
  %1321 = load double, double* %1320, align 8
  %1322 = fsub double %1315, %1321
  %1323 = load double*, double** %2, align 8
  %1324 = load i32, i32* %18, align 4
  %1325 = add nsw i32 -399989, %1324
  %1326 = sext i32 %1325 to i64
  %1327 = getelementptr inbounds double, double* %1323, i64 %1326
  %1328 = load double, double* %1327, align 8
  %1329 = fadd double %1322, %1328
  %1330 = load double*, double** %2, align 8
  %1331 = load i32, i32* %18, align 4
  %1332 = add nsw i32 -399988, %1331
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds double, double* %1330, i64 %1333
  %1335 = load double, double* %1334, align 8
  %1336 = fsub double %1329, %1335
  %1337 = load double*, double** %2, align 8
  %1338 = load i32, i32* %18, align 4
  %1339 = add nsw i32 -399987, %1338
  %1340 = sext i32 %1339 to i64
  %1341 = getelementptr inbounds double, double* %1337, i64 %1340
  %1342 = load double, double* %1341, align 8
  %1343 = fadd double %1336, %1342
  %1344 = load double*, double** %2, align 8
  %1345 = load i32, i32* %18, align 4
  %1346 = add nsw i32 -399986, %1345
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds double, double* %1344, i64 %1347
  %1349 = load double, double* %1348, align 8
  %1350 = fsub double %1343, %1349
  %1351 = load double*, double** %2, align 8
  %1352 = load i32, i32* %18, align 4
  %1353 = add nsw i32 -399985, %1352
  %1354 = sext i32 %1353 to i64
  %1355 = getelementptr inbounds double, double* %1351, i64 %1354
  %1356 = load double, double* %1355, align 8
  %1357 = fadd double %1350, %1356
  %1358 = load double*, double** %2, align 8
  %1359 = load i32, i32* %18, align 4
  %1360 = add nsw i32 -399984, %1359
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds double, double* %1358, i64 %1361
  %1363 = load double, double* %1362, align 8
  %1364 = fsub double %1357, %1363
  %1365 = load double*, double** %2, align 8
  %1366 = load i32, i32* %18, align 4
  %1367 = add nsw i32 -399983, %1366
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds double, double* %1365, i64 %1368
  %1370 = load double, double* %1369, align 8
  %1371 = fadd double %1364, %1370
  %1372 = load double*, double** %2, align 8
  %1373 = load i32, i32* %18, align 4
  %1374 = add nsw i32 -399982, %1373
  %1375 = sext i32 %1374 to i64
  %1376 = getelementptr inbounds double, double* %1372, i64 %1375
  %1377 = load double, double* %1376, align 8
  %1378 = fsub double %1371, %1377
  store double %1378, double* %13, align 8
  %1379 = load double, double* %14, align 8
  %1380 = load double, double* %11, align 8
  %1381 = fdiv double %1380, %1379
  store double %1381, double* %11, align 8
  %1382 = load double, double* %14, align 8
  %1383 = load double, double* %12, align 8
  %1384 = fdiv double %1383, %1382
  store double %1384, double* %12, align 8
  %1385 = load double, double* %14, align 8
  %1386 = load double, double* %13, align 8
  %1387 = fdiv double %1386, %1385
  store double %1387, double* %13, align 8
  store double 1.000000e+00, double* %6, align 8
  %1388 = load double, double* %7, align 8
  %1389 = fmul double 2.000000e+00, %1388
  %1390 = load double, double* %11, align 8
  %1391 = fsub double %1389, %1390
  store double %1391, double* %3, align 8
  %1392 = load double, double* %8, align 8
  %1393 = fmul double 2.000000e+00, %1392
  %1394 = load double, double* %12, align 8
  %1395 = fsub double %1393, %1394
  store double %1395, double* %4, align 8
  %1396 = load double, double* %9, align 8
  %1397 = fmul double 2.000000e+00, %1396
  %1398 = load double, double* %13, align 8
  %1399 = fsub double %1397, %1398
  store double %1399, double* %5, align 8
  %1400 = load double, double* %3, align 8
  %1401 = load double, double* %3, align 8
  %1402 = fmul double %1400, %1401
  %1403 = load double, double* %4, align 8
  %1404 = load double, double* %4, align 8
  %1405 = fmul double %1403, %1404
  %1406 = fadd double %1402, %1405
  %1407 = load double, double* %5, align 8
  %1408 = load double, double* %5, align 8
  %1409 = fmul double %1407, %1408
  %1410 = fadd double %1406, %1409
  %1411 = fmul double 1.500000e+00, %1410
  store double %1411, double* %15, align 8
  %1412 = load double, double* %6, align 8
  %1413 = fmul double 0x3FD5555555555555, %1412
  %1414 = load double, double* %15, align 8
  %1415 = fsub double 1.000000e+00, %1414
  %1416 = fmul double %1413, %1415
  %1417 = load double*, double** %2, align 8
  %1418 = load i32, i32* %18, align 4
  %1419 = add nsw i32 0, %1418
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds double, double* %1417, i64 %1420
  store double %1416, double* %1421, align 8
  %1422 = load double, double* %6, align 8
  %1423 = fmul double 0x3FAC71C71C71C71C, %1422
  %1424 = load double, double* %4, align 8
  %1425 = load double, double* %4, align 8
  %1426 = fmul double 4.500000e+00, %1425
  %1427 = fadd double %1426, 3.000000e+00
  %1428 = fmul double %1424, %1427
  %1429 = fadd double 1.000000e+00, %1428
  %1430 = load double, double* %15, align 8
  %1431 = fsub double %1429, %1430
  %1432 = fmul double %1423, %1431
  %1433 = load double*, double** %2, align 8
  %1434 = load i32, i32* %18, align 4
  %1435 = add nsw i32 1, %1434
  %1436 = sext i32 %1435 to i64
  %1437 = getelementptr inbounds double, double* %1433, i64 %1436
  store double %1432, double* %1437, align 8
  %1438 = load double, double* %6, align 8
  %1439 = fmul double 0x3FAC71C71C71C71C, %1438
  %1440 = load double, double* %4, align 8
  %1441 = load double, double* %4, align 8
  %1442 = fmul double 4.500000e+00, %1441
  %1443 = fsub double %1442, 3.000000e+00
  %1444 = fmul double %1440, %1443
  %1445 = fadd double 1.000000e+00, %1444
  %1446 = load double, double* %15, align 8
  %1447 = fsub double %1445, %1446
  %1448 = fmul double %1439, %1447
  %1449 = load double*, double** %2, align 8
  %1450 = load i32, i32* %18, align 4
  %1451 = add nsw i32 2, %1450
  %1452 = sext i32 %1451 to i64
  %1453 = getelementptr inbounds double, double* %1449, i64 %1452
  store double %1448, double* %1453, align 8
  %1454 = load double, double* %6, align 8
  %1455 = fmul double 0x3FAC71C71C71C71C, %1454
  %1456 = load double, double* %3, align 8
  %1457 = load double, double* %3, align 8
  %1458 = fmul double 4.500000e+00, %1457
  %1459 = fadd double %1458, 3.000000e+00
  %1460 = fmul double %1456, %1459
  %1461 = fadd double 1.000000e+00, %1460
  %1462 = load double, double* %15, align 8
  %1463 = fsub double %1461, %1462
  %1464 = fmul double %1455, %1463
  %1465 = load double*, double** %2, align 8
  %1466 = load i32, i32* %18, align 4
  %1467 = add nsw i32 3, %1466
  %1468 = sext i32 %1467 to i64
  %1469 = getelementptr inbounds double, double* %1465, i64 %1468
  store double %1464, double* %1469, align 8
  %1470 = load double, double* %6, align 8
  %1471 = fmul double 0x3FAC71C71C71C71C, %1470
  %1472 = load double, double* %3, align 8
  %1473 = load double, double* %3, align 8
  %1474 = fmul double 4.500000e+00, %1473
  %1475 = fsub double %1474, 3.000000e+00
  %1476 = fmul double %1472, %1475
  %1477 = fadd double 1.000000e+00, %1476
  %1478 = load double, double* %15, align 8
  %1479 = fsub double %1477, %1478
  %1480 = fmul double %1471, %1479
  %1481 = load double*, double** %2, align 8
  %1482 = load i32, i32* %18, align 4
  %1483 = add nsw i32 4, %1482
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds double, double* %1481, i64 %1484
  store double %1480, double* %1485, align 8
  %1486 = load double, double* %6, align 8
  %1487 = fmul double 0x3FAC71C71C71C71C, %1486
  %1488 = load double, double* %5, align 8
  %1489 = load double, double* %5, align 8
  %1490 = fmul double 4.500000e+00, %1489
  %1491 = fadd double %1490, 3.000000e+00
  %1492 = fmul double %1488, %1491
  %1493 = fadd double 1.000000e+00, %1492
  %1494 = load double, double* %15, align 8
  %1495 = fsub double %1493, %1494
  %1496 = fmul double %1487, %1495
  %1497 = load double*, double** %2, align 8
  %1498 = load i32, i32* %18, align 4
  %1499 = add nsw i32 5, %1498
  %1500 = sext i32 %1499 to i64
  %1501 = getelementptr inbounds double, double* %1497, i64 %1500
  store double %1496, double* %1501, align 8
  %1502 = load double, double* %6, align 8
  %1503 = fmul double 0x3FAC71C71C71C71C, %1502
  %1504 = load double, double* %5, align 8
  %1505 = load double, double* %5, align 8
  %1506 = fmul double 4.500000e+00, %1505
  %1507 = fsub double %1506, 3.000000e+00
  %1508 = fmul double %1504, %1507
  %1509 = fadd double 1.000000e+00, %1508
  %1510 = load double, double* %15, align 8
  %1511 = fsub double %1509, %1510
  %1512 = fmul double %1503, %1511
  %1513 = load double*, double** %2, align 8
  %1514 = load i32, i32* %18, align 4
  %1515 = add nsw i32 6, %1514
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds double, double* %1513, i64 %1516
  store double %1512, double* %1517, align 8
  %1518 = load double, double* %6, align 8
  %1519 = fmul double 0x3F9C71C71C71C71C, %1518
  %1520 = load double, double* %3, align 8
  %1521 = load double, double* %4, align 8
  %1522 = fadd double %1520, %1521
  %1523 = load double, double* %3, align 8
  %1524 = load double, double* %4, align 8
  %1525 = fadd double %1523, %1524
  %1526 = fmul double 4.500000e+00, %1525
  %1527 = fadd double %1526, 3.000000e+00
  %1528 = fmul double %1522, %1527
  %1529 = fadd double 1.000000e+00, %1528
  %1530 = load double, double* %15, align 8
  %1531 = fsub double %1529, %1530
  %1532 = fmul double %1519, %1531
  %1533 = load double*, double** %2, align 8
  %1534 = load i32, i32* %18, align 4
  %1535 = add nsw i32 7, %1534
  %1536 = sext i32 %1535 to i64
  %1537 = getelementptr inbounds double, double* %1533, i64 %1536
  store double %1532, double* %1537, align 8
  %1538 = load double, double* %6, align 8
  %1539 = fmul double 0x3F9C71C71C71C71C, %1538
  %1540 = load double, double* %3, align 8
  %1541 = fsub double -0.000000e+00, %1540
  %1542 = load double, double* %4, align 8
  %1543 = fadd double %1541, %1542
  %1544 = load double, double* %3, align 8
  %1545 = fsub double -0.000000e+00, %1544
  %1546 = load double, double* %4, align 8
  %1547 = fadd double %1545, %1546
  %1548 = fmul double 4.500000e+00, %1547
  %1549 = fadd double %1548, 3.000000e+00
  %1550 = fmul double %1543, %1549
  %1551 = fadd double 1.000000e+00, %1550
  %1552 = load double, double* %15, align 8
  %1553 = fsub double %1551, %1552
  %1554 = fmul double %1539, %1553
  %1555 = load double*, double** %2, align 8
  %1556 = load i32, i32* %18, align 4
  %1557 = add nsw i32 8, %1556
  %1558 = sext i32 %1557 to i64
  %1559 = getelementptr inbounds double, double* %1555, i64 %1558
  store double %1554, double* %1559, align 8
  %1560 = load double, double* %6, align 8
  %1561 = fmul double 0x3F9C71C71C71C71C, %1560
  %1562 = load double, double* %3, align 8
  %1563 = load double, double* %4, align 8
  %1564 = fsub double %1562, %1563
  %1565 = load double, double* %3, align 8
  %1566 = load double, double* %4, align 8
  %1567 = fsub double %1565, %1566
  %1568 = fmul double 4.500000e+00, %1567
  %1569 = fadd double %1568, 3.000000e+00
  %1570 = fmul double %1564, %1569
  %1571 = fadd double 1.000000e+00, %1570
  %1572 = load double, double* %15, align 8
  %1573 = fsub double %1571, %1572
  %1574 = fmul double %1561, %1573
  %1575 = load double*, double** %2, align 8
  %1576 = load i32, i32* %18, align 4
  %1577 = add nsw i32 9, %1576
  %1578 = sext i32 %1577 to i64
  %1579 = getelementptr inbounds double, double* %1575, i64 %1578
  store double %1574, double* %1579, align 8
  %1580 = load double, double* %6, align 8
  %1581 = fmul double 0x3F9C71C71C71C71C, %1580
  %1582 = load double, double* %3, align 8
  %1583 = fsub double -0.000000e+00, %1582
  %1584 = load double, double* %4, align 8
  %1585 = fsub double %1583, %1584
  %1586 = load double, double* %3, align 8
  %1587 = fsub double -0.000000e+00, %1586
  %1588 = load double, double* %4, align 8
  %1589 = fsub double %1587, %1588
  %1590 = fmul double 4.500000e+00, %1589
  %1591 = fadd double %1590, 3.000000e+00
  %1592 = fmul double %1585, %1591
  %1593 = fadd double 1.000000e+00, %1592
  %1594 = load double, double* %15, align 8
  %1595 = fsub double %1593, %1594
  %1596 = fmul double %1581, %1595
  %1597 = load double*, double** %2, align 8
  %1598 = load i32, i32* %18, align 4
  %1599 = add nsw i32 10, %1598
  %1600 = sext i32 %1599 to i64
  %1601 = getelementptr inbounds double, double* %1597, i64 %1600
  store double %1596, double* %1601, align 8
  %1602 = load double, double* %6, align 8
  %1603 = fmul double 0x3F9C71C71C71C71C, %1602
  %1604 = load double, double* %4, align 8
  %1605 = load double, double* %5, align 8
  %1606 = fadd double %1604, %1605
  %1607 = load double, double* %4, align 8
  %1608 = load double, double* %5, align 8
  %1609 = fadd double %1607, %1608
  %1610 = fmul double 4.500000e+00, %1609
  %1611 = fadd double %1610, 3.000000e+00
  %1612 = fmul double %1606, %1611
  %1613 = fadd double 1.000000e+00, %1612
  %1614 = load double, double* %15, align 8
  %1615 = fsub double %1613, %1614
  %1616 = fmul double %1603, %1615
  %1617 = load double*, double** %2, align 8
  %1618 = load i32, i32* %18, align 4
  %1619 = add nsw i32 11, %1618
  %1620 = sext i32 %1619 to i64
  %1621 = getelementptr inbounds double, double* %1617, i64 %1620
  store double %1616, double* %1621, align 8
  %1622 = load double, double* %6, align 8
  %1623 = fmul double 0x3F9C71C71C71C71C, %1622
  %1624 = load double, double* %4, align 8
  %1625 = load double, double* %5, align 8
  %1626 = fsub double %1624, %1625
  %1627 = load double, double* %4, align 8
  %1628 = load double, double* %5, align 8
  %1629 = fsub double %1627, %1628
  %1630 = fmul double 4.500000e+00, %1629
  %1631 = fadd double %1630, 3.000000e+00
  %1632 = fmul double %1626, %1631
  %1633 = fadd double 1.000000e+00, %1632
  %1634 = load double, double* %15, align 8
  %1635 = fsub double %1633, %1634
  %1636 = fmul double %1623, %1635
  %1637 = load double*, double** %2, align 8
  %1638 = load i32, i32* %18, align 4
  %1639 = add nsw i32 12, %1638
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds double, double* %1637, i64 %1640
  store double %1636, double* %1641, align 8
  %1642 = load double, double* %6, align 8
  %1643 = fmul double 0x3F9C71C71C71C71C, %1642
  %1644 = load double, double* %4, align 8
  %1645 = fsub double -0.000000e+00, %1644
  %1646 = load double, double* %5, align 8
  %1647 = fadd double %1645, %1646
  %1648 = load double, double* %4, align 8
  %1649 = fsub double -0.000000e+00, %1648
  %1650 = load double, double* %5, align 8
  %1651 = fadd double %1649, %1650
  %1652 = fmul double 4.500000e+00, %1651
  %1653 = fadd double %1652, 3.000000e+00
  %1654 = fmul double %1647, %1653
  %1655 = fadd double 1.000000e+00, %1654
  %1656 = load double, double* %15, align 8
  %1657 = fsub double %1655, %1656
  %1658 = fmul double %1643, %1657
  %1659 = load double*, double** %2, align 8
  %1660 = load i32, i32* %18, align 4
  %1661 = add nsw i32 13, %1660
  %1662 = sext i32 %1661 to i64
  %1663 = getelementptr inbounds double, double* %1659, i64 %1662
  store double %1658, double* %1663, align 8
  %1664 = load double, double* %6, align 8
  %1665 = fmul double 0x3F9C71C71C71C71C, %1664
  %1666 = load double, double* %4, align 8
  %1667 = fsub double -0.000000e+00, %1666
  %1668 = load double, double* %5, align 8
  %1669 = fsub double %1667, %1668
  %1670 = load double, double* %4, align 8
  %1671 = fsub double -0.000000e+00, %1670
  %1672 = load double, double* %5, align 8
  %1673 = fsub double %1671, %1672
  %1674 = fmul double 4.500000e+00, %1673
  %1675 = fadd double %1674, 3.000000e+00
  %1676 = fmul double %1669, %1675
  %1677 = fadd double 1.000000e+00, %1676
  %1678 = load double, double* %15, align 8
  %1679 = fsub double %1677, %1678
  %1680 = fmul double %1665, %1679
  %1681 = load double*, double** %2, align 8
  %1682 = load i32, i32* %18, align 4
  %1683 = add nsw i32 14, %1682
  %1684 = sext i32 %1683 to i64
  %1685 = getelementptr inbounds double, double* %1681, i64 %1684
  store double %1680, double* %1685, align 8
  %1686 = load double, double* %6, align 8
  %1687 = fmul double 0x3F9C71C71C71C71C, %1686
  %1688 = load double, double* %3, align 8
  %1689 = load double, double* %5, align 8
  %1690 = fadd double %1688, %1689
  %1691 = load double, double* %3, align 8
  %1692 = load double, double* %5, align 8
  %1693 = fadd double %1691, %1692
  %1694 = fmul double 4.500000e+00, %1693
  %1695 = fadd double %1694, 3.000000e+00
  %1696 = fmul double %1690, %1695
  %1697 = fadd double 1.000000e+00, %1696
  %1698 = load double, double* %15, align 8
  %1699 = fsub double %1697, %1698
  %1700 = fmul double %1687, %1699
  %1701 = load double*, double** %2, align 8
  %1702 = load i32, i32* %18, align 4
  %1703 = add nsw i32 15, %1702
  %1704 = sext i32 %1703 to i64
  %1705 = getelementptr inbounds double, double* %1701, i64 %1704
  store double %1700, double* %1705, align 8
  %1706 = load double, double* %6, align 8
  %1707 = fmul double 0x3F9C71C71C71C71C, %1706
  %1708 = load double, double* %3, align 8
  %1709 = load double, double* %5, align 8
  %1710 = fsub double %1708, %1709
  %1711 = load double, double* %3, align 8
  %1712 = load double, double* %5, align 8
  %1713 = fsub double %1711, %1712
  %1714 = fmul double 4.500000e+00, %1713
  %1715 = fadd double %1714, 3.000000e+00
  %1716 = fmul double %1710, %1715
  %1717 = fadd double 1.000000e+00, %1716
  %1718 = load double, double* %15, align 8
  %1719 = fsub double %1717, %1718
  %1720 = fmul double %1707, %1719
  %1721 = load double*, double** %2, align 8
  %1722 = load i32, i32* %18, align 4
  %1723 = add nsw i32 16, %1722
  %1724 = sext i32 %1723 to i64
  %1725 = getelementptr inbounds double, double* %1721, i64 %1724
  store double %1720, double* %1725, align 8
  %1726 = load double, double* %6, align 8
  %1727 = fmul double 0x3F9C71C71C71C71C, %1726
  %1728 = load double, double* %3, align 8
  %1729 = fsub double -0.000000e+00, %1728
  %1730 = load double, double* %5, align 8
  %1731 = fadd double %1729, %1730
  %1732 = load double, double* %3, align 8
  %1733 = fsub double -0.000000e+00, %1732
  %1734 = load double, double* %5, align 8
  %1735 = fadd double %1733, %1734
  %1736 = fmul double 4.500000e+00, %1735
  %1737 = fadd double %1736, 3.000000e+00
  %1738 = fmul double %1731, %1737
  %1739 = fadd double 1.000000e+00, %1738
  %1740 = load double, double* %15, align 8
  %1741 = fsub double %1739, %1740
  %1742 = fmul double %1727, %1741
  %1743 = load double*, double** %2, align 8
  %1744 = load i32, i32* %18, align 4
  %1745 = add nsw i32 17, %1744
  %1746 = sext i32 %1745 to i64
  %1747 = getelementptr inbounds double, double* %1743, i64 %1746
  store double %1742, double* %1747, align 8
  %1748 = load double, double* %6, align 8
  %1749 = fmul double 0x3F9C71C71C71C71C, %1748
  %1750 = load double, double* %3, align 8
  %1751 = fsub double -0.000000e+00, %1750
  %1752 = load double, double* %5, align 8
  %1753 = fsub double %1751, %1752
  %1754 = load double, double* %3, align 8
  %1755 = fsub double -0.000000e+00, %1754
  %1756 = load double, double* %5, align 8
  %1757 = fsub double %1755, %1756
  %1758 = fmul double 4.500000e+00, %1757
  %1759 = fadd double %1758, 3.000000e+00
  %1760 = fmul double %1753, %1759
  %1761 = fadd double 1.000000e+00, %1760
  %1762 = load double, double* %15, align 8
  %1763 = fsub double %1761, %1762
  %1764 = fmul double %1749, %1763
  %1765 = load double*, double** %2, align 8
  %1766 = load i32, i32* %18, align 4
  %1767 = add nsw i32 18, %1766
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds double, double* %1765, i64 %1768
  store double %1764, double* %1769, align 8
  br label %1770

; <label>:1770:                                   ; preds = %691
  %1771 = load i32, i32* %18, align 4
  %1772 = add nsw i32 %1771, 20
  store i32 %1772, i32* %18, align 4
  br label %688

; <label>:1773:                                   ; preds = %688
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_showGridStatistics(double*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store double* %0, double** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store double 1.000000e+30, double* %9, align 8
  store double -1.000000e+30, double* %10, align 8
  store double 1.000000e+30, double* %12, align 8
  store double -1.000000e+30, double* %13, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %16, align 4
  br label %17

; <label>:17:                                     ; preds = %434, %1
  %18 = load i32, i32* %16, align 4
  %19 = icmp slt i32 %18, 26000000
  br i1 %19, label %20, label %437

; <label>:20:                                     ; preds = %17
  %21 = load double*, double** %2, align 8
  %22 = load i32, i32* %16, align 4
  %23 = add nsw i32 0, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %21, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load double*, double** %2, align 8
  %28 = load i32, i32* %16, align 4
  %29 = add nsw i32 1, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %27, i64 %30
  %32 = load double, double* %31, align 8
  %33 = fadd double %26, %32
  %34 = load double*, double** %2, align 8
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %34, i64 %37
  %39 = load double, double* %38, align 8
  %40 = fadd double %33, %39
  %41 = load double*, double** %2, align 8
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 3, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %41, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fadd double %40, %46
  %48 = load double*, double** %2, align 8
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 4, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %48, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fadd double %47, %53
  %55 = load double*, double** %2, align 8
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 5, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %55, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fadd double %54, %60
  %62 = load double*, double** %2, align 8
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 6, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %62, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fadd double %61, %67
  %69 = load double*, double** %2, align 8
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 7, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %69, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fadd double %68, %74
  %76 = load double*, double** %2, align 8
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 8, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %76, i64 %79
  %81 = load double, double* %80, align 8
  %82 = fadd double %75, %81
  %83 = load double*, double** %2, align 8
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 9, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %83, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fadd double %82, %88
  %90 = load double*, double** %2, align 8
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 10, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %90, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fadd double %89, %95
  %97 = load double*, double** %2, align 8
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 11, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %97, i64 %100
  %102 = load double, double* %101, align 8
  %103 = fadd double %96, %102
  %104 = load double*, double** %2, align 8
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 12, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %104, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fadd double %103, %109
  %111 = load double*, double** %2, align 8
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 13, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %111, i64 %114
  %116 = load double, double* %115, align 8
  %117 = fadd double %110, %116
  %118 = load double*, double** %2, align 8
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 14, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %118, i64 %121
  %123 = load double, double* %122, align 8
  %124 = fadd double %117, %123
  %125 = load double*, double** %2, align 8
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 15, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %125, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fadd double %124, %130
  %132 = load double*, double** %2, align 8
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 16, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %132, i64 %135
  %137 = load double, double* %136, align 8
  %138 = fadd double %131, %137
  %139 = load double*, double** %2, align 8
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 17, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %139, i64 %142
  %144 = load double, double* %143, align 8
  %145 = fadd double %138, %144
  %146 = load double*, double** %2, align 8
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 18, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, double* %146, i64 %149
  %151 = load double, double* %150, align 8
  %152 = fadd double %145, %151
  store double %152, double* %14, align 8
  %153 = load double, double* %14, align 8
  %154 = load double, double* %12, align 8
  %155 = fcmp olt double %153, %154
  br i1 %155, label %156, label %158

; <label>:156:                                    ; preds = %20
  %157 = load double, double* %14, align 8
  store double %157, double* %12, align 8
  br label %158

; <label>:158:                                    ; preds = %156, %20
  %159 = load double, double* %14, align 8
  %160 = load double, double* %13, align 8
  %161 = fcmp ogt double %159, %160
  br i1 %161, label %162, label %164

; <label>:162:                                    ; preds = %158
  %163 = load double, double* %14, align 8
  store double %163, double* %13, align 8
  br label %164

; <label>:164:                                    ; preds = %162, %158
  %165 = load double, double* %14, align 8
  %166 = load double, double* %15, align 8
  %167 = fadd double %166, %165
  store double %167, double* %15, align 8
  %168 = load double*, double** %2, align 8
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 19, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %168, i64 %171
  %173 = bitcast double* %172 to i8*
  %174 = bitcast i8* %173 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 1
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

; <label>:178:                                    ; preds = %164
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %3, align 4
  br label %433

; <label>:181:                                    ; preds = %164
  %182 = load double*, double** %2, align 8
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 19, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %182, i64 %185
  %187 = bitcast double* %186 to i8*
  %188 = bitcast i8* %187 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 2
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

; <label>:192:                                    ; preds = %181
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %198

; <label>:195:                                    ; preds = %181
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  br label %198

; <label>:198:                                    ; preds = %195, %192
  %199 = load double*, double** %2, align 8
  %200 = load i32, i32* %16, align 4
  %201 = add nsw i32 3, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %199, i64 %202
  %204 = load double, double* %203, align 8
  %205 = load double*, double** %2, align 8
  %206 = load i32, i32* %16, align 4
  %207 = add nsw i32 4, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %205, i64 %208
  %210 = load double, double* %209, align 8
  %211 = fsub double %204, %210
  %212 = load double*, double** %2, align 8
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 7, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %212, i64 %215
  %217 = load double, double* %216, align 8
  %218 = fadd double %211, %217
  %219 = load double*, double** %2, align 8
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 8, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %219, i64 %222
  %224 = load double, double* %223, align 8
  %225 = fsub double %218, %224
  %226 = load double*, double** %2, align 8
  %227 = load i32, i32* %16, align 4
  %228 = add nsw i32 9, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, double* %226, i64 %229
  %231 = load double, double* %230, align 8
  %232 = fadd double %225, %231
  %233 = load double*, double** %2, align 8
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 10, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds double, double* %233, i64 %236
  %238 = load double, double* %237, align 8
  %239 = fsub double %232, %238
  %240 = load double*, double** %2, align 8
  %241 = load i32, i32* %16, align 4
  %242 = add nsw i32 15, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds double, double* %240, i64 %243
  %245 = load double, double* %244, align 8
  %246 = fadd double %239, %245
  %247 = load double*, double** %2, align 8
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 16, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double, double* %247, i64 %250
  %252 = load double, double* %251, align 8
  %253 = fadd double %246, %252
  %254 = load double*, double** %2, align 8
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 17, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds double, double* %254, i64 %257
  %259 = load double, double* %258, align 8
  %260 = fsub double %253, %259
  %261 = load double*, double** %2, align 8
  %262 = load i32, i32* %16, align 4
  %263 = add nsw i32 18, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double, double* %261, i64 %264
  %266 = load double, double* %265, align 8
  %267 = fsub double %260, %266
  store double %267, double* %6, align 8
  %268 = load double*, double** %2, align 8
  %269 = load i32, i32* %16, align 4
  %270 = add nsw i32 1, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds double, double* %268, i64 %271
  %273 = load double, double* %272, align 8
  %274 = load double*, double** %2, align 8
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 2, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds double, double* %274, i64 %277
  %279 = load double, double* %278, align 8
  %280 = fsub double %273, %279
  %281 = load double*, double** %2, align 8
  %282 = load i32, i32* %16, align 4
  %283 = add nsw i32 7, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds double, double* %281, i64 %284
  %286 = load double, double* %285, align 8
  %287 = fadd double %280, %286
  %288 = load double*, double** %2, align 8
  %289 = load i32, i32* %16, align 4
  %290 = add nsw i32 8, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, double* %288, i64 %291
  %293 = load double, double* %292, align 8
  %294 = fadd double %287, %293
  %295 = load double*, double** %2, align 8
  %296 = load i32, i32* %16, align 4
  %297 = add nsw i32 9, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds double, double* %295, i64 %298
  %300 = load double, double* %299, align 8
  %301 = fsub double %294, %300
  %302 = load double*, double** %2, align 8
  %303 = load i32, i32* %16, align 4
  %304 = add nsw i32 10, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds double, double* %302, i64 %305
  %307 = load double, double* %306, align 8
  %308 = fsub double %301, %307
  %309 = load double*, double** %2, align 8
  %310 = load i32, i32* %16, align 4
  %311 = add nsw i32 11, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds double, double* %309, i64 %312
  %314 = load double, double* %313, align 8
  %315 = fadd double %308, %314
  %316 = load double*, double** %2, align 8
  %317 = load i32, i32* %16, align 4
  %318 = add nsw i32 12, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds double, double* %316, i64 %319
  %321 = load double, double* %320, align 8
  %322 = fadd double %315, %321
  %323 = load double*, double** %2, align 8
  %324 = load i32, i32* %16, align 4
  %325 = add nsw i32 13, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds double, double* %323, i64 %326
  %328 = load double, double* %327, align 8
  %329 = fsub double %322, %328
  %330 = load double*, double** %2, align 8
  %331 = load i32, i32* %16, align 4
  %332 = add nsw i32 14, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds double, double* %330, i64 %333
  %335 = load double, double* %334, align 8
  %336 = fsub double %329, %335
  store double %336, double* %7, align 8
  %337 = load double*, double** %2, align 8
  %338 = load i32, i32* %16, align 4
  %339 = add nsw i32 5, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds double, double* %337, i64 %340
  %342 = load double, double* %341, align 8
  %343 = load double*, double** %2, align 8
  %344 = load i32, i32* %16, align 4
  %345 = add nsw i32 6, %344
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds double, double* %343, i64 %346
  %348 = load double, double* %347, align 8
  %349 = fsub double %342, %348
  %350 = load double*, double** %2, align 8
  %351 = load i32, i32* %16, align 4
  %352 = add nsw i32 11, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds double, double* %350, i64 %353
  %355 = load double, double* %354, align 8
  %356 = fadd double %349, %355
  %357 = load double*, double** %2, align 8
  %358 = load i32, i32* %16, align 4
  %359 = add nsw i32 12, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds double, double* %357, i64 %360
  %362 = load double, double* %361, align 8
  %363 = fsub double %356, %362
  %364 = load double*, double** %2, align 8
  %365 = load i32, i32* %16, align 4
  %366 = add nsw i32 13, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds double, double* %364, i64 %367
  %369 = load double, double* %368, align 8
  %370 = fadd double %363, %369
  %371 = load double*, double** %2, align 8
  %372 = load i32, i32* %16, align 4
  %373 = add nsw i32 14, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds double, double* %371, i64 %374
  %376 = load double, double* %375, align 8
  %377 = fsub double %370, %376
  %378 = load double*, double** %2, align 8
  %379 = load i32, i32* %16, align 4
  %380 = add nsw i32 15, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds double, double* %378, i64 %381
  %383 = load double, double* %382, align 8
  %384 = fadd double %377, %383
  %385 = load double*, double** %2, align 8
  %386 = load i32, i32* %16, align 4
  %387 = add nsw i32 16, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds double, double* %385, i64 %388
  %390 = load double, double* %389, align 8
  %391 = fsub double %384, %390
  %392 = load double*, double** %2, align 8
  %393 = load i32, i32* %16, align 4
  %394 = add nsw i32 17, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds double, double* %392, i64 %395
  %397 = load double, double* %396, align 8
  %398 = fadd double %391, %397
  %399 = load double*, double** %2, align 8
  %400 = load i32, i32* %16, align 4
  %401 = add nsw i32 18, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds double, double* %399, i64 %402
  %404 = load double, double* %403, align 8
  %405 = fsub double %398, %404
  store double %405, double* %8, align 8
  %406 = load double, double* %6, align 8
  %407 = load double, double* %6, align 8
  %408 = fmul double %406, %407
  %409 = load double, double* %7, align 8
  %410 = load double, double* %7, align 8
  %411 = fmul double %409, %410
  %412 = fadd double %408, %411
  %413 = load double, double* %8, align 8
  %414 = load double, double* %8, align 8
  %415 = fmul double %413, %414
  %416 = fadd double %412, %415
  %417 = load double, double* %14, align 8
  %418 = load double, double* %14, align 8
  %419 = fmul double %417, %418
  %420 = fdiv double %416, %419
  store double %420, double* %11, align 8
  %421 = load double, double* %11, align 8
  %422 = load double, double* %9, align 8
  %423 = fcmp olt double %421, %422
  br i1 %423, label %424, label %426

; <label>:424:                                    ; preds = %198
  %425 = load double, double* %11, align 8
  store double %425, double* %9, align 8
  br label %426

; <label>:426:                                    ; preds = %424, %198
  %427 = load double, double* %11, align 8
  %428 = load double, double* %10, align 8
  %429 = fcmp ogt double %427, %428
  br i1 %429, label %430, label %432

; <label>:430:                                    ; preds = %426
  %431 = load double, double* %11, align 8
  store double %431, double* %10, align 8
  br label %432

; <label>:432:                                    ; preds = %430, %426
  br label %433

; <label>:433:                                    ; preds = %432, %178
  br label %434

; <label>:434:                                    ; preds = %433
  %435 = load i32, i32* %16, align 4
  %436 = add nsw i32 %435, 20
  store i32 %436, i32* %16, align 4
  br label %17

; <label>:437:                                    ; preds = %17
  %438 = load i32, i32* %3, align 4
  %439 = load i32, i32* %4, align 4
  %440 = load i32, i32* %5, align 4
  %441 = load double, double* %12, align 8
  %442 = load double, double* %13, align 8
  %443 = load double, double* %15, align 8
  %444 = load double, double* %9, align 8
  %445 = call double @sqrt(double %444) #4
  %446 = load double, double* %10, align 8
  %447 = call double @sqrt(double %446) #4
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.2, i32 0, i32 0), i32 %438, i32 %439, i32 %440, double %441, double %442, double %443, double %445, double %447)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_storeVelocityField(double*, i8*, i32) #0 {
  %4 = alloca double*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct._IO_FILE*, align 8
  store double* %0, double** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)
  %20 = call %struct._IO_FILE* @fopen(i8* %15, i8* %19)
  store %struct._IO_FILE* %20, %struct._IO_FILE** %14, align 8
  store i32 0, i32* %9, align 4
  br label %21

; <label>:21:                                     ; preds = %801, %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 130
  br i1 %23, label %24, label %804

; <label>:24:                                     ; preds = %21
  store i32 0, i32* %8, align 4
  br label %25

; <label>:25:                                     ; preds = %797, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 100
  br i1 %27, label %28, label %800

; <label>:28:                                     ; preds = %25
  store i32 0, i32* %7, align 4
  br label %29

; <label>:29:                                     ; preds = %793, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %32, label %796

; <label>:32:                                     ; preds = %29
  %33 = load double*, double** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 100
  %37 = add nsw i32 %34, %36
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 100
  %40 = mul nsw i32 %39, 100
  %41 = add nsw i32 %37, %40
  %42 = mul nsw i32 20, %41
  %43 = add nsw i32 0, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %33, i64 %44
  %46 = load double, double* %45, align 8
  %47 = load double*, double** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 100
  %51 = add nsw i32 %48, %50
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 100
  %54 = mul nsw i32 %53, 100
  %55 = add nsw i32 %51, %54
  %56 = mul nsw i32 20, %55
  %57 = add nsw i32 1, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %47, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fadd double %46, %60
  %62 = load double*, double** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 %64, 100
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, 100
  %69 = mul nsw i32 %68, 100
  %70 = add nsw i32 %66, %69
  %71 = mul nsw i32 20, %70
  %72 = add nsw i32 2, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %62, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fadd double %61, %75
  %77 = load double*, double** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 100
  %81 = add nsw i32 %78, %80
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %82, 100
  %84 = mul nsw i32 %83, 100
  %85 = add nsw i32 %81, %84
  %86 = mul nsw i32 20, %85
  %87 = add nsw i32 3, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %77, i64 %88
  %90 = load double, double* %89, align 8
  %91 = fadd double %76, %90
  %92 = load double*, double** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 %94, 100
  %96 = add nsw i32 %93, %95
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %97, 100
  %99 = mul nsw i32 %98, 100
  %100 = add nsw i32 %96, %99
  %101 = mul nsw i32 20, %100
  %102 = add nsw i32 4, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %92, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fadd double %91, %105
  %107 = load double*, double** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = mul nsw i32 %109, 100
  %111 = add nsw i32 %108, %110
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 %112, 100
  %114 = mul nsw i32 %113, 100
  %115 = add nsw i32 %111, %114
  %116 = mul nsw i32 20, %115
  %117 = add nsw i32 5, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %107, i64 %118
  %120 = load double, double* %119, align 8
  %121 = fadd double %106, %120
  %122 = load double*, double** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 %124, 100
  %126 = add nsw i32 %123, %125
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 %127, 100
  %129 = mul nsw i32 %128, 100
  %130 = add nsw i32 %126, %129
  %131 = mul nsw i32 20, %130
  %132 = add nsw i32 6, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, double* %122, i64 %133
  %135 = load double, double* %134, align 8
  %136 = fadd double %121, %135
  %137 = load double*, double** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 %139, 100
  %141 = add nsw i32 %138, %140
  %142 = load i32, i32* %9, align 4
  %143 = mul nsw i32 %142, 100
  %144 = mul nsw i32 %143, 100
  %145 = add nsw i32 %141, %144
  %146 = mul nsw i32 20, %145
  %147 = add nsw i32 7, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %137, i64 %148
  %150 = load double, double* %149, align 8
  %151 = fadd double %136, %150
  %152 = load double*, double** %4, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = mul nsw i32 %154, 100
  %156 = add nsw i32 %153, %155
  %157 = load i32, i32* %9, align 4
  %158 = mul nsw i32 %157, 100
  %159 = mul nsw i32 %158, 100
  %160 = add nsw i32 %156, %159
  %161 = mul nsw i32 20, %160
  %162 = add nsw i32 8, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %152, i64 %163
  %165 = load double, double* %164, align 8
  %166 = fadd double %151, %165
  %167 = load double*, double** %4, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = mul nsw i32 %169, 100
  %171 = add nsw i32 %168, %170
  %172 = load i32, i32* %9, align 4
  %173 = mul nsw i32 %172, 100
  %174 = mul nsw i32 %173, 100
  %175 = add nsw i32 %171, %174
  %176 = mul nsw i32 20, %175
  %177 = add nsw i32 9, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %167, i64 %178
  %180 = load double, double* %179, align 8
  %181 = fadd double %166, %180
  %182 = load double*, double** %4, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %8, align 4
  %185 = mul nsw i32 %184, 100
  %186 = add nsw i32 %183, %185
  %187 = load i32, i32* %9, align 4
  %188 = mul nsw i32 %187, 100
  %189 = mul nsw i32 %188, 100
  %190 = add nsw i32 %186, %189
  %191 = mul nsw i32 20, %190
  %192 = add nsw i32 10, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %182, i64 %193
  %195 = load double, double* %194, align 8
  %196 = fadd double %181, %195
  %197 = load double*, double** %4, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = mul nsw i32 %199, 100
  %201 = add nsw i32 %198, %200
  %202 = load i32, i32* %9, align 4
  %203 = mul nsw i32 %202, 100
  %204 = mul nsw i32 %203, 100
  %205 = add nsw i32 %201, %204
  %206 = mul nsw i32 20, %205
  %207 = add nsw i32 11, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %197, i64 %208
  %210 = load double, double* %209, align 8
  %211 = fadd double %196, %210
  %212 = load double*, double** %4, align 8
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* %8, align 4
  %215 = mul nsw i32 %214, 100
  %216 = add nsw i32 %213, %215
  %217 = load i32, i32* %9, align 4
  %218 = mul nsw i32 %217, 100
  %219 = mul nsw i32 %218, 100
  %220 = add nsw i32 %216, %219
  %221 = mul nsw i32 20, %220
  %222 = add nsw i32 12, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, double* %212, i64 %223
  %225 = load double, double* %224, align 8
  %226 = fadd double %211, %225
  %227 = load double*, double** %4, align 8
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %8, align 4
  %230 = mul nsw i32 %229, 100
  %231 = add nsw i32 %228, %230
  %232 = load i32, i32* %9, align 4
  %233 = mul nsw i32 %232, 100
  %234 = mul nsw i32 %233, 100
  %235 = add nsw i32 %231, %234
  %236 = mul nsw i32 20, %235
  %237 = add nsw i32 13, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds double, double* %227, i64 %238
  %240 = load double, double* %239, align 8
  %241 = fadd double %226, %240
  %242 = load double*, double** %4, align 8
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* %8, align 4
  %245 = mul nsw i32 %244, 100
  %246 = add nsw i32 %243, %245
  %247 = load i32, i32* %9, align 4
  %248 = mul nsw i32 %247, 100
  %249 = mul nsw i32 %248, 100
  %250 = add nsw i32 %246, %249
  %251 = mul nsw i32 20, %250
  %252 = add nsw i32 14, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %242, i64 %253
  %255 = load double, double* %254, align 8
  %256 = fadd double %241, %255
  %257 = load double*, double** %4, align 8
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %8, align 4
  %260 = mul nsw i32 %259, 100
  %261 = add nsw i32 %258, %260
  %262 = load i32, i32* %9, align 4
  %263 = mul nsw i32 %262, 100
  %264 = mul nsw i32 %263, 100
  %265 = add nsw i32 %261, %264
  %266 = mul nsw i32 20, %265
  %267 = add nsw i32 15, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds double, double* %257, i64 %268
  %270 = load double, double* %269, align 8
  %271 = fadd double %256, %270
  %272 = load double*, double** %4, align 8
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %8, align 4
  %275 = mul nsw i32 %274, 100
  %276 = add nsw i32 %273, %275
  %277 = load i32, i32* %9, align 4
  %278 = mul nsw i32 %277, 100
  %279 = mul nsw i32 %278, 100
  %280 = add nsw i32 %276, %279
  %281 = mul nsw i32 20, %280
  %282 = add nsw i32 16, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds double, double* %272, i64 %283
  %285 = load double, double* %284, align 8
  %286 = fadd double %271, %285
  %287 = load double*, double** %4, align 8
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %8, align 4
  %290 = mul nsw i32 %289, 100
  %291 = add nsw i32 %288, %290
  %292 = load i32, i32* %9, align 4
  %293 = mul nsw i32 %292, 100
  %294 = mul nsw i32 %293, 100
  %295 = add nsw i32 %291, %294
  %296 = mul nsw i32 20, %295
  %297 = add nsw i32 17, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds double, double* %287, i64 %298
  %300 = load double, double* %299, align 8
  %301 = fadd double %286, %300
  %302 = load double*, double** %4, align 8
  %303 = load i32, i32* %7, align 4
  %304 = load i32, i32* %8, align 4
  %305 = mul nsw i32 %304, 100
  %306 = add nsw i32 %303, %305
  %307 = load i32, i32* %9, align 4
  %308 = mul nsw i32 %307, 100
  %309 = mul nsw i32 %308, 100
  %310 = add nsw i32 %306, %309
  %311 = mul nsw i32 20, %310
  %312 = add nsw i32 18, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %302, i64 %313
  %315 = load double, double* %314, align 8
  %316 = fadd double %301, %315
  %317 = fptrunc double %316 to float
  store float %317, float* %10, align 4
  %318 = load double*, double** %4, align 8
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* %8, align 4
  %321 = mul nsw i32 %320, 100
  %322 = add nsw i32 %319, %321
  %323 = load i32, i32* %9, align 4
  %324 = mul nsw i32 %323, 100
  %325 = mul nsw i32 %324, 100
  %326 = add nsw i32 %322, %325
  %327 = mul nsw i32 20, %326
  %328 = add nsw i32 3, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds double, double* %318, i64 %329
  %331 = load double, double* %330, align 8
  %332 = load double*, double** %4, align 8
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* %8, align 4
  %335 = mul nsw i32 %334, 100
  %336 = add nsw i32 %333, %335
  %337 = load i32, i32* %9, align 4
  %338 = mul nsw i32 %337, 100
  %339 = mul nsw i32 %338, 100
  %340 = add nsw i32 %336, %339
  %341 = mul nsw i32 20, %340
  %342 = add nsw i32 4, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds double, double* %332, i64 %343
  %345 = load double, double* %344, align 8
  %346 = fsub double %331, %345
  %347 = load double*, double** %4, align 8
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* %8, align 4
  %350 = mul nsw i32 %349, 100
  %351 = add nsw i32 %348, %350
  %352 = load i32, i32* %9, align 4
  %353 = mul nsw i32 %352, 100
  %354 = mul nsw i32 %353, 100
  %355 = add nsw i32 %351, %354
  %356 = mul nsw i32 20, %355
  %357 = add nsw i32 7, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds double, double* %347, i64 %358
  %360 = load double, double* %359, align 8
  %361 = fadd double %346, %360
  %362 = load double*, double** %4, align 8
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* %8, align 4
  %365 = mul nsw i32 %364, 100
  %366 = add nsw i32 %363, %365
  %367 = load i32, i32* %9, align 4
  %368 = mul nsw i32 %367, 100
  %369 = mul nsw i32 %368, 100
  %370 = add nsw i32 %366, %369
  %371 = mul nsw i32 20, %370
  %372 = add nsw i32 8, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds double, double* %362, i64 %373
  %375 = load double, double* %374, align 8
  %376 = fsub double %361, %375
  %377 = load double*, double** %4, align 8
  %378 = load i32, i32* %7, align 4
  %379 = load i32, i32* %8, align 4
  %380 = mul nsw i32 %379, 100
  %381 = add nsw i32 %378, %380
  %382 = load i32, i32* %9, align 4
  %383 = mul nsw i32 %382, 100
  %384 = mul nsw i32 %383, 100
  %385 = add nsw i32 %381, %384
  %386 = mul nsw i32 20, %385
  %387 = add nsw i32 9, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds double, double* %377, i64 %388
  %390 = load double, double* %389, align 8
  %391 = fadd double %376, %390
  %392 = load double*, double** %4, align 8
  %393 = load i32, i32* %7, align 4
  %394 = load i32, i32* %8, align 4
  %395 = mul nsw i32 %394, 100
  %396 = add nsw i32 %393, %395
  %397 = load i32, i32* %9, align 4
  %398 = mul nsw i32 %397, 100
  %399 = mul nsw i32 %398, 100
  %400 = add nsw i32 %396, %399
  %401 = mul nsw i32 20, %400
  %402 = add nsw i32 10, %401
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds double, double* %392, i64 %403
  %405 = load double, double* %404, align 8
  %406 = fsub double %391, %405
  %407 = load double*, double** %4, align 8
  %408 = load i32, i32* %7, align 4
  %409 = load i32, i32* %8, align 4
  %410 = mul nsw i32 %409, 100
  %411 = add nsw i32 %408, %410
  %412 = load i32, i32* %9, align 4
  %413 = mul nsw i32 %412, 100
  %414 = mul nsw i32 %413, 100
  %415 = add nsw i32 %411, %414
  %416 = mul nsw i32 20, %415
  %417 = add nsw i32 15, %416
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds double, double* %407, i64 %418
  %420 = load double, double* %419, align 8
  %421 = fadd double %406, %420
  %422 = load double*, double** %4, align 8
  %423 = load i32, i32* %7, align 4
  %424 = load i32, i32* %8, align 4
  %425 = mul nsw i32 %424, 100
  %426 = add nsw i32 %423, %425
  %427 = load i32, i32* %9, align 4
  %428 = mul nsw i32 %427, 100
  %429 = mul nsw i32 %428, 100
  %430 = add nsw i32 %426, %429
  %431 = mul nsw i32 20, %430
  %432 = add nsw i32 16, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %422, i64 %433
  %435 = load double, double* %434, align 8
  %436 = fadd double %421, %435
  %437 = load double*, double** %4, align 8
  %438 = load i32, i32* %7, align 4
  %439 = load i32, i32* %8, align 4
  %440 = mul nsw i32 %439, 100
  %441 = add nsw i32 %438, %440
  %442 = load i32, i32* %9, align 4
  %443 = mul nsw i32 %442, 100
  %444 = mul nsw i32 %443, 100
  %445 = add nsw i32 %441, %444
  %446 = mul nsw i32 20, %445
  %447 = add nsw i32 17, %446
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds double, double* %437, i64 %448
  %450 = load double, double* %449, align 8
  %451 = fsub double %436, %450
  %452 = load double*, double** %4, align 8
  %453 = load i32, i32* %7, align 4
  %454 = load i32, i32* %8, align 4
  %455 = mul nsw i32 %454, 100
  %456 = add nsw i32 %453, %455
  %457 = load i32, i32* %9, align 4
  %458 = mul nsw i32 %457, 100
  %459 = mul nsw i32 %458, 100
  %460 = add nsw i32 %456, %459
  %461 = mul nsw i32 20, %460
  %462 = add nsw i32 18, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds double, double* %452, i64 %463
  %465 = load double, double* %464, align 8
  %466 = fsub double %451, %465
  %467 = fptrunc double %466 to float
  store float %467, float* %11, align 4
  %468 = load double*, double** %4, align 8
  %469 = load i32, i32* %7, align 4
  %470 = load i32, i32* %8, align 4
  %471 = mul nsw i32 %470, 100
  %472 = add nsw i32 %469, %471
  %473 = load i32, i32* %9, align 4
  %474 = mul nsw i32 %473, 100
  %475 = mul nsw i32 %474, 100
  %476 = add nsw i32 %472, %475
  %477 = mul nsw i32 20, %476
  %478 = add nsw i32 1, %477
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds double, double* %468, i64 %479
  %481 = load double, double* %480, align 8
  %482 = load double*, double** %4, align 8
  %483 = load i32, i32* %7, align 4
  %484 = load i32, i32* %8, align 4
  %485 = mul nsw i32 %484, 100
  %486 = add nsw i32 %483, %485
  %487 = load i32, i32* %9, align 4
  %488 = mul nsw i32 %487, 100
  %489 = mul nsw i32 %488, 100
  %490 = add nsw i32 %486, %489
  %491 = mul nsw i32 20, %490
  %492 = add nsw i32 2, %491
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds double, double* %482, i64 %493
  %495 = load double, double* %494, align 8
  %496 = fsub double %481, %495
  %497 = load double*, double** %4, align 8
  %498 = load i32, i32* %7, align 4
  %499 = load i32, i32* %8, align 4
  %500 = mul nsw i32 %499, 100
  %501 = add nsw i32 %498, %500
  %502 = load i32, i32* %9, align 4
  %503 = mul nsw i32 %502, 100
  %504 = mul nsw i32 %503, 100
  %505 = add nsw i32 %501, %504
  %506 = mul nsw i32 20, %505
  %507 = add nsw i32 7, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds double, double* %497, i64 %508
  %510 = load double, double* %509, align 8
  %511 = fadd double %496, %510
  %512 = load double*, double** %4, align 8
  %513 = load i32, i32* %7, align 4
  %514 = load i32, i32* %8, align 4
  %515 = mul nsw i32 %514, 100
  %516 = add nsw i32 %513, %515
  %517 = load i32, i32* %9, align 4
  %518 = mul nsw i32 %517, 100
  %519 = mul nsw i32 %518, 100
  %520 = add nsw i32 %516, %519
  %521 = mul nsw i32 20, %520
  %522 = add nsw i32 8, %521
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds double, double* %512, i64 %523
  %525 = load double, double* %524, align 8
  %526 = fadd double %511, %525
  %527 = load double*, double** %4, align 8
  %528 = load i32, i32* %7, align 4
  %529 = load i32, i32* %8, align 4
  %530 = mul nsw i32 %529, 100
  %531 = add nsw i32 %528, %530
  %532 = load i32, i32* %9, align 4
  %533 = mul nsw i32 %532, 100
  %534 = mul nsw i32 %533, 100
  %535 = add nsw i32 %531, %534
  %536 = mul nsw i32 20, %535
  %537 = add nsw i32 9, %536
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds double, double* %527, i64 %538
  %540 = load double, double* %539, align 8
  %541 = fsub double %526, %540
  %542 = load double*, double** %4, align 8
  %543 = load i32, i32* %7, align 4
  %544 = load i32, i32* %8, align 4
  %545 = mul nsw i32 %544, 100
  %546 = add nsw i32 %543, %545
  %547 = load i32, i32* %9, align 4
  %548 = mul nsw i32 %547, 100
  %549 = mul nsw i32 %548, 100
  %550 = add nsw i32 %546, %549
  %551 = mul nsw i32 20, %550
  %552 = add nsw i32 10, %551
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds double, double* %542, i64 %553
  %555 = load double, double* %554, align 8
  %556 = fsub double %541, %555
  %557 = load double*, double** %4, align 8
  %558 = load i32, i32* %7, align 4
  %559 = load i32, i32* %8, align 4
  %560 = mul nsw i32 %559, 100
  %561 = add nsw i32 %558, %560
  %562 = load i32, i32* %9, align 4
  %563 = mul nsw i32 %562, 100
  %564 = mul nsw i32 %563, 100
  %565 = add nsw i32 %561, %564
  %566 = mul nsw i32 20, %565
  %567 = add nsw i32 11, %566
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds double, double* %557, i64 %568
  %570 = load double, double* %569, align 8
  %571 = fadd double %556, %570
  %572 = load double*, double** %4, align 8
  %573 = load i32, i32* %7, align 4
  %574 = load i32, i32* %8, align 4
  %575 = mul nsw i32 %574, 100
  %576 = add nsw i32 %573, %575
  %577 = load i32, i32* %9, align 4
  %578 = mul nsw i32 %577, 100
  %579 = mul nsw i32 %578, 100
  %580 = add nsw i32 %576, %579
  %581 = mul nsw i32 20, %580
  %582 = add nsw i32 12, %581
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds double, double* %572, i64 %583
  %585 = load double, double* %584, align 8
  %586 = fadd double %571, %585
  %587 = load double*, double** %4, align 8
  %588 = load i32, i32* %7, align 4
  %589 = load i32, i32* %8, align 4
  %590 = mul nsw i32 %589, 100
  %591 = add nsw i32 %588, %590
  %592 = load i32, i32* %9, align 4
  %593 = mul nsw i32 %592, 100
  %594 = mul nsw i32 %593, 100
  %595 = add nsw i32 %591, %594
  %596 = mul nsw i32 20, %595
  %597 = add nsw i32 13, %596
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds double, double* %587, i64 %598
  %600 = load double, double* %599, align 8
  %601 = fsub double %586, %600
  %602 = load double*, double** %4, align 8
  %603 = load i32, i32* %7, align 4
  %604 = load i32, i32* %8, align 4
  %605 = mul nsw i32 %604, 100
  %606 = add nsw i32 %603, %605
  %607 = load i32, i32* %9, align 4
  %608 = mul nsw i32 %607, 100
  %609 = mul nsw i32 %608, 100
  %610 = add nsw i32 %606, %609
  %611 = mul nsw i32 20, %610
  %612 = add nsw i32 14, %611
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds double, double* %602, i64 %613
  %615 = load double, double* %614, align 8
  %616 = fsub double %601, %615
  %617 = fptrunc double %616 to float
  store float %617, float* %12, align 4
  %618 = load double*, double** %4, align 8
  %619 = load i32, i32* %7, align 4
  %620 = load i32, i32* %8, align 4
  %621 = mul nsw i32 %620, 100
  %622 = add nsw i32 %619, %621
  %623 = load i32, i32* %9, align 4
  %624 = mul nsw i32 %623, 100
  %625 = mul nsw i32 %624, 100
  %626 = add nsw i32 %622, %625
  %627 = mul nsw i32 20, %626
  %628 = add nsw i32 5, %627
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds double, double* %618, i64 %629
  %631 = load double, double* %630, align 8
  %632 = load double*, double** %4, align 8
  %633 = load i32, i32* %7, align 4
  %634 = load i32, i32* %8, align 4
  %635 = mul nsw i32 %634, 100
  %636 = add nsw i32 %633, %635
  %637 = load i32, i32* %9, align 4
  %638 = mul nsw i32 %637, 100
  %639 = mul nsw i32 %638, 100
  %640 = add nsw i32 %636, %639
  %641 = mul nsw i32 20, %640
  %642 = add nsw i32 6, %641
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds double, double* %632, i64 %643
  %645 = load double, double* %644, align 8
  %646 = fsub double %631, %645
  %647 = load double*, double** %4, align 8
  %648 = load i32, i32* %7, align 4
  %649 = load i32, i32* %8, align 4
  %650 = mul nsw i32 %649, 100
  %651 = add nsw i32 %648, %650
  %652 = load i32, i32* %9, align 4
  %653 = mul nsw i32 %652, 100
  %654 = mul nsw i32 %653, 100
  %655 = add nsw i32 %651, %654
  %656 = mul nsw i32 20, %655
  %657 = add nsw i32 11, %656
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds double, double* %647, i64 %658
  %660 = load double, double* %659, align 8
  %661 = fadd double %646, %660
  %662 = load double*, double** %4, align 8
  %663 = load i32, i32* %7, align 4
  %664 = load i32, i32* %8, align 4
  %665 = mul nsw i32 %664, 100
  %666 = add nsw i32 %663, %665
  %667 = load i32, i32* %9, align 4
  %668 = mul nsw i32 %667, 100
  %669 = mul nsw i32 %668, 100
  %670 = add nsw i32 %666, %669
  %671 = mul nsw i32 20, %670
  %672 = add nsw i32 12, %671
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds double, double* %662, i64 %673
  %675 = load double, double* %674, align 8
  %676 = fsub double %661, %675
  %677 = load double*, double** %4, align 8
  %678 = load i32, i32* %7, align 4
  %679 = load i32, i32* %8, align 4
  %680 = mul nsw i32 %679, 100
  %681 = add nsw i32 %678, %680
  %682 = load i32, i32* %9, align 4
  %683 = mul nsw i32 %682, 100
  %684 = mul nsw i32 %683, 100
  %685 = add nsw i32 %681, %684
  %686 = mul nsw i32 20, %685
  %687 = add nsw i32 13, %686
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds double, double* %677, i64 %688
  %690 = load double, double* %689, align 8
  %691 = fadd double %676, %690
  %692 = load double*, double** %4, align 8
  %693 = load i32, i32* %7, align 4
  %694 = load i32, i32* %8, align 4
  %695 = mul nsw i32 %694, 100
  %696 = add nsw i32 %693, %695
  %697 = load i32, i32* %9, align 4
  %698 = mul nsw i32 %697, 100
  %699 = mul nsw i32 %698, 100
  %700 = add nsw i32 %696, %699
  %701 = mul nsw i32 20, %700
  %702 = add nsw i32 14, %701
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds double, double* %692, i64 %703
  %705 = load double, double* %704, align 8
  %706 = fsub double %691, %705
  %707 = load double*, double** %4, align 8
  %708 = load i32, i32* %7, align 4
  %709 = load i32, i32* %8, align 4
  %710 = mul nsw i32 %709, 100
  %711 = add nsw i32 %708, %710
  %712 = load i32, i32* %9, align 4
  %713 = mul nsw i32 %712, 100
  %714 = mul nsw i32 %713, 100
  %715 = add nsw i32 %711, %714
  %716 = mul nsw i32 20, %715
  %717 = add nsw i32 15, %716
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds double, double* %707, i64 %718
  %720 = load double, double* %719, align 8
  %721 = fadd double %706, %720
  %722 = load double*, double** %4, align 8
  %723 = load i32, i32* %7, align 4
  %724 = load i32, i32* %8, align 4
  %725 = mul nsw i32 %724, 100
  %726 = add nsw i32 %723, %725
  %727 = load i32, i32* %9, align 4
  %728 = mul nsw i32 %727, 100
  %729 = mul nsw i32 %728, 100
  %730 = add nsw i32 %726, %729
  %731 = mul nsw i32 20, %730
  %732 = add nsw i32 16, %731
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds double, double* %722, i64 %733
  %735 = load double, double* %734, align 8
  %736 = fsub double %721, %735
  %737 = load double*, double** %4, align 8
  %738 = load i32, i32* %7, align 4
  %739 = load i32, i32* %8, align 4
  %740 = mul nsw i32 %739, 100
  %741 = add nsw i32 %738, %740
  %742 = load i32, i32* %9, align 4
  %743 = mul nsw i32 %742, 100
  %744 = mul nsw i32 %743, 100
  %745 = add nsw i32 %741, %744
  %746 = mul nsw i32 20, %745
  %747 = add nsw i32 17, %746
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds double, double* %737, i64 %748
  %750 = load double, double* %749, align 8
  %751 = fadd double %736, %750
  %752 = load double*, double** %4, align 8
  %753 = load i32, i32* %7, align 4
  %754 = load i32, i32* %8, align 4
  %755 = mul nsw i32 %754, 100
  %756 = add nsw i32 %753, %755
  %757 = load i32, i32* %9, align 4
  %758 = mul nsw i32 %757, 100
  %759 = mul nsw i32 %758, 100
  %760 = add nsw i32 %756, %759
  %761 = mul nsw i32 20, %760
  %762 = add nsw i32 18, %761
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds double, double* %752, i64 %763
  %765 = load double, double* %764, align 8
  %766 = fsub double %751, %765
  %767 = fptrunc double %766 to float
  store float %767, float* %13, align 4
  %768 = load float, float* %10, align 4
  %769 = load float, float* %11, align 4
  %770 = fdiv float %769, %768
  store float %770, float* %11, align 4
  %771 = load float, float* %10, align 4
  %772 = load float, float* %12, align 4
  %773 = fdiv float %772, %771
  store float %773, float* %12, align 4
  %774 = load float, float* %10, align 4
  %775 = load float, float* %13, align 4
  %776 = fdiv float %775, %774
  store float %776, float* %13, align 4
  %777 = load i32, i32* %6, align 4
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %779, label %783

; <label>:779:                                    ; preds = %32
  %780 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @storeValue(%struct._IO_FILE* %780, float* %11)
  %781 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @storeValue(%struct._IO_FILE* %781, float* %12)
  %782 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @storeValue(%struct._IO_FILE* %782, float* %13)
  br label %792

; <label>:783:                                    ; preds = %32
  %784 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %785 = load float, float* %11, align 4
  %786 = fpext float %785 to double
  %787 = load float, float* %12, align 4
  %788 = fpext float %787 to double
  %789 = load float, float* %13, align 4
  %790 = fpext float %789 to double
  %791 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %784, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), double %786, double %788, double %790)
  br label %792

; <label>:792:                                    ; preds = %783, %779
  br label %793

; <label>:793:                                    ; preds = %792
  %794 = load i32, i32* %7, align 4
  %795 = add nsw i32 %794, 1
  store i32 %795, i32* %7, align 4
  br label %29

; <label>:796:                                    ; preds = %29
  br label %797

; <label>:797:                                    ; preds = %796
  %798 = load i32, i32* %8, align 4
  %799 = add nsw i32 %798, 1
  store i32 %799, i32* %8, align 4
  br label %25

; <label>:800:                                    ; preds = %25
  br label %801

; <label>:801:                                    ; preds = %800
  %802 = load i32, i32* %9, align 4
  %803 = add nsw i32 %802, 1
  store i32 %803, i32* %9, align 4
  br label %21

; <label>:804:                                    ; preds = %21
  %805 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %806 = call i32 @fclose(%struct._IO_FILE* %805)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storeValue(%struct._IO_FILE*, float*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store float* %1, float** %4, align 8
  store i32 1, i32* %5, align 4
  %9 = bitcast i32* %5 to i8*
  %10 = load i8, i8* %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %2
  %14 = load float*, float** %4, align 8
  %15 = bitcast float* %14 to i8*
  store i8* %15, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %16

; <label>:16:                                     ; preds = %31, %13
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 4, %23
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %29
  store i8 %27, i8* %30, align 1
  br label %31

; <label>:31:                                     ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %16

; <label>:34:                                     ; preds = %16
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %37 = call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %36)
  br label %43

; <label>:38:                                     ; preds = %2
  %39 = load float*, float** %4, align 8
  %40 = bitcast float* %39 to i8*
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %42 = call i64 @fwrite(i8* %40, i64 4, i64 1, %struct._IO_FILE* %41)
  br label %43

; <label>:43:                                     ; preds = %38, %34
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @LBM_compareVelocityField(double*, i8*, i32) #0 {
  %4 = alloca double*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct._IO_FILE*, align 8
  store double* %0, double** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store float 0xC6293E5940000000, float* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)
  %28 = call %struct._IO_FILE* @fopen(i8* %23, i8* %27)
  store %struct._IO_FILE* %28, %struct._IO_FILE** %22, align 8
  store i32 0, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %831, %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 130
  br i1 %31, label %32, label %834

; <label>:32:                                     ; preds = %29
  store i32 0, i32* %8, align 4
  br label %33

; <label>:33:                                     ; preds = %827, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 100
  br i1 %35, label %36, label %830

; <label>:36:                                     ; preds = %33
  store i32 0, i32* %7, align 4
  br label %37

; <label>:37:                                     ; preds = %823, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 100
  br i1 %39, label %40, label %826

; <label>:40:                                     ; preds = %37
  %41 = load double*, double** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 100
  %45 = add nsw i32 %42, %44
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 100
  %48 = mul nsw i32 %47, 100
  %49 = add nsw i32 %45, %48
  %50 = mul nsw i32 20, %49
  %51 = add nsw i32 0, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %41, i64 %52
  %54 = load double, double* %53, align 8
  %55 = load double*, double** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %57, 100
  %59 = add nsw i32 %56, %58
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 100
  %62 = mul nsw i32 %61, 100
  %63 = add nsw i32 %59, %62
  %64 = mul nsw i32 20, %63
  %65 = add nsw i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %55, i64 %66
  %68 = load double, double* %67, align 8
  %69 = fadd double %54, %68
  %70 = load double*, double** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 100
  %74 = add nsw i32 %71, %73
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %75, 100
  %77 = mul nsw i32 %76, 100
  %78 = add nsw i32 %74, %77
  %79 = mul nsw i32 20, %78
  %80 = add nsw i32 2, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %70, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fadd double %69, %83
  %85 = load double*, double** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %87, 100
  %89 = add nsw i32 %86, %88
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %90, 100
  %92 = mul nsw i32 %91, 100
  %93 = add nsw i32 %89, %92
  %94 = mul nsw i32 20, %93
  %95 = add nsw i32 3, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %85, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fadd double %84, %98
  %100 = load double*, double** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %102, 100
  %104 = add nsw i32 %101, %103
  %105 = load i32, i32* %9, align 4
  %106 = mul nsw i32 %105, 100
  %107 = mul nsw i32 %106, 100
  %108 = add nsw i32 %104, %107
  %109 = mul nsw i32 20, %108
  %110 = add nsw i32 4, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %100, i64 %111
  %113 = load double, double* %112, align 8
  %114 = fadd double %99, %113
  %115 = load double*, double** %4, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 %117, 100
  %119 = add nsw i32 %116, %118
  %120 = load i32, i32* %9, align 4
  %121 = mul nsw i32 %120, 100
  %122 = mul nsw i32 %121, 100
  %123 = add nsw i32 %119, %122
  %124 = mul nsw i32 20, %123
  %125 = add nsw i32 5, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %115, i64 %126
  %128 = load double, double* %127, align 8
  %129 = fadd double %114, %128
  %130 = load double*, double** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = mul nsw i32 %132, 100
  %134 = add nsw i32 %131, %133
  %135 = load i32, i32* %9, align 4
  %136 = mul nsw i32 %135, 100
  %137 = mul nsw i32 %136, 100
  %138 = add nsw i32 %134, %137
  %139 = mul nsw i32 20, %138
  %140 = add nsw i32 6, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds double, double* %130, i64 %141
  %143 = load double, double* %142, align 8
  %144 = fadd double %129, %143
  %145 = load double*, double** %4, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %8, align 4
  %148 = mul nsw i32 %147, 100
  %149 = add nsw i32 %146, %148
  %150 = load i32, i32* %9, align 4
  %151 = mul nsw i32 %150, 100
  %152 = mul nsw i32 %151, 100
  %153 = add nsw i32 %149, %152
  %154 = mul nsw i32 20, %153
  %155 = add nsw i32 7, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %145, i64 %156
  %158 = load double, double* %157, align 8
  %159 = fadd double %144, %158
  %160 = load double*, double** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = mul nsw i32 %162, 100
  %164 = add nsw i32 %161, %163
  %165 = load i32, i32* %9, align 4
  %166 = mul nsw i32 %165, 100
  %167 = mul nsw i32 %166, 100
  %168 = add nsw i32 %164, %167
  %169 = mul nsw i32 20, %168
  %170 = add nsw i32 8, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %160, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fadd double %159, %173
  %175 = load double*, double** %4, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = mul nsw i32 %177, 100
  %179 = add nsw i32 %176, %178
  %180 = load i32, i32* %9, align 4
  %181 = mul nsw i32 %180, 100
  %182 = mul nsw i32 %181, 100
  %183 = add nsw i32 %179, %182
  %184 = mul nsw i32 20, %183
  %185 = add nsw i32 9, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %175, i64 %186
  %188 = load double, double* %187, align 8
  %189 = fadd double %174, %188
  %190 = load double*, double** %4, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %8, align 4
  %193 = mul nsw i32 %192, 100
  %194 = add nsw i32 %191, %193
  %195 = load i32, i32* %9, align 4
  %196 = mul nsw i32 %195, 100
  %197 = mul nsw i32 %196, 100
  %198 = add nsw i32 %194, %197
  %199 = mul nsw i32 20, %198
  %200 = add nsw i32 10, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %190, i64 %201
  %203 = load double, double* %202, align 8
  %204 = fadd double %189, %203
  %205 = load double*, double** %4, align 8
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* %8, align 4
  %208 = mul nsw i32 %207, 100
  %209 = add nsw i32 %206, %208
  %210 = load i32, i32* %9, align 4
  %211 = mul nsw i32 %210, 100
  %212 = mul nsw i32 %211, 100
  %213 = add nsw i32 %209, %212
  %214 = mul nsw i32 20, %213
  %215 = add nsw i32 11, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds double, double* %205, i64 %216
  %218 = load double, double* %217, align 8
  %219 = fadd double %204, %218
  %220 = load double*, double** %4, align 8
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* %8, align 4
  %223 = mul nsw i32 %222, 100
  %224 = add nsw i32 %221, %223
  %225 = load i32, i32* %9, align 4
  %226 = mul nsw i32 %225, 100
  %227 = mul nsw i32 %226, 100
  %228 = add nsw i32 %224, %227
  %229 = mul nsw i32 20, %228
  %230 = add nsw i32 12, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds double, double* %220, i64 %231
  %233 = load double, double* %232, align 8
  %234 = fadd double %219, %233
  %235 = load double*, double** %4, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %8, align 4
  %238 = mul nsw i32 %237, 100
  %239 = add nsw i32 %236, %238
  %240 = load i32, i32* %9, align 4
  %241 = mul nsw i32 %240, 100
  %242 = mul nsw i32 %241, 100
  %243 = add nsw i32 %239, %242
  %244 = mul nsw i32 20, %243
  %245 = add nsw i32 13, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, double* %235, i64 %246
  %248 = load double, double* %247, align 8
  %249 = fadd double %234, %248
  %250 = load double*, double** %4, align 8
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %8, align 4
  %253 = mul nsw i32 %252, 100
  %254 = add nsw i32 %251, %253
  %255 = load i32, i32* %9, align 4
  %256 = mul nsw i32 %255, 100
  %257 = mul nsw i32 %256, 100
  %258 = add nsw i32 %254, %257
  %259 = mul nsw i32 20, %258
  %260 = add nsw i32 14, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, double* %250, i64 %261
  %263 = load double, double* %262, align 8
  %264 = fadd double %249, %263
  %265 = load double*, double** %4, align 8
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %8, align 4
  %268 = mul nsw i32 %267, 100
  %269 = add nsw i32 %266, %268
  %270 = load i32, i32* %9, align 4
  %271 = mul nsw i32 %270, 100
  %272 = mul nsw i32 %271, 100
  %273 = add nsw i32 %269, %272
  %274 = mul nsw i32 20, %273
  %275 = add nsw i32 15, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds double, double* %265, i64 %276
  %278 = load double, double* %277, align 8
  %279 = fadd double %264, %278
  %280 = load double*, double** %4, align 8
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* %8, align 4
  %283 = mul nsw i32 %282, 100
  %284 = add nsw i32 %281, %283
  %285 = load i32, i32* %9, align 4
  %286 = mul nsw i32 %285, 100
  %287 = mul nsw i32 %286, 100
  %288 = add nsw i32 %284, %287
  %289 = mul nsw i32 20, %288
  %290 = add nsw i32 16, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, double* %280, i64 %291
  %293 = load double, double* %292, align 8
  %294 = fadd double %279, %293
  %295 = load double*, double** %4, align 8
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* %8, align 4
  %298 = mul nsw i32 %297, 100
  %299 = add nsw i32 %296, %298
  %300 = load i32, i32* %9, align 4
  %301 = mul nsw i32 %300, 100
  %302 = mul nsw i32 %301, 100
  %303 = add nsw i32 %299, %302
  %304 = mul nsw i32 20, %303
  %305 = add nsw i32 17, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds double, double* %295, i64 %306
  %308 = load double, double* %307, align 8
  %309 = fadd double %294, %308
  %310 = load double*, double** %4, align 8
  %311 = load i32, i32* %7, align 4
  %312 = load i32, i32* %8, align 4
  %313 = mul nsw i32 %312, 100
  %314 = add nsw i32 %311, %313
  %315 = load i32, i32* %9, align 4
  %316 = mul nsw i32 %315, 100
  %317 = mul nsw i32 %316, 100
  %318 = add nsw i32 %314, %317
  %319 = mul nsw i32 20, %318
  %320 = add nsw i32 18, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds double, double* %310, i64 %321
  %323 = load double, double* %322, align 8
  %324 = fadd double %309, %323
  store double %324, double* %10, align 8
  %325 = load double*, double** %4, align 8
  %326 = load i32, i32* %7, align 4
  %327 = load i32, i32* %8, align 4
  %328 = mul nsw i32 %327, 100
  %329 = add nsw i32 %326, %328
  %330 = load i32, i32* %9, align 4
  %331 = mul nsw i32 %330, 100
  %332 = mul nsw i32 %331, 100
  %333 = add nsw i32 %329, %332
  %334 = mul nsw i32 20, %333
  %335 = add nsw i32 3, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double, double* %325, i64 %336
  %338 = load double, double* %337, align 8
  %339 = load double*, double** %4, align 8
  %340 = load i32, i32* %7, align 4
  %341 = load i32, i32* %8, align 4
  %342 = mul nsw i32 %341, 100
  %343 = add nsw i32 %340, %342
  %344 = load i32, i32* %9, align 4
  %345 = mul nsw i32 %344, 100
  %346 = mul nsw i32 %345, 100
  %347 = add nsw i32 %343, %346
  %348 = mul nsw i32 20, %347
  %349 = add nsw i32 4, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds double, double* %339, i64 %350
  %352 = load double, double* %351, align 8
  %353 = fsub double %338, %352
  %354 = load double*, double** %4, align 8
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* %8, align 4
  %357 = mul nsw i32 %356, 100
  %358 = add nsw i32 %355, %357
  %359 = load i32, i32* %9, align 4
  %360 = mul nsw i32 %359, 100
  %361 = mul nsw i32 %360, 100
  %362 = add nsw i32 %358, %361
  %363 = mul nsw i32 20, %362
  %364 = add nsw i32 7, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds double, double* %354, i64 %365
  %367 = load double, double* %366, align 8
  %368 = fadd double %353, %367
  %369 = load double*, double** %4, align 8
  %370 = load i32, i32* %7, align 4
  %371 = load i32, i32* %8, align 4
  %372 = mul nsw i32 %371, 100
  %373 = add nsw i32 %370, %372
  %374 = load i32, i32* %9, align 4
  %375 = mul nsw i32 %374, 100
  %376 = mul nsw i32 %375, 100
  %377 = add nsw i32 %373, %376
  %378 = mul nsw i32 20, %377
  %379 = add nsw i32 8, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds double, double* %369, i64 %380
  %382 = load double, double* %381, align 8
  %383 = fsub double %368, %382
  %384 = load double*, double** %4, align 8
  %385 = load i32, i32* %7, align 4
  %386 = load i32, i32* %8, align 4
  %387 = mul nsw i32 %386, 100
  %388 = add nsw i32 %385, %387
  %389 = load i32, i32* %9, align 4
  %390 = mul nsw i32 %389, 100
  %391 = mul nsw i32 %390, 100
  %392 = add nsw i32 %388, %391
  %393 = mul nsw i32 20, %392
  %394 = add nsw i32 9, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds double, double* %384, i64 %395
  %397 = load double, double* %396, align 8
  %398 = fadd double %383, %397
  %399 = load double*, double** %4, align 8
  %400 = load i32, i32* %7, align 4
  %401 = load i32, i32* %8, align 4
  %402 = mul nsw i32 %401, 100
  %403 = add nsw i32 %400, %402
  %404 = load i32, i32* %9, align 4
  %405 = mul nsw i32 %404, 100
  %406 = mul nsw i32 %405, 100
  %407 = add nsw i32 %403, %406
  %408 = mul nsw i32 20, %407
  %409 = add nsw i32 10, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds double, double* %399, i64 %410
  %412 = load double, double* %411, align 8
  %413 = fsub double %398, %412
  %414 = load double*, double** %4, align 8
  %415 = load i32, i32* %7, align 4
  %416 = load i32, i32* %8, align 4
  %417 = mul nsw i32 %416, 100
  %418 = add nsw i32 %415, %417
  %419 = load i32, i32* %9, align 4
  %420 = mul nsw i32 %419, 100
  %421 = mul nsw i32 %420, 100
  %422 = add nsw i32 %418, %421
  %423 = mul nsw i32 20, %422
  %424 = add nsw i32 15, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds double, double* %414, i64 %425
  %427 = load double, double* %426, align 8
  %428 = fadd double %413, %427
  %429 = load double*, double** %4, align 8
  %430 = load i32, i32* %7, align 4
  %431 = load i32, i32* %8, align 4
  %432 = mul nsw i32 %431, 100
  %433 = add nsw i32 %430, %432
  %434 = load i32, i32* %9, align 4
  %435 = mul nsw i32 %434, 100
  %436 = mul nsw i32 %435, 100
  %437 = add nsw i32 %433, %436
  %438 = mul nsw i32 20, %437
  %439 = add nsw i32 16, %438
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds double, double* %429, i64 %440
  %442 = load double, double* %441, align 8
  %443 = fadd double %428, %442
  %444 = load double*, double** %4, align 8
  %445 = load i32, i32* %7, align 4
  %446 = load i32, i32* %8, align 4
  %447 = mul nsw i32 %446, 100
  %448 = add nsw i32 %445, %447
  %449 = load i32, i32* %9, align 4
  %450 = mul nsw i32 %449, 100
  %451 = mul nsw i32 %450, 100
  %452 = add nsw i32 %448, %451
  %453 = mul nsw i32 20, %452
  %454 = add nsw i32 17, %453
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds double, double* %444, i64 %455
  %457 = load double, double* %456, align 8
  %458 = fsub double %443, %457
  %459 = load double*, double** %4, align 8
  %460 = load i32, i32* %7, align 4
  %461 = load i32, i32* %8, align 4
  %462 = mul nsw i32 %461, 100
  %463 = add nsw i32 %460, %462
  %464 = load i32, i32* %9, align 4
  %465 = mul nsw i32 %464, 100
  %466 = mul nsw i32 %465, 100
  %467 = add nsw i32 %463, %466
  %468 = mul nsw i32 20, %467
  %469 = add nsw i32 18, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds double, double* %459, i64 %470
  %472 = load double, double* %471, align 8
  %473 = fsub double %458, %472
  store double %473, double* %11, align 8
  %474 = load double*, double** %4, align 8
  %475 = load i32, i32* %7, align 4
  %476 = load i32, i32* %8, align 4
  %477 = mul nsw i32 %476, 100
  %478 = add nsw i32 %475, %477
  %479 = load i32, i32* %9, align 4
  %480 = mul nsw i32 %479, 100
  %481 = mul nsw i32 %480, 100
  %482 = add nsw i32 %478, %481
  %483 = mul nsw i32 20, %482
  %484 = add nsw i32 1, %483
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds double, double* %474, i64 %485
  %487 = load double, double* %486, align 8
  %488 = load double*, double** %4, align 8
  %489 = load i32, i32* %7, align 4
  %490 = load i32, i32* %8, align 4
  %491 = mul nsw i32 %490, 100
  %492 = add nsw i32 %489, %491
  %493 = load i32, i32* %9, align 4
  %494 = mul nsw i32 %493, 100
  %495 = mul nsw i32 %494, 100
  %496 = add nsw i32 %492, %495
  %497 = mul nsw i32 20, %496
  %498 = add nsw i32 2, %497
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds double, double* %488, i64 %499
  %501 = load double, double* %500, align 8
  %502 = fsub double %487, %501
  %503 = load double*, double** %4, align 8
  %504 = load i32, i32* %7, align 4
  %505 = load i32, i32* %8, align 4
  %506 = mul nsw i32 %505, 100
  %507 = add nsw i32 %504, %506
  %508 = load i32, i32* %9, align 4
  %509 = mul nsw i32 %508, 100
  %510 = mul nsw i32 %509, 100
  %511 = add nsw i32 %507, %510
  %512 = mul nsw i32 20, %511
  %513 = add nsw i32 7, %512
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds double, double* %503, i64 %514
  %516 = load double, double* %515, align 8
  %517 = fadd double %502, %516
  %518 = load double*, double** %4, align 8
  %519 = load i32, i32* %7, align 4
  %520 = load i32, i32* %8, align 4
  %521 = mul nsw i32 %520, 100
  %522 = add nsw i32 %519, %521
  %523 = load i32, i32* %9, align 4
  %524 = mul nsw i32 %523, 100
  %525 = mul nsw i32 %524, 100
  %526 = add nsw i32 %522, %525
  %527 = mul nsw i32 20, %526
  %528 = add nsw i32 8, %527
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds double, double* %518, i64 %529
  %531 = load double, double* %530, align 8
  %532 = fadd double %517, %531
  %533 = load double*, double** %4, align 8
  %534 = load i32, i32* %7, align 4
  %535 = load i32, i32* %8, align 4
  %536 = mul nsw i32 %535, 100
  %537 = add nsw i32 %534, %536
  %538 = load i32, i32* %9, align 4
  %539 = mul nsw i32 %538, 100
  %540 = mul nsw i32 %539, 100
  %541 = add nsw i32 %537, %540
  %542 = mul nsw i32 20, %541
  %543 = add nsw i32 9, %542
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds double, double* %533, i64 %544
  %546 = load double, double* %545, align 8
  %547 = fsub double %532, %546
  %548 = load double*, double** %4, align 8
  %549 = load i32, i32* %7, align 4
  %550 = load i32, i32* %8, align 4
  %551 = mul nsw i32 %550, 100
  %552 = add nsw i32 %549, %551
  %553 = load i32, i32* %9, align 4
  %554 = mul nsw i32 %553, 100
  %555 = mul nsw i32 %554, 100
  %556 = add nsw i32 %552, %555
  %557 = mul nsw i32 20, %556
  %558 = add nsw i32 10, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds double, double* %548, i64 %559
  %561 = load double, double* %560, align 8
  %562 = fsub double %547, %561
  %563 = load double*, double** %4, align 8
  %564 = load i32, i32* %7, align 4
  %565 = load i32, i32* %8, align 4
  %566 = mul nsw i32 %565, 100
  %567 = add nsw i32 %564, %566
  %568 = load i32, i32* %9, align 4
  %569 = mul nsw i32 %568, 100
  %570 = mul nsw i32 %569, 100
  %571 = add nsw i32 %567, %570
  %572 = mul nsw i32 20, %571
  %573 = add nsw i32 11, %572
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds double, double* %563, i64 %574
  %576 = load double, double* %575, align 8
  %577 = fadd double %562, %576
  %578 = load double*, double** %4, align 8
  %579 = load i32, i32* %7, align 4
  %580 = load i32, i32* %8, align 4
  %581 = mul nsw i32 %580, 100
  %582 = add nsw i32 %579, %581
  %583 = load i32, i32* %9, align 4
  %584 = mul nsw i32 %583, 100
  %585 = mul nsw i32 %584, 100
  %586 = add nsw i32 %582, %585
  %587 = mul nsw i32 20, %586
  %588 = add nsw i32 12, %587
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds double, double* %578, i64 %589
  %591 = load double, double* %590, align 8
  %592 = fadd double %577, %591
  %593 = load double*, double** %4, align 8
  %594 = load i32, i32* %7, align 4
  %595 = load i32, i32* %8, align 4
  %596 = mul nsw i32 %595, 100
  %597 = add nsw i32 %594, %596
  %598 = load i32, i32* %9, align 4
  %599 = mul nsw i32 %598, 100
  %600 = mul nsw i32 %599, 100
  %601 = add nsw i32 %597, %600
  %602 = mul nsw i32 20, %601
  %603 = add nsw i32 13, %602
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds double, double* %593, i64 %604
  %606 = load double, double* %605, align 8
  %607 = fsub double %592, %606
  %608 = load double*, double** %4, align 8
  %609 = load i32, i32* %7, align 4
  %610 = load i32, i32* %8, align 4
  %611 = mul nsw i32 %610, 100
  %612 = add nsw i32 %609, %611
  %613 = load i32, i32* %9, align 4
  %614 = mul nsw i32 %613, 100
  %615 = mul nsw i32 %614, 100
  %616 = add nsw i32 %612, %615
  %617 = mul nsw i32 20, %616
  %618 = add nsw i32 14, %617
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds double, double* %608, i64 %619
  %621 = load double, double* %620, align 8
  %622 = fsub double %607, %621
  store double %622, double* %12, align 8
  %623 = load double*, double** %4, align 8
  %624 = load i32, i32* %7, align 4
  %625 = load i32, i32* %8, align 4
  %626 = mul nsw i32 %625, 100
  %627 = add nsw i32 %624, %626
  %628 = load i32, i32* %9, align 4
  %629 = mul nsw i32 %628, 100
  %630 = mul nsw i32 %629, 100
  %631 = add nsw i32 %627, %630
  %632 = mul nsw i32 20, %631
  %633 = add nsw i32 5, %632
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds double, double* %623, i64 %634
  %636 = load double, double* %635, align 8
  %637 = load double*, double** %4, align 8
  %638 = load i32, i32* %7, align 4
  %639 = load i32, i32* %8, align 4
  %640 = mul nsw i32 %639, 100
  %641 = add nsw i32 %638, %640
  %642 = load i32, i32* %9, align 4
  %643 = mul nsw i32 %642, 100
  %644 = mul nsw i32 %643, 100
  %645 = add nsw i32 %641, %644
  %646 = mul nsw i32 20, %645
  %647 = add nsw i32 6, %646
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds double, double* %637, i64 %648
  %650 = load double, double* %649, align 8
  %651 = fsub double %636, %650
  %652 = load double*, double** %4, align 8
  %653 = load i32, i32* %7, align 4
  %654 = load i32, i32* %8, align 4
  %655 = mul nsw i32 %654, 100
  %656 = add nsw i32 %653, %655
  %657 = load i32, i32* %9, align 4
  %658 = mul nsw i32 %657, 100
  %659 = mul nsw i32 %658, 100
  %660 = add nsw i32 %656, %659
  %661 = mul nsw i32 20, %660
  %662 = add nsw i32 11, %661
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds double, double* %652, i64 %663
  %665 = load double, double* %664, align 8
  %666 = fadd double %651, %665
  %667 = load double*, double** %4, align 8
  %668 = load i32, i32* %7, align 4
  %669 = load i32, i32* %8, align 4
  %670 = mul nsw i32 %669, 100
  %671 = add nsw i32 %668, %670
  %672 = load i32, i32* %9, align 4
  %673 = mul nsw i32 %672, 100
  %674 = mul nsw i32 %673, 100
  %675 = add nsw i32 %671, %674
  %676 = mul nsw i32 20, %675
  %677 = add nsw i32 12, %676
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds double, double* %667, i64 %678
  %680 = load double, double* %679, align 8
  %681 = fsub double %666, %680
  %682 = load double*, double** %4, align 8
  %683 = load i32, i32* %7, align 4
  %684 = load i32, i32* %8, align 4
  %685 = mul nsw i32 %684, 100
  %686 = add nsw i32 %683, %685
  %687 = load i32, i32* %9, align 4
  %688 = mul nsw i32 %687, 100
  %689 = mul nsw i32 %688, 100
  %690 = add nsw i32 %686, %689
  %691 = mul nsw i32 20, %690
  %692 = add nsw i32 13, %691
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds double, double* %682, i64 %693
  %695 = load double, double* %694, align 8
  %696 = fadd double %681, %695
  %697 = load double*, double** %4, align 8
  %698 = load i32, i32* %7, align 4
  %699 = load i32, i32* %8, align 4
  %700 = mul nsw i32 %699, 100
  %701 = add nsw i32 %698, %700
  %702 = load i32, i32* %9, align 4
  %703 = mul nsw i32 %702, 100
  %704 = mul nsw i32 %703, 100
  %705 = add nsw i32 %701, %704
  %706 = mul nsw i32 20, %705
  %707 = add nsw i32 14, %706
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds double, double* %697, i64 %708
  %710 = load double, double* %709, align 8
  %711 = fsub double %696, %710
  %712 = load double*, double** %4, align 8
  %713 = load i32, i32* %7, align 4
  %714 = load i32, i32* %8, align 4
  %715 = mul nsw i32 %714, 100
  %716 = add nsw i32 %713, %715
  %717 = load i32, i32* %9, align 4
  %718 = mul nsw i32 %717, 100
  %719 = mul nsw i32 %718, 100
  %720 = add nsw i32 %716, %719
  %721 = mul nsw i32 20, %720
  %722 = add nsw i32 15, %721
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds double, double* %712, i64 %723
  %725 = load double, double* %724, align 8
  %726 = fadd double %711, %725
  %727 = load double*, double** %4, align 8
  %728 = load i32, i32* %7, align 4
  %729 = load i32, i32* %8, align 4
  %730 = mul nsw i32 %729, 100
  %731 = add nsw i32 %728, %730
  %732 = load i32, i32* %9, align 4
  %733 = mul nsw i32 %732, 100
  %734 = mul nsw i32 %733, 100
  %735 = add nsw i32 %731, %734
  %736 = mul nsw i32 20, %735
  %737 = add nsw i32 16, %736
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds double, double* %727, i64 %738
  %740 = load double, double* %739, align 8
  %741 = fsub double %726, %740
  %742 = load double*, double** %4, align 8
  %743 = load i32, i32* %7, align 4
  %744 = load i32, i32* %8, align 4
  %745 = mul nsw i32 %744, 100
  %746 = add nsw i32 %743, %745
  %747 = load i32, i32* %9, align 4
  %748 = mul nsw i32 %747, 100
  %749 = mul nsw i32 %748, 100
  %750 = add nsw i32 %746, %749
  %751 = mul nsw i32 20, %750
  %752 = add nsw i32 17, %751
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds double, double* %742, i64 %753
  %755 = load double, double* %754, align 8
  %756 = fadd double %741, %755
  %757 = load double*, double** %4, align 8
  %758 = load i32, i32* %7, align 4
  %759 = load i32, i32* %8, align 4
  %760 = mul nsw i32 %759, 100
  %761 = add nsw i32 %758, %760
  %762 = load i32, i32* %9, align 4
  %763 = mul nsw i32 %762, 100
  %764 = mul nsw i32 %763, 100
  %765 = add nsw i32 %761, %764
  %766 = mul nsw i32 20, %765
  %767 = add nsw i32 18, %766
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds double, double* %757, i64 %768
  %770 = load double, double* %769, align 8
  %771 = fsub double %756, %770
  store double %771, double* %13, align 8
  %772 = load double, double* %10, align 8
  %773 = load double, double* %11, align 8
  %774 = fdiv double %773, %772
  store double %774, double* %11, align 8
  %775 = load double, double* %10, align 8
  %776 = load double, double* %12, align 8
  %777 = fdiv double %776, %775
  store double %777, double* %12, align 8
  %778 = load double, double* %10, align 8
  %779 = load double, double* %13, align 8
  %780 = fdiv double %779, %778
  store double %780, double* %13, align 8
  %781 = load i32, i32* %6, align 4
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %783, label %787

; <label>:783:                                    ; preds = %40
  %784 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  call void @loadValue(%struct._IO_FILE* %784, float* %14)
  %785 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  call void @loadValue(%struct._IO_FILE* %785, float* %15)
  %786 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  call void @loadValue(%struct._IO_FILE* %786, float* %16)
  br label %790

; <label>:787:                                    ; preds = %40
  %788 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %789 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %788, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), float* %14, float* %15, float* %16)
  br label %790

; <label>:790:                                    ; preds = %787, %783
  %791 = load double, double* %11, align 8
  %792 = load float, float* %14, align 4
  %793 = fpext float %792 to double
  %794 = fsub double %791, %793
  %795 = fptrunc double %794 to float
  store float %795, float* %17, align 4
  %796 = load double, double* %12, align 8
  %797 = load float, float* %15, align 4
  %798 = fpext float %797 to double
  %799 = fsub double %796, %798
  %800 = fptrunc double %799 to float
  store float %800, float* %18, align 4
  %801 = load double, double* %13, align 8
  %802 = load float, float* %16, align 4
  %803 = fpext float %802 to double
  %804 = fsub double %801, %803
  %805 = fptrunc double %804 to float
  store float %805, float* %19, align 4
  %806 = load float, float* %17, align 4
  %807 = load float, float* %17, align 4
  %808 = fmul float %806, %807
  %809 = load float, float* %18, align 4
  %810 = load float, float* %18, align 4
  %811 = fmul float %809, %810
  %812 = fadd float %808, %811
  %813 = load float, float* %19, align 4
  %814 = load float, float* %19, align 4
  %815 = fmul float %813, %814
  %816 = fadd float %812, %815
  store float %816, float* %20, align 4
  %817 = load float, float* %20, align 4
  %818 = load float, float* %21, align 4
  %819 = fcmp ogt float %817, %818
  br i1 %819, label %820, label %822

; <label>:820:                                    ; preds = %790
  %821 = load float, float* %20, align 4
  store float %821, float* %21, align 4
  br label %822

; <label>:822:                                    ; preds = %820, %790
  br label %823

; <label>:823:                                    ; preds = %822
  %824 = load i32, i32* %7, align 4
  %825 = add nsw i32 %824, 1
  store i32 %825, i32* %7, align 4
  br label %37

; <label>:826:                                    ; preds = %37
  br label %827

; <label>:827:                                    ; preds = %826
  %828 = load i32, i32* %8, align 4
  %829 = add nsw i32 %828, 1
  store i32 %829, i32* %8, align 4
  br label %33

; <label>:830:                                    ; preds = %33
  br label %831

; <label>:831:                                    ; preds = %830
  %832 = load i32, i32* %9, align 4
  %833 = add nsw i32 %832, 1
  store i32 %833, i32* %9, align 4
  br label %29

; <label>:834:                                    ; preds = %29
  %835 = load float, float* %21, align 4
  %836 = fpext float %835 to double
  %837 = call double @sqrt(double %836) #4
  %838 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), double %837)
  %839 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %840 = call i32 @fclose(%struct._IO_FILE* %839)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loadValue(%struct._IO_FILE*, float*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store float* %1, float** %4, align 8
  store i32 1, i32* %5, align 4
  %9 = bitcast i32* %5 to i8*
  %10 = load i8, i8* %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %2
  %14 = load float*, float** %4, align 8
  %15 = bitcast float* %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %18 = call i64 @fread(i8* %16, i64 4, i64 1, %struct._IO_FILE* %17)
  store i32 0, i32* %8, align 4
  br label %19

; <label>:19:                                     ; preds = %34, %13
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %37

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 4, %25
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %29, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19

; <label>:37:                                     ; preds = %19
  br label %43

; <label>:38:                                     ; preds = %2
  %39 = load float*, float** %4, align 8
  %40 = bitcast float* %39 to i8*
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %42 = call i64 @fread(i8* %40, i64 4, i64 1, %struct._IO_FILE* %41)
  br label %43

; <label>:43:                                     ; preds = %38, %37
  ret void
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
