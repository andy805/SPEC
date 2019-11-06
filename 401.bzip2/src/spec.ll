; ModuleID = 'spec.c'
source_filename = "spec.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.spec_fd_t = type { i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@dbglvl = global i32 4, align 4
@seedi = common global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"spec_init\0A\00", align 1
@spec_fd = common global [3 x %struct.spec_fd_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [36 x i8] c"spec_init: Error mallocing memory!\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Creating Chunks\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Creating Chunk %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Filling input file\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Duplicating %d bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"spec_read: %d, %p, %d = \00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"spec_read: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"spec_fread: %p, (%d x %d) fd %d =\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"spec_fread: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"spec_getc: %d = \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"spec_ungetc: %d = \00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"spec_ungetc: pos %d <= 0\0A\00", align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"spec_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"spec_write: %d, %p, %d = \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"spec_write: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"spec_fwrite: %p, %d, %d, %d = \00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"spec_fwrite: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"spec_putc: %d, %d = \00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"input.combined\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Loading Input Data\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Input data %d bytes in length\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"main: Error mallocing memory!\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Compressing Input Data, level %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Compressed data %d bytes in length\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Uncompressing Data\0A\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Uncompressed data %d bytes in length\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"Tested %dMB buffer: Miscompared!!\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"Uncompressed data compared correctly\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Tested %dMB buffer: OK!\0A\00", align 1
@smallMode = external global i8, align 1
@verbosity = external global i32, align 4
@blockSize100k = external global i32, align 4
@workFactor = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define double @ran() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @seedi, align 8
  %5 = sdiv i64 %4, 127773
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* @seedi, align 8
  %7 = srem i64 %6, 127773
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = mul nsw i64 16807, %8
  %10 = load i64, i64* %2, align 8
  %11 = mul nsw i64 2836, %10
  %12 = sub nsw i64 %9, %11
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %0
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* @seedi, align 8
  br label %20

; <label>:17:                                     ; preds = %0
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %18, 2147483647
  store i64 %19, i64* @seedi, align 8
  br label %20

; <label>:20:                                     ; preds = %17, %15
  %21 = load i64, i64* @seedi, align 8
  %22 = sitofp i64 %21 to float
  %23 = fdiv float %22, 0x41E0000000000000
  %24 = fpext float %23 to double
  ret double %24
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @dbglvl, align 4
  %5 = icmp slt i32 3, %4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  br label %8

; <label>:8:                                      ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %9

; <label>:9:                                      ; preds = %61, %8
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %64

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %19
  %21 = bitcast %struct.spec_fd_t* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 24, i32 8, i1 false)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1048576
  %29 = sext i32 %28 to i64
  %30 = call noalias i8* @malloc(i64 %29) #7
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %33, i32 0, i32 3
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %12
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 0) #8
  unreachable

; <label>:43:                                     ; preds = %12
  store i32 0, i32* %2, align 4
  br label %44

; <label>:44:                                     ; preds = %57, %43
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %60

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 0, i8* %56, align 1
  br label %57

; <label>:57:                                     ; preds = %48
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1024
  store i32 %59, i32* %2, align 4
  br label %44

; <label>:60:                                     ; preds = %44
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %9

; <label>:64:                                     ; preds = %9
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_random_load(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x [131072 x i8]], align 16
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @dbglvl, align 4
  %7 = icmp slt i32 4, %6
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %8, %1
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %39, %10
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %42

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* @dbglvl, align 4
  %16 = icmp slt i32 5, %15
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %18)
  br label %20

; <label>:20:                                     ; preds = %17, %14
  store i32 0, i32* %4, align 4
  br label %21

; <label>:21:                                     ; preds = %35, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 131072
  br i1 %23, label %24, label %38

; <label>:24:                                     ; preds = %21
  %25 = call double @ran()
  %26 = fmul double %25, 2.560000e+02
  %27 = fptosi double %26 to i32
  %28 = trunc i32 %27 to i8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32 x [131072 x i8]], [32 x [131072 x i8]]* %5, i64 0, i64 %30
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [131072 x i8], [131072 x i8]* %31, i64 0, i64 %33
  store i8 %28, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %21

; <label>:38:                                     ; preds = %21
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %11

; <label>:42:                                     ; preds = %11
  %43 = load i32, i32* @dbglvl, align 4
  %44 = icmp slt i32 4, %43
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %42
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %47

; <label>:47:                                     ; preds = %45, %42
  store i32 0, i32* %3, align 4
  br label %48

; <label>:48:                                     ; preds = %71, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %74

; <label>:56:                                     ; preds = %48
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call double @ran()
  %66 = fmul double %65, 3.200000e+01
  %67 = fptosi double %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [32 x [131072 x i8]], [32 x [131072 x i8]]* %5, i64 0, i64 %68
  %70 = getelementptr inbounds [131072 x i8], [131072 x i8]* %69, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %70, i64 131072, i32 1, i1 false)
  br label %71

; <label>:71:                                     ; preds = %56
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 131072
  store i32 %73, i32* %3, align 4
  br label %48

; <label>:74:                                     ; preds = %48
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %77, i32 0, i32 1
  store i32 1048576, i32* %78, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_load(i32, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @__errno_location() #9
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @strerror(i32 %19) #7
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %17, i8* %20)
  call void @exit(i32 0) #8
  unreachable

; <label>:22:                                     ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  store i32 0, i32* %9, align 4
  br label %31

; <label>:31:                                     ; preds = %68, %22
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %72

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = call i64 @read(i32 %36, i8* %44, i64 131072)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %35
  br label %72

; <label>:50:                                     ; preds = %35
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

; <label>:53:                                     ; preds = %50
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32* @__errno_location() #9
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @strerror(i32 %57) #7
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* %55, i8* %58)
  call void @exit(i32 0) #8
  unreachable

; <label>:60:                                     ; preds = %50
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %61
  store i32 %67, i32* %65, align 4
  br label %68

; <label>:68:                                     ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %31

; <label>:72:                                     ; preds = %49, %31
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

; <label>:75:                                     ; preds = %110, %72
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %137

; <label>:83:                                     ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %84, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %91, %96
  br i1 %97, label %98, label %104

; <label>:98:                                     ; preds = %83
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %10, align 4
  br label %104

; <label>:104:                                    ; preds = %98, %83
  %105 = load i32, i32* @dbglvl, align 4
  %106 = icmp slt i32 3, %105
  br i1 %106, label %107, label %110

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %108)
  br label %110

; <label>:110:                                    ; preds = %107, %104
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %115, i64 %121
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %127, i64 %129, i32 1, i1 false)
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %132
  %134 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %130
  store i32 %136, i32* %134, align 4
  br label %75

; <label>:137:                                    ; preds = %75
  ret i32 0
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i64 @read(i32, i8*, i64) #1

declare i32 @close(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_read(i32, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @dbglvl, align 4
  %10 = icmp slt i32 4, %9
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 %12, i8* %13, i32 %14)
  br label %16

; <label>:16:                                     ; preds = %11, %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %21)
  call void @exit(i32 0) #8
  unreachable

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %28, %33
  br i1 %34, label %35, label %41

; <label>:35:                                     ; preds = %23
  %36 = load i32, i32* @dbglvl, align 4
  %37 = icmp slt i32 4, %36
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %35
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  br label %40

; <label>:40:                                     ; preds = %38, %35
  store i32 -1, i32* %4, align 4
  br label %99

; <label>:41:                                     ; preds = %23
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %48, %53
  br i1 %54, label %55, label %67

; <label>:55:                                     ; preds = %41
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %60, %65
  store i32 %66, i32* %8, align 4
  br label %69

; <label>:67:                                     ; preds = %41
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %8, align 4
  br label %69

; <label>:69:                                     ; preds = %67, %55
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %75, i64 %81
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %82, i64 %84, i32 1, i1 false)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, %85
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* @dbglvl, align 4
  %93 = icmp slt i32 4, %92
  br i1 %93, label %94, label %97

; <label>:94:                                     ; preds = %69
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %95)
  br label %97

; <label>:97:                                     ; preds = %94, %69
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %99

; <label>:99:                                     ; preds = %97, %40
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_fread(i8*, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @dbglvl, align 4
  %12 = icmp slt i32 4, %11
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* %14, i32 %15, i32 %16, i32 %17)
  br label %19

; <label>:19:                                     ; preds = %13, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %19
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i32 %24)
  call void @exit(i32 0) #8
  unreachable

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %31, %36
  br i1 %37, label %38, label %44

; <label>:38:                                     ; preds = %26
  %39 = load i32, i32* @dbglvl, align 4
  %40 = icmp slt i32 4, %39
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %38
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  br label %43

; <label>:43:                                     ; preds = %41, %38
  store i32 -1, i32* %5, align 4
  br label %110

; <label>:44:                                     ; preds = %26
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %50, %51
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %53, %58
  br i1 %59, label %60, label %74

; <label>:60:                                     ; preds = %44
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %65, %70
  %72 = load i32, i32* %7, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %10, align 4
  br label %76

; <label>:74:                                     ; preds = %44
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %10, align 4
  br label %76

; <label>:76:                                     ; preds = %74, %60
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %82, i64 %88
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %89, i64 %91, i32 1, i1 false)
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %94
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @dbglvl, align 4
  %102 = icmp slt i32 4, %101
  br i1 %102, label %103, label %108

; <label>:103:                                    ; preds = %76
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %7, align 4
  %106 = mul nsw i32 %104, %105
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %106)
  br label %108

; <label>:108:                                    ; preds = %103, %76
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %5, align 4
  br label %110

; <label>:110:                                    ; preds = %108, %43
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_getc(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @dbglvl, align 4
  %6 = icmp slt i32 4, %5
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 %8)
  br label %10

; <label>:10:                                     ; preds = %7, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %15)
  call void @exit(i32 0) #8
  unreachable

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %22, %27
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %17
  %30 = load i32, i32* @dbglvl, align 4
  %31 = icmp slt i32 4, %30
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %29
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  br label %34

; <label>:34:                                     ; preds = %32, %29
  store i32 -1, i32* %2, align 4
  br label %58

; <label>:35:                                     ; preds = %17
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %40, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @dbglvl, align 4
  %52 = icmp slt i32 4, %51
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %35
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %54)
  br label %56

; <label>:56:                                     ; preds = %53, %35
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

; <label>:58:                                     ; preds = %56, %34
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_ungetc(i8 zeroext, i32) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @dbglvl, align 4
  %7 = icmp slt i32 4, %6
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 %9)
  br label %11

; <label>:11:                                     ; preds = %8, %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %16)
  call void @exit(i32 0) #8
  unreachable

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %18
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i32 %31)
  call void @exit(i32 0) #8
  unreachable

; <label>:33:                                     ; preds = %18
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %38, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %3, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %33
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.17, i32 0, i32 0))
  call void @exit(i32 0) #8
  unreachable

; <label>:55:                                     ; preds = %33
  %56 = load i32, i32* @dbglvl, align 4
  %57 = icmp slt i32 4, %56
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %59)
  br label %61

; <label>:61:                                     ; preds = %58, %55
  %62 = load i8, i8* %3, align 1
  %63 = zext i8 %62 to i32
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_rewind(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %5, i32 0, i32 2
  store i32 0, i32* %6, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_reset(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %5, i32 0, i32 3
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %13, i32 1, i1 false)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %20, i32 0, i32 2
  store i32 0, i32* %21, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_write(i32, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @dbglvl, align 4
  %8 = icmp slt i32 4, %7
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i32 %10, i8* %11, i32 %12)
  br label %14

; <label>:14:                                     ; preds = %9, %3
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), i32 %19)
  call void @exit(i32 0) #8
  unreachable

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %26, i64 %32
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %36, i32 1, i1 false)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %44
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* @dbglvl, align 4
  %52 = icmp slt i32 4, %51
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %21
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %54)
  br label %56

; <label>:56:                                     ; preds = %53, %21
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_fwrite(i8*, i32, i32, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @dbglvl, align 4
  %10 = icmp slt i32 4, %9
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* %12, i32 %13, i32 %14, i32 %15)
  br label %17

; <label>:17:                                     ; preds = %11, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 3
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0), i32 %22)
  call void @exit(i32 0) #8
  unreachable

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %29, i64 %35
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %41, i32 1, i1 false)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, %53
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @dbglvl, align 4
  %61 = icmp slt i32 4, %60
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %24
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %63)
  br label %65

; <label>:65:                                     ; preds = %62, %24
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spec_putc(i8 zeroext, i32) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @dbglvl, align 4
  %6 = icmp slt i32 4, %5
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %2
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 %9, i32 %10)
  br label %12

; <label>:12:                                     ; preds = %7, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 3
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), i32 %17)
  call void @exit(i32 0) #8
  unreachable

; <label>:19:                                     ; preds = %12
  %20 = load i8, i8* %3, align 1
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %25, i64 %32
  store i8 %20, i8* %33, align 1
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i8, i8* %3, align 1
  %41 = zext i8 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 64, i32* %8, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8** %10, align 8
  store i64 10, i64* @seedi, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  br label %18

; <label>:18:                                     ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %18
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @atoi(i8* %24) #10
  store i32 %25, i32* %8, align 4
  br label %26

; <label>:26:                                     ; preds = %21, %18
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 3
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32) #10
  store i32 %33, i32* %9, align 4
  br label %36

; <label>:34:                                     ; preds = %26
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %9, align 4
  br label %36

; <label>:36:                                     ; preds = %34, %29
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 1048576
  store i32 %38, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 0), align 16
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %39, 1048576
  store i32 %40, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 1, i32 0), align 8
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %41, 1048576
  store i32 %42, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 2, i32 0), align 16
  %43 = call i32 @spec_init()
  %44 = call i32 @debug_time()
  %45 = load i32, i32* @dbglvl, align 4
  %46 = icmp slt i32 2, %45
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %36
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  br label %49

; <label>:49:                                     ; preds = %47, %36
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %51, 1048576
  %53 = call i32 @spec_load(i32 0, i8* %50, i32 %52)
  %54 = load i32, i32* @dbglvl, align 4
  %55 = icmp slt i32 3, %54
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 1), align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i32 %57)
  br label %59

; <label>:59:                                     ; preds = %56, %49
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 %60, 1048576
  %62 = sdiv i32 %61, 1024
  %63 = sext i32 %62 to i64
  %64 = call noalias i8* @malloc(i64 %63) #7
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %59
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0))
  call void @exit(i32 0) #8
  unreachable

; <label>:69:                                     ; preds = %59
  store i32 0, i32* %6, align 4
  br label %70

; <label>:70:                                     ; preds = %87, %69
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 1027
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %73, 1048576
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %90

; <label>:76:                                     ; preds = %70
  %77 = load i8*, i8** getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 3), align 16
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %78, 1027
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 %82, i8* %86, align 1
  br label %87

; <label>:87:                                     ; preds = %76
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %70

; <label>:90:                                     ; preds = %70
  call void @spec_initbufs()
  store i32 5, i32* %7, align 4
  br label %91

; <label>:91:                                     ; preds = %163, %90
  %92 = load i32, i32* %7, align 4
  %93 = icmp sle i32 %92, 9
  br i1 %93, label %94, label %166

; <label>:94:                                     ; preds = %91
  %95 = call i32 @debug_time()
  %96 = load i32, i32* @dbglvl, align 4
  %97 = icmp slt i32 2, %96
  br i1 %97, label %98, label %101

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0), i32 %99)
  br label %101

; <label>:101:                                    ; preds = %98, %94
  %102 = load i32, i32* %7, align 4
  call void @spec_compress(i32 0, i32 1, i32 %102)
  %103 = call i32 @debug_time()
  %104 = load i32, i32* @dbglvl, align 4
  %105 = icmp slt i32 3, %104
  br i1 %105, label %106, label %109

; <label>:106:                                    ; preds = %101
  %107 = load i32, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 1, i32 1), align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i32 %107)
  br label %109

; <label>:109:                                    ; preds = %106, %101
  %110 = call i32 @spec_reset(i32 0)
  %111 = call i32 @spec_rewind(i32 1)
  %112 = call i32 @debug_time()
  %113 = load i32, i32* @dbglvl, align 4
  %114 = icmp slt i32 2, %113
  br i1 %114, label %115, label %117

; <label>:115:                                    ; preds = %109
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0))
  br label %117

; <label>:117:                                    ; preds = %115, %109
  %118 = load i32, i32* %7, align 4
  call void @spec_uncompress(i32 1, i32 0, i32 %118)
  %119 = call i32 @debug_time()
  %120 = load i32, i32* @dbglvl, align 4
  %121 = icmp slt i32 3, %120
  br i1 %121, label %122, label %125

; <label>:122:                                    ; preds = %117
  %123 = load i32, i32* getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 1), align 4
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0), i32 %123)
  br label %125

; <label>:125:                                    ; preds = %122, %117
  store i32 0, i32* %6, align 4
  br label %126

; <label>:126:                                    ; preds = %151, %125
  %127 = load i32, i32* %6, align 4
  %128 = mul nsw i32 %127, 1027
  %129 = load i32, i32* %8, align 4
  %130 = mul nsw i32 %129, 1048576
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %154

; <label>:132:                                    ; preds = %126
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8*, i8** getelementptr inbounds ([3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 3), align 16
  %140 = load i32, i32* %6, align 4
  %141 = mul nsw i32 %140, 1027
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %138, %145
  br i1 %146, label %147, label %150

; <label>:147:                                    ; preds = %132
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0), i32 %148)
  call void @exit(i32 0) #8
  unreachable

; <label>:150:                                    ; preds = %132
  br label %151

; <label>:151:                                    ; preds = %150
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %126

; <label>:154:                                    ; preds = %126
  %155 = call i32 @debug_time()
  %156 = load i32, i32* @dbglvl, align 4
  %157 = icmp slt i32 3, %156
  br i1 %157, label %158, label %160

; <label>:158:                                    ; preds = %154
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0))
  br label %160

; <label>:160:                                    ; preds = %158, %154
  %161 = call i32 @spec_reset(i32 1)
  %162 = call i32 @spec_rewind(i32 0)
  br label %163

; <label>:163:                                    ; preds = %160
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %7, align 4
  br label %91

; <label>:166:                                    ; preds = %91
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i32 %167)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define void @spec_compress(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @blockSize100k, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  call void @compressStream(i32 %8, i32 %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @spec_uncompress(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* @blockSize100k, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call zeroext i8 @uncompressStream(i32 %7, i32 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @spec_initbufs() #0 {
  store i8 0, i8* @smallMode, align 1
  store i32 0, i32* @verbosity, align 4
  store i32 9, i32* @blockSize100k, align 4
  store i32 30, i32* @workFactor, align 4
  ret void
}

declare void @compressStream(i32, i32) #1

declare zeroext i8 @uncompressStream(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @debug_time() #0 {
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
