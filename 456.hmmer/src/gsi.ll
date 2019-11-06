; ModuleID = 'gsi.c'
source_filename = "gsi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsi_s = type { %struct._IO_FILE*, i16, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gsiindex_s = type { i8**, i32*, i16, %struct.gsikey_s*, i32 }
%struct.gsikey_s = type { [32 x i8], i16, i32 }

@.str = private unnamed_addr constant [6 x i8] c"gsi.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@squid_errno = external global i32, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"GSI\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"File name too long to be indexed.\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"key too long in GSI index\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"too many files in GSI index\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"offset too big in GSI index\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Too many files in GSI index.\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Too many keys in GSI index.\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"GSI: nfiles out of range\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"GSI: nkeys out of range\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"GSI: file index out of range\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"GSI: format index out of range\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"GSI: offset out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.gsi_s* @GSIOpen(i8*) #0 {
  %2 = alloca %struct.gsi_s*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gsi_s*, align 8
  %5 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  %6 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 58, i64 16)
  %7 = bitcast i8* %6 to %struct.gsi_s*
  store %struct.gsi_s* %7, %struct.gsi_s** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %10 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %11 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %10, i32 0, i32 0
  store %struct._IO_FILE* %9, %struct._IO_FILE** %11, align 8
  %12 = icmp eq %struct._IO_FILE* %9, null
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %1
  %14 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %15 = bitcast %struct.gsi_s* %14 to i8*
  call void @free(i8* %15) #4
  store i32 4, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %2, align 8
  br label %71

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0
  %18 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %19 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %18, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %21 = call i64 @fread(i8* %17, i64 1, i64 32, %struct._IO_FILE* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %16
  %24 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %25 = bitcast %struct.gsi_s* %24 to i8*
  call void @free(i8* %25) #4
  store i32 2, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %2, align 8
  br label %71

; <label>:26:                                     ; preds = %16
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #5
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %26
  %31 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %32 = bitcast %struct.gsi_s* %31 to i8*
  call void @free(i8* %32) #4
  store i32 5, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %2, align 8
  br label %71

; <label>:33:                                     ; preds = %26
  %34 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %35 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %34, i32 0, i32 1
  %36 = bitcast i16* %35 to i8*
  %37 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %38 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %37, i32 0, i32 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %38, align 8
  %40 = call i64 @fread(i8* %36, i64 2, i64 1, %struct._IO_FILE* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %33
  %43 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %44 = bitcast %struct.gsi_s* %43 to i8*
  call void @free(i8* %44) #4
  store i32 2, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %2, align 8
  br label %71

; <label>:45:                                     ; preds = %33
  %46 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %47 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %46, i32 0, i32 2
  %48 = bitcast i32* %47 to i8*
  %49 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %50 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %49, i32 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8
  %52 = call i64 @fread(i8* %48, i64 4, i64 1, %struct._IO_FILE* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

; <label>:54:                                     ; preds = %45
  %55 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %56 = bitcast %struct.gsi_s* %55 to i8*
  call void @free(i8* %56) #4
  store i32 2, i32* @squid_errno, align 4
  store %struct.gsi_s* null, %struct.gsi_s** %2, align 8
  br label %71

; <label>:57:                                     ; preds = %45
  %58 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %59 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %58, i32 0, i32 1
  %60 = load i16, i16* %59, align 8
  %61 = call zeroext i16 @sre_ntoh16(i16 zeroext %60)
  %62 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %63 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %62, i32 0, i32 1
  store i16 %61, i16* %63, align 8
  %64 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %65 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sre_ntoh32(i32 %66)
  %68 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  %69 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.gsi_s*, %struct.gsi_s** %4, align 8
  store %struct.gsi_s* %70, %struct.gsi_s** %2, align 8
  br label %71

; <label>:71:                                     ; preds = %57, %54, %42, %30, %23, %13
  %72 = load %struct.gsi_s*, %struct.gsi_s** %2, align 8
  ret %struct.gsi_s* %72
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare zeroext i16 @sre_ntoh16(i16 zeroext) #1

declare i32 @sre_ntoh32(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @GSIGetRecord(%struct.gsi_s*, i8*, i16*, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsi_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32*, align 8
  store %struct.gsi_s* %0, %struct.gsi_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i16* %2, i16** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %4
  %13 = load %struct.gsi_s*, %struct.gsi_s** %6, align 8
  %14 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %13, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %16 = call i32 @fseek(%struct._IO_FILE* %15, i64 32, i32 1)
  br label %26

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.gsi_s*, %struct.gsi_s** %6, align 8
  %20 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %19, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %22 = call i64 @fread(i8* %18, i64 32, i64 1, %struct._IO_FILE* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %17
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %5, align 4
  br label %79

; <label>:25:                                     ; preds = %17
  br label %26

; <label>:26:                                     ; preds = %25, %12
  %27 = load i16*, i16** %8, align 8
  %28 = icmp eq i16* %27, null
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %26
  %30 = load %struct.gsi_s*, %struct.gsi_s** %6, align 8
  %31 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %30, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %33 = call i32 @fseek(%struct._IO_FILE* %32, i64 2, i32 1)
  br label %44

; <label>:34:                                     ; preds = %26
  %35 = load i16*, i16** %8, align 8
  %36 = bitcast i16* %35 to i8*
  %37 = load %struct.gsi_s*, %struct.gsi_s** %6, align 8
  %38 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %37, i32 0, i32 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %38, align 8
  %40 = call i64 @fread(i8* %36, i64 2, i64 1, %struct._IO_FILE* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %34
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %5, align 4
  br label %79

; <label>:43:                                     ; preds = %34
  br label %44

; <label>:44:                                     ; preds = %43, %29
  %45 = load i32*, i32** %9, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %44
  %48 = load %struct.gsi_s*, %struct.gsi_s** %6, align 8
  %49 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %48, i32 0, i32 0
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %49, align 8
  %51 = call i32 @fseek(%struct._IO_FILE* %50, i64 4, i32 1)
  br label %62

; <label>:52:                                     ; preds = %44
  %53 = load i32*, i32** %9, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load %struct.gsi_s*, %struct.gsi_s** %6, align 8
  %56 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %55, i32 0, i32 0
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %56, align 8
  %58 = call i64 @fread(i8* %54, i64 4, i64 1, %struct._IO_FILE* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %52
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %5, align 4
  br label %79

; <label>:61:                                     ; preds = %52
  br label %62

; <label>:62:                                     ; preds = %61, %47
  %63 = load i16*, i16** %8, align 8
  %64 = icmp ne i16* %63, null
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %62
  %66 = load i16*, i16** %8, align 8
  %67 = load i16, i16* %66, align 2
  %68 = call zeroext i16 @sre_ntoh16(i16 zeroext %67)
  %69 = load i16*, i16** %8, align 8
  store i16 %68, i16* %69, align 2
  br label %70

; <label>:70:                                     ; preds = %65, %62
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

; <label>:73:                                     ; preds = %70
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sre_ntoh32(i32 %75)
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  br label %78

; <label>:78:                                     ; preds = %73, %70
  store i32 1, i32* %5, align 4
  br label %79

; <label>:79:                                     ; preds = %78, %60, %42, %24
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @GSIGetOffset(%struct.gsi_s*, i8*, i8*, i32*, i64*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsi_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [33 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  store %struct.gsi_s* %0, %struct.gsi_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i64 0, i64 32
  store i8 0, i8* %20, align 16
  %21 = load %struct.gsi_s*, %struct.gsi_s** %7, align 8
  %22 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  %26 = load %struct.gsi_s*, %struct.gsi_s** %7, align 8
  %27 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = zext i16 %28 to i32
  %30 = load %struct.gsi_s*, %struct.gsi_s** %7, align 8
  %31 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %29, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add i32 %34, %35
  %37 = udiv i32 %36, 2
  store i32 %37, i32* %14, align 4
  %38 = load %struct.gsi_s*, %struct.gsi_s** %7, align 8
  %39 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %38, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = mul i32 %41, 38
  %43 = zext i32 %42 to i64
  %44 = call i32 @fseek(%struct._IO_FILE* %40, i64 %43, i32 0)
  br label %45

; <label>:45:                                     ; preds = %77, %5
  %46 = load %struct.gsi_s*, %struct.gsi_s** %7, align 8
  %47 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i32 0, i32 0
  %48 = call i32 @GSIGetRecord(%struct.gsi_s* %46, i8* %47, i16* %18, i32* %17)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %89

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i32 0, i32 0
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strcmp(i8* %51, i8* %52) #5
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %50
  br label %89

; <label>:57:                                     ; preds = %50
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %57
  store i32 0, i32* %6, align 4
  br label %106

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %75

; <label>:68:                                     ; preds = %62
  %69 = load i32, i32* %15, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = sub i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %74

; <label>:74:                                     ; preds = %71, %68
  br label %75

; <label>:75:                                     ; preds = %74, %65
  br label %76

; <label>:76:                                     ; preds = %75
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %78, %79
  %81 = udiv i32 %80, 2
  store i32 %81, i32* %14, align 4
  %82 = load %struct.gsi_s*, %struct.gsi_s** %7, align 8
  %83 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %82, i32 0, i32 0
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = mul i32 %85, 38
  %87 = zext i32 %86 to i64
  %88 = call i32 @fseek(%struct._IO_FILE* %84, i64 %87, i32 0)
  br label %45

; <label>:89:                                     ; preds = %56, %45
  %90 = load %struct.gsi_s*, %struct.gsi_s** %7, align 8
  %91 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %90, i32 0, i32 0
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %91, align 8
  %93 = load i16, i16* %18, align 2
  %94 = zext i16 %93 to i32
  %95 = mul nsw i32 %94, 38
  %96 = sext i32 %95 to i64
  %97 = call i32 @fseek(%struct._IO_FILE* %92, i64 %96, i32 0)
  %98 = load %struct.gsi_s*, %struct.gsi_s** %7, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @GSIGetRecord(%struct.gsi_s* %98, i8* %99, i16* null, i32* %19)
  %101 = load i32, i32* %19, align 4
  %102 = load i32*, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %17, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64*, i64** %11, align 8
  store i64 %104, i64* %105, align 8
  store i32 1, i32* %6, align 4
  br label %106

; <label>:106:                                    ; preds = %89, %61
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

; Function Attrs: noinline nounwind optnone uwtable
define void @GSIClose(%struct.gsi_s*) #0 {
  %2 = alloca %struct.gsi_s*, align 8
  store %struct.gsi_s* %0, %struct.gsi_s** %2, align 8
  %3 = load %struct.gsi_s*, %struct.gsi_s** %2, align 8
  %4 = getelementptr inbounds %struct.gsi_s, %struct.gsi_s* %3, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @fclose(%struct._IO_FILE* %5)
  %7 = load %struct.gsi_s*, %struct.gsi_s** %2, align 8
  %8 = bitcast %struct.gsi_s* %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.gsiindex_s* @GSIAllocIndex() #0 {
  %1 = alloca %struct.gsiindex_s*, align 8
  %2 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 200, i64 40)
  %3 = bitcast i8* %2 to %struct.gsiindex_s*
  store %struct.gsiindex_s* %3, %struct.gsiindex_s** %1, align 8
  %4 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 201, i64 80)
  %5 = bitcast i8* %4 to i8**
  %6 = load %struct.gsiindex_s*, %struct.gsiindex_s** %1, align 8
  %7 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %6, i32 0, i32 0
  store i8** %5, i8*** %7, align 8
  %8 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 202, i64 40)
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.gsiindex_s*, %struct.gsiindex_s** %1, align 8
  %11 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 203, i64 4000)
  %13 = bitcast i8* %12 to %struct.gsikey_s*
  %14 = load %struct.gsiindex_s*, %struct.gsiindex_s** %1, align 8
  %15 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %14, i32 0, i32 3
  store %struct.gsikey_s* %13, %struct.gsikey_s** %15, align 8
  %16 = load %struct.gsiindex_s*, %struct.gsiindex_s** %1, align 8
  %17 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %16, i32 0, i32 2
  store i16 0, i16* %17, align 8
  %18 = load %struct.gsiindex_s*, %struct.gsiindex_s** %1, align 8
  %19 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %18, i32 0, i32 4
  store i32 0, i32* %19, align 8
  %20 = load %struct.gsiindex_s*, %struct.gsiindex_s** %1, align 8
  ret %struct.gsiindex_s* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define void @GSIFreeIndex(%struct.gsiindex_s*) #0 {
  %2 = alloca %struct.gsiindex_s*, align 8
  %3 = alloca i32, align 4
  store %struct.gsiindex_s* %0, %struct.gsiindex_s** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.gsiindex_s*, %struct.gsiindex_s** %2, align 8
  %7 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %6, i32 0, i32 2
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %4
  %12 = load %struct.gsiindex_s*, %struct.gsiindex_s** %2, align 8
  %13 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  call void @free(i8* %18) #4
  br label %19

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

; <label>:22:                                     ; preds = %4
  %23 = load %struct.gsiindex_s*, %struct.gsiindex_s** %2, align 8
  %24 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = bitcast i8** %25 to i8*
  call void @free(i8* %26) #4
  %27 = load %struct.gsiindex_s*, %struct.gsiindex_s** %2, align 8
  %28 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to i8*
  call void @free(i8* %30) #4
  %31 = load %struct.gsiindex_s*, %struct.gsiindex_s** %2, align 8
  %32 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %31, i32 0, i32 3
  %33 = load %struct.gsikey_s*, %struct.gsikey_s** %32, align 8
  %34 = bitcast %struct.gsikey_s* %33 to i8*
  call void @free(i8* %34) #4
  %35 = load %struct.gsiindex_s*, %struct.gsiindex_s** %2, align 8
  %36 = bitcast %struct.gsiindex_s* %35 to i8*
  call void @free(i8* %36) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @GSIAddFileToIndex(%struct.gsiindex_s*, i8*, i32) #0 {
  %4 = alloca %struct.gsiindex_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gsiindex_s* %0, %struct.gsiindex_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8) #5
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 32
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @sre_strdup(i8* %15, i32 %16)
  %18 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %19 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %22 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %21, i32 0, i32 2
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %20, i64 %24
  store i8* %17, i8** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %28 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %31 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %30, i32 0, i32 2
  %32 = load i16, i16* %31, align 8
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32 %26, i32* %34, align 4
  %35 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %36 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %35, i32 0, i32 2
  %37 = load i16, i16* %36, align 8
  %38 = add i16 %37, 1
  store i16 %38, i16* %36, align 8
  %39 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %40 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %39, i32 0, i32 2
  %41 = load i16, i16* %40, align 8
  %42 = zext i16 %41 to i32
  %43 = srem i32 %42, 10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %76

; <label>:45:                                     ; preds = %14
  %46 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %47 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = bitcast i8** %48 to i8*
  %50 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %51 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %50, i32 0, i32 2
  %52 = load i16, i16* %51, align 8
  %53 = zext i16 %52 to i32
  %54 = add nsw i32 %53, 10
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 229, i8* %49, i64 %56)
  %58 = bitcast i8* %57 to i8**
  %59 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %60 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %59, i32 0, i32 0
  store i8** %58, i8*** %60, align 8
  %61 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %62 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %66 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %65, i32 0, i32 2
  %67 = load i16, i16* %66, align 8
  %68 = zext i16 %67 to i32
  %69 = add nsw i32 %68, 10
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 230, i8* %64, i64 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %75 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  br label %76

; <label>:76:                                     ; preds = %45, %14
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @Die(i8*, ...) #1

declare i8* @sre_strdup(i8*, i32) #1

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @GSIAddKeyToIndex(%struct.gsiindex_s*, i8*, i32, i64) #0 {
  %5 = alloca %struct.gsiindex_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.gsiindex_s* %0, %struct.gsiindex_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strlen(i8* %9) #5
  %11 = icmp uge i64 %10, 32
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 65535
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %16, %13
  %18 = load i64, i64* %8, align 8
  %19 = icmp sgt i64 %18, 4294967295
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  br label %21

; <label>:21:                                     ; preds = %20, %17
  %22 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %23 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %22, i32 0, i32 3
  %24 = load %struct.gsikey_s*, %struct.gsikey_s** %23, align 8
  %25 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %26 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %24, i64 %28
  %30 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strncpy(i8* %31, i8* %32, i64 31) #4
  %34 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %35 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %34, i32 0, i32 3
  %36 = load %struct.gsikey_s*, %struct.gsikey_s** %35, align 8
  %37 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %38 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %36, i64 %40
  %42 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %41, i32 0, i32 0
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %42, i64 0, i64 31
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* %7, align 4
  %45 = trunc i32 %44 to i16
  %46 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %47 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %46, i32 0, i32 3
  %48 = load %struct.gsikey_s*, %struct.gsikey_s** %47, align 8
  %49 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %50 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %48, i64 %52
  %54 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %53, i32 0, i32 1
  store i16 %45, i16* %54, align 4
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %58 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %57, i32 0, i32 3
  %59 = load %struct.gsikey_s*, %struct.gsikey_s** %58, align 8
  %60 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %61 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %59, i64 %63
  %65 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %64, i32 0, i32 2
  store i32 %56, i32* %65, align 4
  %66 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %67 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %71 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = srem i32 %72, 100
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

; <label>:75:                                     ; preds = %21
  %76 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %77 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %76, i32 0, i32 3
  %78 = load %struct.gsikey_s*, %struct.gsikey_s** %77, align 8
  %79 = bitcast %struct.gsikey_s* %78 to i8*
  %80 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %81 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 100
  %84 = sext i32 %83 to i64
  %85 = mul i64 40, %84
  %86 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 247, i8* %79, i64 %85)
  %87 = bitcast i8* %86 to %struct.gsikey_s*
  %88 = load %struct.gsiindex_s*, %struct.gsiindex_s** %5, align 8
  %89 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %88, i32 0, i32 3
  store %struct.gsikey_s* %87, %struct.gsikey_s** %89, align 8
  br label %90

; <label>:90:                                     ; preds = %75, %21
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @GSISortIndex(%struct.gsiindex_s*) #0 {
  %2 = alloca %struct.gsiindex_s*, align 8
  store %struct.gsiindex_s* %0, %struct.gsiindex_s** %2, align 8
  %3 = load %struct.gsiindex_s*, %struct.gsiindex_s** %2, align 8
  %4 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %3, i32 0, i32 3
  %5 = load %struct.gsikey_s*, %struct.gsikey_s** %4, align 8
  %6 = bitcast %struct.gsikey_s* %5 to i8*
  %7 = load %struct.gsiindex_s*, %struct.gsiindex_s** %2, align 8
  %8 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...) bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %6, i32 %9, i64 40, i32 (i8*, i8*)* @gsi_keysorter)
  ret void
}

declare i32 @specqsort(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsi_keysorter(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gsikey_s*, align 8
  %6 = alloca %struct.gsikey_s*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.gsikey_s*
  store %struct.gsikey_s* %8, %struct.gsikey_s** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.gsikey_s*
  store %struct.gsikey_s* %10, %struct.gsikey_s** %6, align 8
  %11 = load %struct.gsikey_s*, %struct.gsikey_s** %5, align 8
  %12 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i32 0, i32 0
  %14 = load %struct.gsikey_s*, %struct.gsikey_s** %6, align 8
  %15 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %17 = call i32 @strcmp(i8* %13, i8* %16) #5
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define void @GSIWriteIndex(%struct._IO_FILE*, %struct.gsiindex_s*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.gsiindex_s*, align 8
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.gsiindex_s* %1, %struct.gsiindex_s** %4, align 8
  %6 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %7 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %6, i32 0, i32 2
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = icmp sgt i32 %9, 65535
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %12

; <label>:12:                                     ; preds = %11, %2
  %13 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %14 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ugt i32 %15, -1
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %12
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %18

; <label>:18:                                     ; preds = %17, %12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %20 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %21 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %20, i32 0, i32 2
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  %24 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %25 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  call void @GSIWriteHeader(%struct._IO_FILE* %19, i32 %23, i64 %27)
  store i32 0, i32* %5, align 4
  br label %28

; <label>:28:                                     ; preds = %54, %18
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %31 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %30, i32 0, i32 2
  %32 = load i16, i16* %31, align 8
  %33 = zext i16 %32 to i32
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %57

; <label>:35:                                     ; preds = %28
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %37 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %38 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  %46 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %47 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GSIWriteFileRecord(%struct._IO_FILE* %36, i8* %43, i32 %45, i32 %52)
  br label %54

; <label>:54:                                     ; preds = %35
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %28

; <label>:57:                                     ; preds = %28
  store i32 0, i32* %5, align 4
  br label %58

; <label>:58:                                     ; preds = %93, %57
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %61 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %96

; <label>:64:                                     ; preds = %58
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %66 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %67 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %66, i32 0, i32 3
  %68 = load %struct.gsikey_s*, %struct.gsikey_s** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %68, i64 %70
  %72 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %71, i32 0, i32 0
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %72, i32 0, i32 0
  %74 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %75 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %74, i32 0, i32 3
  %76 = load %struct.gsikey_s*, %struct.gsikey_s** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %76, i64 %78
  %80 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %79, i32 0, i32 1
  %81 = load i16, i16* %80, align 4
  %82 = zext i16 %81 to i32
  %83 = load %struct.gsiindex_s*, %struct.gsiindex_s** %4, align 8
  %84 = getelementptr inbounds %struct.gsiindex_s, %struct.gsiindex_s* %83, i32 0, i32 3
  %85 = load %struct.gsikey_s*, %struct.gsikey_s** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %85, i64 %87
  %89 = getelementptr inbounds %struct.gsikey_s, %struct.gsikey_s* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  %92 = call i32 @GSIWriteKeyRecord(%struct._IO_FILE* %65, i8* %73, i32 %82, i64 %91)
  br label %93

; <label>:93:                                     ; preds = %64
  %94 = load i32, i32* %5, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %58

; <label>:96:                                     ; preds = %58
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @GSIWriteHeader(%struct._IO_FILE*, i32, i64) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 65535
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp sgt i64 %14, 4294967295
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %16, %13
  %18 = load i32, i32* %5, align 4
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load i64, i64* %6, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i16, i16* %8, align 2
  %23 = call zeroext i16 @sre_hton16(i16 zeroext %22)
  store i16 %23, i16* %8, align 2
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @sre_hton32(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0
  %27 = call i8* @strcpy(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #4
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %30 = call i64 @fwrite(i8* %28, i64 1, i64 32, %struct._IO_FILE* %29)
  %31 = icmp ult i64 %30, 32
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %17
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 314)
  br label %33

; <label>:33:                                     ; preds = %32, %17
  %34 = bitcast i16* %8 to i8*
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %36 = call i64 @fwrite(i8* %34, i64 2, i64 1, %struct._IO_FILE* %35)
  %37 = icmp ult i64 %36, 1
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %33
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 315)
  br label %39

; <label>:39:                                     ; preds = %38, %33
  %40 = bitcast i32* %9 to i8*
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %42 = call i64 @fwrite(i8* %40, i64 4, i64 1, %struct._IO_FILE* %41)
  %43 = icmp ult i64 %42, 1
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %39
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 316)
  br label %45

; <label>:45:                                     ; preds = %44, %39
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @GSIWriteFileRecord(%struct._IO_FILE*, i8*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strlen(i8* %12) #5
  %14 = icmp uge i64 %13, 32
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

; <label>:16:                                     ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 65535
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  br label %20

; <label>:20:                                     ; preds = %19, %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp ugt i32 %21, -1
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %23, %20
  %25 = load i32, i32* %8, align 4
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %10, align 2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i16, i16* %10, align 2
  %29 = call zeroext i16 @sre_hton16(i16 zeroext %28)
  store i16 %29, i16* %10, align 2
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @sre_hton32(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %34 = call i64 @fwrite(i8* %32, i64 1, i64 32, %struct._IO_FILE* %33)
  %35 = icmp ult i64 %34, 32
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %24
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 347)
  br label %37

; <label>:37:                                     ; preds = %36, %24
  %38 = bitcast i16* %10 to i8*
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %40 = call i64 @fwrite(i8* %38, i64 2, i64 1, %struct._IO_FILE* %39)
  %41 = icmp ult i64 %40, 1
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %37
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 348)
  br label %43

; <label>:43:                                     ; preds = %42, %37
  %44 = bitcast i32* %11 to i8*
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %46 = call i64 @fwrite(i8* %44, i64 4, i64 1, %struct._IO_FILE* %45)
  %47 = icmp ult i64 %46, 1
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %43
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 349)
  br label %49

; <label>:49:                                     ; preds = %48, %43
  store i32 1, i32* %5, align 4
  br label %50

; <label>:50:                                     ; preds = %49, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @GSIWriteKeyRecord(%struct._IO_FILE*, i8*, i32, i64) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strlen(i8* %12) #5
  %14 = icmp uge i64 %13, 32
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %51

; <label>:16:                                     ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 65535
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  br label %20

; <label>:20:                                     ; preds = %19, %16
  %21 = load i64, i64* %9, align 8
  %22 = icmp sgt i64 %21, 4294967295
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %23, %20
  %25 = load i32, i32* %8, align 4
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %10, align 2
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i16, i16* %10, align 2
  %30 = call zeroext i16 @sre_hton16(i16 zeroext %29)
  store i16 %30, i16* %10, align 2
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @sre_hton32(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %35 = call i64 @fwrite(i8* %33, i64 1, i64 32, %struct._IO_FILE* %34)
  %36 = icmp ult i64 %35, 32
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %24
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 382)
  br label %38

; <label>:38:                                     ; preds = %37, %24
  %39 = bitcast i16* %10 to i8*
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %41 = call i64 @fwrite(i8* %39, i64 2, i64 1, %struct._IO_FILE* %40)
  %42 = icmp ult i64 %41, 1
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %38
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 383)
  br label %44

; <label>:44:                                     ; preds = %43, %38
  %45 = bitcast i32* %11 to i8*
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %47 = call i64 @fwrite(i8* %45, i64 4, i64 1, %struct._IO_FILE* %46)
  %48 = icmp ult i64 %47, 1
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %44
  call void @Panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 384)
  br label %50

; <label>:50:                                     ; preds = %49, %44
  store i32 1, i32* %5, align 4
  br label %51

; <label>:51:                                     ; preds = %50, %15
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare zeroext i16 @sre_hton16(i16 zeroext) #1

declare i32 @sre_hton32(i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @Panic(i8*, i32) #1

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
