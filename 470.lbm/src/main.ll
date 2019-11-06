; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MAIN_Param = type { i32, i8*, i32, i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@srcGrid = internal global [26000000 x double]* null, align 8
@dstGrid = internal global [26000000 x double]* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"timestep: %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"MAIN_parseCommandLine: cannot stat obstacle file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"MAIN_parseCommandLine:\0A\09size of file '%s' is %i bytes\0A\09expected size is %i bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"MAIN_parseCommandLine: cannot stat result file '%s'\0A\00", align 1
@MAIN_printInfo.actionString = internal constant [3 x [32 x i8]] [[32 x i8] c"nothing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"compare\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"store\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@MAIN_printInfo.simTypeString = internal constant [3 x [32 x i8]] [[32 x i8] c"lid-driven cavity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"channel flow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [174 x i8] c"MAIN_printInfo:\0A\09grid size      : %i x %i x %i = %.2f * 10^6 Cells\0A\09nTimeSteps     : %i\0A\09result file    : %s\0A\09action         : %s\0A\09simulation type: %s\0A\09obstacle file  : %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.MAIN_Param, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  call void @MAIN_parseCommandLine(i32 %8, i8** %9, %struct.MAIN_Param* %6)
  call void @MAIN_printInfo(%struct.MAIN_Param* %6)
  call void @MAIN_initialize(%struct.MAIN_Param* %6)
  store i32 1, i32* %7, align 4
  br label %10

; <label>:10:                                     ; preds = %36, %2
  %11 = load i32, i32* %7, align 4
  %12 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %6, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %11, %13
  br i1 %14, label %15, label %39

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %6, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %15
  %20 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %21 = getelementptr inbounds [26000000 x double], [26000000 x double]* %20, i32 0, i32 0
  call void @LBM_handleInOutFlow(double* %21)
  br label %22

; <label>:22:                                     ; preds = %19, %15
  %23 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %24 = getelementptr inbounds [26000000 x double], [26000000 x double]* %23, i32 0, i32 0
  %25 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %26 = getelementptr inbounds [26000000 x double], [26000000 x double]* %25, i32 0, i32 0
  call void @LBM_performStreamCollide(double* %24, double* %26)
  call void @LBM_swapGrids([26000000 x double]** @srcGrid, [26000000 x double]** @dstGrid)
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 63
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 %31)
  %33 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %34 = getelementptr inbounds [26000000 x double], [26000000 x double]* %33, i32 0, i32 0
  call void @LBM_showGridStatistics(double* %34)
  br label %35

; <label>:35:                                     ; preds = %30, %22
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %10

; <label>:39:                                     ; preds = %10
  call void @MAIN_finalize(%struct.MAIN_Param* %6)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MAIN_parseCommandLine(i32, i8**, %struct.MAIN_Param*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.MAIN_Param*, align 8
  %7 = alloca %struct.stat, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.MAIN_Param* %2, %struct.MAIN_Param** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 5
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 6
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10, %3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

; <label>:15:                                     ; preds = %10
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @atoi(i8* %18) #6
  %20 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %21 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %26 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29) #6
  %31 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %32 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 4
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @atoi(i8* %35) #6
  %37 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %38 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %70

; <label>:41:                                     ; preds = %15
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 5
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %46 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %48 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @stat(i8* %49, %struct.stat* %7) #7
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %41
  %53 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %54 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0), i8* %55)
  call void @exit(i32 1) #5
  unreachable

; <label>:57:                                     ; preds = %41
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 1313130
  br i1 %60, label %61, label %69

; <label>:61:                                     ; preds = %57
  %62 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %63 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i32 0, i32 0), i8* %64, i32 %67, i32 1313130)
  call void @exit(i32 1) #5
  unreachable

; <label>:69:                                     ; preds = %57
  br label %73

; <label>:70:                                     ; preds = %15
  %71 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %72 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %71, i32 0, i32 4
  store i8* null, i8** %72, align 8
  br label %73

; <label>:73:                                     ; preds = %70, %69
  %74 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %75 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %89

; <label>:78:                                     ; preds = %73
  %79 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %80 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @stat(i8* %81, %struct.stat* %7) #7
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

; <label>:84:                                     ; preds = %78
  %85 = load %struct.MAIN_Param*, %struct.MAIN_Param** %6, align 8
  %86 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i8* %87)
  call void @exit(i32 1) #5
  unreachable

; <label>:89:                                     ; preds = %78, %73
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MAIN_printInfo(%struct.MAIN_Param*) #0 {
  %2 = alloca %struct.MAIN_Param*, align 8
  store %struct.MAIN_Param* %0, %struct.MAIN_Param** %2, align 8
  %3 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %4 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %7 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %10 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @MAIN_printInfo.actionString, i64 0, i64 %12
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i32 0, i32 0
  %15 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %16 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @MAIN_printInfo.simTypeString, i64 0, i64 %18
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i32 0, i32 0
  %21 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %22 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %21, i32 0, i32 4
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %1
  br label %30

; <label>:26:                                     ; preds = %1
  %27 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %28 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  br label %30

; <label>:30:                                     ; preds = %26, %25
  %31 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %25 ], [ %29, %26 ]
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.5, i32 0, i32 0), i32 100, i32 100, i32 130, double 0x3FF4CCCCCCCCCCCC, i32 %5, i8* %8, i8* %14, i8* %20, i8* %31)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MAIN_initialize(%struct.MAIN_Param*) #0 {
  %2 = alloca %struct.MAIN_Param*, align 8
  store %struct.MAIN_Param* %0, %struct.MAIN_Param** %2, align 8
  call void @LBM_allocateGrid(double** bitcast ([26000000 x double]** @srcGrid to double**))
  call void @LBM_allocateGrid(double** bitcast ([26000000 x double]** @dstGrid to double**))
  %3 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %4 = getelementptr inbounds [26000000 x double], [26000000 x double]* %3, i32 0, i32 0
  call void @LBM_initializeGrid(double* %4)
  %5 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %6 = getelementptr inbounds [26000000 x double], [26000000 x double]* %5, i32 0, i32 0
  call void @LBM_initializeGrid(double* %6)
  %7 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %8 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %7, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %1
  %12 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %13 = getelementptr inbounds [26000000 x double], [26000000 x double]* %12, i32 0, i32 0
  %14 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %15 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %14, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  call void @LBM_loadObstacleFile(double* %13, i8* %16)
  %17 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %18 = getelementptr inbounds [26000000 x double], [26000000 x double]* %17, i32 0, i32 0
  %19 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %20 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %19, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  call void @LBM_loadObstacleFile(double* %18, i8* %21)
  br label %22

; <label>:22:                                     ; preds = %11, %1
  %23 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %24 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %22
  %28 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %29 = getelementptr inbounds [26000000 x double], [26000000 x double]* %28, i32 0, i32 0
  call void @LBM_initializeSpecialCellsForChannel(double* %29)
  %30 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %31 = getelementptr inbounds [26000000 x double], [26000000 x double]* %30, i32 0, i32 0
  call void @LBM_initializeSpecialCellsForChannel(double* %31)
  br label %37

; <label>:32:                                     ; preds = %22
  %33 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %34 = getelementptr inbounds [26000000 x double], [26000000 x double]* %33, i32 0, i32 0
  call void @LBM_initializeSpecialCellsForLDC(double* %34)
  %35 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %36 = getelementptr inbounds [26000000 x double], [26000000 x double]* %35, i32 0, i32 0
  call void @LBM_initializeSpecialCellsForLDC(double* %36)
  br label %37

; <label>:37:                                     ; preds = %32, %27
  %38 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %39 = getelementptr inbounds [26000000 x double], [26000000 x double]* %38, i32 0, i32 0
  call void @LBM_showGridStatistics(double* %39)
  ret void
}

declare void @LBM_handleInOutFlow(double*) #1

declare void @LBM_performStreamCollide(double*, double*) #1

declare void @LBM_swapGrids([26000000 x double]**, [26000000 x double]**) #1

declare i32 @printf(i8*, ...) #1

declare void @LBM_showGridStatistics(double*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MAIN_finalize(%struct.MAIN_Param*) #0 {
  %2 = alloca %struct.MAIN_Param*, align 8
  store %struct.MAIN_Param* %0, %struct.MAIN_Param** %2, align 8
  %3 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %4 = getelementptr inbounds [26000000 x double], [26000000 x double]* %3, i32 0, i32 0
  call void @LBM_showGridStatistics(double* %4)
  %5 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %6 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %1
  %10 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %11 = getelementptr inbounds [26000000 x double], [26000000 x double]* %10, i32 0, i32 0
  %12 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %13 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  call void @LBM_compareVelocityField(double* %11, i8* %14, i32 -1)
  br label %15

; <label>:15:                                     ; preds = %9, %1
  %16 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %17 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %15
  %21 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %22 = getelementptr inbounds [26000000 x double], [26000000 x double]* %21, i32 0, i32 0
  %23 = load %struct.MAIN_Param*, %struct.MAIN_Param** %2, align 8
  %24 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  call void @LBM_storeVelocityField(double* %22, i8* %25, i32 -1)
  br label %26

; <label>:26:                                     ; preds = %20, %15
  call void @LBM_freeGrid(double** bitcast ([26000000 x double]** @srcGrid to double**))
  call void @LBM_freeGrid(double** bitcast ([26000000 x double]** @dstGrid to double**))
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare void @LBM_allocateGrid(double**) #1

declare void @LBM_initializeGrid(double*) #1

declare void @LBM_loadObstacleFile(double*, i8*) #1

declare void @LBM_initializeSpecialCellsForChannel(double*) #1

declare void @LBM_initializeSpecialCellsForLDC(double*) #1

declare void @LBM_compareVelocityField(double*, i8*, i32) #1

declare void @LBM_storeVelocityField(double*, i8*, i32) #1

declare void @LBM_freeGrid(double**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
