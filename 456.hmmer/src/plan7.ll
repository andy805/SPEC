; ModuleID = 'plan7.c'
source_filename = "plan7.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [8 x i8] c"plan7.c\00", align 1
@Alphabet_size = external global i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Alphabet_iupac = external global i32, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Average score:  %10.2f bits\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Minimum score:  %10.2f bits\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Maximum score:  %10.2f bits\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Std. deviation: %10.2f bits\0A\00", align 1
@Degenerate = external global [24 x [20 x i8]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define %struct.plan7_s* @AllocPlan7(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.plan7_s*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.plan7_s* @AllocPlan7Shell()
  store %struct.plan7_s* %4, %struct.plan7_s** %3, align 8
  %5 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %6 = load i32, i32* %2, align 4
  call void @AllocPlan7Body(%struct.plan7_s* %5, i32 %6)
  %7 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  ret %struct.plan7_s* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.plan7_s* @AllocPlan7Shell() #0 {
  %1 = alloca %struct.plan7_s*, align 8
  %2 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 54, i64 464)
  %3 = bitcast i8* %2 to %struct.plan7_s*
  store %struct.plan7_s* %3, %struct.plan7_s** %1, align 8
  %4 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 20
  store i32 0, i32* %5, align 8
  %6 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %7 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 0
  store i8* null, i8** %7, align 8
  %8 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 1
  store i8* null, i8** %9, align 8
  %10 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 2
  store i8* null, i8** %11, align 8
  %12 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 3
  store i8* null, i8** %13, align 8
  %14 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %15 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 4
  store i8* null, i8** %15, align 8
  %16 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 5
  store i8* null, i8** %17, align 8
  %18 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 6
  store i8* null, i8** %19, align 8
  %20 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 7
  store i32 0, i32* %21, align 8
  %22 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %23 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 8
  store i8* null, i8** %23, align 8
  %24 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 9
  store i32* null, i32** %25, align 8
  %26 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %27 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 10
  store i32 0, i32* %27, align 8
  %28 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 11
  store i32* null, i32** %29, align 8
  %30 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %31 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 12
  store i32* null, i32** %31, align 8
  %32 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %33 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 13
  store i32* null, i32** %33, align 8
  %34 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %35 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 15
  store float 0.000000e+00, float* %35, align 4
  %36 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 14
  store float 0.000000e+00, float* %37, align 8
  %38 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 17
  store float 0.000000e+00, float* %39, align 4
  %40 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 16
  store float 0.000000e+00, float* %41, align 8
  %42 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %43 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %42, i32 0, i32 19
  store float 0.000000e+00, float* %43, align 4
  %44 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %44, i32 0, i32 18
  store float 0.000000e+00, float* %45, align 8
  %46 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %47 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %46, i32 0, i32 21
  store float** null, float*** %47, align 8
  %48 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %49 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 22
  store float** null, float*** %49, align 8
  %50 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %51 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 23
  store float** null, float*** %51, align 8
  %52 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %53 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %52, i32 0, i32 32
  store i32** null, i32*** %53, align 8
  %54 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %55 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 31
  store i32** null, i32*** %55, align 8
  %56 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %57 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %56, i32 0, i32 30
  store i32** null, i32*** %57, align 8
  %58 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 37
  store i32* null, i32** %59, align 8
  %60 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 37
  store i32* null, i32** %61, align 8
  %62 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %63 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 36
  store i32* null, i32** %63, align 8
  %64 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %65 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 26
  store float* null, float** %65, align 8
  %66 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %67 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 27
  store float* null, float** %67, align 8
  %68 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %69 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 39
  store i32* null, i32** %69, align 8
  %70 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %71 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 34
  store i32* null, i32** %71, align 8
  %72 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 40
  store i32* null, i32** %73, align 8
  %74 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 35
  store i32* null, i32** %75, align 8
  %76 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %77 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 41
  store i32** null, i32*** %77, align 8
  %78 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %79 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %78, i32 0, i32 42
  store i32** null, i32*** %79, align 8
  %80 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %81 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %80, i32 0, i32 43
  store i32 -987654321, i32* %81, align 8
  %82 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %83 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 44
  store i32 -987654321, i32* %83, align 4
  %84 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %85 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %84, i32 0, i32 45
  store float 0.000000e+00, float* %85, align 8
  %86 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %87 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %86, i32 0, i32 46
  store float 0.000000e+00, float* %87, align 4
  %88 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  %89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 47
  store i32 0, i32* %89, align 8
  %90 = load %struct.plan7_s*, %struct.plan7_s** %1, align 8
  ret %struct.plan7_s* %90
}

; Function Attrs: noinline nounwind optnone uwtable
define void @AllocPlan7Body(%struct.plan7_s*, i32) #0 {
  %3 = alloca %struct.plan7_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 20
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 1
  %14 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 111, i64 %13)
  %15 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %16 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 1
  %21 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 112, i64 %20)
  %22 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %23 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 1
  %28 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 113, i64 %27)
  %29 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 114, i64 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %38 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 9
  store i32* %36, i32** %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 116, i64 %41)
  %43 = bitcast i8* %42 to float**
  %44 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %44, i32 0, i32 21
  store float** %43, float*** %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 117, i64 %49)
  %51 = bitcast i8* %50 to float**
  %52 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %53 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %52, i32 0, i32 22
  store float** %51, float*** %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 118, i64 %56)
  %58 = bitcast i8* %57 to float**
  %59 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %60 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %59, i32 0, i32 23
  store float** %58, float*** %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 7, %61
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 119, i64 %64)
  %66 = bitcast i8* %65 to float*
  %67 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 21
  %69 = load float**, float*** %68, align 8
  %70 = getelementptr inbounds float*, float** %69, i64 0
  store float* %66, float** %70, align 8
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  %73 = mul nsw i32 20, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 120, i64 %75)
  %77 = bitcast i8* %76 to float*
  %78 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %79 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %78, i32 0, i32 22
  %80 = load float**, float*** %79, align 8
  %81 = getelementptr inbounds float*, float** %80, i64 0
  store float* %77, float** %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = mul nsw i32 20, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 121, i64 %85)
  %87 = bitcast i8* %86 to float*
  %88 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 23
  %90 = load float**, float*** %89, align 8
  %91 = getelementptr inbounds float*, float** %90, i64 0
  store float* %87, float** %91, align 8
  %92 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 123, i64 56)
  %93 = bitcast i8* %92 to i32**
  %94 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %95 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %94, i32 0, i32 30
  store i32** %93, i32*** %95, align 8
  %96 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 124, i64 192)
  %97 = bitcast i8* %96 to i32**
  %98 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %99 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %98, i32 0, i32 31
  store i32** %97, i32*** %99, align 8
  %100 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 125, i64 192)
  %101 = bitcast i8* %100 to i32**
  %102 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %102, i32 0, i32 32
  store i32** %101, i32*** %103, align 8
  %104 = load i32, i32* %4, align 4
  %105 = mul nsw i32 7, %104
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 126, i64 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %111 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %110, i32 0, i32 36
  store i32* %109, i32** %111, align 8
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  %114 = mul nsw i32 24, %113
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 127, i64 %116)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %120 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %119, i32 0, i32 37
  store i32* %118, i32** %120, align 8
  %121 = load i32, i32* %4, align 4
  %122 = mul nsw i32 24, %121
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 128, i64 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %128 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 38
  store i32* %126, i32** %128, align 8
  %129 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %130 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %129, i32 0, i32 36
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %133 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %132, i32 0, i32 30
  %134 = load i32**, i32*** %133, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 0
  store i32* %131, i32** %135, align 8
  %136 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %137 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %136, i32 0, i32 37
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %140 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %139, i32 0, i32 31
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 0
  store i32* %138, i32** %142, align 8
  %143 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %144 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %143, i32 0, i32 38
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %147 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %146, i32 0, i32 32
  %148 = load i32**, i32*** %147, align 8
  %149 = getelementptr inbounds i32*, i32** %148, i64 0
  store i32* %145, i32** %149, align 8
  store i32 1, i32* %5, align 4
  br label %150

; <label>:150:                                    ; preds = %205, %2
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp sle i32 %151, %152
  br i1 %153, label %154, label %208

; <label>:154:                                    ; preds = %150
  %155 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %156 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %155, i32 0, i32 22
  %157 = load float**, float*** %156, align 8
  %158 = getelementptr inbounds float*, float** %157, i64 0
  %159 = load float*, float** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = mul nsw i32 %160, 20
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %159, i64 %162
  %164 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %165 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %164, i32 0, i32 22
  %166 = load float**, float*** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float*, float** %166, i64 %168
  store float* %163, float** %169, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %204

; <label>:173:                                    ; preds = %154
  %174 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %175 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %174, i32 0, i32 23
  %176 = load float**, float*** %175, align 8
  %177 = getelementptr inbounds float*, float** %176, i64 0
  %178 = load float*, float** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = mul nsw i32 %179, 20
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %178, i64 %181
  %183 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %184 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %183, i32 0, i32 23
  %185 = load float**, float*** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float*, float** %185, i64 %187
  store float* %182, float** %188, align 8
  %189 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %190 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %189, i32 0, i32 21
  %191 = load float**, float*** %190, align 8
  %192 = getelementptr inbounds float*, float** %191, i64 0
  %193 = load float*, float** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = mul nsw i32 %194, 7
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %193, i64 %196
  %198 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %199 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %198, i32 0, i32 21
  %200 = load float**, float*** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float*, float** %200, i64 %202
  store float* %197, float** %203, align 8
  br label %204

; <label>:204:                                    ; preds = %173, %154
  br label %205

; <label>:205:                                    ; preds = %204
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %150

; <label>:208:                                    ; preds = %150
  store i32 1, i32* %6, align 4
  br label %209

; <label>:209:                                    ; preds = %246, %208
  %210 = load i32, i32* %6, align 4
  %211 = icmp slt i32 %210, 24
  br i1 %211, label %212, label %249

; <label>:212:                                    ; preds = %209
  %213 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %214 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %213, i32 0, i32 31
  %215 = load i32**, i32*** %214, align 8
  %216 = getelementptr inbounds i32*, i32** %215, i64 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %4, align 4
  %220 = add nsw i32 %219, 1
  %221 = mul nsw i32 %218, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %217, i64 %222
  %224 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %225 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %224, i32 0, i32 31
  %226 = load i32**, i32*** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  store i32* %223, i32** %229, align 8
  %230 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %231 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %230, i32 0, i32 32
  %232 = load i32**, i32*** %231, align 8
  %233 = getelementptr inbounds i32*, i32** %232, i64 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %4, align 4
  %237 = mul nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  %240 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %241 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %240, i32 0, i32 32
  %242 = load i32**, i32*** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32*, i32** %242, i64 %244
  store i32* %239, i32** %245, align 8
  br label %246

; <label>:246:                                    ; preds = %212
  %247 = load i32, i32* %6, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %6, align 4
  br label %209

; <label>:249:                                    ; preds = %209
  store i32 0, i32* %6, align 4
  br label %250

; <label>:250:                                    ; preds = %270, %249
  %251 = load i32, i32* %6, align 4
  %252 = icmp slt i32 %251, 7
  br i1 %252, label %253, label %273

; <label>:253:                                    ; preds = %250
  %254 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %255 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %254, i32 0, i32 30
  %256 = load i32**, i32*** %255, align 8
  %257 = getelementptr inbounds i32*, i32** %256, i64 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %4, align 4
  %261 = mul nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %258, i64 %262
  %264 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %265 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %264, i32 0, i32 30
  %266 = load i32**, i32*** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  store i32* %263, i32** %269, align 8
  br label %270

; <label>:270:                                    ; preds = %253
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %6, align 4
  br label %250

; <label>:273:                                    ; preds = %250
  store i32 0, i32* %6, align 4
  br label %274

; <label>:274:                                    ; preds = %286, %273
  %275 = load i32, i32* %6, align 4
  %276 = icmp slt i32 %275, 7
  br i1 %276, label %277, label %289

; <label>:277:                                    ; preds = %274
  %278 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %279 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %278, i32 0, i32 30
  %280 = load i32**, i32*** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32*, i32** %280, i64 %282
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  store i32 -987654321, i32* %285, align 4
  br label %286

; <label>:286:                                    ; preds = %277
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %6, align 4
  br label %274

; <label>:289:                                    ; preds = %274
  %290 = load i32, i32* %4, align 4
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = mul i64 %292, 4
  %294 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 157, i64 %293)
  %295 = bitcast i8* %294 to float*
  %296 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %297 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %296, i32 0, i32 26
  store float* %295, float** %297, align 8
  %298 = load i32, i32* %4, align 4
  %299 = add nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = mul i64 %300, 4
  %302 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 158, i64 %301)
  %303 = bitcast i8* %302 to float*
  %304 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %305 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %304, i32 0, i32 27
  store float* %303, float** %305, align 8
  %306 = load i32, i32* %4, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = mul i64 %308, 4
  %310 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 160, i64 %309)
  %311 = bitcast i8* %310 to i32*
  %312 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %313 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %312, i32 0, i32 39
  store i32* %311, i32** %313, align 8
  %314 = load i32, i32* %4, align 4
  %315 = add nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = mul i64 %316, 4
  %318 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 161, i64 %317)
  %319 = bitcast i8* %318 to i32*
  %320 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %321 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %320, i32 0, i32 40
  store i32* %319, i32** %321, align 8
  %322 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %323 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %322, i32 0, i32 39
  %324 = load i32*, i32** %323, align 8
  %325 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %326 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %325, i32 0, i32 34
  store i32* %324, i32** %326, align 8
  %327 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %328 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %327, i32 0, i32 40
  %329 = load i32*, i32** %328, align 8
  %330 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %331 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %330, i32 0, i32 35
  store i32* %329, i32** %331, align 8
  ret void
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @FreePlan7(%struct.plan7_s*) #0 {
  %2 = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %2, align 8
  %3 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %1
  %8 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* %10) #5
  br label %11

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %11
  %17 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  call void @free(i8* %19) #5
  br label %20

; <label>:20:                                     ; preds = %16, %11
  %21 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %20
  %26 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %27 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* %28) #5
  br label %29

; <label>:29:                                     ; preds = %25, %20
  %30 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %31 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %29
  %35 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %36 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  call void @free(i8* %37) #5
  br label %38

; <label>:38:                                     ; preds = %34, %29
  %39 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %38
  %44 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  call void @free(i8* %46) #5
  br label %47

; <label>:47:                                     ; preds = %43, %38
  %48 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %49 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %47
  %53 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %54 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  call void @free(i8* %55) #5
  br label %56

; <label>:56:                                     ; preds = %52, %47
  %57 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %58 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 6
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

; <label>:61:                                     ; preds = %56
  %62 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %63 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 6
  %64 = load i8*, i8** %63, align 8
  call void @free(i8* %64) #5
  br label %65

; <label>:65:                                     ; preds = %61, %56
  %66 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %67 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %65
  %71 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %72 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %71, i32 0, i32 8
  %73 = load i8*, i8** %72, align 8
  call void @free(i8* %73) #5
  br label %74

; <label>:74:                                     ; preds = %70, %65
  %75 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %76 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %75, i32 0, i32 9
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

; <label>:79:                                     ; preds = %74
  %80 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %81 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %80, i32 0, i32 9
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to i8*
  call void @free(i8* %83) #5
  br label %84

; <label>:84:                                     ; preds = %79, %74
  %85 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %86 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %85, i32 0, i32 11
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

; <label>:89:                                     ; preds = %84
  %90 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %91 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %90, i32 0, i32 11
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast i32* %92 to i8*
  call void @free(i8* %93) #5
  br label %94

; <label>:94:                                     ; preds = %89, %84
  %95 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %96 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %95, i32 0, i32 12
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

; <label>:99:                                     ; preds = %94
  %100 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %101 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %100, i32 0, i32 12
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to i8*
  call void @free(i8* %103) #5
  br label %104

; <label>:104:                                    ; preds = %99, %94
  %105 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %106 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %105, i32 0, i32 13
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %114

; <label>:109:                                    ; preds = %104
  %110 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %111 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %110, i32 0, i32 13
  %112 = load i32*, i32** %111, align 8
  %113 = bitcast i32* %112 to i8*
  call void @free(i8* %113) #5
  br label %114

; <label>:114:                                    ; preds = %109, %104
  %115 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %116 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 39
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %124

; <label>:119:                                    ; preds = %114
  %120 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %121 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %120, i32 0, i32 39
  %122 = load i32*, i32** %121, align 8
  %123 = bitcast i32* %122 to i8*
  call void @free(i8* %123) #5
  br label %124

; <label>:124:                                    ; preds = %119, %114
  %125 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %126 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %125, i32 0, i32 26
  %127 = load float*, float** %126, align 8
  %128 = icmp ne float* %127, null
  br i1 %128, label %129, label %134

; <label>:129:                                    ; preds = %124
  %130 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %131 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %130, i32 0, i32 26
  %132 = load float*, float** %131, align 8
  %133 = bitcast float* %132 to i8*
  call void @free(i8* %133) #5
  br label %134

; <label>:134:                                    ; preds = %129, %124
  %135 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %136 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 40
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %144

; <label>:139:                                    ; preds = %134
  %140 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %141 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %140, i32 0, i32 40
  %142 = load i32*, i32** %141, align 8
  %143 = bitcast i32* %142 to i8*
  call void @free(i8* %143) #5
  br label %144

; <label>:144:                                    ; preds = %139, %134
  %145 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %146 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %145, i32 0, i32 27
  %147 = load float*, float** %146, align 8
  %148 = icmp ne float* %147, null
  br i1 %148, label %149, label %154

; <label>:149:                                    ; preds = %144
  %150 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %151 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %150, i32 0, i32 27
  %152 = load float*, float** %151, align 8
  %153 = bitcast float* %152 to i8*
  call void @free(i8* %153) #5
  br label %154

; <label>:154:                                    ; preds = %149, %144
  %155 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %156 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %155, i32 0, i32 37
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %164

; <label>:159:                                    ; preds = %154
  %160 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %161 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %160, i32 0, i32 37
  %162 = load i32*, i32** %161, align 8
  %163 = bitcast i32* %162 to i8*
  call void @free(i8* %163) #5
  br label %164

; <label>:164:                                    ; preds = %159, %154
  %165 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %166 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %165, i32 0, i32 38
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %174

; <label>:169:                                    ; preds = %164
  %170 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %171 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %170, i32 0, i32 38
  %172 = load i32*, i32** %171, align 8
  %173 = bitcast i32* %172 to i8*
  call void @free(i8* %173) #5
  br label %174

; <label>:174:                                    ; preds = %169, %164
  %175 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %176 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %175, i32 0, i32 36
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %184

; <label>:179:                                    ; preds = %174
  %180 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %181 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %180, i32 0, i32 36
  %182 = load i32*, i32** %181, align 8
  %183 = bitcast i32* %182 to i8*
  call void @free(i8* %183) #5
  br label %184

; <label>:184:                                    ; preds = %179, %174
  %185 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %186 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %185, i32 0, i32 22
  %187 = load float**, float*** %186, align 8
  %188 = icmp ne float** %187, null
  br i1 %188, label %189, label %196

; <label>:189:                                    ; preds = %184
  %190 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %191 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %190, i32 0, i32 22
  %192 = load float**, float*** %191, align 8
  %193 = getelementptr inbounds float*, float** %192, i64 0
  %194 = load float*, float** %193, align 8
  %195 = bitcast float* %194 to i8*
  call void @free(i8* %195) #5
  br label %196

; <label>:196:                                    ; preds = %189, %184
  %197 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %198 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %197, i32 0, i32 23
  %199 = load float**, float*** %198, align 8
  %200 = icmp ne float** %199, null
  br i1 %200, label %201, label %208

; <label>:201:                                    ; preds = %196
  %202 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %203 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %202, i32 0, i32 23
  %204 = load float**, float*** %203, align 8
  %205 = getelementptr inbounds float*, float** %204, i64 0
  %206 = load float*, float** %205, align 8
  %207 = bitcast float* %206 to i8*
  call void @free(i8* %207) #5
  br label %208

; <label>:208:                                    ; preds = %201, %196
  %209 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %210 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %209, i32 0, i32 21
  %211 = load float**, float*** %210, align 8
  %212 = icmp ne float** %211, null
  br i1 %212, label %213, label %220

; <label>:213:                                    ; preds = %208
  %214 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %215 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %214, i32 0, i32 21
  %216 = load float**, float*** %215, align 8
  %217 = getelementptr inbounds float*, float** %216, i64 0
  %218 = load float*, float** %217, align 8
  %219 = bitcast float* %218 to i8*
  call void @free(i8* %219) #5
  br label %220

; <label>:220:                                    ; preds = %213, %208
  %221 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %222 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %221, i32 0, i32 31
  %223 = load i32**, i32*** %222, align 8
  %224 = icmp ne i32** %223, null
  br i1 %224, label %225, label %230

; <label>:225:                                    ; preds = %220
  %226 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %227 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %226, i32 0, i32 31
  %228 = load i32**, i32*** %227, align 8
  %229 = bitcast i32** %228 to i8*
  call void @free(i8* %229) #5
  br label %230

; <label>:230:                                    ; preds = %225, %220
  %231 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %232 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %231, i32 0, i32 32
  %233 = load i32**, i32*** %232, align 8
  %234 = icmp ne i32** %233, null
  br i1 %234, label %235, label %240

; <label>:235:                                    ; preds = %230
  %236 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %237 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %236, i32 0, i32 32
  %238 = load i32**, i32*** %237, align 8
  %239 = bitcast i32** %238 to i8*
  call void @free(i8* %239) #5
  br label %240

; <label>:240:                                    ; preds = %235, %230
  %241 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %242 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %241, i32 0, i32 30
  %243 = load i32**, i32*** %242, align 8
  %244 = icmp ne i32** %243, null
  br i1 %244, label %245, label %250

; <label>:245:                                    ; preds = %240
  %246 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %247 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %246, i32 0, i32 30
  %248 = load i32**, i32*** %247, align 8
  %249 = bitcast i32** %248 to i8*
  call void @free(i8* %249) #5
  br label %250

; <label>:250:                                    ; preds = %245, %240
  %251 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %252 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %251, i32 0, i32 22
  %253 = load float**, float*** %252, align 8
  %254 = icmp ne float** %253, null
  br i1 %254, label %255, label %260

; <label>:255:                                    ; preds = %250
  %256 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %257 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %256, i32 0, i32 22
  %258 = load float**, float*** %257, align 8
  %259 = bitcast float** %258 to i8*
  call void @free(i8* %259) #5
  br label %260

; <label>:260:                                    ; preds = %255, %250
  %261 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %262 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %261, i32 0, i32 23
  %263 = load float**, float*** %262, align 8
  %264 = icmp ne float** %263, null
  br i1 %264, label %265, label %270

; <label>:265:                                    ; preds = %260
  %266 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %267 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %266, i32 0, i32 23
  %268 = load float**, float*** %267, align 8
  %269 = bitcast float** %268 to i8*
  call void @free(i8* %269) #5
  br label %270

; <label>:270:                                    ; preds = %265, %260
  %271 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %272 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %271, i32 0, i32 21
  %273 = load float**, float*** %272, align 8
  %274 = icmp ne float** %273, null
  br i1 %274, label %275, label %280

; <label>:275:                                    ; preds = %270
  %276 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %277 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %276, i32 0, i32 21
  %278 = load float**, float*** %277, align 8
  %279 = bitcast float** %278 to i8*
  call void @free(i8* %279) #5
  br label %280

; <label>:280:                                    ; preds = %275, %270
  %281 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %282 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %281, i32 0, i32 41
  %283 = load i32**, i32*** %282, align 8
  %284 = icmp ne i32** %283, null
  br i1 %284, label %285, label %290

; <label>:285:                                    ; preds = %280
  %286 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %287 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %286, i32 0, i32 41
  %288 = load i32**, i32*** %287, align 8
  %289 = bitcast i32** %288 to i8*
  call void @free(i8* %289) #5
  br label %290

; <label>:290:                                    ; preds = %285, %280
  %291 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %292 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %291, i32 0, i32 42
  %293 = load i32**, i32*** %292, align 8
  %294 = icmp ne i32** %293, null
  br i1 %294, label %295, label %300

; <label>:295:                                    ; preds = %290
  %296 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %297 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %296, i32 0, i32 42
  %298 = load i32**, i32*** %297, align 8
  %299 = bitcast i32** %298 to i8*
  call void @free(i8* %299) #5
  br label %300

; <label>:300:                                    ; preds = %295, %290
  %301 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %302 = bitcast %struct.plan7_s* %301 to i8*
  call void @free(i8* %302) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @ZeroPlan7(%struct.plan7_s*) #0 {
  %2 = alloca %struct.plan7_s*, align 8
  %3 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %34, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %7 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 20
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %37

; <label>:10:                                     ; preds = %4
  %11 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 21
  %13 = load float**, float*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float*, float** %13, i64 %15
  %17 = load float*, float** %16, align 8
  call void @FSet(float* %17, i32 7, float 0.000000e+00)
  %18 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 22
  %20 = load float**, float*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float*, float** %20, i64 %22
  %24 = load float*, float** %23, align 8
  %25 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %24, i32 %25, float 0.000000e+00)
  %26 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %27 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 23
  %28 = load float**, float*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float*, float** %28, i64 %30
  %32 = load float*, float** %31, align 8
  %33 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %32, i32 %33, float 0.000000e+00)
  br label %34

; <label>:34:                                     ; preds = %10
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %4

; <label>:37:                                     ; preds = %4
  %38 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 22
  %40 = load float**, float*** %39, align 8
  %41 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %42 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 20
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float*, float** %40, i64 %44
  %46 = load float*, float** %45, align 8
  %47 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %46, i32 %47, float 0.000000e+00)
  %48 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %49 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 24
  store float 0.000000e+00, float* %49, align 8
  %50 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %51 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 26
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %55 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 20
  %56 = load i32, i32* %55, align 8
  call void @FSet(float* %53, i32 %56, float 0.000000e+00)
  %57 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %58 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 27
  %59 = load float*, float** %58, align 8
  %60 = getelementptr inbounds float, float* %59, i64 1
  %61 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %62 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %61, i32 0, i32 20
  %63 = load i32, i32* %62, align 8
  call void @FSet(float* %60, i32 %63, float 0.000000e+00)
  store i32 0, i32* %3, align 4
  br label %64

; <label>:64:                                     ; preds = %74, %37
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %77

; <label>:67:                                     ; preds = %64
  %68 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %69 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 25
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %69, i64 0, i64 %71
  %73 = getelementptr inbounds [2 x float], [2 x float]* %72, i32 0, i32 0
  call void @FSet(float* %73, i32 2, float 0.000000e+00)
  br label %74

; <label>:74:                                     ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %64

; <label>:77:                                     ; preds = %64
  %78 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %79 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %78, i32 0, i32 47
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, -2
  store i32 %81, i32* %79, align 8
  %82 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %83 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 47
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, -33
  store i32 %85, i32* %83, align 8
  ret void
}

declare void @FSet(float*, i32, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7SetName(%struct.plan7_s*, i8*) #0 {
  %3 = alloca %struct.plan7_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %6 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %2
  %10 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* %12) #5
  br label %13

; <label>:13:                                     ; preds = %9, %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @Strdup(i8* %14)
  %16 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  call void @StringChop(i8* %20)
  ret void
}

declare i8* @Strdup(i8*) #1

declare void @StringChop(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7SetAccession(%struct.plan7_s*, i8*) #0 {
  %3 = alloca %struct.plan7_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %6 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %2
  %10 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* %12) #5
  br label %13

; <label>:13:                                     ; preds = %9, %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @Strdup(i8* %14)
  %16 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  call void @StringChop(i8* %20)
  %21 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 47
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, 512
  store i32 %24, i32* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7SetDescription(%struct.plan7_s*, i8*) #0 {
  %3 = alloca %struct.plan7_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %6 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 2
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %2
  %10 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* %12) #5
  br label %13

; <label>:13:                                     ; preds = %9, %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @Strdup(i8* %14)
  %16 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  call void @StringChop(i8* %20)
  %21 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 47
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, 2
  store i32 %24, i32* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7ComlogAppend(%struct.plan7_s*, i32, i8**) #0 {
  %4 = alloca %struct.plan7_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

; <label>:10:                                     ; preds = %25, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

; <label>:14:                                     ; preds = %10
  %15 = load i8**, i8*** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* %19) #6
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %25

; <label>:25:                                     ; preds = %14
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %10

; <label>:28:                                     ; preds = %10
  %29 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 6
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %52

; <label>:33:                                     ; preds = %28
  %34 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %35 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 6
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* %36) #6
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %43 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 1, %47
  %49 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 296, i8* %44, i64 %48)
  %50 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %51 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  br label %63

; <label>:52:                                     ; preds = %28
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = mul i64 1, %55
  %57 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 300, i64 %56)
  %58 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  store i8 0, i8* %62, align 1
  br label %63

; <label>:63:                                     ; preds = %52, %33
  %64 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %65 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @strcat(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 0, i32* %8, align 4
  br label %68

; <label>:68:                                     ; preds = %92, %63
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %95

; <label>:72:                                     ; preds = %68
  %73 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %74 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @strcat(i8* %75, i8* %80) #5
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %91

; <label>:86:                                     ; preds = %72
  %87 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %88 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %87, i32 0, i32 6
  %89 = load i8*, i8** %88, align 8
  %90 = call i8* @strcat(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %91

; <label>:91:                                     ; preds = %86, %72
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %68

; <label>:95:                                     ; preds = %68
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7SetCtime(%struct.plan7_s*) #0 {
  %2 = alloca %struct.plan7_s*, align 8
  %3 = alloca i64, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %2, align 8
  %4 = call i64 @time(i64* null) #5
  store i64 %4, i64* %3, align 8
  %5 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %6 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %1
  %10 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 8
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* %12) #5
  br label %13

; <label>:13:                                     ; preds = %9, %1
  %14 = call i8* @ctime(i64* %3) #5
  %15 = call i8* @Strdup(i8* %14)
  %16 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 8
  store i8* %15, i8** %17, align 8
  %18 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 8
  %20 = load i8*, i8** %19, align 8
  call void @StringChop(i8* %20)
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7SetNullModel(%struct.plan7_s*, float*, float) #0 {
  %4 = alloca %struct.plan7_s*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %4, align 8
  store float* %1, float** %5, align 8
  store float %2, float* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %23, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @Alphabet_size, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

; <label>:12:                                     ; preds = %8
  %13 = load float*, float** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %13, i64 %15
  %17 = load float, float* %16, align 4
  %18 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 28
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [20 x float], [20 x float]* %19, i64 0, i64 %21
  store float %17, float* %22, align 4
  br label %23

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %8

; <label>:26:                                     ; preds = %8
  %27 = load float, float* %6, align 4
  %28 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 29
  store float %27, float* %29, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P7Logoddsify(%struct.plan7_s*, i32) #0 {
  %3 = alloca %struct.plan7_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 47
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  br label %778

; <label>:16:                                     ; preds = %2
  store i32 1, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %157, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 20
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %160

; <label>:23:                                     ; preds = %17
  store i32 0, i32* %6, align 4
  br label %24

; <label>:24:                                     ; preds = %92, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @Alphabet_size, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %95

; <label>:28:                                     ; preds = %24
  %29 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 22
  %31 = load float**, float*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float*, float** %31, i64 %33
  %35 = load float*, float** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = load float, float* %38, align 4
  %40 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 28
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [20 x float], [20 x float]* %41, i64 0, i64 %43
  %45 = load float, float* %44, align 4
  %46 = call i32 @Prob2Score(float %39, float %45)
  %47 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %48 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %47, i32 0, i32 31
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %46, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 20
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %91

; <label>:62:                                     ; preds = %28
  %63 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %64 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %63, i32 0, i32 23
  %65 = load float**, float*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float*, float** %65, i64 %67
  %69 = load float*, float** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 28
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [20 x float], [20 x float]* %75, i64 0, i64 %77
  %79 = load float, float* %78, align 4
  %80 = call i32 @Prob2Score(float %73, float %79)
  %81 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %82 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %81, i32 0, i32 32
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %80, i32* %90, align 4
  br label %91

; <label>:91:                                     ; preds = %62, %28
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %24

; <label>:95:                                     ; preds = %24
  %96 = load i32, i32* @Alphabet_size, align 4
  store i32 %96, i32* %6, align 4
  br label %97

; <label>:97:                                     ; preds = %153, %95
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @Alphabet_iupac, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %156

; <label>:101:                                    ; preds = %97
  %102 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %102, i32 0, i32 22
  %104 = load float**, float*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float*, float** %104, i64 %106
  %108 = load float*, float** %107, align 8
  %109 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %110 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %109, i32 0, i32 28
  %111 = getelementptr inbounds [20 x float], [20 x float]* %110, i32 0, i32 0
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @DegenerateSymbolScore(float* %108, float* %111, i32 %112)
  %114 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %115 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %114, i32 0, i32 31
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %113, i32* %123, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %126 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %125, i32 0, i32 20
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %152

; <label>:129:                                    ; preds = %101
  %130 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %131 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %130, i32 0, i32 23
  %132 = load float**, float*** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float*, float** %132, i64 %134
  %136 = load float*, float** %135, align 8
  %137 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %138 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %137, i32 0, i32 28
  %139 = getelementptr inbounds [20 x float], [20 x float]* %138, i32 0, i32 0
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @DegenerateSymbolScore(float* %136, float* %139, i32 %140)
  %142 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %143 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %142, i32 0, i32 32
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %141, i32* %151, align 4
  br label %152

; <label>:152:                                    ; preds = %129, %101
  br label %153

; <label>:153:                                    ; preds = %152
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %97

; <label>:156:                                    ; preds = %97
  br label %157

; <label>:157:                                    ; preds = %156
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %17

; <label>:160:                                    ; preds = %17
  store i32 1, i32* %5, align 4
  br label %161

; <label>:161:                                    ; preds = %309, %160
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %164 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %163, i32 0, i32 20
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %312

; <label>:167:                                    ; preds = %161
  %168 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %169 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %168, i32 0, i32 21
  %170 = load float**, float*** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float*, float** %170, i64 %172
  %174 = load float*, float** %173, align 8
  %175 = getelementptr inbounds float, float* %174, i64 0
  %176 = load float, float* %175, align 4
  %177 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %178 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %177, i32 0, i32 29
  %179 = load float, float* %178, align 8
  %180 = call i32 @Prob2Score(float %176, float %179)
  %181 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %182 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %181, i32 0, i32 30
  %183 = load i32**, i32*** %182, align 8
  %184 = getelementptr inbounds i32*, i32** %183, i64 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %180, i32* %188, align 4
  %189 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %190 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %189, i32 0, i32 21
  %191 = load float**, float*** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float*, float** %191, i64 %193
  %195 = load float*, float** %194, align 8
  %196 = getelementptr inbounds float, float* %195, i64 1
  %197 = load float, float* %196, align 4
  %198 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %199 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %198, i32 0, i32 29
  %200 = load float, float* %199, align 8
  %201 = call i32 @Prob2Score(float %197, float %200)
  %202 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %203 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %202, i32 0, i32 30
  %204 = load i32**, i32*** %203, align 8
  %205 = getelementptr inbounds i32*, i32** %204, i64 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %201, i32* %209, align 4
  %210 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %211 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %210, i32 0, i32 21
  %212 = load float**, float*** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float*, float** %212, i64 %214
  %216 = load float*, float** %215, align 8
  %217 = getelementptr inbounds float, float* %216, i64 2
  %218 = load float, float* %217, align 4
  %219 = call i32 @Prob2Score(float %218, float 1.000000e+00)
  %220 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %221 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %220, i32 0, i32 30
  %222 = load i32**, i32*** %221, align 8
  %223 = getelementptr inbounds i32*, i32** %222, i64 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %219, i32* %227, align 4
  %228 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %229 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %228, i32 0, i32 21
  %230 = load float**, float*** %229, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float*, float** %230, i64 %232
  %234 = load float*, float** %233, align 8
  %235 = getelementptr inbounds float, float* %234, i64 3
  %236 = load float, float* %235, align 4
  %237 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %238 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %237, i32 0, i32 29
  %239 = load float, float* %238, align 8
  %240 = call i32 @Prob2Score(float %236, float %239)
  %241 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %242 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %241, i32 0, i32 30
  %243 = load i32**, i32*** %242, align 8
  %244 = getelementptr inbounds i32*, i32** %243, i64 3
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %240, i32* %248, align 4
  %249 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %250 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %249, i32 0, i32 21
  %251 = load float**, float*** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float*, float** %251, i64 %253
  %255 = load float*, float** %254, align 8
  %256 = getelementptr inbounds float, float* %255, i64 4
  %257 = load float, float* %256, align 4
  %258 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %259 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %258, i32 0, i32 29
  %260 = load float, float* %259, align 8
  %261 = call i32 @Prob2Score(float %257, float %260)
  %262 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %263 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %262, i32 0, i32 30
  %264 = load i32**, i32*** %263, align 8
  %265 = getelementptr inbounds i32*, i32** %264, i64 4
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %261, i32* %269, align 4
  %270 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %271 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %270, i32 0, i32 21
  %272 = load float**, float*** %271, align 8
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float*, float** %272, i64 %274
  %276 = load float*, float** %275, align 8
  %277 = getelementptr inbounds float, float* %276, i64 5
  %278 = load float, float* %277, align 4
  %279 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %280 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %279, i32 0, i32 29
  %281 = load float, float* %280, align 8
  %282 = call i32 @Prob2Score(float %278, float %281)
  %283 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %284 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %283, i32 0, i32 30
  %285 = load i32**, i32*** %284, align 8
  %286 = getelementptr inbounds i32*, i32** %285, i64 5
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %282, i32* %290, align 4
  %291 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %292 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %291, i32 0, i32 21
  %293 = load float**, float*** %292, align 8
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float*, float** %293, i64 %295
  %297 = load float*, float** %296, align 8
  %298 = getelementptr inbounds float, float* %297, i64 6
  %299 = load float, float* %298, align 4
  %300 = call i32 @Prob2Score(float %299, float 1.000000e+00)
  %301 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %302 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %301, i32 0, i32 30
  %303 = load i32**, i32*** %302, align 8
  %304 = getelementptr inbounds i32*, i32** %303, i64 6
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %5, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %300, i32* %308, align 4
  br label %309

; <label>:309:                                    ; preds = %167
  %310 = load i32, i32* %5, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %5, align 4
  br label %161

; <label>:312:                                    ; preds = %161
  %313 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %314 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %313, i32 0, i32 24
  %315 = load float, float* %314, align 8
  %316 = fpext float %315 to double
  %317 = fcmp ogt double %316, 0.000000e+00
  br i1 %317, label %318, label %324

; <label>:318:                                    ; preds = %312
  %319 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %320 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %319, i32 0, i32 24
  %321 = load float, float* %320, align 8
  %322 = fpext float %321 to double
  %323 = call double @log(double %322) #5
  br label %325

; <label>:324:                                    ; preds = %312
  br label %325

; <label>:325:                                    ; preds = %324, %318
  %326 = phi double [ %323, %318 ], [ -9.999000e+03, %324 ]
  %327 = fptrunc double %326 to float
  store float %327, float* %7, align 4
  store i32 1, i32* %5, align 4
  br label %328

; <label>:328:                                    ; preds = %505, %325
  %329 = load i32, i32* %5, align 4
  %330 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %331 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %330, i32 0, i32 20
  %332 = load i32, i32* %331, align 8
  %333 = icmp sle i32 %329, %332
  br i1 %333, label %334, label %508

; <label>:334:                                    ; preds = %328
  %335 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %336 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %335, i32 0, i32 26
  %337 = load float*, float** %336, align 8
  %338 = load i32, i32* %5, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %337, i64 %339
  %341 = load float, float* %340, align 4
  %342 = fpext float %341 to double
  %343 = fcmp ogt double %342, 0.000000e+00
  br i1 %343, label %344, label %354

; <label>:344:                                    ; preds = %334
  %345 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %346 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %345, i32 0, i32 26
  %347 = load float*, float** %346, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %347, i64 %349
  %351 = load float, float* %350, align 4
  %352 = fpext float %351 to double
  %353 = call double @log(double %352) #5
  br label %355

; <label>:354:                                    ; preds = %334
  br label %355

; <label>:355:                                    ; preds = %354, %344
  %356 = phi double [ %353, %344 ], [ -9.999000e+03, %354 ]
  %357 = fptrunc double %356 to float
  store float %357, float* %8, align 4
  %358 = load i32, i32* %5, align 4
  %359 = icmp sgt i32 %358, 1
  br i1 %359, label %360, label %474

; <label>:360:                                    ; preds = %355
  %361 = load float, float* %7, align 4
  %362 = fpext float %361 to double
  %363 = fcmp ogt double %362, -9.999000e+03
  br i1 %363, label %364, label %474

; <label>:364:                                    ; preds = %360
  %365 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %366 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %365, i32 0, i32 21
  %367 = load float**, float*** %366, align 8
  %368 = load i32, i32* %5, align 4
  %369 = sub nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float*, float** %367, i64 %370
  %372 = load float*, float** %371, align 8
  %373 = getelementptr inbounds float, float* %372, i64 5
  %374 = load float, float* %373, align 4
  %375 = fpext float %374 to double
  %376 = fcmp ogt double %375, 0.000000e+00
  br i1 %376, label %377, label %441

; <label>:377:                                    ; preds = %364
  %378 = load i32, i32* %4, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %421

; <label>:380:                                    ; preds = %377
  %381 = load float, float* %8, align 4
  %382 = fpext float %381 to double
  %383 = load float, float* %7, align 4
  %384 = fpext float %383 to double
  %385 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %386 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %385, i32 0, i32 21
  %387 = load float**, float*** %386, align 8
  %388 = load i32, i32* %5, align 4
  %389 = sub nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds float*, float** %387, i64 %390
  %392 = load float*, float** %391, align 8
  %393 = getelementptr inbounds float, float* %392, i64 5
  %394 = load float, float* %393, align 4
  %395 = fpext float %394 to double
  %396 = call double @log(double %395) #5
  %397 = fadd double %384, %396
  %398 = fcmp ogt double %382, %397
  br i1 %398, label %399, label %402

; <label>:399:                                    ; preds = %380
  %400 = load float, float* %8, align 4
  %401 = fpext float %400 to double
  br label %418

; <label>:402:                                    ; preds = %380
  %403 = load float, float* %7, align 4
  %404 = fpext float %403 to double
  %405 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %406 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %405, i32 0, i32 21
  %407 = load float**, float*** %406, align 8
  %408 = load i32, i32* %5, align 4
  %409 = sub nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds float*, float** %407, i64 %410
  %412 = load float*, float** %411, align 8
  %413 = getelementptr inbounds float, float* %412, i64 5
  %414 = load float, float* %413, align 4
  %415 = fpext float %414 to double
  %416 = call double @log(double %415) #5
  %417 = fadd double %404, %416
  br label %418

; <label>:418:                                    ; preds = %402, %399
  %419 = phi double [ %401, %399 ], [ %417, %402 ]
  %420 = fptrunc double %419 to float
  store float %420, float* %8, align 4
  br label %440

; <label>:421:                                    ; preds = %377
  %422 = load float, float* %8, align 4
  %423 = load float, float* %7, align 4
  %424 = fpext float %423 to double
  %425 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %426 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %425, i32 0, i32 21
  %427 = load float**, float*** %426, align 8
  %428 = load i32, i32* %5, align 4
  %429 = sub nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float*, float** %427, i64 %430
  %432 = load float*, float** %431, align 8
  %433 = getelementptr inbounds float, float* %432, i64 5
  %434 = load float, float* %433, align 4
  %435 = fpext float %434 to double
  %436 = call double @log(double %435) #5
  %437 = fadd double %424, %436
  %438 = fptrunc double %437 to float
  %439 = call float @LogSum(float %422, float %438)
  store float %439, float* %8, align 4
  br label %440

; <label>:440:                                    ; preds = %421, %418
  br label %441

; <label>:441:                                    ; preds = %440, %364
  %442 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %443 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %442, i32 0, i32 21
  %444 = load float**, float*** %443, align 8
  %445 = load i32, i32* %5, align 4
  %446 = sub nsw i32 %445, 1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds float*, float** %444, i64 %447
  %449 = load float*, float** %448, align 8
  %450 = getelementptr inbounds float, float* %449, i64 6
  %451 = load float, float* %450, align 4
  %452 = fpext float %451 to double
  %453 = fcmp ogt double %452, 0.000000e+00
  br i1 %453, label %454, label %470

; <label>:454:                                    ; preds = %441
  %455 = load float, float* %7, align 4
  %456 = fpext float %455 to double
  %457 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %458 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %457, i32 0, i32 21
  %459 = load float**, float*** %458, align 8
  %460 = load i32, i32* %5, align 4
  %461 = sub nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds float*, float** %459, i64 %462
  %464 = load float*, float** %463, align 8
  %465 = getelementptr inbounds float, float* %464, i64 6
  %466 = load float, float* %465, align 4
  %467 = fpext float %466 to double
  %468 = call double @log(double %467) #5
  %469 = fadd double %456, %468
  br label %471

; <label>:470:                                    ; preds = %441
  br label %471

; <label>:471:                                    ; preds = %470, %454
  %472 = phi double [ %469, %454 ], [ -9.999000e+03, %470 ]
  %473 = fptrunc double %472 to float
  store float %473, float* %7, align 4
  br label %474

; <label>:474:                                    ; preds = %471, %360, %355
  %475 = load float, float* %8, align 4
  %476 = fpext float %475 to double
  %477 = fcmp ogt double %476, -9.999000e+03
  br i1 %477, label %478, label %497

; <label>:478:                                    ; preds = %474
  %479 = load float, float* %8, align 4
  %480 = fpext float %479 to double
  %481 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %482 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %481, i32 0, i32 29
  %483 = load float, float* %482, align 8
  %484 = fpext float %483 to double
  %485 = call double @log(double %484) #5
  %486 = fsub double %480, %485
  %487 = fmul double 0x40968AC7B890D5A6, %486
  %488 = fadd double 5.000000e-01, %487
  %489 = call double @llvm.floor.f64(double %488)
  %490 = fptosi double %489 to i32
  %491 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %492 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %491, i32 0, i32 34
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %5, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  store i32 %490, i32* %496, align 4
  br label %504

; <label>:497:                                    ; preds = %474
  %498 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %499 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %498, i32 0, i32 34
  %500 = load i32*, i32** %499, align 8
  %501 = load i32, i32* %5, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  store i32 -987654321, i32* %503, align 4
  br label %504

; <label>:504:                                    ; preds = %497, %478
  br label %505

; <label>:505:                                    ; preds = %504
  %506 = load i32, i32* %5, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %5, align 4
  br label %328

; <label>:508:                                    ; preds = %328
  %509 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %510 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %509, i32 0, i32 35
  %511 = load i32*, i32** %510, align 8
  %512 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %513 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %512, i32 0, i32 20
  %514 = load i32, i32* %513, align 8
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %511, i64 %515
  store i32 0, i32* %516, align 4
  store float 0.000000e+00, float* %7, align 4
  %517 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %518 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %517, i32 0, i32 20
  %519 = load i32, i32* %518, align 8
  %520 = sub nsw i32 %519, 1
  store i32 %520, i32* %5, align 4
  br label %521

; <label>:521:                                    ; preds = %675, %508
  %522 = load i32, i32* %5, align 4
  %523 = icmp sge i32 %522, 1
  br i1 %523, label %524, label %678

; <label>:524:                                    ; preds = %521
  %525 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %526 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %525, i32 0, i32 27
  %527 = load float*, float** %526, align 8
  %528 = load i32, i32* %5, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds float, float* %527, i64 %529
  %531 = load float, float* %530, align 4
  %532 = fpext float %531 to double
  %533 = fcmp ogt double %532, 0.000000e+00
  br i1 %533, label %534, label %544

; <label>:534:                                    ; preds = %524
  %535 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %536 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %535, i32 0, i32 27
  %537 = load float*, float** %536, align 8
  %538 = load i32, i32* %5, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds float, float* %537, i64 %539
  %541 = load float, float* %540, align 4
  %542 = fpext float %541 to double
  %543 = call double @log(double %542) #5
  br label %545

; <label>:544:                                    ; preds = %524
  br label %545

; <label>:545:                                    ; preds = %544, %534
  %546 = phi double [ %543, %534 ], [ -9.999000e+03, %544 ]
  %547 = fptrunc double %546 to float
  store float %547, float* %9, align 4
  %548 = load float, float* %7, align 4
  %549 = fpext float %548 to double
  %550 = fcmp ogt double %549, -9.999000e+03
  br i1 %550, label %551, label %655

; <label>:551:                                    ; preds = %545
  %552 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %553 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %552, i32 0, i32 21
  %554 = load float**, float*** %553, align 8
  %555 = load i32, i32* %5, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds float*, float** %554, i64 %556
  %558 = load float*, float** %557, align 8
  %559 = getelementptr inbounds float, float* %558, i64 2
  %560 = load float, float* %559, align 4
  %561 = fpext float %560 to double
  %562 = fcmp ogt double %561, 0.000000e+00
  br i1 %562, label %563, label %624

; <label>:563:                                    ; preds = %551
  %564 = load i32, i32* %4, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %605

; <label>:566:                                    ; preds = %563
  %567 = load float, float* %9, align 4
  %568 = fpext float %567 to double
  %569 = load float, float* %7, align 4
  %570 = fpext float %569 to double
  %571 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %572 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %571, i32 0, i32 21
  %573 = load float**, float*** %572, align 8
  %574 = load i32, i32* %5, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds float*, float** %573, i64 %575
  %577 = load float*, float** %576, align 8
  %578 = getelementptr inbounds float, float* %577, i64 2
  %579 = load float, float* %578, align 4
  %580 = fpext float %579 to double
  %581 = call double @log(double %580) #5
  %582 = fadd double %570, %581
  %583 = fcmp ogt double %568, %582
  br i1 %583, label %584, label %587

; <label>:584:                                    ; preds = %566
  %585 = load float, float* %9, align 4
  %586 = fpext float %585 to double
  br label %602

; <label>:587:                                    ; preds = %566
  %588 = load float, float* %7, align 4
  %589 = fpext float %588 to double
  %590 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %591 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %590, i32 0, i32 21
  %592 = load float**, float*** %591, align 8
  %593 = load i32, i32* %5, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds float*, float** %592, i64 %594
  %596 = load float*, float** %595, align 8
  %597 = getelementptr inbounds float, float* %596, i64 2
  %598 = load float, float* %597, align 4
  %599 = fpext float %598 to double
  %600 = call double @log(double %599) #5
  %601 = fadd double %589, %600
  br label %602

; <label>:602:                                    ; preds = %587, %584
  %603 = phi double [ %586, %584 ], [ %601, %587 ]
  %604 = fptrunc double %603 to float
  store float %604, float* %9, align 4
  br label %623

; <label>:605:                                    ; preds = %563
  %606 = load float, float* %9, align 4
  %607 = load float, float* %7, align 4
  %608 = fpext float %607 to double
  %609 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %610 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %609, i32 0, i32 21
  %611 = load float**, float*** %610, align 8
  %612 = load i32, i32* %5, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds float*, float** %611, i64 %613
  %615 = load float*, float** %614, align 8
  %616 = getelementptr inbounds float, float* %615, i64 2
  %617 = load float, float* %616, align 4
  %618 = fpext float %617 to double
  %619 = call double @log(double %618) #5
  %620 = fadd double %608, %619
  %621 = fptrunc double %620 to float
  %622 = call float @LogSum(float %606, float %621)
  store float %622, float* %9, align 4
  br label %623

; <label>:623:                                    ; preds = %605, %602
  br label %624

; <label>:624:                                    ; preds = %623, %551
  %625 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %626 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %625, i32 0, i32 21
  %627 = load float**, float*** %626, align 8
  %628 = load i32, i32* %5, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds float*, float** %627, i64 %629
  %631 = load float*, float** %630, align 8
  %632 = getelementptr inbounds float, float* %631, i64 6
  %633 = load float, float* %632, align 4
  %634 = fpext float %633 to double
  %635 = fcmp ogt double %634, 0.000000e+00
  br i1 %635, label %636, label %651

; <label>:636:                                    ; preds = %624
  %637 = load float, float* %7, align 4
  %638 = fpext float %637 to double
  %639 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %640 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %639, i32 0, i32 21
  %641 = load float**, float*** %640, align 8
  %642 = load i32, i32* %5, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds float*, float** %641, i64 %643
  %645 = load float*, float** %644, align 8
  %646 = getelementptr inbounds float, float* %645, i64 6
  %647 = load float, float* %646, align 4
  %648 = fpext float %647 to double
  %649 = call double @log(double %648) #5
  %650 = fadd double %638, %649
  br label %652

; <label>:651:                                    ; preds = %624
  br label %652

; <label>:652:                                    ; preds = %651, %636
  %653 = phi double [ %650, %636 ], [ -9.999000e+03, %651 ]
  %654 = fptrunc double %653 to float
  store float %654, float* %7, align 4
  br label %655

; <label>:655:                                    ; preds = %652, %545
  %656 = load float, float* %9, align 4
  %657 = fpext float %656 to double
  %658 = fcmp ogt double %657, -9.999000e+03
  br i1 %658, label %659, label %666

; <label>:659:                                    ; preds = %655
  %660 = load float, float* %9, align 4
  %661 = fpext float %660 to double
  %662 = fmul double 0x40968AC7B890D5A6, %661
  %663 = fadd double 5.000000e-01, %662
  %664 = call double @llvm.floor.f64(double %663)
  %665 = fptosi double %664 to i32
  br label %667

; <label>:666:                                    ; preds = %655
  br label %667

; <label>:667:                                    ; preds = %666, %659
  %668 = phi i32 [ %665, %659 ], [ -987654321, %666 ]
  %669 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %670 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %669, i32 0, i32 35
  %671 = load i32*, i32** %670, align 8
  %672 = load i32, i32* %5, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i32, i32* %671, i64 %673
  store i32 %668, i32* %674, align 4
  br label %675

; <label>:675:                                    ; preds = %667
  %676 = load i32, i32* %5, align 4
  %677 = add nsw i32 %676, -1
  store i32 %677, i32* %5, align 4
  br label %521

; <label>:678:                                    ; preds = %521
  %679 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %680 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %679, i32 0, i32 25
  %681 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %680, i64 0, i64 0
  %682 = getelementptr inbounds [2 x float], [2 x float]* %681, i64 0, i64 1
  %683 = load float, float* %682, align 4
  %684 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %685 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %684, i32 0, i32 29
  %686 = load float, float* %685, align 8
  %687 = call i32 @Prob2Score(float %683, float %686)
  %688 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %689 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %688, i32 0, i32 33
  %690 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %689, i64 0, i64 0
  %691 = getelementptr inbounds [2 x i32], [2 x i32]* %690, i64 0, i64 1
  store i32 %687, i32* %691, align 4
  %692 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %693 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %692, i32 0, i32 25
  %694 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %693, i64 0, i64 0
  %695 = getelementptr inbounds [2 x float], [2 x float]* %694, i64 0, i64 0
  %696 = load float, float* %695, align 4
  %697 = call i32 @Prob2Score(float %696, float 1.000000e+00)
  %698 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %699 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %698, i32 0, i32 33
  %700 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %699, i64 0, i64 0
  %701 = getelementptr inbounds [2 x i32], [2 x i32]* %700, i64 0, i64 0
  store i32 %697, i32* %701, align 8
  %702 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %703 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %702, i32 0, i32 25
  %704 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %703, i64 0, i64 1
  %705 = getelementptr inbounds [2 x float], [2 x float]* %704, i64 0, i64 1
  %706 = load float, float* %705, align 4
  %707 = call i32 @Prob2Score(float %706, float 1.000000e+00)
  %708 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %709 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %708, i32 0, i32 33
  %710 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %709, i64 0, i64 1
  %711 = getelementptr inbounds [2 x i32], [2 x i32]* %710, i64 0, i64 1
  store i32 %707, i32* %711, align 4
  %712 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %713 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %712, i32 0, i32 25
  %714 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %713, i64 0, i64 1
  %715 = getelementptr inbounds [2 x float], [2 x float]* %714, i64 0, i64 0
  %716 = load float, float* %715, align 4
  %717 = call i32 @Prob2Score(float %716, float 1.000000e+00)
  %718 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %719 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %718, i32 0, i32 33
  %720 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %719, i64 0, i64 1
  %721 = getelementptr inbounds [2 x i32], [2 x i32]* %720, i64 0, i64 0
  store i32 %717, i32* %721, align 8
  %722 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %723 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %722, i32 0, i32 25
  %724 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %723, i64 0, i64 2
  %725 = getelementptr inbounds [2 x float], [2 x float]* %724, i64 0, i64 1
  %726 = load float, float* %725, align 4
  %727 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %728 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %727, i32 0, i32 29
  %729 = load float, float* %728, align 8
  %730 = call i32 @Prob2Score(float %726, float %729)
  %731 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %732 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %731, i32 0, i32 33
  %733 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %732, i64 0, i64 2
  %734 = getelementptr inbounds [2 x i32], [2 x i32]* %733, i64 0, i64 1
  store i32 %730, i32* %734, align 4
  %735 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %736 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %735, i32 0, i32 25
  %737 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %736, i64 0, i64 2
  %738 = getelementptr inbounds [2 x float], [2 x float]* %737, i64 0, i64 0
  %739 = load float, float* %738, align 4
  %740 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %741 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %740, i32 0, i32 29
  %742 = load float, float* %741, align 8
  %743 = fpext float %742 to double
  %744 = fsub double 1.000000e+00, %743
  %745 = fptrunc double %744 to float
  %746 = call i32 @Prob2Score(float %739, float %745)
  %747 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %748 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %747, i32 0, i32 33
  %749 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %748, i64 0, i64 2
  %750 = getelementptr inbounds [2 x i32], [2 x i32]* %749, i64 0, i64 0
  store i32 %746, i32* %750, align 8
  %751 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %752 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %751, i32 0, i32 25
  %753 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %752, i64 0, i64 3
  %754 = getelementptr inbounds [2 x float], [2 x float]* %753, i64 0, i64 1
  %755 = load float, float* %754, align 4
  %756 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %757 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %756, i32 0, i32 29
  %758 = load float, float* %757, align 8
  %759 = call i32 @Prob2Score(float %755, float %758)
  %760 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %761 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %760, i32 0, i32 33
  %762 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %761, i64 0, i64 3
  %763 = getelementptr inbounds [2 x i32], [2 x i32]* %762, i64 0, i64 1
  store i32 %759, i32* %763, align 4
  %764 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %765 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %764, i32 0, i32 25
  %766 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %765, i64 0, i64 3
  %767 = getelementptr inbounds [2 x float], [2 x float]* %766, i64 0, i64 0
  %768 = load float, float* %767, align 4
  %769 = call i32 @Prob2Score(float %768, float 1.000000e+00)
  %770 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %771 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %770, i32 0, i32 33
  %772 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %771, i64 0, i64 3
  %773 = getelementptr inbounds [2 x i32], [2 x i32]* %772, i64 0, i64 0
  store i32 %769, i32* %773, align 8
  %774 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %775 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %774, i32 0, i32 47
  %776 = load i32, i32* %775, align 8
  %777 = or i32 %776, 1
  store i32 %777, i32* %775, align 8
  br label %778

; <label>:778:                                    ; preds = %678, %15
  ret void
}

declare i32 @Prob2Score(float, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @DegenerateSymbolScore(float*, float*, i32) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

; <label>:10:                                     ; preds = %73, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @Alphabet_size, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %76

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i64 0, i64 %16
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %17, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %72

; <label>:23:                                     ; preds = %14
  %24 = load float*, float** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = load float*, float** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = load float*, float** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fdiv float %34, %39
  %41 = fcmp ogt float %40, 0.000000e+00
  br i1 %41, label %42, label %57

; <label>:42:                                     ; preds = %23
  %43 = load float*, float** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = fdiv float %47, %52
  %54 = fpext float %53 to double
  %55 = call double @log(double %54) #5
  %56 = fmul double %55, 0x3FF7154764EE6C2F
  br label %58

; <label>:57:                                     ; preds = %23
  br label %58

; <label>:58:                                     ; preds = %57, %42
  %59 = phi double [ %56, %42 ], [ -9.999000e+03, %57 ]
  %60 = fmul double %29, %59
  %61 = load float, float* %8, align 4
  %62 = fpext float %61 to double
  %63 = fadd double %62, %60
  %64 = fptrunc double %63 to float
  store float %64, float* %8, align 4
  %65 = load float*, float** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = load float, float* %9, align 4
  %71 = fadd float %70, %69
  store float %71, float* %9, align 4
  br label %72

; <label>:72:                                     ; preds = %58, %14
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %10

; <label>:76:                                     ; preds = %10
  %77 = load float, float* %8, align 4
  %78 = fpext float %77 to double
  %79 = fmul double 1.000000e+03, %78
  %80 = load float, float* %9, align 4
  %81 = fpext float %80 to double
  %82 = fdiv double %79, %81
  %83 = fptosi double %82 to i32
  ret i32 %83
}

; Function Attrs: nounwind
declare double @log(double) #2

declare float @LogSum(float, float) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7Renormalize(%struct.plan7_s*) #0 {
  %2 = alloca %struct.plan7_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %2, align 8
  store i32 1, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %21, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 20
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %7, %10
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %6
  %13 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 22
  %15 = load float**, float*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float*, float** %15, i64 %17
  %19 = load float*, float** %18, align 8
  %20 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %19, i32 %20)
  br label %21

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %6

; <label>:24:                                     ; preds = %6
  store i32 1, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %40, %24
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %27, i32 0, i32 20
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %43

; <label>:31:                                     ; preds = %25
  %32 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %33 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 23
  %34 = load float**, float*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float*, float** %34, i64 %36
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %38, i32 %39)
  br label %40

; <label>:40:                                     ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %25

; <label>:43:                                     ; preds = %25
  %44 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %44, i32 0, i32 26
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %49 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 20
  %50 = load i32, i32* %49, align 8
  %51 = call float @FSum(float* %47, i32 %50)
  %52 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %53 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %52, i32 0, i32 24
  %54 = load float, float* %53, align 8
  %55 = fadd float %51, %54
  store float %55, float* %5, align 4
  %56 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %57 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %56, i32 0, i32 26
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  %60 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 20
  %62 = load i32, i32* %61, align 8
  %63 = load float, float* %5, align 4
  %64 = fpext float %63 to double
  %65 = fdiv double 1.000000e+00, %64
  %66 = fptrunc double %65 to float
  call void @FScale(float* %59, i32 %62, float %66)
  %67 = load float, float* %5, align 4
  %68 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %69 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 24
  %70 = load float, float* %69, align 8
  %71 = fdiv float %70, %67
  store float %71, float* %69, align 8
  store i32 1, i32* %3, align 4
  br label %72

; <label>:72:                                     ; preds = %131, %43
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 20
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %134

; <label>:78:                                     ; preds = %72
  %79 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 21
  %81 = load float**, float*** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float*, float** %81, i64 %83
  %85 = load float*, float** %84, align 8
  %86 = call float @FSum(float* %85, i32 3)
  %87 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %88 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %87, i32 0, i32 27
  %89 = load float*, float** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fadd float %86, %93
  store float %94, float* %5, align 4
  %95 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %96 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %95, i32 0, i32 21
  %97 = load float**, float*** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float*, float** %97, i64 %99
  %101 = load float*, float** %100, align 8
  %102 = load float, float* %5, align 4
  %103 = fpext float %102 to double
  %104 = fdiv double 1.000000e+00, %103
  %105 = fptrunc double %104 to float
  call void @FScale(float* %101, i32 3, float %105)
  %106 = load float, float* %5, align 4
  %107 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %108 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 27
  %109 = load float*, float** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %109, i64 %111
  %113 = load float, float* %112, align 4
  %114 = fdiv float %113, %106
  store float %114, float* %112, align 4
  %115 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %116 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 21
  %117 = load float**, float*** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float*, float** %117, i64 %119
  %121 = load float*, float** %120, align 8
  %122 = getelementptr inbounds float, float* %121, i64 3
  call void @FNorm(float* %122, i32 2)
  %123 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %124 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %123, i32 0, i32 21
  %125 = load float**, float*** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float*, float** %125, i64 %127
  %129 = load float*, float** %128, align 8
  %130 = getelementptr inbounds float, float* %129, i64 5
  call void @FNorm(float* %130, i32 2)
  br label %131

; <label>:131:                                    ; preds = %78
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %72

; <label>:134:                                    ; preds = %72
  %135 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %136 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 28
  %137 = getelementptr inbounds [20 x float], [20 x float]* %136, i32 0, i32 0
  %138 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %137, i32 %138)
  store i32 0, i32* %4, align 4
  br label %139

; <label>:139:                                    ; preds = %149, %134
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %140, 4
  br i1 %141, label %142, label %152

; <label>:142:                                    ; preds = %139
  %143 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %144 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %143, i32 0, i32 25
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %144, i64 0, i64 %146
  %148 = getelementptr inbounds [2 x float], [2 x float]* %147, i32 0, i32 0
  call void @FNorm(float* %148, i32 2)
  br label %149

; <label>:149:                                    ; preds = %142
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %139

; <label>:152:                                    ; preds = %139
  %153 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %154 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %153, i32 0, i32 21
  %155 = load float**, float*** %154, align 8
  %156 = getelementptr inbounds float*, float** %155, i64 0
  %157 = load float*, float** %156, align 8
  %158 = getelementptr inbounds float, float* %157, i64 6
  store float 0.000000e+00, float* %158, align 4
  %159 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %160 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %159, i32 0, i32 21
  %161 = load float**, float*** %160, align 8
  %162 = getelementptr inbounds float*, float** %161, i64 0
  %163 = load float*, float** %162, align 8
  %164 = getelementptr inbounds float, float* %163, i64 5
  store float 0.000000e+00, float* %164, align 4
  %165 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %166 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %165, i32 0, i32 47
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, -2
  store i32 %168, i32* %166, align 8
  %169 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %170 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %169, i32 0, i32 47
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, 32
  store i32 %172, i32* %170, align 8
  ret void
}

declare void @FNorm(float*, i32) #1

declare float @FSum(float*, i32) #1

declare void @FScale(float*, i32, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7RenormalizeExits(%struct.plan7_s*) #0 {
  %2 = alloca %struct.plan7_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %41, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %8 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 20
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %44

; <label>:11:                                     ; preds = %5
  %12 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 21
  %14 = load float**, float*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float*, float** %14, i64 %16
  %18 = load float*, float** %17, align 8
  %19 = call float @FSum(float* %18, i32 3)
  store float %19, float* %4, align 4
  %20 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 21
  %22 = load float**, float*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float*, float** %22, i64 %24
  %26 = load float*, float** %25, align 8
  %27 = load float, float* %4, align 4
  %28 = load float, float* %4, align 4
  %29 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 27
  %31 = load float*, float** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fmul float %28, %35
  %37 = fadd float %27, %36
  %38 = fpext float %37 to double
  %39 = fdiv double 1.000000e+00, %38
  %40 = fptrunc double %39 to float
  call void @FScale(float* %26, i32 3, float %40)
  br label %41

; <label>:41:                                     ; preds = %11
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %5

; <label>:44:                                     ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7NakedConfig(%struct.plan7_s*) #0 {
  %2 = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %2, align 8
  %3 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 25
  %5 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %4, i64 0, i64 0
  %6 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  store float 1.000000e+00, float* %6, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %8 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 25
  %9 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %8, i64 0, i64 0
  %10 = getelementptr inbounds [2 x float], [2 x float]* %9, i64 0, i64 1
  store float 0.000000e+00, float* %10, align 4
  %11 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 25
  %13 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %12, i64 0, i64 1
  %14 = getelementptr inbounds [2 x float], [2 x float]* %13, i64 0, i64 0
  store float 1.000000e+00, float* %14, align 4
  %15 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %16 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 25
  %17 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %16, i64 0, i64 1
  %18 = getelementptr inbounds [2 x float], [2 x float]* %17, i64 0, i64 1
  store float 0.000000e+00, float* %18, align 4
  %19 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 25
  %21 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %20, i64 0, i64 2
  %22 = getelementptr inbounds [2 x float], [2 x float]* %21, i64 0, i64 0
  store float 1.000000e+00, float* %22, align 4
  %23 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 25
  %25 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %24, i64 0, i64 2
  %26 = getelementptr inbounds [2 x float], [2 x float]* %25, i64 0, i64 1
  store float 0.000000e+00, float* %26, align 4
  %27 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %27, i32 0, i32 25
  %29 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %28, i64 0, i64 3
  %30 = getelementptr inbounds [2 x float], [2 x float]* %29, i64 0, i64 0
  store float 0.000000e+00, float* %30, align 4
  %31 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %31, i32 0, i32 25
  %33 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %32, i64 0, i64 3
  %34 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 0, i64 1
  store float 1.000000e+00, float* %34, align 4
  %35 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %36 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 26
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 2
  %39 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %39, i32 0, i32 20
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  call void @FSet(float* %38, i32 %42, float 0.000000e+00)
  %43 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 24
  %45 = load float, float* %44, align 8
  %46 = fpext float %45 to double
  %47 = fsub double 1.000000e+00, %46
  %48 = fptrunc double %47 to float
  %49 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %50 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 26
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  store float %48, float* %52, align 4
  %53 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %54 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %53, i32 0, i32 27
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  %57 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %58 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 20
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  call void @FSet(float* %56, i32 %60, float 0.000000e+00)
  %61 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %62 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %61, i32 0, i32 27
  %63 = load float*, float** %62, align 8
  %64 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %65 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 20
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %63, i64 %67
  store float 1.000000e+00, float* %68, align 4
  %69 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %69)
  %70 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %71 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 47
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, -2
  store i32 %73, i32* %71, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7GlobalConfig(%struct.plan7_s*) #0 {
  %2 = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %2, align 8
  %3 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 29
  %5 = load float, float* %4, align 8
  %6 = fpext float %5 to double
  %7 = fsub double 1.000000e+00, %6
  %8 = fptrunc double %7 to float
  %9 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 25
  %11 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %10, i64 0, i64 0
  %12 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  store float %8, float* %12, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 29
  %15 = load float, float* %14, align 8
  %16 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 25
  %18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %17, i64 0, i64 0
  %19 = getelementptr inbounds [2 x float], [2 x float]* %18, i64 0, i64 1
  store float %15, float* %19, align 4
  %20 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 25
  %22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %21, i64 0, i64 1
  %23 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  store float 1.000000e+00, float* %23, align 4
  %24 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 25
  %26 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %25, i64 0, i64 1
  %27 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 1
  store float 0.000000e+00, float* %27, align 4
  %28 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 29
  %30 = load float, float* %29, align 8
  %31 = fpext float %30 to double
  %32 = fsub double 1.000000e+00, %31
  %33 = fptrunc double %32 to float
  %34 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %35 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 25
  %36 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %35, i64 0, i64 2
  %37 = getelementptr inbounds [2 x float], [2 x float]* %36, i64 0, i64 0
  store float %33, float* %37, align 4
  %38 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 29
  %40 = load float, float* %39, align 8
  %41 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %42 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 25
  %43 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %42, i64 0, i64 2
  %44 = getelementptr inbounds [2 x float], [2 x float]* %43, i64 0, i64 1
  store float %40, float* %44, align 4
  %45 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %46 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 25
  %47 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %46, i64 0, i64 3
  %48 = getelementptr inbounds [2 x float], [2 x float]* %47, i64 0, i64 0
  store float 0.000000e+00, float* %48, align 4
  %49 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %50 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 25
  %51 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %50, i64 0, i64 3
  %52 = getelementptr inbounds [2 x float], [2 x float]* %51, i64 0, i64 1
  store float 1.000000e+00, float* %52, align 4
  %53 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %54 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %53, i32 0, i32 26
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  %57 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %58 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 20
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  call void @FSet(float* %56, i32 %60, float 0.000000e+00)
  %61 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %62 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %61, i32 0, i32 24
  %63 = load float, float* %62, align 8
  %64 = fpext float %63 to double
  %65 = fsub double 1.000000e+00, %64
  %66 = fptrunc double %65 to float
  %67 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 26
  %69 = load float*, float** %68, align 8
  %70 = getelementptr inbounds float, float* %69, i64 1
  store float %66, float* %70, align 4
  %71 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %72 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %71, i32 0, i32 27
  %73 = load float*, float** %72, align 8
  %74 = getelementptr inbounds float, float* %73, i64 1
  %75 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %76 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %75, i32 0, i32 20
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  call void @FSet(float* %74, i32 %78, float 0.000000e+00)
  %79 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 27
  %81 = load float*, float** %80, align 8
  %82 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %83 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %81, i64 %85
  store float 1.000000e+00, float* %86, align 4
  %87 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %87)
  %88 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 47
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, -2
  store i32 %91, i32* %89, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7LSConfig(%struct.plan7_s*) #0 {
  %2 = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %2, align 8
  %3 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 29
  %5 = load float, float* %4, align 8
  %6 = fpext float %5 to double
  %7 = fsub double 1.000000e+00, %6
  %8 = fptrunc double %7 to float
  %9 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 25
  %11 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %10, i64 0, i64 0
  %12 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  store float %8, float* %12, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 29
  %15 = load float, float* %14, align 8
  %16 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 25
  %18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %17, i64 0, i64 0
  %19 = getelementptr inbounds [2 x float], [2 x float]* %18, i64 0, i64 1
  store float %15, float* %19, align 4
  %20 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 25
  %22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %21, i64 0, i64 1
  %23 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  store float 5.000000e-01, float* %23, align 4
  %24 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 25
  %26 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %25, i64 0, i64 1
  %27 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 1
  store float 5.000000e-01, float* %27, align 4
  %28 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 29
  %30 = load float, float* %29, align 8
  %31 = fpext float %30 to double
  %32 = fsub double 1.000000e+00, %31
  %33 = fptrunc double %32 to float
  %34 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %35 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 25
  %36 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %35, i64 0, i64 2
  %37 = getelementptr inbounds [2 x float], [2 x float]* %36, i64 0, i64 0
  store float %33, float* %37, align 4
  %38 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 29
  %40 = load float, float* %39, align 8
  %41 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %42 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 25
  %43 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %42, i64 0, i64 2
  %44 = getelementptr inbounds [2 x float], [2 x float]* %43, i64 0, i64 1
  store float %40, float* %44, align 4
  %45 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %46 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 29
  %47 = load float, float* %46, align 8
  %48 = fpext float %47 to double
  %49 = fsub double 1.000000e+00, %48
  %50 = fptrunc double %49 to float
  %51 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %52 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %51, i32 0, i32 25
  %53 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %52, i64 0, i64 3
  %54 = getelementptr inbounds [2 x float], [2 x float]* %53, i64 0, i64 0
  store float %50, float* %54, align 4
  %55 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %56 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %55, i32 0, i32 29
  %57 = load float, float* %56, align 8
  %58 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 25
  %60 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %59, i64 0, i64 3
  %61 = getelementptr inbounds [2 x float], [2 x float]* %60, i64 0, i64 1
  store float %57, float* %61, align 4
  %62 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %63 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 26
  %64 = load float*, float** %63, align 8
  %65 = getelementptr inbounds float, float* %64, i64 2
  %66 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %67 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 20
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  call void @FSet(float* %65, i32 %69, float 0.000000e+00)
  %70 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %71 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 24
  %72 = load float, float* %71, align 8
  %73 = fpext float %72 to double
  %74 = fsub double 1.000000e+00, %73
  %75 = fptrunc double %74 to float
  %76 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %77 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 26
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 1
  store float %75, float* %79, align 4
  %80 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %81 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %80, i32 0, i32 27
  %82 = load float*, float** %81, align 8
  %83 = getelementptr inbounds float, float* %82, i64 1
  %84 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %85 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %84, i32 0, i32 20
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  call void @FSet(float* %83, i32 %87, float 0.000000e+00)
  %88 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 27
  %90 = load float*, float** %89, align 8
  %91 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %92 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %91, i32 0, i32 20
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %90, i64 %94
  store float 1.000000e+00, float* %95, align 4
  %96 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %96)
  %97 = load %struct.plan7_s*, %struct.plan7_s** %2, align 8
  %98 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %97, i32 0, i32 47
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, -2
  store i32 %100, i32* %98, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7SWConfig(%struct.plan7_s*, float, float) #0 {
  %4 = alloca %struct.plan7_s*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 29
  %11 = load float, float* %10, align 8
  %12 = fsub float 1.000000e+00, %11
  %13 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 25
  %15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %14, i64 0, i64 0
  %16 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  store float %12, float* %16, align 4
  %17 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 29
  %19 = load float, float* %18, align 8
  %20 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 25
  %22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %21, i64 0, i64 0
  %23 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 1
  store float %19, float* %23, align 4
  %24 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 25
  %26 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %25, i64 0, i64 1
  %27 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 0
  store float 1.000000e+00, float* %27, align 4
  %28 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 25
  %30 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %29, i64 0, i64 1
  %31 = getelementptr inbounds [2 x float], [2 x float]* %30, i64 0, i64 1
  store float 0.000000e+00, float* %31, align 4
  %32 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %33 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 29
  %34 = load float, float* %33, align 8
  %35 = fsub float 1.000000e+00, %34
  %36 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 25
  %38 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %37, i64 0, i64 2
  %39 = getelementptr inbounds [2 x float], [2 x float]* %38, i64 0, i64 0
  store float %35, float* %39, align 4
  %40 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 29
  %42 = load float, float* %41, align 8
  %43 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 25
  %45 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %44, i64 0, i64 2
  %46 = getelementptr inbounds [2 x float], [2 x float]* %45, i64 0, i64 1
  store float %42, float* %46, align 4
  %47 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %48 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %47, i32 0, i32 25
  %49 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %48, i64 0, i64 3
  %50 = getelementptr inbounds [2 x float], [2 x float]* %49, i64 0, i64 0
  store float 1.000000e+00, float* %50, align 4
  %51 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %52 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %51, i32 0, i32 25
  %53 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %52, i64 0, i64 3
  %54 = getelementptr inbounds [2 x float], [2 x float]* %53, i64 0, i64 1
  store float 0.000000e+00, float* %54, align 4
  %55 = load float, float* %5, align 4
  %56 = fpext float %55 to double
  %57 = fsub double 1.000000e+00, %56
  %58 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 24
  %60 = load float, float* %59, align 8
  %61 = fpext float %60 to double
  %62 = fsub double 1.000000e+00, %61
  %63 = fmul double %57, %62
  %64 = fptrunc double %63 to float
  %65 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %66 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %65, i32 0, i32 26
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds float, float* %67, i64 1
  store float %64, float* %68, align 4
  %69 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %70 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %69, i32 0, i32 26
  %71 = load float*, float** %70, align 8
  %72 = getelementptr inbounds float, float* %71, i64 2
  %73 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %74 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %73, i32 0, i32 20
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = load float, float* %5, align 4
  %78 = fpext float %77 to double
  %79 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 24
  %81 = load float, float* %80, align 8
  %82 = fpext float %81 to double
  %83 = fsub double 1.000000e+00, %82
  %84 = fmul double %78, %83
  %85 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %86 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %85, i32 0, i32 20
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = sitofp i32 %88 to float
  %90 = fpext float %89 to double
  %91 = fdiv double %84, %90
  %92 = fptrunc double %91 to float
  call void @FSet(float* %72, i32 %76, float %92)
  %93 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %94 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %93, i32 0, i32 27
  %95 = load float*, float** %94, align 8
  %96 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %97 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %96, i32 0, i32 20
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %95, i64 %99
  store float 1.000000e+00, float* %100, align 4
  %101 = load float, float* %6, align 4
  %102 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %102, i32 0, i32 20
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = sitofp i32 %105 to float
  %107 = fdiv float %101, %106
  store float %107, float* %7, align 4
  store i32 1, i32* %8, align 4
  br label %108

; <label>:108:                                    ; preds = %132, %3
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %111 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %110, i32 0, i32 20
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %135

; <label>:114:                                    ; preds = %108
  %115 = load float, float* %7, align 4
  %116 = fpext float %115 to double
  %117 = load float, float* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sitofp i32 %119 to float
  %121 = fmul float %117, %120
  %122 = fpext float %121 to double
  %123 = fsub double 1.000000e+00, %122
  %124 = fdiv double %116, %123
  %125 = fptrunc double %124 to float
  %126 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %127 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %126, i32 0, i32 27
  %128 = load float*, float** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  store float %125, float* %131, align 4
  br label %132

; <label>:132:                                    ; preds = %114
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %108

; <label>:135:                                    ; preds = %108
  %136 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %136)
  %137 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %138 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %137, i32 0, i32 47
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, -2
  store i32 %140, i32* %138, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7FSConfig(%struct.plan7_s*, float, float) #0 {
  %4 = alloca %struct.plan7_s*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 29
  %11 = load float, float* %10, align 8
  %12 = fsub float 1.000000e+00, %11
  %13 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 25
  %15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %14, i64 0, i64 0
  %16 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  store float %12, float* %16, align 4
  %17 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 29
  %19 = load float, float* %18, align 8
  %20 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 25
  %22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %21, i64 0, i64 0
  %23 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 1
  store float %19, float* %23, align 4
  %24 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 25
  %26 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %25, i64 0, i64 1
  %27 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 0
  store float 5.000000e-01, float* %27, align 4
  %28 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 25
  %30 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %29, i64 0, i64 1
  %31 = getelementptr inbounds [2 x float], [2 x float]* %30, i64 0, i64 1
  store float 5.000000e-01, float* %31, align 4
  %32 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %33 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 29
  %34 = load float, float* %33, align 8
  %35 = fsub float 1.000000e+00, %34
  %36 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 25
  %38 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %37, i64 0, i64 2
  %39 = getelementptr inbounds [2 x float], [2 x float]* %38, i64 0, i64 0
  store float %35, float* %39, align 4
  %40 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 29
  %42 = load float, float* %41, align 8
  %43 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 25
  %45 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %44, i64 0, i64 2
  %46 = getelementptr inbounds [2 x float], [2 x float]* %45, i64 0, i64 1
  store float %42, float* %46, align 4
  %47 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %48 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %47, i32 0, i32 29
  %49 = load float, float* %48, align 8
  %50 = fpext float %49 to double
  %51 = fsub double 1.000000e+00, %50
  %52 = fptrunc double %51 to float
  %53 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %54 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %53, i32 0, i32 25
  %55 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %54, i64 0, i64 3
  %56 = getelementptr inbounds [2 x float], [2 x float]* %55, i64 0, i64 0
  store float %52, float* %56, align 4
  %57 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %58 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 29
  %59 = load float, float* %58, align 8
  %60 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 25
  %62 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %61, i64 0, i64 3
  %63 = getelementptr inbounds [2 x float], [2 x float]* %62, i64 0, i64 1
  store float %59, float* %63, align 4
  %64 = load float, float* %5, align 4
  %65 = fpext float %64 to double
  %66 = fsub double 1.000000e+00, %65
  %67 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 24
  %69 = load float, float* %68, align 8
  %70 = fpext float %69 to double
  %71 = fsub double 1.000000e+00, %70
  %72 = fmul double %66, %71
  %73 = fptrunc double %72 to float
  %74 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 26
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds float, float* %76, i64 1
  store float %73, float* %77, align 4
  %78 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %79 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %78, i32 0, i32 26
  %80 = load float*, float** %79, align 8
  %81 = getelementptr inbounds float, float* %80, i64 2
  %82 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %83 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = load float, float* %5, align 4
  %87 = fpext float %86 to double
  %88 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 24
  %90 = load float, float* %89, align 8
  %91 = fpext float %90 to double
  %92 = fsub double 1.000000e+00, %91
  %93 = fmul double %87, %92
  %94 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %95 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %94, i32 0, i32 20
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = sitofp i32 %97 to float
  %99 = fpext float %98 to double
  %100 = fdiv double %93, %99
  %101 = fptrunc double %100 to float
  call void @FSet(float* %81, i32 %85, float %101)
  %102 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %102, i32 0, i32 27
  %104 = load float*, float** %103, align 8
  %105 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %106 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %105, i32 0, i32 20
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %104, i64 %108
  store float 1.000000e+00, float* %109, align 4
  %110 = load float, float* %6, align 4
  %111 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %112 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %111, i32 0, i32 20
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = sitofp i32 %114 to float
  %116 = fdiv float %110, %115
  store float %116, float* %7, align 4
  store i32 1, i32* %8, align 4
  br label %117

; <label>:117:                                    ; preds = %141, %3
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %120 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %119, i32 0, i32 20
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %144

; <label>:123:                                    ; preds = %117
  %124 = load float, float* %7, align 4
  %125 = fpext float %124 to double
  %126 = load float, float* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sitofp i32 %128 to float
  %130 = fmul float %126, %129
  %131 = fpext float %130 to double
  %132 = fsub double 1.000000e+00, %131
  %133 = fdiv double %125, %132
  %134 = fptrunc double %133 to float
  %135 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %136 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 27
  %137 = load float*, float** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  store float %134, float* %140, align 4
  br label %141

; <label>:141:                                    ; preds = %123
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %117

; <label>:144:                                    ; preds = %117
  %145 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %145)
  %146 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %147 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %146, i32 0, i32 47
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, -2
  store i32 %149, i32* %147, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan7ESTConfig(%struct.plan7_s*, i32*, float**, float, float) #0 {
  %6 = alloca %struct.plan7_s*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float**, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %6, align 8
  store i32* %1, i32** %7, align 8
  store float** %2, float*** %8, align 8
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  store float* null, float** %14, align 8
  %15 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %16 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 25
  %17 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %16, i64 0, i64 0
  %18 = getelementptr inbounds [2 x float], [2 x float]* %17, i64 0, i64 0
  store float 0x3F6756CAC0000000, float* %18, align 4
  %19 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 25
  %21 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %20, i64 0, i64 0
  %22 = getelementptr inbounds [2 x float], [2 x float]* %21, i64 0, i64 1
  store float 0x3FEFE8A940000000, float* %22, align 4
  %23 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 25
  %25 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %24, i64 0, i64 1
  %26 = getelementptr inbounds [2 x float], [2 x float]* %25, i64 0, i64 0
  store float 1.000000e+00, float* %26, align 4
  %27 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %27, i32 0, i32 25
  %29 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %28, i64 0, i64 1
  %30 = getelementptr inbounds [2 x float], [2 x float]* %29, i64 0, i64 1
  store float 0.000000e+00, float* %30, align 4
  %31 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %31, i32 0, i32 25
  %33 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %32, i64 0, i64 2
  %34 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 0, i64 0
  store float 0x3F6756CAC0000000, float* %34, align 4
  %35 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %36 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 25
  %37 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %36, i64 0, i64 2
  %38 = getelementptr inbounds [2 x float], [2 x float]* %37, i64 0, i64 1
  store float 0x3FEFE8A940000000, float* %38, align 4
  %39 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %39, i32 0, i32 25
  %41 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %40, i64 0, i64 3
  %42 = getelementptr inbounds [2 x float], [2 x float]* %41, i64 0, i64 0
  store float 1.000000e+00, float* %42, align 4
  %43 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 25
  %45 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %44, i64 0, i64 3
  %46 = getelementptr inbounds [2 x float], [2 x float]* %45, i64 0, i64 1
  store float 0.000000e+00, float* %46, align 4
  %47 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %48 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %47, i32 0, i32 26
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  store float 5.000000e-01, float* %50, align 4
  %51 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %52 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %51, i32 0, i32 26
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 2
  %55 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %56 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %55, i32 0, i32 20
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %60 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %59, i32 0, i32 20
  %61 = load i32, i32* %60, align 8
  %62 = sitofp i32 %61 to float
  %63 = fpext float %62 to double
  %64 = fsub double %63, 1.000000e+00
  %65 = fdiv double 5.000000e-01, %64
  %66 = fptrunc double %65 to float
  call void @FSet(float* %54, i32 %58, float %66)
  %67 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 27
  %69 = load float*, float** %68, align 8
  %70 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %71 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 20
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %69, i64 %73
  store float 1.000000e+00, float* %74, align 4
  %75 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %76 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %75, i32 0, i32 27
  %77 = load float*, float** %76, align 8
  %78 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %79 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %78, i32 0, i32 20
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %83 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 8
  %85 = sitofp i32 %84 to float
  %86 = fpext float %85 to double
  %87 = fsub double %86, 1.000000e+00
  %88 = fdiv double 5.000000e-01, %87
  %89 = fptrunc double %88 to float
  call void @FSet(float* %77, i32 %81, float %89)
  store i32 1, i32* %11, align 4
  br label %90

; <label>:90:                                     ; preds = %231, %5
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %93 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %92, i32 0, i32 20
  %94 = load i32, i32* %93, align 8
  %95 = icmp sle i32 %91, %94
  br i1 %95, label %96, label %234

; <label>:96:                                     ; preds = %90
  store i32 0, i32* %12, align 4
  br label %97

; <label>:97:                                     ; preds = %211, %96
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %98, 64
  br i1 %99, label %100, label %214

; <label>:100:                                    ; preds = %97
  %101 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %102 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %101, i32 0, i32 22
  %103 = load float**, float*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float*, float** %103, i64 %105
  %107 = load float*, float** %106, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %107, i64 %113
  %115 = load float, float* %114, align 4
  %116 = load float**, float*** %8, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float*, float** %116, i64 %122
  %124 = load float*, float** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fmul float %115, %128
  %130 = fpext float %129 to double
  %131 = load float, float* %9, align 4
  %132 = fpext float %131 to double
  %133 = fsub double 1.000000e+00, %132
  %134 = load float, float* %10, align 4
  %135 = fpext float %134 to double
  %136 = fsub double %133, %135
  %137 = fmul double %130, %136
  %138 = fptrunc double %137 to float
  store float %138, float* %13, align 4
  %139 = load float, float* %13, align 4
  %140 = load float*, float** %14, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  %145 = call i32 @Prob2Score(float %139, float %144)
  %146 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %147 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %146, i32 0, i32 41
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %145, i32* %155, align 4
  %156 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %157 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %156, i32 0, i32 23
  %158 = load float**, float*** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float*, float** %158, i64 %160
  %162 = load float*, float** %161, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %162, i64 %168
  %170 = load float, float* %169, align 4
  %171 = load float**, float*** %8, align 8
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float*, float** %171, i64 %177
  %179 = load float*, float** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %179, i64 %181
  %183 = load float, float* %182, align 4
  %184 = fmul float %170, %183
  %185 = fpext float %184 to double
  %186 = load float, float* %9, align 4
  %187 = fpext float %186 to double
  %188 = fsub double 1.000000e+00, %187
  %189 = load float, float* %10, align 4
  %190 = fpext float %189 to double
  %191 = fsub double %188, %190
  %192 = fmul double %185, %191
  %193 = fptrunc double %192 to float
  store float %193, float* %13, align 4
  %194 = load float, float* %13, align 4
  %195 = load float*, float** %14, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  %199 = load float, float* %198, align 4
  %200 = call i32 @Prob2Score(float %194, float %199)
  %201 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %202 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %201, i32 0, i32 42
  %203 = load i32**, i32*** %202, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %200, i32* %210, align 4
  br label %211

; <label>:211:                                    ; preds = %100
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %97

; <label>:214:                                    ; preds = %97
  %215 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %216 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %215, i32 0, i32 41
  %217 = load i32**, i32*** %216, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 64
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 0, i32* %222, align 4
  %223 = load float, float* %9, align 4
  %224 = call i32 @Prob2Score(float %223, float 1.000000e+00)
  %225 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %226 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %225, i32 0, i32 43
  store i32 %224, i32* %226, align 8
  %227 = load float, float* %10, align 4
  %228 = call i32 @Prob2Score(float %227, float 1.000000e+00)
  %229 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %230 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %229, i32 0, i32 44
  store i32 %228, i32* %230, align 4
  br label %231

; <label>:231:                                    ; preds = %214
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %90

; <label>:234:                                    ; preds = %90
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @PrintPlan7Stats(%struct._IO_FILE*, %struct.plan7_s*, i8**, i32, %struct.p7trace_s**) #0 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.plan7_s*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.p7trace_s**, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store %struct.plan7_s* %1, %struct.plan7_s** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.p7trace_s** %4, %struct.p7trace_s*** %10, align 8
  %18 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  call void @P7Logoddsify(%struct.plan7_s* %18, i32 1)
  %19 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.p7trace_s**, %struct.p7trace_s*** %10, align 8
  %24 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %23, i64 0
  %25 = load %struct.p7trace_s*, %struct.p7trace_s** %24, align 8
  %26 = call float @P7TraceScore(%struct.plan7_s* %19, i8* %22, %struct.p7trace_s* %25)
  store float %26, float* %12, align 4
  %27 = load float, float* %12, align 4
  store float %27, float* %15, align 4
  store float %27, float* %14, align 4
  store float %27, float* %13, align 4
  %28 = load float, float* %12, align 4
  %29 = load float, float* %12, align 4
  %30 = fmul float %28, %29
  store float %30, float* %16, align 4
  store i32 1, i32* %11, align 4
  br label %31

; <label>:31:                                     ; preds = %68, %5
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %71

; <label>:35:                                     ; preds = %31
  %36 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.p7trace_s**, %struct.p7trace_s*** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %42, i64 %44
  %46 = load %struct.p7trace_s*, %struct.p7trace_s** %45, align 8
  %47 = call float @P7TraceScore(%struct.plan7_s* %36, i8* %41, %struct.p7trace_s* %46)
  store float %47, float* %12, align 4
  %48 = load float, float* %12, align 4
  %49 = load float, float* %13, align 4
  %50 = fadd float %49, %48
  store float %50, float* %13, align 4
  %51 = load float, float* %12, align 4
  %52 = load float, float* %12, align 4
  %53 = fmul float %51, %52
  %54 = load float, float* %16, align 4
  %55 = fadd float %54, %53
  store float %55, float* %16, align 4
  %56 = load float, float* %12, align 4
  %57 = load float, float* %14, align 4
  %58 = fcmp ogt float %56, %57
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %35
  %60 = load float, float* %12, align 4
  store float %60, float* %14, align 4
  br label %61

; <label>:61:                                     ; preds = %59, %35
  %62 = load float, float* %12, align 4
  %63 = load float, float* %15, align 4
  %64 = fcmp olt float %62, %63
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %61
  %66 = load float, float* %12, align 4
  store float %66, float* %15, align 4
  br label %67

; <label>:67:                                     ; preds = %65, %61
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %31

; <label>:71:                                     ; preds = %31
  %72 = load i32, i32* %9, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %100

; <label>:74:                                     ; preds = %71
  %75 = load float, float* %16, align 4
  %76 = load float, float* %13, align 4
  %77 = load float, float* %13, align 4
  %78 = fmul float %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %78, %80
  %82 = fsub float %75, %81
  %83 = fpext float %82 to double
  %84 = load i32, i32* %9, align 4
  %85 = sitofp i32 %84 to float
  %86 = fpext float %85 to double
  %87 = fsub double %86, 1.000000e+00
  %88 = fdiv double %83, %87
  %89 = fptrunc double %88 to float
  store float %89, float* %17, align 4
  %90 = load float, float* %17, align 4
  %91 = fcmp ogt float %90, 0.000000e+00
  br i1 %91, label %92, label %96

; <label>:92:                                     ; preds = %74
  %93 = load float, float* %17, align 4
  %94 = fpext float %93 to double
  %95 = call double @sqrt(double %94) #5
  br label %97

; <label>:96:                                     ; preds = %74
  br label %97

; <label>:97:                                     ; preds = %96, %92
  %98 = phi double [ %95, %92 ], [ 0.000000e+00, %96 ]
  %99 = fptrunc double %98 to float
  store float %99, float* %17, align 4
  br label %101

; <label>:100:                                    ; preds = %71
  store float 0.000000e+00, float* %17, align 4
  br label %101

; <label>:101:                                    ; preds = %100, %97
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %103 = load float, float* %13, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sitofp i32 %104 to float
  %106 = fdiv float %103, %105
  %107 = fpext float %106 to double
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), double %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %110 = load float, float* %15, align 4
  %111 = fpext float %110 to double
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), double %111)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %114 = load float, float* %14, align 4
  %115 = fpext float %114 to double
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), double %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %118 = load float, float* %17, align 4
  %119 = fpext float %118 to double
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), double %119)
  ret void
}

declare float @P7TraceScore(%struct.plan7_s*, i8*, %struct.p7trace_s*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @Plan9toPlan7(%struct.plan9_s*, %struct.plan7_s**) #0 {
  %3 = alloca %struct.plan9_s*, align 8
  %4 = alloca %struct.plan7_s**, align 8
  %5 = alloca %struct.plan7_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.plan9_s* %0, %struct.plan9_s** %3, align 8
  store %struct.plan7_s** %1, %struct.plan7_s*** %4, align 8
  %8 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %9 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.plan7_s* @AllocPlan7(i32 %10)
  store %struct.plan7_s* %11, %struct.plan7_s** %5, align 8
  store i32 1, i32* %6, align 4
  br label %12

; <label>:12:                                     ; preds = %138, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %15 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %141

; <label>:18:                                     ; preds = %12
  %19 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %20 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %19, i32 0, i32 2
  %21 = load %struct.basic_state*, %struct.basic_state** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %21, i64 %23
  %25 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  %27 = load float, float* %26, align 4
  %28 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 21
  %30 = load float**, float*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float*, float** %30, i64 %32
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  store float %27, float* %35, align 4
  %36 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %37 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %36, i32 0, i32 2
  %38 = load %struct.basic_state*, %struct.basic_state** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %38, i64 %40
  %42 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds [3 x float], [3 x float]* %42, i64 0, i64 2
  %44 = load float, float* %43, align 4
  %45 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %46 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 21
  %47 = load float**, float*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float*, float** %47, i64 %49
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 2
  store float %44, float* %52, align 4
  %53 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %54 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %53, i32 0, i32 2
  %55 = load %struct.basic_state*, %struct.basic_state** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %55, i64 %57
  %59 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds [3 x float], [3 x float]* %59, i64 0, i64 1
  %61 = load float, float* %60, align 4
  %62 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %63 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 21
  %64 = load float**, float*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float*, float** %64, i64 %66
  %68 = load float*, float** %67, align 8
  %69 = getelementptr inbounds float, float* %68, i64 1
  store float %61, float* %69, align 4
  %70 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %71 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %70, i32 0, i32 3
  %72 = load %struct.basic_state*, %struct.basic_state** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %72, i64 %74
  %76 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds [3 x float], [3 x float]* %76, i64 0, i64 0
  %78 = load float, float* %77, align 4
  %79 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 21
  %81 = load float**, float*** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float*, float** %81, i64 %83
  %85 = load float*, float** %84, align 8
  %86 = getelementptr inbounds float, float* %85, i64 5
  store float %78, float* %86, align 4
  %87 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %88 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %87, i32 0, i32 3
  %89 = load %struct.basic_state*, %struct.basic_state** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %89, i64 %91
  %93 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds [3 x float], [3 x float]* %93, i64 0, i64 2
  %95 = load float, float* %94, align 4
  %96 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %97 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %96, i32 0, i32 21
  %98 = load float**, float*** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float*, float** %98, i64 %100
  %102 = load float*, float** %101, align 8
  %103 = getelementptr inbounds float, float* %102, i64 6
  store float %95, float* %103, align 4
  %104 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %105 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %104, i32 0, i32 1
  %106 = load %struct.basic_state*, %struct.basic_state** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %106, i64 %108
  %110 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %109, i32 0, i32 0
  %111 = getelementptr inbounds [3 x float], [3 x float]* %110, i64 0, i64 0
  %112 = load float, float* %111, align 4
  %113 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %114 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %113, i32 0, i32 21
  %115 = load float**, float*** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float*, float** %115, i64 %117
  %119 = load float*, float** %118, align 8
  %120 = getelementptr inbounds float, float* %119, i64 3
  store float %112, float* %120, align 4
  %121 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %122 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %121, i32 0, i32 1
  %123 = load %struct.basic_state*, %struct.basic_state** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %123, i64 %125
  %127 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %126, i32 0, i32 0
  %128 = getelementptr inbounds [3 x float], [3 x float]* %127, i64 0, i64 1
  %129 = load float, float* %128, align 4
  %130 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %131 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %130, i32 0, i32 21
  %132 = load float**, float*** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float*, float** %132, i64 %134
  %136 = load float*, float** %135, align 8
  %137 = getelementptr inbounds float, float* %136, i64 4
  store float %129, float* %137, align 4
  br label %138

; <label>:138:                                    ; preds = %18
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %12

; <label>:141:                                    ; preds = %12
  store i32 1, i32* %6, align 4
  br label %142

; <label>:142:                                    ; preds = %179, %141
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %145 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sle i32 %143, %146
  br i1 %147, label %148, label %182

; <label>:148:                                    ; preds = %142
  store i32 0, i32* %7, align 4
  br label %149

; <label>:149:                                    ; preds = %175, %148
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @Alphabet_size, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %178

; <label>:153:                                    ; preds = %149
  %154 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %155 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %154, i32 0, i32 2
  %156 = load %struct.basic_state*, %struct.basic_state** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %156, i64 %158
  %160 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %159, i32 0, i32 1
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [20 x float], [20 x float]* %160, i64 0, i64 %162
  %164 = load float, float* %163, align 4
  %165 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %166 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %165, i32 0, i32 22
  %167 = load float**, float*** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float*, float** %167, i64 %169
  %171 = load float*, float** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  store float %164, float* %174, align 4
  br label %175

; <label>:175:                                    ; preds = %153
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %149

; <label>:178:                                    ; preds = %149
  br label %179

; <label>:179:                                    ; preds = %178
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %142

; <label>:182:                                    ; preds = %142
  store i32 1, i32* %6, align 4
  br label %183

; <label>:183:                                    ; preds = %220, %182
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %186 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %223

; <label>:189:                                    ; preds = %183
  store i32 0, i32* %7, align 4
  br label %190

; <label>:190:                                    ; preds = %216, %189
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @Alphabet_size, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %219

; <label>:194:                                    ; preds = %190
  %195 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %196 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %195, i32 0, i32 1
  %197 = load %struct.basic_state*, %struct.basic_state** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %197, i64 %199
  %201 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %200, i32 0, i32 1
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [20 x float], [20 x float]* %201, i64 0, i64 %203
  %205 = load float, float* %204, align 4
  %206 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %207 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %206, i32 0, i32 23
  %208 = load float**, float*** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float*, float** %208, i64 %210
  %212 = load float*, float** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  store float %205, float* %215, align 4
  br label %216

; <label>:216:                                    ; preds = %194
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  br label %190

; <label>:219:                                    ; preds = %190
  br label %220

; <label>:220:                                    ; preds = %219
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %183

; <label>:223:                                    ; preds = %183
  %224 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %225 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %224, i32 0, i32 2
  %226 = load %struct.basic_state*, %struct.basic_state** %225, align 8
  %227 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %226, i64 0
  %228 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %227, i32 0, i32 0
  %229 = getelementptr inbounds [3 x float], [3 x float]* %228, i64 0, i64 2
  %230 = load float, float* %229, align 4
  %231 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %232 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %231, i32 0, i32 2
  %233 = load %struct.basic_state*, %struct.basic_state** %232, align 8
  %234 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %233, i64 0
  %235 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %234, i32 0, i32 0
  %236 = getelementptr inbounds [3 x float], [3 x float]* %235, i64 0, i64 2
  %237 = load float, float* %236, align 4
  %238 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %239 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %238, i32 0, i32 2
  %240 = load %struct.basic_state*, %struct.basic_state** %239, align 8
  %241 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %240, i64 0
  %242 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %241, i32 0, i32 0
  %243 = getelementptr inbounds [3 x float], [3 x float]* %242, i64 0, i64 0
  %244 = load float, float* %243, align 4
  %245 = fadd float %237, %244
  %246 = fdiv float %230, %245
  %247 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %248 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %247, i32 0, i32 24
  store float %246, float* %248, align 8
  %249 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %250 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %249, i32 0, i32 28
  %251 = getelementptr inbounds [20 x float], [20 x float]* %250, i32 0, i32 0
  %252 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %253 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %252, i32 0, i32 29
  call void @P7DefaultNullModel(float* %251, float* %253)
  store i32 0, i32* %7, align 4
  br label %254

; <label>:254:                                    ; preds = %270, %223
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* @Alphabet_size, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %273

; <label>:258:                                    ; preds = %254
  %259 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %260 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %259, i32 0, i32 4
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [20 x float], [20 x float]* %260, i64 0, i64 %262
  %264 = load float, float* %263, align 4
  %265 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %266 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %265, i32 0, i32 28
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [20 x float], [20 x float]* %266, i64 0, i64 %268
  store float %264, float* %269, align 4
  br label %270

; <label>:270:                                    ; preds = %258
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %7, align 4
  br label %254

; <label>:273:                                    ; preds = %254
  %274 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %275 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %274, i32 0, i32 5
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %283

; <label>:278:                                    ; preds = %273
  %279 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %280 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %281 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %280, i32 0, i32 5
  %282 = load i8*, i8** %281, align 8
  call void @Plan7SetName(%struct.plan7_s* %279, i8* %282)
  br label %283

; <label>:283:                                    ; preds = %278, %273
  %284 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %285 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %284, i32 0, i32 9
  %286 = load i32, i32* %285, align 8
  %287 = and i32 %286, 1
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %301

; <label>:289:                                    ; preds = %283
  %290 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %291 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %290, i32 0, i32 3
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %294 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %293, i32 0, i32 6
  %295 = load i8*, i8** %294, align 8
  %296 = call i8* @strcpy(i8* %292, i8* %295) #5
  %297 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %298 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %297, i32 0, i32 47
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, 4
  store i32 %300, i32* %298, align 8
  br label %301

; <label>:301:                                    ; preds = %289, %283
  %302 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %303 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %302, i32 0, i32 9
  %304 = load i32, i32* %303, align 8
  %305 = and i32 %304, 2
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %319

; <label>:307:                                    ; preds = %301
  %308 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %309 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %308, i32 0, i32 4
  %310 = load i8*, i8** %309, align 8
  %311 = load %struct.plan9_s*, %struct.plan9_s** %3, align 8
  %312 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %311, i32 0, i32 7
  %313 = load i8*, i8** %312, align 8
  %314 = call i8* @strcpy(i8* %310, i8* %313) #5
  %315 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %316 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %315, i32 0, i32 47
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, 8
  store i32 %318, i32* %316, align 8
  br label %319

; <label>:319:                                    ; preds = %307, %301
  %320 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  call void @Plan7LSConfig(%struct.plan7_s* %320)
  %321 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  call void @Plan7Renormalize(%struct.plan7_s* %321)
  %322 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %323 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %322, i32 0, i32 47
  %324 = load i32, i32* %323, align 8
  %325 = or i32 %324, 32
  store i32 %325, i32* %323, align 8
  %326 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %327 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %326, i32 0, i32 47
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, -2
  store i32 %329, i32* %327, align 8
  %330 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %331 = load %struct.plan7_s**, %struct.plan7_s*** %4, align 8
  store %struct.plan7_s* %330, %struct.plan7_s** %331, align 8
  ret void
}

declare void @P7DefaultNullModel(float*, float*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
