; ModuleID = 'bzip2.c'
source_filename = "bzip2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.UInt64 = type { [8 x i8] }

@blockSize100k = common global i32 0, align 4
@verbosity = common global i32 0, align 4
@workFactor = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@outputHandleJustInCase = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"compress:end\00", align 1
@smallMode = common global i8 0, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@forceOverwrite = common global i8 0, align 1
@noisy = common global i8 0, align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@progName = common global i8* null, align 8
@inName = common global [1034 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"decompress:end\00", align 1
@keepInputFiles = common global i8 0, align 1
@deleteOutputOnInterrupt = common global i8 0, align 1
@testFailsExist = common global i8 0, align 1
@unzFailsExist = common global i8 0, align 1
@numFileNames = common global i32 0, align 4
@numFilesProcessed = common global i32 0, align 4
@exitValue = common global i32 0, align 4
@opMode = common global i32 0, align 4
@srcMode = common global i32 0, align 4
@longestFileName = common global i32 0, align 4
@outName = common global [1034 x i8] zeroinitializer, align 16
@tmpName = common global [1034 x i8] zeroinitializer, align 16
@progNameReally = common global [1034 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [148 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is probably a BUG, but it may be in your COMPILER.  Please do not bother\0A\09the original author.\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str.13 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str.17 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @compressStream(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [5000 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca %struct.UInt64, align 1
  %18 = alloca %struct.UInt64, align 1
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @blockSize100k, align 4
  %23 = load i32, i32* @verbosity, align 4
  %24 = load i32, i32* @workFactor, align 4
  %25 = call i8* @BZ2_bzWriteOpen(i32* %12, i32 %21, i32 %22, i32 %23, i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %2
  br label %116

; <label>:29:                                     ; preds = %2
  %30 = load i32, i32* @verbosity, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %35

; <label>:35:                                     ; preds = %32, %29
  br label %36

; <label>:36:                                     ; preds = %35, %55
  %37 = load i32, i32* %3, align 4
  %38 = call zeroext i8 @myfeof(i32 %37)
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %36
  br label %56

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds [5000 x i8], [5000 x i8]* %6, i32 0, i32 0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @spec_fread(i8* %42, i32 1, i32 5000, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds [5000 x i8], [5000 x i8]* %6, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  call void @BZ2_bzWrite(i32* %12, i8* %48, i8* %49, i32 %50)
  br label %51

; <label>:51:                                     ; preds = %47, %41
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %51
  br label %116

; <label>:55:                                     ; preds = %51
  br label %36

; <label>:56:                                     ; preds = %40
  %57 = load i8*, i8** %5, align 8
  call void @BZ2_bzWriteClose64(i32* %12, i8* %57, i32 0, i32* %8, i32* %9, i32* %10, i32* %11)
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %56
  br label %116

; <label>:61:                                     ; preds = %56
  store i32 0, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %61
  br label %122

; <label>:65:                                     ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %73

; <label>:68:                                     ; preds = %65
  store i32 0, i32* %14, align 4
  store i32 0, i32* @outputHandleJustInCase, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  br label %122

; <label>:72:                                     ; preds = %68
  br label %73

; <label>:73:                                     ; preds = %72, %65
  store i32 0, i32* @outputHandleJustInCase, align 4
  store i32 0, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %73
  br label %122

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* @verbosity, align 4
  %79 = icmp sge i32 %78, 1
  br i1 %79, label %80, label %115

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %83
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %114

; <label>:89:                                     ; preds = %83, %80
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  call void @uInt64_from_UInt32s(%struct.UInt64* %17, i32 %90, i32 %91)
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  call void @uInt64_from_UInt32s(%struct.UInt64* %18, i32 %92, i32 %93)
  %94 = call double @uInt64_to_double(%struct.UInt64* %17)
  store double %94, double* %19, align 8
  %95 = call double @uInt64_to_double(%struct.UInt64* %18)
  store double %95, double* %20, align 8
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  call void @uInt64_toAscii(i8* %96, %struct.UInt64* %17)
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  call void @uInt64_toAscii(i8* %97, %struct.UInt64* %18)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %99 = load double, double* %19, align 8
  %100 = load double, double* %20, align 8
  %101 = fdiv double %99, %100
  %102 = load double, double* %20, align 8
  %103 = fmul double 8.000000e+00, %102
  %104 = load double, double* %19, align 8
  %105 = fdiv double %103, %104
  %106 = load double, double* %20, align 8
  %107 = load double, double* %19, align 8
  %108 = fdiv double %106, %107
  %109 = fsub double 1.000000e+00, %108
  %110 = fmul double 1.000000e+02, %109
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i32 0, i32 0), double %101, double %105, double %110, i8* %111, i8* %112)
  br label %114

; <label>:114:                                    ; preds = %89, %86
  br label %115

; <label>:115:                                    ; preds = %114, %77
  br label %125

; <label>:116:                                    ; preds = %60, %54, %28
  %117 = load i8*, i8** %5, align 8
  call void @BZ2_bzWriteClose64(i32* %13, i8* %117, i32 1, i32* %8, i32* %9, i32* %10, i32* %11)
  %118 = load i32, i32* %12, align 4
  switch i32 %118, label %123 [
    i32 -9, label %119
    i32 -3, label %120
    i32 -6, label %121
  ]

; <label>:119:                                    ; preds = %116
  call void @configError()
  br label %124

; <label>:120:                                    ; preds = %116
  call void @outOfMemory()
  br label %124

; <label>:121:                                    ; preds = %116
  br label %122

; <label>:122:                                    ; preds = %121, %76, %71, %64
  call void @ioError()
  br label %124

; <label>:123:                                    ; preds = %116
  call void @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %124

; <label>:124:                                    ; preds = %123, %122, %120, %119
  call void @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %125

; <label>:125:                                    ; preds = %124, %115
  ret void
}

declare i8* @BZ2_bzWriteOpen(i32*, i32, i32, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myfeof(i32) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @spec_getc(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i8 1, i8* %2, align 1
  br label %15

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @spec_ungetc(i8 zeroext %12, i32 %13)
  store i8 0, i8* %2, align 1
  br label %15

; <label>:15:                                     ; preds = %10, %9
  %16 = load i8, i8* %2, align 1
  ret i8 %16
}

declare i32 @spec_fread(i8*, i32, i32, i32) #1

declare void @BZ2_bzWrite(i32*, i8*, i8*, i32) #1

declare void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uInt64_from_UInt32s(%struct.UInt64*, i32, i32) #0 {
  %4 = alloca %struct.UInt64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.UInt64* %0, %struct.UInt64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = lshr i32 %7, 24
  %9 = and i32 %8, 255
  %10 = trunc i32 %9 to i8
  %11 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %12 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %11, i32 0, i32 0
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 7
  store i8 %10, i8* %13, align 1
  %14 = load i32, i32* %6, align 4
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %19 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %18, i32 0, i32 0
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 6
  store i8 %17, i8* %20, align 1
  %21 = load i32, i32* %6, align 4
  %22 = lshr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  %25 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %26 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %25, i32 0, i32 0
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0, i64 5
  store i8 %24, i8* %27, align 1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %32 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %31, i32 0, i32 0
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %32, i64 0, i64 4
  store i8 %30, i8* %33, align 1
  %34 = load i32, i32* %5, align 4
  %35 = lshr i32 %34, 24
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %39 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %38, i32 0, i32 0
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i64 0, i64 3
  store i8 %37, i8* %40, align 1
  %41 = load i32, i32* %5, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %46 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %45, i32 0, i32 0
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i64 0, i64 2
  store i8 %44, i8* %47, align 1
  %48 = load i32, i32* %5, align 4
  %49 = lshr i32 %48, 8
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %53 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %52, i32 0, i32 0
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %53, i64 0, i64 1
  store i8 %51, i8* %54, align 1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %59 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %58, i32 0, i32 0
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %59, i64 0, i64 0
  store i8 %57, i8* %60, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @uInt64_to_double(%struct.UInt64*) #0 {
  %2 = alloca %struct.UInt64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.UInt64* %0, %struct.UInt64** %2, align 8
  store double 1.000000e+00, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %23, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %26

; <label>:9:                                      ; preds = %6
  %10 = load double, double* %4, align 8
  %11 = load %struct.UInt64*, %struct.UInt64** %2, align 8
  %12 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %11, i32 0, i32 0
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = uitofp i8 %16 to double
  %18 = fmul double %10, %17
  %19 = load double, double* %5, align 8
  %20 = fadd double %19, %18
  store double %20, double* %5, align 8
  %21 = load double, double* %4, align 8
  %22 = fmul double %21, 2.560000e+02
  store double %22, double* %4, align 8
  br label %23

; <label>:23:                                     ; preds = %9
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %6

; <label>:26:                                     ; preds = %6
  %27 = load double, double* %5, align 8
  ret double %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uInt64_toAscii(i8*, %struct.UInt64*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.UInt64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.UInt64, align 1
  store i8* %0, i8** %3, align 8
  store %struct.UInt64* %1, %struct.UInt64** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %11 = bitcast %struct.UInt64* %9 to i8*
  %12 = bitcast %struct.UInt64* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 1, i1 false)
  br label %13

; <label>:13:                                     ; preds = %23, %2
  %14 = call i32 @uInt64_qrm10(%struct.UInt64* %9)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 48
  %17 = trunc i32 %16 to i8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %19
  store i8 %17, i8* %20, align 1
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %23

; <label>:23:                                     ; preds = %13
  %24 = call zeroext i8 @uInt64_isZero(%struct.UInt64* %9)
  %25 = icmp ne i8 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %13, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  store i32 0, i32* %5, align 4
  br label %32

; <label>:32:                                     ; preds = %48, %27
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %51

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 %43, i8* %47, align 1
  br label %48

; <label>:48:                                     ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %32

; <label>:51:                                     ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configError() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.17, i32 0, i32 0))
  call void @setExit(i32 3)
  %3 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %3) #4
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outOfMemory() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progName, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i8* %2)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioError() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progName, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0), i8* %2)
  %4 = load i8*, i8** @progName, align 8
  call void @perror(i8* %4)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panic(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progName, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.10, i32 0, i32 0), i8* %4, i8* %5)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i8 @uncompressStream(i32, i32) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5000 x i8], align 16
  %14 = alloca [5000 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %18

; <label>:18:                                     ; preds = %2, %101
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @verbosity, align 4
  %21 = load i8, i8* @smallMode, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds [5000 x i8], [5000 x i8]* %14, i32 0, i32 0
  %24 = load i32, i32* %15, align 4
  %25 = call i8* @BZ2_bzReadOpen(i32* %7, i32 %19, i32 %20, i32 %22, i8* %23, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28, %18
  br label %151

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %35

; <label>:35:                                     ; preds = %59, %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %60

; <label>:38:                                     ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0
  %41 = call i32 @BZ2_bzRead(i32* %7, i8* %39, i8* %40, i32 5000)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, -5
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %38
  br label %126

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %59

; <label>:51:                                     ; preds = %48, %45
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @spec_fwrite(i8* %55, i32 1, i32 %56, i32 %57)
  br label %59

; <label>:59:                                     ; preds = %54, %51, %48
  br label %35

; <label>:60:                                     ; preds = %35
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 4
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %60
  br label %151

; <label>:64:                                     ; preds = %60
  %65 = load i8*, i8** %6, align 8
  call void @BZ2_bzReadGetUnused(i32* %7, i8* %65, i8** %16, i32* %15)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %64
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %69

; <label>:69:                                     ; preds = %68, %64
  %70 = load i8*, i8** %16, align 8
  store i8* %70, i8** %17, align 8
  store i32 0, i32* %12, align 4
  br label %71

; <label>:71:                                     ; preds = %84, %69
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %87

; <label>:75:                                     ; preds = %71
  %76 = load i8*, i8** %17, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [5000 x i8], [5000 x i8]* %14, i64 0, i64 %82
  store i8 %80, i8* %83, align 1
  br label %84

; <label>:84:                                     ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %71

; <label>:87:                                     ; preds = %71
  %88 = load i8*, i8** %6, align 8
  call void @BZ2_bzReadClose(i32* %7, i8* %88)
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

; <label>:91:                                     ; preds = %87
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %92

; <label>:92:                                     ; preds = %91, %87
  %93 = load i32, i32* %15, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = call zeroext i8 @myfeof(i32 %96)
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

; <label>:100:                                    ; preds = %95
  br label %102

; <label>:101:                                    ; preds = %95, %92
  br label %18

; <label>:102:                                    ; preds = %100
  br label %103

; <label>:103:                                    ; preds = %149, %102
  store i32 0, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %103
  br label %156

; <label>:107:                                    ; preds = %103
  store i32 0, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %107
  br label %156

; <label>:111:                                    ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %119

; <label>:114:                                    ; preds = %111
  store i32 0, i32* %9, align 4
  store i32 0, i32* @outputHandleJustInCase, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %114
  br label %156

; <label>:118:                                    ; preds = %114
  br label %119

; <label>:119:                                    ; preds = %118, %111
  store i32 0, i32* @outputHandleJustInCase, align 4
  %120 = load i32, i32* @verbosity, align 4
  %121 = icmp sge i32 %120, 2
  br i1 %121, label %122, label %125

; <label>:122:                                    ; preds = %119
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  br label %125

; <label>:125:                                    ; preds = %122, %119
  store i8 1, i8* %3, align 1
  br label %182

; <label>:126:                                    ; preds = %44
  %127 = load i8, i8* @forceOverwrite, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %150

; <label>:129:                                    ; preds = %126
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @spec_rewind(i32 %130)
  br label %132

; <label>:132:                                    ; preds = %129, %148
  %133 = load i32, i32* %4, align 4
  %134 = call zeroext i8 @myfeof(i32 %133)
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %137

; <label>:136:                                    ; preds = %132
  br label %149

; <label>:137:                                    ; preds = %132
  %138 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @spec_fread(i8* %138, i32 1, i32 5000, i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %148

; <label>:143:                                    ; preds = %137
  %144 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @spec_fwrite(i8* %144, i32 1, i32 %145, i32 %146)
  br label %148

; <label>:148:                                    ; preds = %143, %137
  br label %132

; <label>:149:                                    ; preds = %136
  br label %103

; <label>:150:                                    ; preds = %126
  br label %151

; <label>:151:                                    ; preds = %150, %63, %31
  %152 = load i8*, i8** %6, align 8
  call void @BZ2_bzReadClose(i32* %8, i8* %152)
  %153 = load i32, i32* %7, align 4
  switch i32 %153, label %180 [
    i32 -9, label %154
    i32 -6, label %155
    i32 -4, label %157
    i32 -3, label %158
    i32 -7, label %159
    i32 -5, label %160
  ]

; <label>:154:                                    ; preds = %151
  call void @configError()
  br label %181

; <label>:155:                                    ; preds = %151
  br label %156

; <label>:156:                                    ; preds = %155, %117, %110, %106
  call void @ioError()
  br label %181

; <label>:157:                                    ; preds = %151
  call void @crcError()
  br label %158

; <label>:158:                                    ; preds = %151, %157
  call void @outOfMemory()
  br label %159

; <label>:159:                                    ; preds = %151, %158
  call void @compressedStreamEOF()
  br label %160

; <label>:160:                                    ; preds = %151, %159
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %160
  br label %164

; <label>:164:                                    ; preds = %163, %160
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %164
  br label %168

; <label>:168:                                    ; preds = %167, %164
  %169 = load i32, i32* %11, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %172

; <label>:171:                                    ; preds = %168
  store i8 0, i8* %3, align 1
  br label %182

; <label>:172:                                    ; preds = %168
  %173 = load i8, i8* @noisy, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %175, label %179

; <label>:175:                                    ; preds = %172
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %177 = load i8*, i8** @progName, align 8
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i8* %177, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %179

; <label>:179:                                    ; preds = %175, %172
  store i8 1, i8* %3, align 1
  br label %182

; <label>:180:                                    ; preds = %151
  call void @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %181

; <label>:181:                                    ; preds = %180, %156, %154
  call void @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store i8 1, i8* %3, align 1
  br label %182

; <label>:182:                                    ; preds = %181, %179, %171, %125
  %183 = load i8, i8* %3, align 1
  ret i8 %183
}

declare i8* @BZ2_bzReadOpen(i32*, i32, i32, i32, i8*, i32) #1

declare i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #1

declare i32 @spec_fwrite(i8*, i32, i32, i32) #1

declare void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #1

declare void @BZ2_bzReadClose(i32*, i8*) #1

declare i32 @spec_rewind(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crcError() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progName, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i8* %2)
  call void @showFileNames()
  call void @cadvise()
  call void @cleanUpAndFail(i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressedStreamEOF() #0 {
  %1 = load i8, i8* @noisy, align 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @progName, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.14, i32 0, i32 0), i8* %5)
  %7 = load i8*, i8** @progName, align 8
  call void @perror(i8* %7)
  call void @showFileNames()
  call void @cadvise()
  br label %8

; <label>:8:                                      ; preds = %3, %0
  call void @cleanUpAndFail(i32 2)
  ret void
}

declare i32 @spec_getc(i32) #1

declare i32 @spec_ungetc(i8 zeroext, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uInt64_qrm10(%struct.UInt64*) #0 {
  %2 = alloca %struct.UInt64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.UInt64* %0, %struct.UInt64** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 7, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %30, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %33

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = mul i32 %10, 256
  %12 = load %struct.UInt64*, %struct.UInt64** %2, align 8
  %13 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = add i32 %11, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = udiv i32 %20, 10
  %22 = trunc i32 %21 to i8
  %23 = load %struct.UInt64*, %struct.UInt64** %2, align 8
  %24 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 %26
  store i8 %22, i8* %27, align 1
  %28 = load i32, i32* %4, align 4
  %29 = urem i32 %28, 10
  store i32 %29, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %9
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %6

; <label>:33:                                     ; preds = %6
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @uInt64_isZero(%struct.UInt64*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.UInt64*, align 8
  %4 = alloca i32, align 4
  store %struct.UInt64* %0, %struct.UInt64** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %22

; <label>:8:                                      ; preds = %5
  %9 = load %struct.UInt64*, %struct.UInt64** %3, align 8
  %10 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %9, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %8
  store i8 0, i8* %2, align 1
  br label %23

; <label>:18:                                     ; preds = %8
  br label %19

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

; <label>:22:                                     ; preds = %5
  store i8 1, i8* %2, align 1
  br label %23

; <label>:23:                                     ; preds = %22, %17
  %24 = load i8, i8* %2, align 1
  ret i8 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showFileNames() #0 {
  %1 = load i8, i8* @noisy, align 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  br label %6

; <label>:6:                                      ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanUpAndFail(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  call void @setExit(i32 %4)
  %5 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %5) #4
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setExit(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @exitValue, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadvise() #0 {
  %1 = load i8, i8* @noisy, align 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.13, i32 0, i32 0))
  br label %6

; <label>:6:                                      ; preds = %3, %0
  ret void
}

declare void @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
