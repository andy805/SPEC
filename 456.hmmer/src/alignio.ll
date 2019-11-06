; ModuleID = 'alignio.c'
source_filename = "alignio.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"alignio.c\00", align 1
@squid_errno = external global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%*s%-10.10s %5d %s %5d\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%*s                 %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @AllocAlignment(i32, i32, i8***, %struct.aliinfo_s*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca %struct.aliinfo_s*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  store %struct.aliinfo_s* %3, %struct.aliinfo_s** %8, align 8
  %11 = load %struct.aliinfo_s*, %struct.aliinfo_s** %8, align 8
  call void @InitAinfo(%struct.aliinfo_s* %11)
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 50, i64 %14)
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

; <label>:17:                                     ; preds = %31, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 1, %24
  %26 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 52, i64 %25)
  %27 = load i8**, i8*** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* %26, i8** %30, align 8
  br label %31

; <label>:31:                                     ; preds = %21
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %17

; <label>:34:                                     ; preds = %17
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.aliinfo_s*, %struct.aliinfo_s** %8, align 8
  %37 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.aliinfo_s*, %struct.aliinfo_s** %8, align 8
  %40 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 57, i64 %43)
  %45 = bitcast i8* %44 to float*
  %46 = load %struct.aliinfo_s*, %struct.aliinfo_s** %8, align 8
  %47 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %46, i32 0, i32 3
  store float* %45, float** %47, align 8
  %48 = load %struct.aliinfo_s*, %struct.aliinfo_s** %8, align 8
  %49 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %48, i32 0, i32 3
  %50 = load float*, float** %49, align 8
  %51 = load i32, i32* %5, align 4
  call void @FSet(float* %50, i32 %51, float 1.000000e+00)
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 360, %53
  %55 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 60, i64 %54)
  %56 = bitcast i8* %55 to %struct.seqinfo_s*
  %57 = load %struct.aliinfo_s*, %struct.aliinfo_s** %8, align 8
  %58 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %57, i32 0, i32 6
  store %struct.seqinfo_s* %56, %struct.seqinfo_s** %58, align 8
  store i32 0, i32* %10, align 4
  br label %59

; <label>:59:                                     ; preds = %71, %34
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %74

; <label>:63:                                     ; preds = %59
  %64 = load %struct.aliinfo_s*, %struct.aliinfo_s** %8, align 8
  %65 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %64, i32 0, i32 6
  %66 = load %struct.seqinfo_s*, %struct.seqinfo_s** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %66, i64 %68
  %70 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

; <label>:71:                                     ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %59

; <label>:74:                                     ; preds = %59
  %75 = load i8**, i8*** %9, align 8
  %76 = load i8***, i8**** %7, align 8
  store i8** %75, i8*** %76, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @InitAinfo(%struct.aliinfo_s*) #0 {
  %2 = alloca %struct.aliinfo_s*, align 8
  store %struct.aliinfo_s* %0, %struct.aliinfo_s** %2, align 8
  %3 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %4 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %3, i32 0, i32 7
  store i8* null, i8** %4, align 8
  %5 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %6 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %5, i32 0, i32 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %8 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %7, i32 0, i32 4
  store i8* null, i8** %8, align 8
  %9 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %10 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %9, i32 0, i32 5
  store i8* null, i8** %10, align 8
  %11 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %12 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %11, i32 0, i32 9
  store i8* null, i8** %12, align 8
  %13 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %14 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %13, i32 0, i32 10
  store i8* null, i8** %14, align 8
  %15 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %16 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %18 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %17, i32 0, i32 12
  store float 0.000000e+00, float* %18, align 4
  %19 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %20 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %19, i32 0, i32 11
  store float 0.000000e+00, float* %20, align 8
  %21 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %22 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %21, i32 0, i32 14
  store float 0.000000e+00, float* %22, align 4
  %23 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %24 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %23, i32 0, i32 13
  store float 0.000000e+00, float* %24, align 8
  %25 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %26 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %25, i32 0, i32 16
  store float 0.000000e+00, float* %26, align 4
  %27 = load %struct.aliinfo_s*, %struct.aliinfo_s** %2, align 8
  %28 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %27, i32 0, i32 15
  store float 0.000000e+00, float* %28, align 8
  ret void
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare void @FSet(float*, i32, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @FreeAlignment(i8**, %struct.aliinfo_s*) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.aliinfo_s*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.aliinfo_s* %1, %struct.aliinfo_s** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %53, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %9 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %56

; <label>:12:                                     ; preds = %6
  %13 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %14 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %13, i32 0, i32 6
  %15 = load %struct.seqinfo_s*, %struct.seqinfo_s** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %15, i64 %17
  %19 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 512
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

; <label>:23:                                     ; preds = %12
  %24 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %25 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %24, i32 0, i32 6
  %26 = load %struct.seqinfo_s*, %struct.seqinfo_s** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %26, i64 %28
  %30 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %29, i32 0, i32 10
  %31 = load i8*, i8** %30, align 8
  call void @free(i8* %31) #5
  br label %32

; <label>:32:                                     ; preds = %23, %12
  %33 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %34 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %33, i32 0, i32 6
  %35 = load %struct.seqinfo_s*, %struct.seqinfo_s** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %35, i64 %37
  %39 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 1024
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

; <label>:43:                                     ; preds = %32
  %44 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %45 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %44, i32 0, i32 6
  %46 = load %struct.seqinfo_s*, %struct.seqinfo_s** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %46, i64 %48
  %50 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %49, i32 0, i32 11
  %51 = load i8*, i8** %50, align 8
  call void @free(i8* %51) #5
  br label %52

; <label>:52:                                     ; preds = %43, %32
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %6

; <label>:56:                                     ; preds = %6
  %57 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %58 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

; <label>:61:                                     ; preds = %56
  %62 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %63 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  call void @free(i8* %64) #5
  br label %65

; <label>:65:                                     ; preds = %61, %56
  %66 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %67 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %66, i32 0, i32 5
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %65
  %71 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %72 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %71, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  call void @free(i8* %73) #5
  br label %74

; <label>:74:                                     ; preds = %70, %65
  %75 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %76 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %75, i32 0, i32 7
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

; <label>:79:                                     ; preds = %74
  %80 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %81 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %80, i32 0, i32 7
  %82 = load i8*, i8** %81, align 8
  call void @free(i8* %82) #5
  br label %83

; <label>:83:                                     ; preds = %79, %74
  %84 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %85 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %84, i32 0, i32 8
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

; <label>:88:                                     ; preds = %83
  %89 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %90 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %89, i32 0, i32 8
  %91 = load i8*, i8** %90, align 8
  call void @free(i8* %91) #5
  br label %92

; <label>:92:                                     ; preds = %88, %83
  %93 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %94 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %93, i32 0, i32 9
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %101

; <label>:97:                                     ; preds = %92
  %98 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %99 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %98, i32 0, i32 9
  %100 = load i8*, i8** %99, align 8
  call void @free(i8* %100) #5
  br label %101

; <label>:101:                                    ; preds = %97, %92
  %102 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %103 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %102, i32 0, i32 10
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %110

; <label>:106:                                    ; preds = %101
  %107 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %108 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %107, i32 0, i32 10
  %109 = load i8*, i8** %108, align 8
  call void @free(i8* %109) #5
  br label %110

; <label>:110:                                    ; preds = %106, %101
  %111 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %112 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %111, i32 0, i32 6
  %113 = load %struct.seqinfo_s*, %struct.seqinfo_s** %112, align 8
  %114 = bitcast %struct.seqinfo_s* %113 to i8*
  call void @free(i8* %114) #5
  %115 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %116 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %115, i32 0, i32 3
  %117 = load float*, float** %116, align 8
  %118 = bitcast float* %117 to i8*
  call void @free(i8* %118) #5
  %119 = load i8**, i8*** %3, align 8
  %120 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %121 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  call void @Free2DArray(i8** %119, i32 %122)
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @SAMizeAlignment(i8**, i32, i32) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

; <label>:13:                                     ; preds = %214, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %217

; <label>:17:                                     ; preds = %13
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %124, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %127

; <label>:22:                                     ; preds = %18
  %23 = load i8**, i8*** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %82, label %34

; <label>:34:                                     ; preds = %22
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %82, label %46

; <label>:46:                                     ; preds = %34
  %47 = load i8**, i8*** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 95
  br i1 %57, label %82, label %58

; <label>:58:                                     ; preds = %46
  %59 = load i8**, i8*** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %82, label %70

; <label>:70:                                     ; preds = %58
  %71 = load i8**, i8*** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 126
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %70, %58, %46, %34, %22
  store i32 1, i32* %11, align 4
  br label %124

; <label>:83:                                     ; preds = %70
  %84 = call i16** @__ctype_b_loc() #6
  %85 = load i16*, i16** %84, align 8
  %86 = load i8**, i8*** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i16, i16* %85, i64 %96
  %98 = load i16, i16* %97, align 2
  %99 = zext i16 %98 to i32
  %100 = and i32 %99, 256
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

; <label>:102:                                    ; preds = %83
  store i32 1, i32* %10, align 4
  br label %124

; <label>:103:                                    ; preds = %83
  %104 = call i16** @__ctype_b_loc() #6
  %105 = load i16*, i16** %104, align 8
  %106 = load i8**, i8*** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i16, i16* %105, i64 %116
  %118 = load i16, i16* %117, align 2
  %119 = zext i16 %118 to i32
  %120 = and i32 %119, 512
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

; <label>:122:                                    ; preds = %103
  store i32 1, i32* %9, align 4
  br label %123

; <label>:123:                                    ; preds = %122, %103
  br label %124

; <label>:124:                                    ; preds = %123, %102, %82
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %18

; <label>:127:                                    ; preds = %18
  store i8 45, i8* %12, align 1
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

; <label>:130:                                    ; preds = %127
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

; <label>:133:                                    ; preds = %130
  store i8 46, i8* %12, align 1
  br label %134

; <label>:134:                                    ; preds = %133, %130, %127
  store i32 0, i32* %8, align 4
  br label %135

; <label>:135:                                    ; preds = %210, %134
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %213

; <label>:139:                                    ; preds = %135
  %140 = load i8**, i8*** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 32
  br i1 %150, label %199, label %151

; <label>:151:                                    ; preds = %139
  %152 = load i8**, i8*** %4, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 46
  br i1 %162, label %199, label %163

; <label>:163:                                    ; preds = %151
  %164 = load i8**, i8*** %4, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 95
  br i1 %174, label %199, label %175

; <label>:175:                                    ; preds = %163
  %176 = load i8**, i8*** %4, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 45
  br i1 %186, label %199, label %187

; <label>:187:                                    ; preds = %175
  %188 = load i8**, i8*** %4, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 126
  br i1 %198, label %199, label %209

; <label>:199:                                    ; preds = %187, %175, %163, %151, %139
  %200 = load i8, i8* %12, align 1
  %201 = load i8**, i8*** %4, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 %200, i8* %208, align 1
  br label %209

; <label>:209:                                    ; preds = %199, %187
  br label %210

; <label>:210:                                    ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %135

; <label>:213:                                    ; preds = %135
  br label %214

; <label>:214:                                    ; preds = %213
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %13

; <label>:217:                                    ; preds = %13
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind optnone uwtable
define void @SAMizeAlignmentByGapFrac(i8**, i32, i32, float) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %297, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %300

; <label>:16:                                     ; preds = %12
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %17

; <label>:17:                                     ; preds = %85, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %88

; <label>:21:                                     ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %81, label %33

; <label>:33:                                     ; preds = %21
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %81, label %45

; <label>:45:                                     ; preds = %33
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 95
  br i1 %56, label %81, label %57

; <label>:57:                                     ; preds = %45
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 45
  br i1 %68, label %81, label %69

; <label>:69:                                     ; preds = %57
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 126
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %69, %57, %45, %33, %21
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %84

; <label>:84:                                     ; preds = %81, %69
  br label %85

; <label>:85:                                     ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %17

; <label>:88:                                     ; preds = %17
  %89 = load i32, i32* %11, align 4
  %90 = sitofp i32 %89 to float
  %91 = load i32, i32* %6, align 4
  %92 = sitofp i32 %91 to float
  %93 = fdiv float %90, %92
  %94 = load float, float* %8, align 4
  %95 = fcmp ogt float %93, %94
  br i1 %95, label %96, label %196

; <label>:96:                                     ; preds = %88
  store i32 0, i32* %10, align 4
  br label %97

; <label>:97:                                     ; preds = %192, %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %195

; <label>:101:                                    ; preds = %97
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %161, label %113

; <label>:113:                                    ; preds = %101
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 46
  br i1 %124, label %161, label %125

; <label>:125:                                    ; preds = %113
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 95
  br i1 %136, label %161, label %137

; <label>:137:                                    ; preds = %125
  %138 = load i8**, i8*** %5, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 45
  br i1 %148, label %161, label %149

; <label>:149:                                    ; preds = %137
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 126
  br i1 %160, label %161, label %170

; <label>:161:                                    ; preds = %149, %137, %125, %113, %101
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  store i8 46, i8* %169, align 1
  br label %191

; <label>:170:                                    ; preds = %149
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = call i32 @tolower(i32 %180) #7
  %182 = trunc i32 %181 to i8
  %183 = load i8**, i8*** %5, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 %182, i8* %190, align 1
  br label %191

; <label>:191:                                    ; preds = %170, %161
  br label %192

; <label>:192:                                    ; preds = %191
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %97

; <label>:195:                                    ; preds = %97
  br label %296

; <label>:196:                                    ; preds = %88
  store i32 0, i32* %10, align 4
  br label %197

; <label>:197:                                    ; preds = %292, %196
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %295

; <label>:201:                                    ; preds = %197
  %202 = load i8**, i8*** %5, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 32
  br i1 %212, label %261, label %213

; <label>:213:                                    ; preds = %201
  %214 = load i8**, i8*** %5, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 46
  br i1 %224, label %261, label %225

; <label>:225:                                    ; preds = %213
  %226 = load i8**, i8*** %5, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 95
  br i1 %236, label %261, label %237

; <label>:237:                                    ; preds = %225
  %238 = load i8**, i8*** %5, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 45
  br i1 %248, label %261, label %249

; <label>:249:                                    ; preds = %237
  %250 = load i8**, i8*** %5, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 126
  br i1 %260, label %261, label %270

; <label>:261:                                    ; preds = %249, %237, %225, %213, %201
  %262 = load i8**, i8*** %5, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  store i8 45, i8* %269, align 1
  br label %291

; <label>:270:                                    ; preds = %249
  %271 = load i8**, i8*** %5, align 8
  %272 = load i32, i32* %10, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %271, i64 %273
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = call i32 @toupper(i32 %280) #7
  %282 = trunc i32 %281 to i8
  %283 = load i8**, i8*** %5, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  store i8 %282, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %270, %261
  br label %292

; <label>:292:                                    ; preds = %291
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %10, align 4
  br label %197

; <label>:295:                                    ; preds = %197
  br label %296

; <label>:296:                                    ; preds = %295, %195
  br label %297

; <label>:297:                                    ; preds = %296
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %9, align 4
  br label %12

; <label>:300:                                    ; preds = %12
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #4

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @MakeAlignedString(i8*, i32, i8*, i8**) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 1
  %17 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 242, i64 %16)
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %18

; <label>:18:                                     ; preds = %80, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %83

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %74, label %30

; <label>:30:                                     ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %74, label %38

; <label>:38:                                     ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 95
  br i1 %45, label %74, label %46

; <label>:46:                                     ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %74, label %54

; <label>:54:                                     ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 126
  br i1 %61, label %74, label %62

; <label>:62:                                     ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %79

; <label>:74:                                     ; preds = %54, %46, %38, %30, %22
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 46, i8* %78, align 1
  br label %79

; <label>:79:                                     ; preds = %74, %62
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %18

; <label>:83:                                     ; preds = %18
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @strlen(i8* %90) #7
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %83
  store i32 6, i32* @squid_errno, align 4
  %94 = load i8*, i8** %10, align 8
  call void @free(i8* %94) #5
  store i32 0, i32* %5, align 4
  br label %98

; <label>:95:                                     ; preds = %83
  %96 = load i8*, i8** %10, align 8
  %97 = load i8**, i8*** %9, align 8
  store i8* %96, i8** %97, align 8
  store i32 1, i32* %5, align 4
  br label %98

; <label>:98:                                     ; preds = %95, %93
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @MakeDealignedString(i8*, i32, i8*, i8**) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 1
  %17 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 280, i64 %16)
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %18

; <label>:18:                                     ; preds = %75, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %78

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %74, label %30

; <label>:30:                                     ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %74, label %38

; <label>:38:                                     ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 95
  br i1 %45, label %74, label %46

; <label>:46:                                     ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %74, label %54

; <label>:54:                                     ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 126
  br i1 %61, label %74, label %62

; <label>:62:                                     ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %74

; <label>:74:                                     ; preds = %62, %54, %46, %38, %30, %22
  br label %75

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %18

; <label>:78:                                     ; preds = %18
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = load i8*, i8** %8, align 8
  %86 = call i64 @strlen(i8* %85) #7
  %87 = icmp ne i64 %84, %86
  br i1 %87, label %88, label %90

; <label>:88:                                     ; preds = %78
  store i32 6, i32* @squid_errno, align 4
  %89 = load i8*, i8** %10, align 8
  call void @free(i8* %89) #5
  store i32 0, i32* %5, align 4
  br label %93

; <label>:90:                                     ; preds = %78
  %91 = load i8*, i8** %10, align 8
  %92 = load i8**, i8*** %9, align 8
  store i8* %91, i8** %92, align 8
  store i32 1, i32* %5, align 4
  br label %93

; <label>:93:                                     ; preds = %90, %88
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @DealignedLength(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %37, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %40

; <label>:8:                                      ; preds = %4
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %36, label %13

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 46
  br i1 %17, label %36, label %18

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 95
  br i1 %22, label %36, label %23

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %36, label %28

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %2, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 126
  br i1 %32, label %36, label %33

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %36

; <label>:36:                                     ; preds = %33, %28, %23, %18, %13, %8
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %2, align 8
  br label %4

; <label>:40:                                     ; preds = %4
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @WritePairwiseAlignment(%struct._IO_FILE*, i8*, i8*, i32, i8*, i8*, i32, i32**, i32) #0 {
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  %19 = alloca [11 x i8], align 1
  %20 = alloca [11 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca [61 x i8], align 16
  %23 = alloca [61 x i8], align 16
  %24 = alloca [61 x i8], align 16
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32** %7, i32*** %17, align 8
  store i32 %8, i32* %18, align 4
  %34 = getelementptr inbounds [11 x i8], [11 x i8]* %19, i32 0, i32 0
  %35 = load i8*, i8** %12, align 8
  %36 = call i8* @strncpy(i8* %34, i8* %35, i64 10) #5
  %37 = getelementptr inbounds [11 x i8], [11 x i8]* %19, i64 0, i64 10
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds [11 x i8], [11 x i8]* %19, i32 0, i32 0
  %39 = call i8* @strtok(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #5
  %40 = getelementptr inbounds [11 x i8], [11 x i8]* %20, i32 0, i32 0
  %41 = load i8*, i8** %15, align 8
  %42 = call i8* @strncpy(i8* %40, i8* %41, i64 10) #5
  %43 = getelementptr inbounds [11 x i8], [11 x i8]* %20, i64 0, i64 10
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds [11 x i8], [11 x i8]* %20, i32 0, i32 0
  %45 = call i8* @strtok(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #5
  %46 = load i8*, i8** %11, align 8
  store i8* %46, i8** %25, align 8
  %47 = load i8*, i8** %14, align 8
  store i8* %47, i8** %26, align 8
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %29, align 4
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %30, align 4
  store i32 1, i32* %21, align 4
  br label %50

; <label>:50:                                     ; preds = %331, %9
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %364

; <label>:53:                                     ; preds = %50
  store i32 0, i32* %21, align 4
  %54 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i32 0, i32 0
  %55 = load i8*, i8** %25, align 8
  %56 = call i8* @strncpy(i8* %54, i8* %55, i64 60) #5
  %57 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 60
  store i8 0, i8* %57, align 4
  %58 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i32 0, i32 0
  %59 = load i8*, i8** %26, align 8
  %60 = call i8* @strncpy(i8* %58, i8* %59, i64 60) #5
  %61 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 60
  store i8 0, i8* %61, align 4
  %62 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i32 0, i32 0
  %63 = call i64 @strlen(i8* %62) #7
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %27, align 4
  %65 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i32 0, i32 0
  %66 = call i64 @strlen(i8* %65) #7
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %28, align 4
  %68 = load i32, i32* %27, align 4
  %69 = icmp eq i32 %68, 60
  br i1 %69, label %70, label %76

; <label>:70:                                     ; preds = %53
  %71 = load i8*, i8** %25, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 60
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

; <label>:76:                                     ; preds = %70, %53
  %77 = load i32, i32* %28, align 4
  %78 = icmp eq i32 %77, 60
  br i1 %78, label %79, label %86

; <label>:79:                                     ; preds = %76
  %80 = load i8*, i8** %26, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 60
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %79, %70
  store i32 1, i32* %21, align 4
  br label %86

; <label>:86:                                     ; preds = %85, %79, %76
  %87 = load i32, i32* %27, align 4
  %88 = load i8*, i8** %25, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %25, align 8
  %91 = load i32, i32* %28, align 4
  %92 = load i8*, i8** %26, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %26, align 8
  store i32 0, i32* %33, align 4
  br label %95

; <label>:95:                                     ; preds = %231, %86
  %96 = load i32, i32* %33, align 4
  %97 = load i32, i32* %27, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %103

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %33, align 4
  %101 = load i32, i32* %28, align 4
  %102 = icmp slt i32 %100, %101
  br label %103

; <label>:103:                                    ; preds = %99, %95
  %104 = phi i1 [ false, %95 ], [ %102, %99 ]
  br i1 %104, label %105, label %234

; <label>:105:                                    ; preds = %103
  %106 = load i32, i32* %33, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 32
  br i1 %111, label %226, label %112

; <label>:112:                                    ; preds = %105
  %113 = load i32, i32* %33, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 46
  br i1 %118, label %226, label %119

; <label>:119:                                    ; preds = %112
  %120 = load i32, i32* %33, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 95
  br i1 %125, label %226, label %126

; <label>:126:                                    ; preds = %119
  %127 = load i32, i32* %33, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 45
  br i1 %132, label %226, label %133

; <label>:133:                                    ; preds = %126
  %134 = load i32, i32* %33, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 126
  br i1 %139, label %226, label %140

; <label>:140:                                    ; preds = %133
  %141 = load i32, i32* %33, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 32
  br i1 %146, label %226, label %147

; <label>:147:                                    ; preds = %140
  %148 = load i32, i32* %33, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 46
  br i1 %153, label %226, label %154

; <label>:154:                                    ; preds = %147
  %155 = load i32, i32* %33, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 95
  br i1 %160, label %226, label %161

; <label>:161:                                    ; preds = %154
  %162 = load i32, i32* %33, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 45
  br i1 %167, label %226, label %168

; <label>:168:                                    ; preds = %161
  %169 = load i32, i32* %33, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 126
  br i1 %174, label %226, label %175

; <label>:175:                                    ; preds = %168
  %176 = load i32, i32* %33, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = load i32, i32* %33, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %180, %185
  br i1 %186, label %187, label %195

; <label>:187:                                    ; preds = %175
  %188 = load i32, i32* %33, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = load i32, i32* %33, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [61 x i8], [61 x i8]* %23, i64 0, i64 %193
  store i8 %191, i8* %194, align 1
  br label %225

; <label>:195:                                    ; preds = %175
  %196 = load i32**, i32*** %17, align 8
  %197 = load i32, i32* %33, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = sub nsw i32 %201, 65
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %196, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %33, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = sub nsw i32 %210, 65
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %205, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %220

; <label>:216:                                    ; preds = %195
  %217 = load i32, i32* %33, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [61 x i8], [61 x i8]* %23, i64 0, i64 %218
  store i8 43, i8* %219, align 1
  br label %224

; <label>:220:                                    ; preds = %195
  %221 = load i32, i32* %33, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [61 x i8], [61 x i8]* %23, i64 0, i64 %222
  store i8 32, i8* %223, align 1
  br label %224

; <label>:224:                                    ; preds = %220, %216
  br label %225

; <label>:225:                                    ; preds = %224, %187
  br label %230

; <label>:226:                                    ; preds = %168, %161, %154, %147, %140, %133, %126, %119, %112, %105
  %227 = load i32, i32* %33, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [61 x i8], [61 x i8]* %23, i64 0, i64 %228
  store i8 32, i8* %229, align 1
  br label %230

; <label>:230:                                    ; preds = %226, %225
  br label %231

; <label>:231:                                    ; preds = %230
  %232 = load i32, i32* %33, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %33, align 4
  br label %95

; <label>:234:                                    ; preds = %103
  %235 = load i32, i32* %33, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [61 x i8], [61 x i8]* %23, i64 0, i64 %236
  store i8 0, i8* %237, align 1
  store i32 0, i32* %31, align 4
  store i32 0, i32* %33, align 4
  br label %238

; <label>:238:                                    ; preds = %281, %234
  %239 = load i32, i32* %33, align 4
  %240 = load i32, i32* %27, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %284

; <label>:242:                                    ; preds = %238
  %243 = load i32, i32* %33, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 32
  br i1 %248, label %280, label %249

; <label>:249:                                    ; preds = %242
  %250 = load i32, i32* %33, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 46
  br i1 %255, label %280, label %256

; <label>:256:                                    ; preds = %249
  %257 = load i32, i32* %33, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 95
  br i1 %262, label %280, label %263

; <label>:263:                                    ; preds = %256
  %264 = load i32, i32* %33, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 45
  br i1 %269, label %280, label %270

; <label>:270:                                    ; preds = %263
  %271 = load i32, i32* %33, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i64 0, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 126
  br i1 %276, label %280, label %277

; <label>:277:                                    ; preds = %270
  %278 = load i32, i32* %31, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %31, align 4
  br label %280

; <label>:280:                                    ; preds = %277, %270, %263, %256, %249, %242
  br label %281

; <label>:281:                                    ; preds = %280
  %282 = load i32, i32* %33, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %33, align 4
  br label %238

; <label>:284:                                    ; preds = %238
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  br label %285

; <label>:285:                                    ; preds = %328, %284
  %286 = load i32, i32* %33, align 4
  %287 = load i32, i32* %28, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %331

; <label>:289:                                    ; preds = %285
  %290 = load i32, i32* %33, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %291
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 32
  br i1 %295, label %327, label %296

; <label>:296:                                    ; preds = %289
  %297 = load i32, i32* %33, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 46
  br i1 %302, label %327, label %303

; <label>:303:                                    ; preds = %296
  %304 = load i32, i32* %33, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 95
  br i1 %309, label %327, label %310

; <label>:310:                                    ; preds = %303
  %311 = load i32, i32* %33, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 45
  br i1 %316, label %327, label %317

; <label>:317:                                    ; preds = %310
  %318 = load i32, i32* %33, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i64 0, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %322, 126
  br i1 %323, label %327, label %324

; <label>:324:                                    ; preds = %317
  %325 = load i32, i32* %32, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %32, align 4
  br label %327

; <label>:327:                                    ; preds = %324, %317, %310, %303, %296, %289
  br label %328

; <label>:328:                                    ; preds = %327
  %329 = load i32, i32* %33, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %33, align 4
  br label %285

; <label>:331:                                    ; preds = %285
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %333 = load i32, i32* %18, align 4
  %334 = getelementptr inbounds [11 x i8], [11 x i8]* %19, i32 0, i32 0
  %335 = load i32, i32* %29, align 4
  %336 = getelementptr inbounds [61 x i8], [61 x i8]* %22, i32 0, i32 0
  %337 = load i32, i32* %29, align 4
  %338 = load i32, i32* %31, align 4
  %339 = add nsw i32 %337, %338
  %340 = sub nsw i32 %339, 1
  %341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %332, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %333, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* %334, i32 %335, i8* %336, i32 %340)
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %343 = load i32, i32* %18, align 4
  %344 = getelementptr inbounds [61 x i8], [61 x i8]* %23, i32 0, i32 0
  %345 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %342, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 %343, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* %344)
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %347 = load i32, i32* %18, align 4
  %348 = getelementptr inbounds [11 x i8], [11 x i8]* %20, i32 0, i32 0
  %349 = load i32, i32* %30, align 4
  %350 = getelementptr inbounds [61 x i8], [61 x i8]* %24, i32 0, i32 0
  %351 = load i32, i32* %30, align 4
  %352 = load i32, i32* %32, align 4
  %353 = add nsw i32 %351, %352
  %354 = sub nsw i32 %353, 1
  %355 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %346, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %347, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* %348, i32 %349, i8* %350, i32 %354)
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %356, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %358 = load i32, i32* %31, align 4
  %359 = load i32, i32* %29, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* %29, align 4
  %361 = load i32, i32* %32, align 4
  %362 = load i32, i32* %30, align 4
  %363 = add nsw i32 %362, %361
  store i32 %363, i32* %30, align 4
  br label %50

; <label>:364:                                    ; preds = %50
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @MingapAlignment(i8**, %struct.aliinfo_s*) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.aliinfo_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.aliinfo_s* %1, %struct.aliinfo_s** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %171, %2
  %9 = load i8**, i8*** %3, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %174

; <label>:18:                                     ; preds = %8
  store i32 0, i32* %7, align 4
  br label %19

; <label>:19:                                     ; preds = %87, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %22 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %90

; <label>:25:                                     ; preds = %19
  %26 = load i8**, i8*** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %86, label %37

; <label>:37:                                     ; preds = %25
  %38 = load i8**, i8*** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %86, label %49

; <label>:49:                                     ; preds = %37
  %50 = load i8**, i8*** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 95
  br i1 %60, label %86, label %61

; <label>:61:                                     ; preds = %49
  %62 = load i8**, i8*** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 45
  br i1 %72, label %86, label %73

; <label>:73:                                     ; preds = %61
  %74 = load i8**, i8*** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 126
  br i1 %84, label %86, label %85

; <label>:85:                                     ; preds = %73
  br label %90

; <label>:86:                                     ; preds = %73, %61, %49, %37, %25
  br label %87

; <label>:87:                                     ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %19

; <label>:90:                                     ; preds = %85, %19
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %93 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %90
  br label %171

; <label>:97:                                     ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %168

; <label>:101:                                    ; preds = %97
  store i32 0, i32* %7, align 4
  br label %102

; <label>:102:                                    ; preds = %126, %101
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %105 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %129

; <label>:108:                                    ; preds = %102
  %109 = load i8**, i8*** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i8**, i8*** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 %117, i8* %125, align 1
  br label %126

; <label>:126:                                    ; preds = %108
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %102

; <label>:129:                                    ; preds = %102
  %130 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %131 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %148

; <label>:134:                                    ; preds = %129
  %135 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %136 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %135, i32 0, i32 4
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %143 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8 %141, i8* %147, align 1
  br label %148

; <label>:148:                                    ; preds = %134, %129
  %149 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %150 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %167

; <label>:153:                                    ; preds = %148
  %154 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %155 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %154, i32 0, i32 5
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %162 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %161, i32 0, i32 5
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8 %160, i8* %166, align 1
  br label %167

; <label>:167:                                    ; preds = %153, %148
  br label %168

; <label>:168:                                    ; preds = %167, %97
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %171

; <label>:171:                                    ; preds = %168, %96
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %8

; <label>:174:                                    ; preds = %8
  store i32 0, i32* %7, align 4
  br label %175

; <label>:175:                                    ; preds = %190, %174
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %178 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %193

; <label>:181:                                    ; preds = %175
  %182 = load i8**, i8*** %3, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  store i8 0, i8* %189, align 1
  br label %190

; <label>:190:                                    ; preds = %181
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %175

; <label>:193:                                    ; preds = %175
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %196 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %198 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %197, i32 0, i32 4
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %208

; <label>:201:                                    ; preds = %193
  %202 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %203 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %202, i32 0, i32 4
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 0, i8* %207, align 1
  br label %208

; <label>:208:                                    ; preds = %201, %193
  %209 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %210 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %209, i32 0, i32 5
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %220

; <label>:213:                                    ; preds = %208
  %214 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %215 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %214, i32 0, i32 5
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  store i8 0, i8* %219, align 1
  br label %220

; <label>:220:                                    ; preds = %213, %208
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @RandomAlignment(i8**, %struct.seqinfo_s*, i32, float, float, i8***, %struct.aliinfo_s*) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca %struct.seqinfo_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i8***, align 8
  %14 = alloca %struct.aliinfo_s*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store %struct.seqinfo_s* %1, %struct.seqinfo_s** %9, align 8
  store i32 %2, i32* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store i8*** %5, i8**** %13, align 8
  store %struct.aliinfo_s* %6, %struct.aliinfo_s** %14, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 530, i64 %29)
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 9999999, i32* %26, align 4
  store i32 0, i32* %23, align 4
  br label %32

; <label>:32:                                     ; preds = %72, %7
  %33 = load i32, i32* %23, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %75

; <label>:36:                                     ; preds = %32
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %23, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41) #7
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %23, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load i32*, i32** %17, align 8
  %49 = load i32, i32* %23, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %18, align 4
  %55 = load i32*, i32** %17, align 8
  %56 = load i32, i32* %23, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %26, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %68

; <label>:62:                                     ; preds = %36
  %63 = load i32*, i32** %17, align 8
  %64 = load i32, i32* %23, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  br label %70

; <label>:68:                                     ; preds = %36
  %69 = load i32, i32* %26, align 4
  br label %70

; <label>:70:                                     ; preds = %68, %62
  %71 = phi i32 [ %67, %62 ], [ %69, %68 ]
  store i32 %71, i32* %26, align 4
  br label %72

; <label>:72:                                     ; preds = %70
  %73 = load i32, i32* %23, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %23, align 4
  br label %32

; <label>:75:                                     ; preds = %32
  %76 = load i32, i32* %18, align 4
  %77 = sitofp i32 %76 to float
  %78 = fpext float %77 to double
  %79 = load float, float* %11, align 4
  %80 = fpext float %79 to double
  %81 = load float, float* %12, align 4
  %82 = fpext float %81 to double
  %83 = fsub double 1.000000e+00, %82
  %84 = fdiv double 1.000000e+00, %83
  %85 = fadd double 1.000000e+00, %84
  %86 = fmul double %80, %85
  %87 = fadd double 1.000000e+00, %86
  %88 = fdiv double %78, %87
  %89 = fptosi double %88 to i32
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %18, align 4
  %92 = sdiv i32 %91, %90
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %26, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %75
  %97 = load i32, i32* %26, align 4
  store i32 %97, i32* %18, align 4
  br label %98

; <label>:98:                                     ; preds = %96, %75
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 8, %100
  %102 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 545, i64 %101)
  %103 = bitcast i8* %102 to i32**
  store i32** %103, i32*** %19, align 8
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 546, i64 %107)
  %109 = bitcast i8* %108 to i32*
  store i32* %109, i32** %20, align 8
  store i32 0, i32* %23, align 4
  br label %110

; <label>:110:                                    ; preds = %142, %98
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %145

; <label>:114:                                    ; preds = %110
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 549, i64 %118)
  %120 = bitcast i8* %119 to i32*
  %121 = load i32**, i32*** %19, align 8
  %122 = load i32, i32* %23, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  store i32* %120, i32** %124, align 8
  store i32 0, i32* %22, align 4
  br label %125

; <label>:125:                                    ; preds = %138, %114
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %141

; <label>:129:                                    ; preds = %125
  %130 = load i32**, i32*** %19, align 8
  %131 = load i32, i32* %23, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %22, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 0, i32* %137, align 4
  br label %138

; <label>:138:                                    ; preds = %129
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %22, align 4
  br label %125

; <label>:141:                                    ; preds = %125
  br label %142

; <label>:142:                                    ; preds = %141
  %143 = load i32, i32* %23, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %23, align 4
  br label %110

; <label>:145:                                    ; preds = %110
  %146 = load float, float* %11, align 4
  %147 = load float, float* %11, align 4
  %148 = load float, float* %12, align 4
  %149 = fadd float %147, %148
  %150 = fdiv float %146, %149
  store float %150, float* %11, align 4
  %151 = load float, float* %11, align 4
  %152 = fpext float %151 to double
  %153 = fsub double 1.000000e+00, %152
  %154 = fptrunc double %153 to float
  store float %154, float* %12, align 4
  store i32 0, i32* %23, align 4
  br label %155

; <label>:155:                                    ; preds = %200, %145
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %203

; <label>:159:                                    ; preds = %155
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %160

; <label>:160:                                    ; preds = %196, %159
  %161 = load i32, i32* %22, align 4
  %162 = load i32*, i32** %17, align 8
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %18, align 4
  %168 = sub nsw i32 %166, %167
  %169 = icmp slt i32 %161, %168
  br i1 %169, label %170, label %199

; <label>:170:                                    ; preds = %160
  %171 = call double @sre_random()
  %172 = load float, float* %11, align 4
  %173 = fpext float %172 to double
  %174 = fcmp olt double %171, %173
  br i1 %174, label %178, label %175

; <label>:175:                                    ; preds = %170
  %176 = load i32, i32* %21, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %185

; <label>:178:                                    ; preds = %175, %170
  %179 = call double @sre_random()
  %180 = load i32, i32* %18, align 4
  %181 = add nsw i32 %180, 1
  %182 = sitofp i32 %181 to double
  %183 = fmul double %179, %182
  %184 = fptosi double %183 to i32
  store i32 %184, i32* %21, align 4
  br label %185

; <label>:185:                                    ; preds = %178, %175
  %186 = load i32**, i32*** %19, align 8
  %187 = load i32, i32* %23, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %196

; <label>:196:                                    ; preds = %185
  %197 = load i32, i32* %22, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %22, align 4
  br label %160

; <label>:199:                                    ; preds = %160
  br label %200

; <label>:200:                                    ; preds = %199
  %201 = load i32, i32* %23, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %23, align 4
  br label %155

; <label>:203:                                    ; preds = %155
  %204 = load i32, i32* %18, align 4
  store i32 %204, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %205

; <label>:205:                                    ; preds = %260, %203
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %18, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %263

; <label>:209:                                    ; preds = %205
  %210 = load i32*, i32** %20, align 8
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 0, i32* %213, align 4
  store i32 0, i32* %23, align 4
  br label %214

; <label>:214:                                    ; preds = %249, %209
  %215 = load i32, i32* %23, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %252

; <label>:218:                                    ; preds = %214
  %219 = load i32**, i32*** %19, align 8
  %220 = load i32, i32* %23, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %21, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %20, align 8
  %229 = load i32, i32* %21, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp sgt i32 %227, %232
  br i1 %233, label %234, label %248

; <label>:234:                                    ; preds = %218
  %235 = load i32**, i32*** %19, align 8
  %236 = load i32, i32* %23, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %20, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %243, i32* %247, align 4
  br label %248

; <label>:248:                                    ; preds = %234, %218
  br label %249

; <label>:249:                                    ; preds = %248
  %250 = load i32, i32* %23, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %23, align 4
  br label %214

; <label>:252:                                    ; preds = %214
  %253 = load i32*, i32** %20, align 8
  %254 = load i32, i32* %21, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %16, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %16, align 4
  br label %260

; <label>:260:                                    ; preds = %252
  %261 = load i32, i32* %21, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %21, align 4
  br label %205

; <label>:263:                                    ; preds = %205
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = mul i64 8, %265
  %267 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 581, i64 %266)
  %268 = bitcast i8* %267 to i8**
  store i8** %268, i8*** %15, align 8
  store i32 0, i32* %23, align 4
  br label %269

; <label>:269:                                    ; preds = %283, %263
  %270 = load i32, i32* %23, align 4
  %271 = load i32, i32* %10, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %286

; <label>:273:                                    ; preds = %269
  %274 = load i32, i32* %16, align 4
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = mul i64 1, %276
  %278 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 583, i64 %277)
  %279 = load i8**, i8*** %15, align 8
  %280 = load i32, i32* %23, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %279, i64 %281
  store i8* %278, i8** %282, align 8
  br label %283

; <label>:283:                                    ; preds = %273
  %284 = load i32, i32* %23, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %23, align 4
  br label %269

; <label>:286:                                    ; preds = %269
  store i32 0, i32* %23, align 4
  br label %287

; <label>:287:                                    ; preds = %391, %286
  %288 = load i32, i32* %23, align 4
  %289 = load i32, i32* %10, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %394

; <label>:291:                                    ; preds = %287
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %24, align 4
  br label %292

; <label>:292:                                    ; preds = %379, %291
  %293 = load i32, i32* %24, align 4
  %294 = load i32, i32* %18, align 4
  %295 = icmp sle i32 %293, %294
  br i1 %295, label %296, label %382

; <label>:296:                                    ; preds = %292
  store i32 0, i32* %25, align 4
  br label %297

; <label>:297:                                    ; preds = %329, %296
  %298 = load i32, i32* %25, align 4
  %299 = load i32**, i32*** %19, align 8
  %300 = load i32, i32* %23, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32*, i32** %299, i64 %301
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %24, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = icmp slt i32 %298, %307
  br i1 %308, label %309, label %332

; <label>:309:                                    ; preds = %297
  %310 = load i8**, i8*** %8, align 8
  %311 = load i32, i32* %23, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8*, i8** %310, i64 %312
  %314 = load i8*, i8** %313, align 8
  %315 = load i32, i32* %22, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %22, align 4
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i8, i8* %314, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = load i8**, i8*** %15, align 8
  %321 = load i32, i32* %23, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8*, i8** %320, i64 %322
  %324 = load i8*, i8** %323, align 8
  %325 = load i32, i32* %21, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %21, align 4
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i8, i8* %324, i64 %327
  store i8 %319, i8* %328, align 1
  br label %329

; <label>:329:                                    ; preds = %309
  %330 = load i32, i32* %25, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %25, align 4
  br label %297

; <label>:332:                                    ; preds = %297
  br label %333

; <label>:333:                                    ; preds = %351, %332
  %334 = load i32, i32* %25, align 4
  %335 = load i32*, i32** %20, align 8
  %336 = load i32, i32* %24, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = icmp slt i32 %334, %339
  br i1 %340, label %341, label %354

; <label>:341:                                    ; preds = %333
  %342 = load i8**, i8*** %15, align 8
  %343 = load i32, i32* %23, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %342, i64 %344
  %346 = load i8*, i8** %345, align 8
  %347 = load i32, i32* %21, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %21, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i8, i8* %346, i64 %349
  store i8 32, i8* %350, align 1
  br label %351

; <label>:351:                                    ; preds = %341
  %352 = load i32, i32* %25, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %25, align 4
  br label %333

; <label>:354:                                    ; preds = %333
  %355 = load i32, i32* %24, align 4
  %356 = load i32, i32* %18, align 4
  %357 = icmp ne i32 %355, %356
  br i1 %357, label %358, label %378

; <label>:358:                                    ; preds = %354
  %359 = load i8**, i8*** %8, align 8
  %360 = load i32, i32* %23, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8*, i8** %359, i64 %361
  %363 = load i8*, i8** %362, align 8
  %364 = load i32, i32* %22, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %22, align 4
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i8, i8* %363, i64 %366
  %368 = load i8, i8* %367, align 1
  %369 = load i8**, i8*** %15, align 8
  %370 = load i32, i32* %23, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8*, i8** %369, i64 %371
  %373 = load i8*, i8** %372, align 8
  %374 = load i32, i32* %21, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %21, align 4
  %376 = sext i32 %374 to i64
  %377 = getelementptr inbounds i8, i8* %373, i64 %376
  store i8 %368, i8* %377, align 1
  br label %378

; <label>:378:                                    ; preds = %358, %354
  br label %379

; <label>:379:                                    ; preds = %378
  %380 = load i32, i32* %24, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %24, align 4
  br label %292

; <label>:382:                                    ; preds = %292
  %383 = load i8**, i8*** %15, align 8
  %384 = load i32, i32* %23, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8*, i8** %383, i64 %385
  %387 = load i8*, i8** %386, align 8
  %388 = load i32, i32* %16, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %387, i64 %389
  store i8 0, i8* %390, align 1
  br label %391

; <label>:391:                                    ; preds = %382
  %392 = load i32, i32* %23, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %23, align 4
  br label %287

; <label>:394:                                    ; preds = %287
  %395 = load %struct.aliinfo_s*, %struct.aliinfo_s** %14, align 8
  %396 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %395, i32 0, i32 0
  store i32 0, i32* %396, align 8
  %397 = load i32, i32* %16, align 4
  %398 = load %struct.aliinfo_s*, %struct.aliinfo_s** %14, align 8
  %399 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %398, i32 0, i32 1
  store i32 %397, i32* %399, align 4
  %400 = load i32, i32* %10, align 4
  %401 = load %struct.aliinfo_s*, %struct.aliinfo_s** %14, align 8
  %402 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %401, i32 0, i32 2
  store i32 %400, i32* %402, align 8
  %403 = load i32, i32* %10, align 4
  %404 = sext i32 %403 to i64
  %405 = mul i64 360, %404
  %406 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 603, i64 %405)
  %407 = bitcast i8* %406 to %struct.seqinfo_s*
  %408 = load %struct.aliinfo_s*, %struct.aliinfo_s** %14, align 8
  %409 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %408, i32 0, i32 6
  store %struct.seqinfo_s* %407, %struct.seqinfo_s** %409, align 8
  store i32 0, i32* %23, align 4
  br label %410

; <label>:410:                                    ; preds = %425, %394
  %411 = load i32, i32* %23, align 4
  %412 = load i32, i32* %10, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %428

; <label>:414:                                    ; preds = %410
  %415 = load %struct.aliinfo_s*, %struct.aliinfo_s** %14, align 8
  %416 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %415, i32 0, i32 6
  %417 = load %struct.seqinfo_s*, %struct.seqinfo_s** %416, align 8
  %418 = load i32, i32* %23, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %417, i64 %419
  %421 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %422 = load i32, i32* %23, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %421, i64 %423
  call void @SeqinfoCopy(%struct.seqinfo_s* %420, %struct.seqinfo_s* %424)
  br label %425

; <label>:425:                                    ; preds = %414
  %426 = load i32, i32* %23, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %23, align 4
  br label %410

; <label>:428:                                    ; preds = %410
  %429 = load i32*, i32** %17, align 8
  %430 = bitcast i32* %429 to i8*
  call void @free(i8* %430) #5
  %431 = load i32*, i32** %20, align 8
  %432 = bitcast i32* %431 to i8*
  call void @free(i8* %432) #5
  %433 = load i32**, i32*** %19, align 8
  %434 = bitcast i32** %433 to i8**
  %435 = load i32, i32* %10, align 4
  call void @Free2DArray(i8** %434, i32 %435)
  %436 = load i8**, i8*** %15, align 8
  %437 = load i8***, i8**** %13, align 8
  store i8** %436, i8*** %437, align 8
  ret i32 1
}

declare double @sre_random() #1

declare void @SeqinfoCopy(%struct.seqinfo_s*, %struct.seqinfo_s*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @AlignmentHomogenousGapsym(i8**, i32, i32, i8 signext) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  br label %11

; <label>:11:                                     ; preds = %95, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %98

; <label>:15:                                     ; preds = %11
  store i32 0, i32* %10, align 4
  br label %16

; <label>:16:                                     ; preds = %91, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %94

; <label>:20:                                     ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %80, label %32

; <label>:32:                                     ; preds = %20
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %80, label %44

; <label>:44:                                     ; preds = %32
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 95
  br i1 %55, label %80, label %56

; <label>:56:                                     ; preds = %44
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 45
  br i1 %67, label %80, label %68

; <label>:68:                                     ; preds = %56
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 126
  br i1 %79, label %80, label %90

; <label>:80:                                     ; preds = %68, %56, %44, %32, %20
  %81 = load i8, i8* %8, align 1
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %81, i8* %89, align 1
  br label %90

; <label>:90:                                     ; preds = %80, %68
  br label %91

; <label>:91:                                     ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %16

; <label>:94:                                     ; preds = %16
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %11

; <label>:98:                                     ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
