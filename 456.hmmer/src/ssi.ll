; ModuleID = 'ssi.c'
source_filename = "ssi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.ssiindex_s = type { i32, i32, i32, i32, i8**, i32*, i32*, i32*, i32, i16, %struct.ssipkey_s*, i32, i32, i8*, %struct._IO_FILE*, %struct.ssiskey_s*, i32, i32, i8*, %struct._IO_FILE* }
%struct.ssipkey_s = type { i8*, i16, %struct.ssioffset_s, %struct.ssioffset_s, i32 }
%struct.ssiskey_s = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"Can't create a 64-bit SSI index on this system, sorry;\0AI don't have 64-bit file offset functions available.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tmp.ssi.1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"tmp.ssi.2\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s\09%d\09%lu\09%lu\09%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s\09%d\09%llu\09%llu\09%lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.8 = private unnamed_addr constant [115 x i8] c"Can't switch to 64-bit SSI index mode on this system, sorry;\0AI don't have 64-bit file offset functions available.\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"env LC_ALL=POSIX sort -o %s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@v20magic = internal global i32 -202118735, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"ok (no error)\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"no data, fread() failed\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"no such key\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"out of memory, malloc() failed\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"file not found, fopen() failed\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"not a SSI file? (bad magic)\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"corrupt format? unexpected data\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"no large file support for this system\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"failed to reposition on disk\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"failed to get file position on disk\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"no fast subseq support for this seqfile\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"subseq start is out of range\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"an argument is out of range\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"number of files exceeds limit\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"number of keys exceeds limit\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"an fwrite() failed\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"some problem with external sorting\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"unrecognized code\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"failed to turn external sorting on.\00", align 1
@v20swap = internal global i32 -1310067725, align 4
@.str.30 = private unnamed_addr constant [3 x i8] c"\09\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"%s\09%u\09%lu\09%lu\09%lu\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"%s\09%u\09%llu\09%llu\09%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIOpen(i8*, %struct.ssifile_s**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ssifile_s**, align 8
  %6 = alloca %struct.ssifile_s*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ssifile_s** %1, %struct.ssifile_s*** %5, align 8
  store %struct.ssifile_s* null, %struct.ssifile_s** %6, align 8
  %8 = call noalias i8* @malloc(i64 144) #6
  %9 = bitcast i8* %8 to %struct.ssifile_s*
  store %struct.ssifile_s* %9, %struct.ssifile_s** %6, align 8
  %10 = icmp eq %struct.ssifile_s* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store i32 3, i32* %3, align 4
  br label %27

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %15 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %16 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %15, i32 0, i32 0
  store %struct._IO_FILE* %14, %struct._IO_FILE** %16, align 8
  %17 = icmp eq %struct._IO_FILE* %14, null
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %12
  %19 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %20 = bitcast %struct.ssifile_s* %19 to i8*
  call void @free(i8* %20) #6
  store i32 4, i32* %3, align 4
  br label %27

; <label>:21:                                     ; preds = %12
  %22 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %23 = call i32 @load_indexfile(%struct.ssifile_s* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %25 = load %struct.ssifile_s**, %struct.ssifile_s*** %5, align 8
  store %struct.ssifile_s* %24, %struct.ssifile_s** %25, align 8
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %21, %18, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_indexfile(%struct.ssifile_s*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssifile_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.ssifile_s* %0, %struct.ssifile_s** %3, align 8
  store i32 6, i32* %6, align 4
  %7 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %8 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %7, i32 0, i32 16
  store i8** null, i8*** %8, align 8
  %9 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %10 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %9, i32 0, i32 17
  store i32* null, i32** %10, align 8
  %11 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %12 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %11, i32 0, i32 18
  store i32* null, i32** %12, align 8
  %13 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %14 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %13, i32 0, i32 19
  store i32* null, i32** %14, align 8
  %15 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %16 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %15, i32 0, i32 20
  store i32* null, i32** %16, align 8
  %17 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %18 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %17, i32 0, i32 2
  store i16 0, i16* %18, align 4
  %19 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %20 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %19, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %22 = call i32 @read_i32(%struct._IO_FILE* %21, i32* %4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %1
  store i32 5, i32* %6, align 4
  br label %394

; <label>:25:                                     ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @v20magic, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @v20swap, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %29
  store i32 5, i32* %6, align 4
  br label %394

; <label>:34:                                     ; preds = %29, %25
  %35 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %36 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %35, i32 0, i32 0
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %36, align 8
  %38 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %39 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %38, i32 0, i32 1
  %40 = call i32 @read_i32(%struct._IO_FILE* %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %34
  br label %394

; <label>:43:                                     ; preds = %34
  %44 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %45 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %43
  %50 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %51 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %49, %43
  store i32 7, i32* %6, align 4
  br label %394

; <label>:56:                                     ; preds = %49
  %57 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %58 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = trunc i32 %63 to i8
  %65 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %66 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %65, i32 0, i32 14
  store i8 %64, i8* %66, align 8
  %67 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %68 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = trunc i32 %73 to i8
  %75 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %76 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %75, i32 0, i32 15
  store i8 %74, i8* %76, align 1
  %77 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %78 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %77, i32 0, i32 0
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %78, align 8
  %80 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %81 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %80, i32 0, i32 2
  %82 = call i32 @read_i16(%struct._IO_FILE* %79, i16* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

; <label>:84:                                     ; preds = %56
  br label %394

; <label>:85:                                     ; preds = %56
  %86 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %87 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %86, i32 0, i32 0
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %87, align 8
  %89 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %90 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %89, i32 0, i32 3
  %91 = call i32 @read_i32(%struct._IO_FILE* %88, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

; <label>:93:                                     ; preds = %85
  br label %394

; <label>:94:                                     ; preds = %85
  %95 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %96 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %95, i32 0, i32 0
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %96, align 8
  %98 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %99 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %98, i32 0, i32 4
  %100 = call i32 @read_i32(%struct._IO_FILE* %97, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

; <label>:102:                                    ; preds = %94
  br label %394

; <label>:103:                                    ; preds = %94
  %104 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %105 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %104, i32 0, i32 0
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %105, align 8
  %107 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %108 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %107, i32 0, i32 5
  %109 = call i32 @read_i32(%struct._IO_FILE* %106, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

; <label>:111:                                    ; preds = %103
  br label %394

; <label>:112:                                    ; preds = %103
  %113 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %114 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %113, i32 0, i32 0
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %114, align 8
  %116 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %117 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %116, i32 0, i32 6
  %118 = call i32 @read_i32(%struct._IO_FILE* %115, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

; <label>:120:                                    ; preds = %112
  br label %394

; <label>:121:                                    ; preds = %112
  %122 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %123 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %122, i32 0, i32 0
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %123, align 8
  %125 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %126 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %125, i32 0, i32 7
  %127 = call i32 @read_i32(%struct._IO_FILE* %124, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

; <label>:129:                                    ; preds = %121
  br label %394

; <label>:130:                                    ; preds = %121
  %131 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %132 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %131, i32 0, i32 0
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %132, align 8
  %134 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %135 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %134, i32 0, i32 8
  %136 = call i32 @read_i32(%struct._IO_FILE* %133, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

; <label>:138:                                    ; preds = %130
  br label %394

; <label>:139:                                    ; preds = %130
  %140 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %141 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %140, i32 0, i32 0
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %141, align 8
  %143 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %144 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %143, i32 0, i32 9
  %145 = call i32 @read_i32(%struct._IO_FILE* %142, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

; <label>:147:                                    ; preds = %139
  br label %394

; <label>:148:                                    ; preds = %139
  %149 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %150 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %149, i32 0, i32 0
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %150, align 8
  %152 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %153 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %152, i32 0, i32 10
  %154 = call i32 @read_i32(%struct._IO_FILE* %151, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

; <label>:156:                                    ; preds = %148
  br label %394

; <label>:157:                                    ; preds = %148
  %158 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %159 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %158, i32 0, i32 0
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %159, align 8
  %161 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %162 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %161, i32 0, i32 14
  %163 = load i8, i8* %162, align 8
  %164 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %165 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %164, i32 0, i32 11
  %166 = call i32 @read_offset(%struct._IO_FILE* %160, i8 signext %163, %struct.ssioffset_s* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

; <label>:168:                                    ; preds = %157
  br label %394

; <label>:169:                                    ; preds = %157
  %170 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %171 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %170, i32 0, i32 0
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %171, align 8
  %173 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %174 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %173, i32 0, i32 14
  %175 = load i8, i8* %174, align 8
  %176 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %177 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %176, i32 0, i32 12
  %178 = call i32 @read_offset(%struct._IO_FILE* %172, i8 signext %175, %struct.ssioffset_s* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

; <label>:180:                                    ; preds = %169
  br label %394

; <label>:181:                                    ; preds = %169
  %182 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %183 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %182, i32 0, i32 0
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %183, align 8
  %185 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %186 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %185, i32 0, i32 14
  %187 = load i8, i8* %186, align 8
  %188 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %189 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %188, i32 0, i32 13
  %190 = call i32 @read_offset(%struct._IO_FILE* %184, i8 signext %187, %struct.ssioffset_s* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

; <label>:192:                                    ; preds = %181
  br label %394

; <label>:193:                                    ; preds = %181
  %194 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %195 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %194, i32 0, i32 2
  %196 = load i16, i16* %195, align 4
  %197 = zext i16 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

; <label>:199:                                    ; preds = %193
  br label %394

; <label>:200:                                    ; preds = %193
  %201 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %202 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %201, i32 0, i32 2
  %203 = load i16, i16* %202, align 4
  %204 = zext i16 %203 to i64
  %205 = mul i64 8, %204
  %206 = call noalias i8* @malloc(i64 %205) #6
  %207 = bitcast i8* %206 to i8**
  %208 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %209 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %208, i32 0, i32 16
  store i8** %207, i8*** %209, align 8
  %210 = icmp eq i8** %207, null
  br i1 %210, label %211, label %212

; <label>:211:                                    ; preds = %200
  store i32 3, i32* %6, align 4
  br label %394

; <label>:212:                                    ; preds = %200
  store i16 0, i16* %5, align 2
  br label %213

; <label>:213:                                    ; preds = %228, %212
  %214 = load i16, i16* %5, align 2
  %215 = zext i16 %214 to i32
  %216 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %217 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %216, i32 0, i32 2
  %218 = load i16, i16* %217, align 4
  %219 = zext i16 %218 to i32
  %220 = icmp slt i32 %215, %219
  br i1 %220, label %221, label %231

; <label>:221:                                    ; preds = %213
  %222 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %223 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %222, i32 0, i32 16
  %224 = load i8**, i8*** %223, align 8
  %225 = load i16, i16* %5, align 2
  %226 = zext i16 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  store i8* null, i8** %227, align 8
  br label %228

; <label>:228:                                    ; preds = %221
  %229 = load i16, i16* %5, align 2
  %230 = add i16 %229, 1
  store i16 %230, i16* %5, align 2
  br label %213

; <label>:231:                                    ; preds = %213
  %232 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %233 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %232, i32 0, i32 2
  %234 = load i16, i16* %233, align 4
  %235 = zext i16 %234 to i64
  %236 = mul i64 4, %235
  %237 = call noalias i8* @malloc(i64 %236) #6
  %238 = bitcast i8* %237 to i32*
  %239 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %240 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %239, i32 0, i32 17
  store i32* %238, i32** %240, align 8
  %241 = icmp eq i32* %238, null
  br i1 %241, label %242, label %243

; <label>:242:                                    ; preds = %231
  store i32 3, i32* %6, align 4
  br label %394

; <label>:243:                                    ; preds = %231
  %244 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %245 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %244, i32 0, i32 2
  %246 = load i16, i16* %245, align 4
  %247 = zext i16 %246 to i64
  %248 = mul i64 4, %247
  %249 = call noalias i8* @malloc(i64 %248) #6
  %250 = bitcast i8* %249 to i32*
  %251 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %252 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %251, i32 0, i32 18
  store i32* %250, i32** %252, align 8
  %253 = icmp eq i32* %250, null
  br i1 %253, label %254, label %255

; <label>:254:                                    ; preds = %243
  store i32 3, i32* %6, align 4
  br label %394

; <label>:255:                                    ; preds = %243
  %256 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %257 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %256, i32 0, i32 2
  %258 = load i16, i16* %257, align 4
  %259 = zext i16 %258 to i64
  %260 = mul i64 4, %259
  %261 = call noalias i8* @malloc(i64 %260) #6
  %262 = bitcast i8* %261 to i32*
  %263 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %264 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %263, i32 0, i32 19
  store i32* %262, i32** %264, align 8
  %265 = icmp eq i32* %262, null
  br i1 %265, label %266, label %267

; <label>:266:                                    ; preds = %255
  store i32 3, i32* %6, align 4
  br label %394

; <label>:267:                                    ; preds = %255
  %268 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %269 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %268, i32 0, i32 2
  %270 = load i16, i16* %269, align 4
  %271 = zext i16 %270 to i64
  %272 = mul i64 4, %271
  %273 = call noalias i8* @malloc(i64 %272) #6
  %274 = bitcast i8* %273 to i32*
  %275 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %276 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %275, i32 0, i32 20
  store i32* %274, i32** %276, align 8
  %277 = icmp eq i32* %274, null
  br i1 %277, label %278, label %279

; <label>:278:                                    ; preds = %267
  store i32 3, i32* %6, align 4
  br label %394

; <label>:279:                                    ; preds = %267
  store i16 0, i16* %5, align 2
  br label %280

; <label>:280:                                    ; preds = %390, %279
  %281 = load i16, i16* %5, align 2
  %282 = zext i16 %281 to i32
  %283 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %284 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %283, i32 0, i32 2
  %285 = load i16, i16* %284, align 4
  %286 = zext i16 %285 to i32
  %287 = icmp slt i32 %282, %286
  br i1 %287, label %288, label %393

; <label>:288:                                    ; preds = %280
  %289 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %290 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %291 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %290, i32 0, i32 11
  %292 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %293 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 4
  %295 = load i16, i16* %5, align 2
  %296 = zext i16 %295 to i32
  %297 = call i32 @indexfile_position(%struct.ssifile_s* %289, %struct.ssioffset_s* %291, i32 %294, i32 %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

; <label>:299:                                    ; preds = %288
  br label %394

; <label>:300:                                    ; preds = %288
  %301 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %302 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = zext i32 %303 to i64
  %305 = mul i64 1, %304
  %306 = call noalias i8* @malloc(i64 %305) #6
  %307 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %308 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %307, i32 0, i32 16
  %309 = load i8**, i8*** %308, align 8
  %310 = load i16, i16* %5, align 2
  %311 = zext i16 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %309, i64 %311
  store i8* %306, i8** %312, align 8
  %313 = icmp eq i8* %306, null
  br i1 %313, label %314, label %315

; <label>:314:                                    ; preds = %300
  store i32 3, i32* %6, align 4
  br label %394

; <label>:315:                                    ; preds = %300
  %316 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %317 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %316, i32 0, i32 16
  %318 = load i8**, i8*** %317, align 8
  %319 = load i16, i16* %5, align 2
  %320 = zext i16 %319 to i64
  %321 = getelementptr inbounds i8*, i8** %318, i64 %320
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %324 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 8
  %326 = zext i32 %325 to i64
  %327 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %328 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %327, i32 0, i32 0
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** %328, align 8
  %330 = call i64 @fread(i8* %322, i64 1, i64 %326, %struct._IO_FILE* %329)
  %331 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %332 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 8
  %334 = zext i32 %333 to i64
  %335 = icmp ne i64 %330, %334
  br i1 %335, label %336, label %337

; <label>:336:                                    ; preds = %315
  br label %394

; <label>:337:                                    ; preds = %315
  %338 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %339 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %338, i32 0, i32 0
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** %339, align 8
  %341 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %342 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %341, i32 0, i32 17
  %343 = load i32*, i32** %342, align 8
  %344 = load i16, i16* %5, align 2
  %345 = zext i16 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = call i32 @read_i32(%struct._IO_FILE* %340, i32* %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %350, label %349

; <label>:349:                                    ; preds = %337
  br label %394

; <label>:350:                                    ; preds = %337
  %351 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %352 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %351, i32 0, i32 0
  %353 = load %struct._IO_FILE*, %struct._IO_FILE** %352, align 8
  %354 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %355 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %354, i32 0, i32 18
  %356 = load i32*, i32** %355, align 8
  %357 = load i16, i16* %5, align 2
  %358 = zext i16 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = call i32 @read_i32(%struct._IO_FILE* %353, i32* %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %363, label %362

; <label>:362:                                    ; preds = %350
  br label %394

; <label>:363:                                    ; preds = %350
  %364 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %365 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %364, i32 0, i32 0
  %366 = load %struct._IO_FILE*, %struct._IO_FILE** %365, align 8
  %367 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %368 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %367, i32 0, i32 19
  %369 = load i32*, i32** %368, align 8
  %370 = load i16, i16* %5, align 2
  %371 = zext i16 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = call i32 @read_i32(%struct._IO_FILE* %366, i32* %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %376, label %375

; <label>:375:                                    ; preds = %363
  br label %394

; <label>:376:                                    ; preds = %363
  %377 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %378 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %377, i32 0, i32 0
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** %378, align 8
  %380 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  %381 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %380, i32 0, i32 20
  %382 = load i32*, i32** %381, align 8
  %383 = load i16, i16* %5, align 2
  %384 = zext i16 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = call i32 @read_i32(%struct._IO_FILE* %379, i32* %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %389, label %388

; <label>:388:                                    ; preds = %376
  br label %394

; <label>:389:                                    ; preds = %376
  br label %390

; <label>:390:                                    ; preds = %389
  %391 = load i16, i16* %5, align 2
  %392 = add i16 %391, 1
  store i16 %392, i16* %5, align 2
  br label %280

; <label>:393:                                    ; preds = %280
  store i32 0, i32* %2, align 4
  br label %397

; <label>:394:                                    ; preds = %388, %375, %362, %349, %336, %314, %299, %278, %266, %254, %242, %211, %199, %192, %180, %168, %156, %147, %138, %129, %120, %111, %102, %93, %84, %55, %42, %33, %24
  %395 = load %struct.ssifile_s*, %struct.ssifile_s** %3, align 8
  call void @SSIClose(%struct.ssifile_s* %395)
  %396 = load i32, i32* %6, align 4
  store i32 %396, i32* %2, align 4
  br label %397

; <label>:397:                                    ; preds = %394, %393
  %398 = load i32, i32* %2, align 4
  ret i32 %398
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIGetOffsetByName(%struct.ssifile_s*, i8*, i32*, %struct.ssioffset_s*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssifile_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ssioffset_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  store %struct.ssifile_s* %0, %struct.ssifile_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ssioffset_s* %3, %struct.ssioffset_s** %9, align 8
  %13 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %16 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %19 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %18, i32 0, i32 12
  %20 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %21 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %24 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @binary_search(%struct.ssifile_s* %13, i8* %14, i32 %17, %struct.ssioffset_s* %19, i32 %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

; <label>:29:                                     ; preds = %4
  %30 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %31 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %30, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %33 = call i32 @read_i16(%struct._IO_FILE* %32, i16* %11)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

; <label>:35:                                     ; preds = %29
  store i32 1, i32* %5, align 4
  br label %114

; <label>:36:                                     ; preds = %29
  %37 = load i16, i16* %11, align 2
  %38 = zext i16 %37 to i32
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %41 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %40, i32 0, i32 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %41, align 8
  %43 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %44 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %43, i32 0, i32 15
  %45 = load i8, i8* %44, align 1
  %46 = load %struct.ssioffset_s*, %struct.ssioffset_s** %9, align 8
  %47 = call i32 @read_offset(%struct._IO_FILE* %42, i8 signext %45, %struct.ssioffset_s* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

; <label>:49:                                     ; preds = %36
  store i32 1, i32* %5, align 4
  br label %114

; <label>:50:                                     ; preds = %36
  store i32 0, i32* %5, align 4
  br label %114

; <label>:51:                                     ; preds = %4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %112

; <label>:54:                                     ; preds = %51
  %55 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %56 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %110

; <label>:59:                                     ; preds = %54
  %60 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %63 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %66 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %65, i32 0, i32 13
  %67 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %68 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %71 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @binary_search(%struct.ssifile_s* %60, i8* %61, i32 %64, %struct.ssioffset_s* %66, i32 %69, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

; <label>:76:                                     ; preds = %59
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %114

; <label>:78:                                     ; preds = %59
  %79 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %80 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = zext i32 %81 to i64
  %83 = mul i64 1, %82
  %84 = call noalias i8* @malloc(i64 %83) #6
  store i8* %84, i8** %12, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %78
  store i32 3, i32* %5, align 4
  br label %114

; <label>:87:                                     ; preds = %78
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %90 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  %93 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %94 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %93, i32 0, i32 0
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %94, align 8
  %96 = call i64 @fread(i8* %88, i64 1, i64 %92, %struct._IO_FILE* %95)
  %97 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %98 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  %101 = icmp ne i64 %96, %100
  br i1 %101, label %102, label %103

; <label>:102:                                    ; preds = %87
  store i32 1, i32* %5, align 4
  br label %114

; <label>:103:                                    ; preds = %87
  %104 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.ssioffset_s*, %struct.ssioffset_s** %9, align 8
  %108 = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %104, i8* %105, i32* %106, %struct.ssioffset_s* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i8*, i8** %12, align 8
  call void @free(i8* %109) #6
  br label %110

; <label>:110:                                    ; preds = %103, %54
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %114

; <label>:112:                                    ; preds = %51
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %5, align 4
  br label %114

; <label>:114:                                    ; preds = %112, %110, %102, %86, %76, %50, %49, %35
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binary_search(%struct.ssifile_s*, i8*, i32, %struct.ssioffset_s*, i32, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssifile_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ssioffset_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ssifile_s* %0, %struct.ssifile_s** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ssioffset_s* %3, %struct.ssioffset_s** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %6
  store i32 2, i32* %7, align 4
  br label %97

; <label>:23:                                     ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 1, %25
  %27 = call noalias i8* @malloc(i64 %26) #6
  store i8* %27, i8** %14, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %23
  store i32 3, i32* %7, align 4
  br label %97

; <label>:30:                                     ; preds = %23
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = sub i32 %31, 1
  store i32 %32, i32* %16, align 4
  br label %33

; <label>:33:                                     ; preds = %30, %94
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = add i32 %34, %35
  %37 = udiv i32 %36, 2
  store i32 %37, i32* %17, align 4
  %38 = load %struct.ssifile_s*, %struct.ssifile_s** %8, align 8
  %39 = load %struct.ssioffset_s*, %struct.ssioffset_s** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @indexfile_position(%struct.ssifile_s* %38, %struct.ssioffset_s* %39, i32 %40, i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %33
  %45 = load i8*, i8** %14, align 8
  call void @free(i8* %45) #6
  %46 = load i32, i32* %19, align 4
  store i32 %46, i32* %7, align 4
  br label %97

; <label>:47:                                     ; preds = %33
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.ssifile_s*, %struct.ssifile_s** %8, align 8
  %52 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %51, i32 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i64 @fread(i8* %48, i64 1, i64 %50, %struct._IO_FILE* %53)
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %47
  %59 = load i8*, i8** %14, align 8
  call void @free(i8* %59) #6
  store i32 1, i32* %7, align 4
  br label %97

; <label>:60:                                     ; preds = %47
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strcmp(i8* %61, i8* %62) #7
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %60
  br label %95

; <label>:67:                                     ; preds = %60
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp uge i32 %68, %69
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %67
  %72 = load i8*, i8** %14, align 8
  call void @free(i8* %72) #6
  store i32 2, i32* %7, align 4
  br label %97

; <label>:73:                                     ; preds = %67
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %17, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %92

; <label>:79:                                     ; preds = %73
  %80 = load i32, i32* %18, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %91

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %17, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %82
  %86 = load i8*, i8** %14, align 8
  call void @free(i8* %86) #6
  store i32 2, i32* %7, align 4
  br label %97

; <label>:87:                                     ; preds = %82
  %88 = load i32, i32* %17, align 4
  %89 = sub i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %90

; <label>:90:                                     ; preds = %87
  br label %91

; <label>:91:                                     ; preds = %90, %79
  br label %92

; <label>:92:                                     ; preds = %91, %76
  br label %93

; <label>:93:                                     ; preds = %92
  br label %94

; <label>:94:                                     ; preds = %93
  br label %33

; <label>:95:                                     ; preds = %66
  %96 = load i8*, i8** %14, align 8
  call void @free(i8* %96) #6
  store i32 0, i32* %7, align 4
  br label %97

; <label>:97:                                     ; preds = %95, %85, %71, %58, %44, %29, %22
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_i16(%struct._IO_FILE*, i16*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16, align 2
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i16* %1, i16** %5, align 8
  %7 = bitcast i16* %6 to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %9 = call i64 @fread(i8* %7, i64 2, i64 1, %struct._IO_FILE* %8)
  %10 = icmp ne i64 %9, 1
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

; <label>:12:                                     ; preds = %2
  %13 = load i16, i16* %6, align 2
  %14 = call zeroext i16 @sre_ntoh16(i16 zeroext %13)
  %15 = load i16*, i16** %5, align 8
  store i16 %14, i16* %15, align 2
  store i32 1, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %12, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_offset(%struct._IO_FILE*, i8 signext, %struct.ssioffset_s*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.ssioffset_s*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.ssioffset_s* %2, %struct.ssioffset_s** %7, align 8
  %8 = load i8, i8* %6, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %3
  %12 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %13 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %12, i32 0, i32 0
  store i8 0, i8* %13, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %15 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %16 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %15, i32 0, i32 1
  %17 = bitcast %union.anon* %16 to i32*
  %18 = call i32 @read_i32(%struct._IO_FILE* %14, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %11
  store i32 0, i32* %4, align 4
  br label %40

; <label>:21:                                     ; preds = %11
  br label %39

; <label>:22:                                     ; preds = %3
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %37

; <label>:26:                                     ; preds = %22
  %27 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %28 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %27, i32 0, i32 0
  store i8 1, i8* %28, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %30 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %31 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %30, i32 0, i32 1
  %32 = bitcast %union.anon* %31 to i64*
  %33 = call i32 @read_i64(%struct._IO_FILE* %29, i64* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

; <label>:35:                                     ; preds = %26
  store i32 0, i32* %4, align 4
  br label %40

; <label>:36:                                     ; preds = %26
  br label %38

; <label>:37:                                     ; preds = %22
  store i32 0, i32* %4, align 4
  br label %40

; <label>:38:                                     ; preds = %36
  br label %39

; <label>:39:                                     ; preds = %38, %21
  store i32 1, i32* %4, align 4
  br label %40

; <label>:40:                                     ; preds = %39, %37, %35, %20
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIGetOffsetByNumber(%struct.ssifile_s*, i32, i32*, %struct.ssioffset_s*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssifile_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ssioffset_s*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  store %struct.ssifile_s* %0, %struct.ssifile_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.ssioffset_s* %3, %struct.ssioffset_s** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %14 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %12, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %4
  store i32 2, i32* %5, align 4
  br label %77

; <label>:18:                                     ; preds = %4
  %19 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %20 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %21 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %20, i32 0, i32 12
  %22 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %23 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @indexfile_position(%struct.ssifile_s* %19, %struct.ssioffset_s* %21, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %18
  store i32 8, i32* %5, align 4
  br label %77

; <label>:29:                                     ; preds = %18
  %30 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %31 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 1, %33
  %35 = call noalias i8* @malloc(i64 %34) #6
  store i8* %35, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %29
  store i32 3, i32* %5, align 4
  br label %77

; <label>:38:                                     ; preds = %29
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %41 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %45 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %44, i32 0, i32 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %45, align 8
  %47 = call i64 @fread(i8* %39, i64 1, i64 %43, %struct._IO_FILE* %46)
  %48 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %49 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %38
  store i32 1, i32* %5, align 4
  br label %77

; <label>:54:                                     ; preds = %38
  %55 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %56 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %55, i32 0, i32 0
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %56, align 8
  %58 = call i32 @read_i16(%struct._IO_FILE* %57, i16* %10)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %54
  store i32 1, i32* %5, align 4
  br label %77

; <label>:61:                                     ; preds = %54
  %62 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %63 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %62, i32 0, i32 0
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %63, align 8
  %65 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %66 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %65, i32 0, i32 15
  %67 = load i8, i8* %66, align 1
  %68 = load %struct.ssioffset_s*, %struct.ssioffset_s** %9, align 8
  %69 = call i32 @read_offset(%struct._IO_FILE* %64, i8 signext %67, %struct.ssioffset_s* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

; <label>:71:                                     ; preds = %61
  store i32 1, i32* %5, align 4
  br label %77

; <label>:72:                                     ; preds = %61
  %73 = load i16, i16* %10, align 2
  %74 = zext i16 %73 to i32
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i8*, i8** %11, align 8
  call void @free(i8* %76) #6
  store i32 0, i32* %5, align 4
  br label %77

; <label>:77:                                     ; preds = %72, %71, %60, %53, %37, %28, %17
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indexfile_position(%struct.ssifile_s*, %struct.ssioffset_s*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssifile_s*, align 8
  %7 = alloca %struct.ssioffset_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ssioffset_s, align 8
  %11 = alloca i32, align 4
  store %struct.ssifile_s* %0, %struct.ssifile_s** %6, align 8
  store %struct.ssioffset_s* %1, %struct.ssioffset_s** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %13 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %10, i32 0, i32 0
  store i8 0, i8* %18, align 8
  %19 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %20 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %19, i32 0, i32 1
  %21 = bitcast %union.anon* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul i32 %23, %24
  %26 = add i32 %22, %25
  %27 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %10, i32 0, i32 1
  %28 = bitcast %union.anon* %27 to i32*
  store i32 %26, i32* %28, align 8
  br label %50

; <label>:29:                                     ; preds = %4
  %30 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %31 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 8
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %48

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %10, i32 0, i32 0
  store i8 1, i8* %36, align 8
  %37 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %38 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %37, i32 0, i32 1
  %39 = bitcast %union.anon* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = add i64 %40, %44
  %46 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %10, i32 0, i32 1
  %47 = bitcast %union.anon* %46 to i64*
  store i64 %45, i64* %47, align 8
  br label %49

; <label>:48:                                     ; preds = %29
  store i32 0, i32* %5, align 4
  br label %59

; <label>:49:                                     ; preds = %35
  br label %50

; <label>:50:                                     ; preds = %49, %17
  %51 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %52 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %51, i32 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 @SSISetFilePosition(%struct._IO_FILE* %53, %struct.ssioffset_s* %10)
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %50
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %59

; <label>:58:                                     ; preds = %50
  store i32 0, i32* %5, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %56, %48
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIGetSubseqOffset(%struct.ssifile_s*, i8*, i32, i32*, %struct.ssioffset_s*, %struct.ssioffset_s*, i32*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ssifile_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ssioffset_s*, align 8
  %14 = alloca %struct.ssioffset_s*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ssifile_s* %0, %struct.ssifile_s** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.ssioffset_s* %4, %struct.ssioffset_s** %13, align 8
  store %struct.ssioffset_s* %5, %struct.ssioffset_s** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.ssioffset_s*, %struct.ssioffset_s** %13, align 8
  %26 = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %22, i8* %23, i32* %24, %struct.ssioffset_s* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %7
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %8, align 4
  br label %207

; <label>:31:                                     ; preds = %7
  %32 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %33 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %32, i32 0, i32 18
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %31
  store i32 10, i32* %8, align 4
  br label %207

; <label>:43:                                     ; preds = %31
  %44 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %45 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %44, i32 0, i32 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %45, align 8
  %47 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %48 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %47, i32 0, i32 15
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %51 = call i32 @read_offset(%struct._IO_FILE* %46, i8 signext %49, %struct.ssioffset_s* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %43
  store i32 1, i32* %8, align 4
  br label %207

; <label>:54:                                     ; preds = %43
  %55 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %56 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %55, i32 0, i32 0
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %56, align 8
  %58 = call i32 @read_i32(%struct._IO_FILE* %57, i32* %17)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %54
  store i32 1, i32* %8, align 4
  br label %207

; <label>:61:                                     ; preds = %54
  %62 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %63 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %62, i32 0, i32 20
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %18, align 4
  %70 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %71 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %70, i32 0, i32 19
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %18, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

; <label>:85:                                     ; preds = %61
  %86 = load i32, i32* %19, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %85, %61
  store i32 10, i32* %8, align 4
  br label %207

; <label>:89:                                     ; preds = %85
  %90 = load i32, i32* %20, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %96, label %92

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %92, %89
  store i32 11, i32* %8, align 4
  br label %207

; <label>:97:                                     ; preds = %92
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %158

; <label>:102:                                    ; preds = %97
  %103 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %104 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %103, i32 0, i32 15
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %127

; <label>:108:                                    ; preds = %102
  %109 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %110 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %109, i32 0, i32 0
  store i8 0, i8* %110, align 8
  %111 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %112 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %111, i32 0, i32 1
  %113 = bitcast %union.anon* %112 to i32*
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %19, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add i32 %114, %117
  %119 = load i32, i32* %20, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load i32, i32* %18, align 4
  %122 = srem i32 %120, %121
  %123 = add i32 %118, %122
  %124 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %125 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %124, i32 0, i32 1
  %126 = bitcast %union.anon* %125 to i32*
  store i32 %123, i32* %126, align 8
  br label %155

; <label>:127:                                    ; preds = %102
  %128 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %129 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %128, i32 0, i32 15
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %154

; <label>:133:                                    ; preds = %127
  %134 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %135 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %134, i32 0, i32 0
  store i8 1, i8* %135, align 8
  %136 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %137 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %136, i32 0, i32 1
  %138 = bitcast %union.anon* %137 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %19, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = add i64 %139, %143
  %145 = load i32, i32* %20, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i32, i32* %18, align 4
  %148 = srem i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = add i64 %144, %149
  %151 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %152 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %151, i32 0, i32 1
  %153 = bitcast %union.anon* %152 to i64*
  store i64 %150, i64* %153, align 8
  br label %154

; <label>:154:                                    ; preds = %133, %127
  br label %155

; <label>:155:                                    ; preds = %154, %108
  %156 = load i32, i32* %11, align 4
  %157 = load i32*, i32** %15, align 8
  store i32 %156, i32* %157, align 4
  br label %206

; <label>:158:                                    ; preds = %97
  %159 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %160 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %159, i32 0, i32 15
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %178

; <label>:164:                                    ; preds = %158
  %165 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %166 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %165, i32 0, i32 0
  store i8 0, i8* %166, align 8
  %167 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %168 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %167, i32 0, i32 1
  %169 = bitcast %union.anon* %168 to i32*
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* %19, align 4
  %173 = mul nsw i32 %171, %172
  %174 = add i32 %170, %173
  %175 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %176 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %175, i32 0, i32 1
  %177 = bitcast %union.anon* %176 to i32*
  store i32 %174, i32* %177, align 8
  br label %200

; <label>:178:                                    ; preds = %158
  %179 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %180 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %179, i32 0, i32 15
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %199

; <label>:184:                                    ; preds = %178
  %185 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %186 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %185, i32 0, i32 0
  store i8 1, i8* %186, align 8
  %187 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %188 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %187, i32 0, i32 1
  %189 = bitcast %union.anon* %188 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %19, align 4
  %193 = mul nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = add i64 %190, %194
  %196 = load %struct.ssioffset_s*, %struct.ssioffset_s** %14, align 8
  %197 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %196, i32 0, i32 1
  %198 = bitcast %union.anon* %197 to i64*
  store i64 %195, i64* %198, align 8
  br label %199

; <label>:199:                                    ; preds = %184, %178
  br label %200

; <label>:200:                                    ; preds = %199, %164
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %18, align 4
  %203 = mul nsw i32 %201, %202
  %204 = add nsw i32 1, %203
  %205 = load i32*, i32** %15, align 8
  store i32 %204, i32* %205, align 4
  br label %206

; <label>:206:                                    ; preds = %200, %155
  store i32 0, i32* %8, align 4
  br label %207

; <label>:207:                                    ; preds = %206, %96, %88, %60, %53, %42, %29
  %208 = load i32, i32* %8, align 4
  ret i32 %208
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_i32(%struct._IO_FILE*, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %9 = call i64 @fread(i8* %7, i64 4, i64 1, %struct._IO_FILE* %8)
  %10 = icmp ne i64 %9, 1
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @sre_ntoh32(i32 %13)
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  store i32 1, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %12, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.ssioffset_s*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.ssioffset_s* %1, %struct.ssioffset_s** %5, align 8
  %6 = load %struct.ssioffset_s*, %struct.ssioffset_s** %5, align 8
  %7 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 8
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %13 = load %struct.ssioffset_s*, %struct.ssioffset_s** %5, align 8
  %14 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %13, i32 0, i32 1
  %15 = bitcast %union.anon* %14 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = zext i32 %16 to i64
  %18 = call i32 @fseek(%struct._IO_FILE* %12, i64 %17, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %11
  store i32 8, i32* %3, align 4
  br label %24

; <label>:21:                                     ; preds = %11
  br label %23

; <label>:22:                                     ; preds = %2
  store i32 7, i32* %3, align 4
  br label %24

; <label>:23:                                     ; preds = %21
  store i32 0, i32* %3, align 4
  br label %24

; <label>:24:                                     ; preds = %23, %22, %20
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIFileInfo(%struct.ssifile_s*, i32, i8**, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssifile_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  store %struct.ssifile_s* %0, %struct.ssifile_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

; <label>:12:                                     ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %15 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %14, i32 0, i32 2
  %16 = load i16, i16* %15, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %12, %4
  store i32 12, i32* %5, align 4
  br label %37

; <label>:20:                                     ; preds = %12
  %21 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %22 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %21, i32 0, i32 16
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %8, align 8
  store i8* %27, i8** %28, align 8
  %29 = load %struct.ssifile_s*, %struct.ssifile_s** %6, align 8
  %30 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %29, i32 0, i32 17
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %37

; <label>:37:                                     ; preds = %20, %19
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define void @SSIClose(%struct.ssifile_s*) #0 {
  %2 = alloca %struct.ssifile_s*, align 8
  store %struct.ssifile_s* %0, %struct.ssifile_s** %2, align 8
  %3 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %4 = icmp ne %struct.ssifile_s* %3, null
  br i1 %4, label %5, label %19

; <label>:5:                                      ; preds = %1
  %6 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  call void @clear_ssifile(%struct.ssifile_s* %6)
  %7 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %8 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %7, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %10 = icmp ne %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %5
  %12 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %13 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %12, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %15 = call i32 @fclose(%struct._IO_FILE* %14)
  br label %16

; <label>:16:                                     ; preds = %11, %5
  %17 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %18 = bitcast %struct.ssifile_s* %17 to i8*
  call void @free(i8* %18) #6
  br label %19

; <label>:19:                                     ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ssifile(%struct.ssifile_s*) #0 {
  %2 = alloca %struct.ssifile_s*, align 8
  %3 = alloca i32, align 4
  store %struct.ssifile_s* %0, %struct.ssifile_s** %2, align 8
  %4 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %5 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %4, i32 0, i32 16
  %6 = load i8**, i8*** %5, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %8, label %42

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %34, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %12 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %11, i32 0, i32 2
  %13 = load i16, i16* %12, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %37

; <label>:16:                                     ; preds = %9
  %17 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %18 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %17, i32 0, i32 16
  %19 = load i8**, i8*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %16
  %26 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %27 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %26, i32 0, i32 16
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  call void @free(i8* %32) #6
  br label %33

; <label>:33:                                     ; preds = %25, %16
  br label %34

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %9

; <label>:37:                                     ; preds = %9
  %38 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %39 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %38, i32 0, i32 16
  %40 = load i8**, i8*** %39, align 8
  %41 = bitcast i8** %40 to i8*
  call void @free(i8* %41) #6
  br label %42

; <label>:42:                                     ; preds = %37, %1
  %43 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %44 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %43, i32 0, i32 17
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %42
  %48 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %49 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %48, i32 0, i32 17
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to i8*
  call void @free(i8* %51) #6
  br label %52

; <label>:52:                                     ; preds = %47, %42
  %53 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %54 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %53, i32 0, i32 18
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

; <label>:57:                                     ; preds = %52
  %58 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %59 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %58, i32 0, i32 18
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast i32* %60 to i8*
  call void @free(i8* %61) #6
  br label %62

; <label>:62:                                     ; preds = %57, %52
  %63 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %64 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %63, i32 0, i32 19
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

; <label>:67:                                     ; preds = %62
  %68 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %69 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %68, i32 0, i32 19
  %70 = load i32*, i32** %69, align 8
  %71 = bitcast i32* %70 to i8*
  call void @free(i8* %71) #6
  br label %72

; <label>:72:                                     ; preds = %67, %62
  %73 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %74 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %73, i32 0, i32 20
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

; <label>:77:                                     ; preds = %72
  %78 = load %struct.ssifile_s*, %struct.ssifile_s** %2, align 8
  %79 = getelementptr inbounds %struct.ssifile_s, %struct.ssifile_s* %78, i32 0, i32 20
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to i8*
  call void @free(i8* %81) #6
  br label %82

; <label>:82:                                     ; preds = %77, %72
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIRecommendMode(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.ssiindex_s* @SSICreateIndex(i32) #0 {
  %2 = alloca %struct.ssiindex_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssiindex_s*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ssiindex_s* null, %struct.ssiindex_s** %4, align 8
  %5 = call noalias i8* @malloc(i64 120) #6
  %6 = bitcast i8* %5 to %struct.ssiindex_s*
  store %struct.ssiindex_s* %6, %struct.ssiindex_s** %4, align 8
  %7 = icmp eq %struct.ssiindex_s* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  br label %98

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %12 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %14 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %16 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %18 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %17, i32 0, i32 3
  store i32 200, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %9
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i32 0, i32 0))
  br label %22

; <label>:22:                                     ; preds = %21, %9
  %23 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %24 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %23, i32 0, i32 4
  store i8** null, i8*** %24, align 8
  %25 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %26 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %28 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %27, i32 0, i32 6
  store i32* null, i32** %28, align 8
  %29 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %30 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %29, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %32 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %31, i32 0, i32 8
  store i32 0, i32* %32, align 8
  %33 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %34 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %33, i32 0, i32 9
  store i16 0, i16* %34, align 4
  %35 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %36 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %35, i32 0, i32 10
  store %struct.ssipkey_s* null, %struct.ssipkey_s** %36, align 8
  %37 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %38 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %37, i32 0, i32 11
  store i32 0, i32* %38, align 8
  %39 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %40 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %39, i32 0, i32 12
  store i32 0, i32* %40, align 4
  %41 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %42 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %41, i32 0, i32 13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %42, align 8
  %43 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %44 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %43, i32 0, i32 14
  store %struct._IO_FILE* null, %struct._IO_FILE** %44, align 8
  %45 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %46 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %45, i32 0, i32 15
  store %struct.ssiskey_s* null, %struct.ssiskey_s** %46, align 8
  %47 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %48 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %47, i32 0, i32 16
  store i32 0, i32* %48, align 8
  %49 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %50 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %49, i32 0, i32 17
  store i32 0, i32* %50, align 4
  %51 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %52 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %51, i32 0, i32 18
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %52, align 8
  %53 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %54 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %53, i32 0, i32 19
  store %struct._IO_FILE* null, %struct._IO_FILE** %54, align 8
  %55 = call noalias i8* @malloc(i64 80) #6
  %56 = bitcast i8* %55 to i8**
  %57 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %58 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %57, i32 0, i32 4
  store i8** %56, i8*** %58, align 8
  %59 = icmp eq i8** %56, null
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %22
  br label %98

; <label>:61:                                     ; preds = %22
  %62 = call noalias i8* @malloc(i64 40) #6
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %65 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %64, i32 0, i32 5
  store i32* %63, i32** %65, align 8
  %66 = icmp eq i32* %63, null
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %61
  br label %98

; <label>:68:                                     ; preds = %61
  %69 = call noalias i8* @malloc(i64 40) #6
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %72 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %71, i32 0, i32 6
  store i32* %70, i32** %72, align 8
  %73 = icmp eq i32* %70, null
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %68
  br label %98

; <label>:75:                                     ; preds = %68
  %76 = call noalias i8* @malloc(i64 40) #6
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %79 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %78, i32 0, i32 7
  store i32* %77, i32** %79, align 8
  %80 = icmp eq i32* %77, null
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %75
  br label %98

; <label>:82:                                     ; preds = %75
  %83 = call noalias i8* @malloc(i64 5600) #6
  %84 = bitcast i8* %83 to %struct.ssipkey_s*
  %85 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %86 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %85, i32 0, i32 10
  store %struct.ssipkey_s* %84, %struct.ssipkey_s** %86, align 8
  %87 = icmp eq %struct.ssipkey_s* %84, null
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %82
  br label %98

; <label>:89:                                     ; preds = %82
  %90 = call noalias i8* @malloc(i64 5600) #6
  %91 = bitcast i8* %90 to %struct.ssiskey_s*
  %92 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  %93 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %92, i32 0, i32 15
  store %struct.ssiskey_s* %91, %struct.ssiskey_s** %93, align 8
  %94 = icmp eq %struct.ssiskey_s* %91, null
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %89
  br label %98

; <label>:96:                                     ; preds = %89
  %97 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  store %struct.ssiindex_s* %97, %struct.ssiindex_s** %2, align 8
  br label %100

; <label>:98:                                     ; preds = %95, %88, %81, %74, %67, %60, %8
  %99 = load %struct.ssiindex_s*, %struct.ssiindex_s** %4, align 8
  call void @SSIFreeIndex(%struct.ssiindex_s* %99)
  store %struct.ssiindex_s* null, %struct.ssiindex_s** %2, align 8
  br label %100

; <label>:100:                                    ; preds = %98, %96
  %101 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  ret %struct.ssiindex_s* %101
}

declare void @Die(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @SSIFreeIndex(%struct.ssiindex_s*) #0 {
  %2 = alloca %struct.ssiindex_s*, align 8
  %3 = alloca i32, align 4
  store %struct.ssiindex_s* %0, %struct.ssiindex_s** %2, align 8
  %4 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %5 = icmp ne %struct.ssiindex_s* %4, null
  br i1 %5, label %6, label %180

; <label>:6:                                      ; preds = %1
  %7 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %8 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %89

; <label>:11:                                     ; preds = %6
  store i32 0, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %27, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %15 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %30

; <label>:18:                                     ; preds = %12
  %19 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %20 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %19, i32 0, i32 10
  %21 = load %struct.ssipkey_s*, %struct.ssipkey_s** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %21, i64 %23
  %25 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  call void @free(i8* %26) #6
  br label %27

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

; <label>:30:                                     ; preds = %12
  store i32 0, i32* %3, align 4
  br label %31

; <label>:31:                                     ; preds = %46, %30
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %34 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %33, i32 0, i32 17
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %49

; <label>:37:                                     ; preds = %31
  %38 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %39 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %38, i32 0, i32 15
  %40 = load %struct.ssiskey_s*, %struct.ssiskey_s** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %40, i64 %42
  %44 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  call void @free(i8* %45) #6
  br label %46

; <label>:46:                                     ; preds = %37
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %31

; <label>:49:                                     ; preds = %31
  store i32 0, i32* %3, align 4
  br label %50

; <label>:50:                                     ; preds = %65, %49
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %53 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %52, i32 0, i32 17
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %68

; <label>:56:                                     ; preds = %50
  %57 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %58 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %57, i32 0, i32 15
  %59 = load %struct.ssiskey_s*, %struct.ssiskey_s** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %59, i64 %61
  %63 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  call void @free(i8* %64) #6
  br label %65

; <label>:65:                                     ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %50

; <label>:68:                                     ; preds = %50
  %69 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %70 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %69, i32 0, i32 10
  %71 = load %struct.ssipkey_s*, %struct.ssipkey_s** %70, align 8
  %72 = icmp ne %struct.ssipkey_s* %71, null
  br i1 %72, label %73, label %78

; <label>:73:                                     ; preds = %68
  %74 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %75 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %74, i32 0, i32 10
  %76 = load %struct.ssipkey_s*, %struct.ssipkey_s** %75, align 8
  %77 = bitcast %struct.ssipkey_s* %76 to i8*
  call void @free(i8* %77) #6
  br label %78

; <label>:78:                                     ; preds = %73, %68
  %79 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %80 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %79, i32 0, i32 15
  %81 = load %struct.ssiskey_s*, %struct.ssiskey_s** %80, align 8
  %82 = icmp ne %struct.ssiskey_s* %81, null
  br i1 %82, label %83, label %88

; <label>:83:                                     ; preds = %78
  %84 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %85 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %84, i32 0, i32 15
  %86 = load %struct.ssiskey_s*, %struct.ssiskey_s** %85, align 8
  %87 = bitcast %struct.ssiskey_s* %86 to i8*
  call void @free(i8* %87) #6
  br label %88

; <label>:88:                                     ; preds = %83, %78
  br label %118

; <label>:89:                                     ; preds = %6
  %90 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %91 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %90, i32 0, i32 14
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %91, align 8
  %93 = icmp ne %struct._IO_FILE* %92, null
  br i1 %93, label %94, label %99

; <label>:94:                                     ; preds = %89
  %95 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %96 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %95, i32 0, i32 14
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %96, align 8
  %98 = call i32 @fclose(%struct._IO_FILE* %97)
  br label %99

; <label>:99:                                     ; preds = %94, %89
  %100 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %101 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %100, i32 0, i32 19
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %101, align 8
  %103 = icmp ne %struct._IO_FILE* %102, null
  br i1 %103, label %104, label %109

; <label>:104:                                    ; preds = %99
  %105 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %106 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %105, i32 0, i32 19
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %106, align 8
  %108 = call i32 @fclose(%struct._IO_FILE* %107)
  br label %109

; <label>:109:                                    ; preds = %104, %99
  %110 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %111 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %110, i32 0, i32 13
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @remove(i8* %112) #6
  %114 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %115 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %114, i32 0, i32 18
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @remove(i8* %116) #6
  br label %118

; <label>:118:                                    ; preds = %109, %88
  store i32 0, i32* %3, align 4
  br label %119

; <label>:119:                                    ; preds = %134, %118
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %122 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %121, i32 0, i32 9
  %123 = load i16, i16* %122, align 4
  %124 = zext i16 %123 to i32
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %137

; <label>:126:                                    ; preds = %119
  %127 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %128 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %127, i32 0, i32 4
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  call void @free(i8* %133) #6
  br label %134

; <label>:134:                                    ; preds = %126
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %119

; <label>:137:                                    ; preds = %119
  %138 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %139 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %138, i32 0, i32 4
  %140 = load i8**, i8*** %139, align 8
  %141 = icmp ne i8** %140, null
  br i1 %141, label %142, label %147

; <label>:142:                                    ; preds = %137
  %143 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %144 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %143, i32 0, i32 4
  %145 = load i8**, i8*** %144, align 8
  %146 = bitcast i8** %145 to i8*
  call void @free(i8* %146) #6
  br label %147

; <label>:147:                                    ; preds = %142, %137
  %148 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %149 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %157

; <label>:152:                                    ; preds = %147
  %153 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %154 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %153, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = bitcast i32* %155 to i8*
  call void @free(i8* %156) #6
  br label %157

; <label>:157:                                    ; preds = %152, %147
  %158 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %159 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %158, i32 0, i32 6
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %167

; <label>:162:                                    ; preds = %157
  %163 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %164 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %163, i32 0, i32 6
  %165 = load i32*, i32** %164, align 8
  %166 = bitcast i32* %165 to i8*
  call void @free(i8* %166) #6
  br label %167

; <label>:167:                                    ; preds = %162, %157
  %168 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %169 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %168, i32 0, i32 7
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %177

; <label>:172:                                    ; preds = %167
  %173 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %174 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %173, i32 0, i32 7
  %175 = load i32*, i32** %174, align 8
  %176 = bitcast i32* %175 to i8*
  call void @free(i8* %176) #6
  br label %177

; <label>:177:                                    ; preds = %172, %167
  %178 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %179 = bitcast %struct.ssiindex_s* %178 to i8*
  call void @free(i8* %179) #6
  br label %180

; <label>:180:                                    ; preds = %177, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIGetFilePosition(%struct._IO_FILE*, i32, %struct.ssioffset_s*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssioffset_s*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ssioffset_s* %2, %struct.ssioffset_s** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

; <label>:10:                                     ; preds = %3
  %11 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %12 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %11, i32 0, i32 0
  store i8 0, i8* %12, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %14 = call i64 @ftell(%struct._IO_FILE* %13)
  %15 = trunc i64 %14 to i32
  %16 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %17 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %16, i32 0, i32 1
  %18 = bitcast %union.anon* %17 to i32*
  store i32 %15, i32* %18, align 8
  %19 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %20 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %19, i32 0, i32 1
  %21 = bitcast %union.anon* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %10
  store i32 9, i32* %4, align 4
  br label %34

; <label>:25:                                     ; preds = %10
  br label %33

; <label>:26:                                     ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  call void @abort() #8
  unreachable

; <label>:30:                                     ; preds = %26
  %31 = load %struct.ssioffset_s*, %struct.ssioffset_s** %7, align 8
  %32 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %31, i32 0, i32 0
  store i8 1, i8* %32, align 8
  store i32 7, i32* %4, align 4
  br label %34

; <label>:33:                                     ; preds = %25
  store i32 0, i32* %4, align 4
  br label %34

; <label>:34:                                     ; preds = %33, %30, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare i64 @ftell(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIAddFileToIndex(%struct.ssiindex_s*, i8*, i32, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssiindex_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ssiindex_s* %0, %struct.ssiindex_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %12 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %11, i32 0, i32 9
  %13 = load i16, i16* %12, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp sge i32 %14, 32767
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %4
  store i32 13, i32* %5, align 4
  br label %169

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strlen(i8* %18) #7
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  %23 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %24 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %31 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  br label %32

; <label>:32:                                     ; preds = %27, %17
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @FileTail(i8* %33, i32 0)
  %35 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %36 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %35, i32 0, i32 4
  %37 = load i8**, i8*** %36, align 8
  %38 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %39 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %38, i32 0, i32 9
  %40 = load i16, i16* %39, align 4
  %41 = zext i16 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %37, i64 %41
  store i8* %34, i8** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %45 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %48 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %47, i32 0, i32 9
  %49 = load i16, i16* %48, align 4
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32 %43, i32* %51, align 4
  %52 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %53 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %56 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %55, i32 0, i32 9
  %57 = load i16, i16* %56, align 4
  %58 = zext i16 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32 0, i32* %59, align 4
  %60 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %61 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %64 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %63, i32 0, i32 9
  %65 = load i16, i16* %64, align 4
  %66 = zext i16 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %69 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %68, i32 0, i32 9
  %70 = load i16, i16* %69, align 4
  %71 = zext i16 %70 to i32
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %74 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %73, i32 0, i32 9
  %75 = load i16, i16* %74, align 4
  %76 = add i16 %75, 1
  store i16 %76, i16* %74, align 4
  %77 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %78 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %77, i32 0, i32 9
  %79 = load i16, i16* %78, align 4
  %80 = zext i16 %79 to i32
  %81 = srem i32 %80, 10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %168

; <label>:83:                                     ; preds = %32
  %84 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %85 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %84, i32 0, i32 4
  %86 = load i8**, i8*** %85, align 8
  %87 = bitcast i8** %86 to i8*
  %88 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %89 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %88, i32 0, i32 9
  %90 = load i16, i16* %89, align 4
  %91 = zext i16 %90 to i32
  %92 = add nsw i32 %91, 10
  %93 = sext i32 %92 to i64
  %94 = mul i64 8, %93
  %95 = call i8* @realloc(i8* %87, i64 %94) #6
  %96 = bitcast i8* %95 to i8**
  %97 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %98 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %97, i32 0, i32 4
  store i8** %96, i8*** %98, align 8
  %99 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %100 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %99, i32 0, i32 4
  %101 = load i8**, i8*** %100, align 8
  %102 = icmp eq i8** %101, null
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %83
  store i32 3, i32* %5, align 4
  br label %169

; <label>:104:                                    ; preds = %83
  %105 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %106 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = bitcast i32* %107 to i8*
  %109 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %110 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %109, i32 0, i32 9
  %111 = load i16, i16* %110, align 4
  %112 = zext i16 %111 to i32
  %113 = add nsw i32 %112, 10
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = call i8* @realloc(i8* %108, i64 %115) #6
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %119 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %118, i32 0, i32 5
  store i32* %117, i32** %119, align 8
  %120 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %121 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %104
  store i32 3, i32* %5, align 4
  br label %169

; <label>:125:                                    ; preds = %104
  %126 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %127 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = bitcast i32* %128 to i8*
  %130 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %131 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %130, i32 0, i32 9
  %132 = load i16, i16* %131, align 4
  %133 = zext i16 %132 to i32
  %134 = add nsw i32 %133, 10
  %135 = sext i32 %134 to i64
  %136 = mul i64 4, %135
  %137 = call i8* @realloc(i8* %129, i64 %136) #6
  %138 = bitcast i8* %137 to i32*
  %139 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %140 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %139, i32 0, i32 6
  store i32* %138, i32** %140, align 8
  %141 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %142 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %141, i32 0, i32 6
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

; <label>:145:                                    ; preds = %125
  store i32 3, i32* %5, align 4
  br label %169

; <label>:146:                                    ; preds = %125
  %147 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %148 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %147, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  %150 = bitcast i32* %149 to i8*
  %151 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %152 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %151, i32 0, i32 9
  %153 = load i16, i16* %152, align 4
  %154 = zext i16 %153 to i32
  %155 = add nsw i32 %154, 10
  %156 = sext i32 %155 to i64
  %157 = mul i64 4, %156
  %158 = call i8* @realloc(i8* %150, i64 %157) #6
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %161 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %160, i32 0, i32 7
  store i32* %159, i32** %161, align 8
  %162 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %163 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %167

; <label>:166:                                    ; preds = %146
  store i32 3, i32* %5, align 4
  br label %169

; <label>:167:                                    ; preds = %146
  br label %168

; <label>:168:                                    ; preds = %167, %32
  store i32 0, i32* %5, align 4
  br label %169

; <label>:169:                                    ; preds = %168, %166, %145, %124, %103, %16
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @FileTail(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSISetFileForSubseq(%struct.ssiindex_s*, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssiindex_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ssiindex_s* %0, %struct.ssiindex_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

; <label>:12:                                     ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %15 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %14, i32 0, i32 9
  %16 = load i16, i16* %15, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %12, %4
  store i32 12, i32* %5, align 4
  br label %42

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23, %20
  store i32 12, i32* %5, align 4
  br label %42

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %30 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.ssiindex_s*, %struct.ssiindex_s** %6, align 8
  %37 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %42

; <label>:42:                                     ; preds = %27, %26, %19
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIAddPrimaryKeyToIndex(%struct.ssiindex_s*, i8*, i32, %struct.ssioffset_s*, %struct.ssioffset_s*, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssiindex_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ssioffset_s*, align 8
  %12 = alloca %struct.ssioffset_s*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ssiindex_s* %0, %struct.ssiindex_s** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ssioffset_s* %3, %struct.ssioffset_s** %11, align 8
  store %struct.ssioffset_s* %4, %struct.ssioffset_s** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sge i32 %15, 32767
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %6
  store i32 13, i32* %7, align 4
  br label %250

; <label>:18:                                     ; preds = %6
  %19 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %20 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp sge i64 %22, 2147483647
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %18
  store i32 14, i32* %7, align 4
  br label %250

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %13, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %25
  %29 = load %struct.ssioffset_s*, %struct.ssioffset_s** %12, align 8
  %30 = icmp eq %struct.ssioffset_s* %29, null
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call void @abort() #8
  unreachable

; <label>:32:                                     ; preds = %28, %25
  %33 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %34 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

; <label>:37:                                     ; preds = %32
  %38 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %39 = call i64 @current_index_size(%struct.ssiindex_s* %38)
  %40 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %41 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp uge i64 %39, %43
  br i1 %44, label %45, label %51

; <label>:45:                                     ; preds = %37
  %46 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %47 = call i32 @activate_external_sort(%struct.ssiindex_s* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %45
  store i32 4, i32* %7, align 4
  br label %250

; <label>:50:                                     ; preds = %45
  br label %51

; <label>:51:                                     ; preds = %50, %37, %32
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @strlen(i8* %52) #7
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %58 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = icmp ugt i32 %56, %59
  br i1 %60, label %61, label %66

; <label>:61:                                     ; preds = %51
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  %64 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %65 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %64, i32 0, i32 11
  store i32 %63, i32* %65, align 8
  br label %66

; <label>:66:                                     ; preds = %61, %51
  %67 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %68 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %129

; <label>:71:                                     ; preds = %66
  %72 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %73 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %101

; <label>:76:                                     ; preds = %71
  %77 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %78 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %77, i32 0, i32 14
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %78, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.ssioffset_s*, %struct.ssioffset_s** %11, align 8
  %83 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %82, i32 0, i32 1
  %84 = bitcast %union.anon* %83 to i32*
  %85 = load i32, i32* %84, align 8
  %86 = zext i32 %85 to i64
  %87 = load %struct.ssioffset_s*, %struct.ssioffset_s** %12, align 8
  %88 = icmp eq %struct.ssioffset_s* %87, null
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %76
  br label %95

; <label>:90:                                     ; preds = %76
  %91 = load %struct.ssioffset_s*, %struct.ssioffset_s** %12, align 8
  %92 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %91, i32 0, i32 1
  %93 = bitcast %union.anon* %92 to i32*
  %94 = load i32, i32* %93, align 8
  br label %95

; <label>:95:                                     ; preds = %90, %89
  %96 = phi i32 [ 0, %89 ], [ %94, %90 ]
  %97 = zext i32 %96 to i64
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* %80, i32 %81, i64 %86, i64 %97, i64 %99)
  br label %124

; <label>:101:                                    ; preds = %71
  %102 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %103 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %102, i32 0, i32 14
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %103, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.ssioffset_s*, %struct.ssioffset_s** %11, align 8
  %108 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %107, i32 0, i32 1
  %109 = bitcast %union.anon* %108 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ssioffset_s*, %struct.ssioffset_s** %12, align 8
  %112 = icmp eq %struct.ssioffset_s* %111, null
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %101
  br label %119

; <label>:114:                                    ; preds = %101
  %115 = load %struct.ssioffset_s*, %struct.ssioffset_s** %12, align 8
  %116 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %115, i32 0, i32 1
  %117 = bitcast %union.anon* %116 to i64*
  %118 = load i64, i64* %117, align 8
  br label %119

; <label>:119:                                    ; preds = %114, %113
  %120 = phi i64 [ 0, %113 ], [ %118, %114 ]
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* %105, i32 %106, i64 %110, i64 %120, i64 %122)
  br label %124

; <label>:124:                                    ; preds = %119, %95
  %125 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %126 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %126, align 4
  store i32 0, i32* %7, align 4
  br label %250

; <label>:129:                                    ; preds = %66
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i8* @sre_strdup(i8* %130, i32 %131)
  %133 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %134 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %133, i32 0, i32 10
  %135 = load %struct.ssipkey_s*, %struct.ssipkey_s** %134, align 8
  %136 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %137 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %136, i32 0, i32 12
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %135, i64 %139
  %141 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %140, i32 0, i32 0
  store i8* %132, i8** %141, align 8
  %142 = icmp eq i8* %132, null
  br i1 %142, label %143, label %144

; <label>:143:                                    ; preds = %129
  store i32 3, i32* %7, align 4
  br label %250

; <label>:144:                                    ; preds = %129
  %145 = load i32, i32* %10, align 4
  %146 = trunc i32 %145 to i16
  %147 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %148 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %147, i32 0, i32 10
  %149 = load %struct.ssipkey_s*, %struct.ssipkey_s** %148, align 8
  %150 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %151 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %149, i64 %153
  %155 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %154, i32 0, i32 1
  store i16 %146, i16* %155, align 8
  %156 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %157 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %156, i32 0, i32 10
  %158 = load %struct.ssipkey_s*, %struct.ssipkey_s** %157, align 8
  %159 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %160 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %158, i64 %162
  %164 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %163, i32 0, i32 2
  %165 = load %struct.ssioffset_s*, %struct.ssioffset_s** %11, align 8
  %166 = bitcast %struct.ssioffset_s* %164 to i8*
  %167 = bitcast %struct.ssioffset_s* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %167, i64 16, i32 8, i1 false)
  %168 = load %struct.ssioffset_s*, %struct.ssioffset_s** %12, align 8
  %169 = icmp ne %struct.ssioffset_s* %168, null
  br i1 %169, label %170, label %196

; <label>:170:                                    ; preds = %144
  %171 = load i32, i32* %13, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %196

; <label>:173:                                    ; preds = %170
  %174 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %175 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %174, i32 0, i32 10
  %176 = load %struct.ssipkey_s*, %struct.ssipkey_s** %175, align 8
  %177 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %178 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %177, i32 0, i32 12
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %176, i64 %180
  %182 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %181, i32 0, i32 3
  %183 = load %struct.ssioffset_s*, %struct.ssioffset_s** %12, align 8
  %184 = bitcast %struct.ssioffset_s* %182 to i8*
  %185 = bitcast %struct.ssioffset_s* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %184, i8* %185, i64 16, i32 8, i1 false)
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %188 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %187, i32 0, i32 10
  %189 = load %struct.ssipkey_s*, %struct.ssipkey_s** %188, align 8
  %190 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %191 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %190, i32 0, i32 12
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %189, i64 %193
  %195 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %194, i32 0, i32 4
  store i32 %186, i32* %195, align 8
  br label %218

; <label>:196:                                    ; preds = %170, %144
  %197 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %198 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %197, i32 0, i32 10
  %199 = load %struct.ssipkey_s*, %struct.ssipkey_s** %198, align 8
  %200 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %201 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %200, i32 0, i32 12
  %202 = load i32, i32* %201, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %199, i64 %203
  %205 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %204, i32 0, i32 3
  %206 = load %struct.ssioffset_s*, %struct.ssioffset_s** %11, align 8
  %207 = bitcast %struct.ssioffset_s* %205 to i8*
  %208 = bitcast %struct.ssioffset_s* %206 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %207, i8* %208, i64 16, i32 8, i1 false)
  %209 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %210 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %209, i32 0, i32 10
  %211 = load %struct.ssipkey_s*, %struct.ssipkey_s** %210, align 8
  %212 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %213 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %212, i32 0, i32 12
  %214 = load i32, i32* %213, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %211, i64 %215
  %217 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %216, i32 0, i32 4
  store i32 0, i32* %217, align 8
  br label %218

; <label>:218:                                    ; preds = %196, %173
  %219 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %220 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %219, i32 0, i32 12
  %221 = load i32, i32* %220, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %220, align 4
  %223 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %224 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %223, i32 0, i32 12
  %225 = load i32, i32* %224, align 4
  %226 = urem i32 %225, 100
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %249

; <label>:228:                                    ; preds = %218
  %229 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %230 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %229, i32 0, i32 10
  %231 = load %struct.ssipkey_s*, %struct.ssipkey_s** %230, align 8
  %232 = bitcast %struct.ssipkey_s* %231 to i8*
  %233 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %234 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %233, i32 0, i32 12
  %235 = load i32, i32* %234, align 4
  %236 = add i32 %235, 100
  %237 = zext i32 %236 to i64
  %238 = mul i64 56, %237
  %239 = call i8* @realloc(i8* %232, i64 %238) #6
  %240 = bitcast i8* %239 to %struct.ssipkey_s*
  %241 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %242 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %241, i32 0, i32 10
  store %struct.ssipkey_s* %240, %struct.ssipkey_s** %242, align 8
  %243 = load %struct.ssiindex_s*, %struct.ssiindex_s** %8, align 8
  %244 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %243, i32 0, i32 10
  %245 = load %struct.ssipkey_s*, %struct.ssipkey_s** %244, align 8
  %246 = icmp eq %struct.ssipkey_s* %245, null
  br i1 %246, label %247, label %248

; <label>:247:                                    ; preds = %228
  store i32 3, i32* %7, align 4
  br label %250

; <label>:248:                                    ; preds = %228
  br label %249

; <label>:249:                                    ; preds = %248, %218
  store i32 0, i32* %7, align 4
  br label %250

; <label>:250:                                    ; preds = %249, %247, %143, %124, %49, %24, %17
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @current_index_size(%struct.ssiindex_s*) #0 {
  %2 = alloca %struct.ssiindex_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ssiindex_s* %0, %struct.ssiindex_s** %2, align 8
  %7 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %8 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = add i32 16, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %13 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %1
  %17 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %18 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 8
  %20 = add i32 22, %19
  br label %26

; <label>:21:                                     ; preds = %1
  %22 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %23 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = add i32 14, %24
  br label %26

; <label>:26:                                     ; preds = %21, %16
  %27 = phi i32 [ %20, %16 ], [ %25, %21 ]
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %4, align 8
  %29 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %30 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %33 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 8
  %35 = add i32 %31, %34
  %36 = zext i32 %35 to i64
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %39 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %38, i32 0, i32 9
  %40 = load i16, i16* %39, align 4
  %41 = zext i16 %40 to i64
  %42 = mul i64 %37, %41
  %43 = add i64 66, %42
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %46 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %44, %48
  %50 = add i64 %43, %49
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %53 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %52, i32 0, i32 17
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = mul i64 %51, %55
  %57 = add i64 %50, %56
  %58 = udiv i64 %57, 1048576
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_external_sort(%struct.ssiindex_s*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssiindex_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ssiindex_s* %0, %struct.ssiindex_s** %3, align 8
  %5 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %6 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %277

; <label>:10:                                     ; preds = %1
  %11 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %12 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %11, i32 0, i32 13
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @FileExists(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %10
  store i32 1, i32* %2, align 4
  br label %277

; <label>:17:                                     ; preds = %10
  %18 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %19 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %18, i32 0, i32 18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @FileExists(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  store i32 1, i32* %2, align 4
  br label %277

; <label>:24:                                     ; preds = %17
  %25 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %26 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %25, i32 0, i32 13
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  %29 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %30 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %29, i32 0, i32 14
  store %struct._IO_FILE* %28, %struct._IO_FILE** %30, align 8
  %31 = icmp eq %struct._IO_FILE* %28, null
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %24
  store i32 1, i32* %2, align 4
  br label %277

; <label>:33:                                     ; preds = %24
  %34 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %35 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %34, i32 0, i32 18
  %36 = load i8*, i8** %35, align 8
  %37 = call %struct._IO_FILE* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  %38 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %39 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %38, i32 0, i32 19
  store %struct._IO_FILE* %37, %struct._IO_FILE** %39, align 8
  %40 = icmp eq %struct._IO_FILE* %37, null
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %33
  store i32 1, i32* %2, align 4
  br label %277

; <label>:42:                                     ; preds = %33
  store i32 0, i32* %4, align 4
  br label %43

; <label>:43:                                     ; preds = %159, %42
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %46 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %162

; <label>:49:                                     ; preds = %43
  %50 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %51 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %107

; <label>:54:                                     ; preds = %49
  %55 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %56 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %55, i32 0, i32 14
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %56, align 8
  %58 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %59 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %58, i32 0, i32 10
  %60 = load %struct.ssipkey_s*, %struct.ssipkey_s** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %60, i64 %62
  %64 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %67 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %66, i32 0, i32 10
  %68 = load %struct.ssipkey_s*, %struct.ssipkey_s** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %68, i64 %70
  %72 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %71, i32 0, i32 1
  %73 = load i16, i16* %72, align 8
  %74 = zext i16 %73 to i32
  %75 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %76 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %75, i32 0, i32 10
  %77 = load %struct.ssipkey_s*, %struct.ssipkey_s** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %77, i64 %79
  %81 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %81, i32 0, i32 1
  %83 = bitcast %union.anon* %82 to i32*
  %84 = load i32, i32* %83, align 8
  %85 = zext i32 %84 to i64
  %86 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %87 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %86, i32 0, i32 10
  %88 = load %struct.ssipkey_s*, %struct.ssipkey_s** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %88, i64 %90
  %92 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %92, i32 0, i32 1
  %94 = bitcast %union.anon* %93 to i32*
  %95 = load i32, i32* %94, align 8
  %96 = zext i32 %95 to i64
  %97 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %98 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %97, i32 0, i32 10
  %99 = load %struct.ssipkey_s*, %struct.ssipkey_s** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %99, i64 %101
  %103 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = zext i32 %104 to i64
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* %65, i32 %74, i64 %85, i64 %96, i64 %105)
  br label %158

; <label>:107:                                    ; preds = %49
  %108 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %109 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %108, i32 0, i32 14
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %109, align 8
  %111 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %112 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %111, i32 0, i32 10
  %113 = load %struct.ssipkey_s*, %struct.ssipkey_s** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %113, i64 %115
  %117 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %120 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %119, i32 0, i32 10
  %121 = load %struct.ssipkey_s*, %struct.ssipkey_s** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %121, i64 %123
  %125 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %124, i32 0, i32 1
  %126 = load i16, i16* %125, align 8
  %127 = zext i16 %126 to i32
  %128 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %129 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %128, i32 0, i32 10
  %130 = load %struct.ssipkey_s*, %struct.ssipkey_s** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %130, i64 %132
  %134 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %134, i32 0, i32 1
  %136 = bitcast %union.anon* %135 to i64*
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %139 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %138, i32 0, i32 10
  %140 = load %struct.ssipkey_s*, %struct.ssipkey_s** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %140, i64 %142
  %144 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %144, i32 0, i32 1
  %146 = bitcast %union.anon* %145 to i64*
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %149 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %148, i32 0, i32 10
  %150 = load %struct.ssipkey_s*, %struct.ssipkey_s** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %150, i64 %152
  %154 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = zext i32 %155 to i64
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* %118, i32 %127, i64 %137, i64 %147, i64 %156)
  br label %158

; <label>:158:                                    ; preds = %107, %54
  br label %159

; <label>:159:                                    ; preds = %158
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %4, align 4
  br label %43

; <label>:162:                                    ; preds = %43
  store i32 0, i32* %4, align 4
  br label %163

; <label>:163:                                    ; preds = %190, %162
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %166 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %165, i32 0, i32 17
  %167 = load i32, i32* %166, align 4
  %168 = icmp ult i32 %164, %167
  br i1 %168, label %169, label %193

; <label>:169:                                    ; preds = %163
  %170 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %171 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %170, i32 0, i32 19
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %171, align 8
  %173 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %174 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %173, i32 0, i32 15
  %175 = load %struct.ssiskey_s*, %struct.ssiskey_s** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %175, i64 %177
  %179 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %182 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %181, i32 0, i32 15
  %183 = load %struct.ssiskey_s*, %struct.ssiskey_s** %182, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %183, i64 %185
  %187 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %180, i8* %188)
  br label %190

; <label>:190:                                    ; preds = %169
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %4, align 4
  br label %163

; <label>:193:                                    ; preds = %163
  store i32 0, i32* %4, align 4
  br label %194

; <label>:194:                                    ; preds = %209, %193
  %195 = load i32, i32* %4, align 4
  %196 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %197 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 4
  %199 = icmp ult i32 %195, %198
  br i1 %199, label %200, label %212

; <label>:200:                                    ; preds = %194
  %201 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %202 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %201, i32 0, i32 10
  %203 = load %struct.ssipkey_s*, %struct.ssipkey_s** %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %203, i64 %205
  %207 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  call void @free(i8* %208) #6
  br label %209

; <label>:209:                                    ; preds = %200
  %210 = load i32, i32* %4, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %4, align 4
  br label %194

; <label>:212:                                    ; preds = %194
  store i32 0, i32* %4, align 4
  br label %213

; <label>:213:                                    ; preds = %228, %212
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %216 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %215, i32 0, i32 17
  %217 = load i32, i32* %216, align 4
  %218 = icmp ult i32 %214, %217
  br i1 %218, label %219, label %231

; <label>:219:                                    ; preds = %213
  %220 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %221 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %220, i32 0, i32 15
  %222 = load %struct.ssiskey_s*, %struct.ssiskey_s** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %222, i64 %224
  %226 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  call void @free(i8* %227) #6
  br label %228

; <label>:228:                                    ; preds = %219
  %229 = load i32, i32* %4, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %4, align 4
  br label %213

; <label>:231:                                    ; preds = %213
  store i32 0, i32* %4, align 4
  br label %232

; <label>:232:                                    ; preds = %247, %231
  %233 = load i32, i32* %4, align 4
  %234 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %235 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %234, i32 0, i32 17
  %236 = load i32, i32* %235, align 4
  %237 = icmp ult i32 %233, %236
  br i1 %237, label %238, label %250

; <label>:238:                                    ; preds = %232
  %239 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %240 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %239, i32 0, i32 15
  %241 = load %struct.ssiskey_s*, %struct.ssiskey_s** %240, align 8
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %241, i64 %243
  %245 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  call void @free(i8* %246) #6
  br label %247

; <label>:247:                                    ; preds = %238
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %4, align 4
  br label %232

; <label>:250:                                    ; preds = %232
  %251 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %252 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %251, i32 0, i32 10
  %253 = load %struct.ssipkey_s*, %struct.ssipkey_s** %252, align 8
  %254 = icmp ne %struct.ssipkey_s* %253, null
  br i1 %254, label %255, label %260

; <label>:255:                                    ; preds = %250
  %256 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %257 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %256, i32 0, i32 10
  %258 = load %struct.ssipkey_s*, %struct.ssipkey_s** %257, align 8
  %259 = bitcast %struct.ssipkey_s* %258 to i8*
  call void @free(i8* %259) #6
  br label %260

; <label>:260:                                    ; preds = %255, %250
  %261 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %262 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %261, i32 0, i32 15
  %263 = load %struct.ssiskey_s*, %struct.ssiskey_s** %262, align 8
  %264 = icmp ne %struct.ssiskey_s* %263, null
  br i1 %264, label %265, label %270

; <label>:265:                                    ; preds = %260
  %266 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %267 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %266, i32 0, i32 15
  %268 = load %struct.ssiskey_s*, %struct.ssiskey_s** %267, align 8
  %269 = bitcast %struct.ssiskey_s* %268 to i8*
  call void @free(i8* %269) #6
  br label %270

; <label>:270:                                    ; preds = %265, %260
  %271 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %272 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %271, i32 0, i32 10
  store %struct.ssipkey_s* null, %struct.ssipkey_s** %272, align 8
  %273 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %274 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %273, i32 0, i32 15
  store %struct.ssiskey_s* null, %struct.ssiskey_s** %274, align 8
  %275 = load %struct.ssiindex_s*, %struct.ssiindex_s** %3, align 8
  %276 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %275, i32 0, i32 2
  store i32 1, i32* %276, align 8
  store i32 0, i32* %2, align 4
  br label %277

; <label>:277:                                    ; preds = %270, %41, %32, %23, %16, %9
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIAddSecondaryKeyToIndex(%struct.ssiindex_s*, i8*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssiindex_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ssiindex_s* %0, %struct.ssiindex_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %10 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %9, i32 0, i32 17
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp sge i64 %12, 2147483647
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  store i32 14, i32* %4, align 4
  br label %126

; <label>:15:                                     ; preds = %3
  %16 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %17 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

; <label>:20:                                     ; preds = %15
  %21 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %22 = call i64 @current_index_size(%struct.ssiindex_s* %21)
  %23 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %24 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %22, %26
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %20
  %29 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %30 = call i32 @activate_external_sort(%struct.ssiindex_s* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %28
  store i32 4, i32* %4, align 4
  br label %126

; <label>:33:                                     ; preds = %28
  br label %34

; <label>:34:                                     ; preds = %33, %20, %15
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strlen(i8* %35) #7
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  %40 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %41 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 8
  %43 = icmp ugt i32 %39, %42
  br i1 %43, label %44, label %49

; <label>:44:                                     ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %48 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %47, i32 0, i32 16
  store i32 %46, i32* %48, align 8
  br label %49

; <label>:49:                                     ; preds = %44, %34
  %50 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %51 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

; <label>:54:                                     ; preds = %49
  %55 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %56 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %55, i32 0, i32 19
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %58, i8* %59)
  %61 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %62 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %61, i32 0, i32 17
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %126

; <label>:65:                                     ; preds = %49
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i8* @sre_strdup(i8* %66, i32 %67)
  %69 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %70 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %69, i32 0, i32 15
  %71 = load %struct.ssiskey_s*, %struct.ssiskey_s** %70, align 8
  %72 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %73 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %72, i32 0, i32 17
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %71, i64 %75
  %77 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %76, i32 0, i32 0
  store i8* %68, i8** %77, align 8
  %78 = icmp eq i8* %68, null
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %65
  store i32 3, i32* %4, align 4
  br label %126

; <label>:80:                                     ; preds = %65
  %81 = load i8*, i8** %7, align 8
  %82 = call i8* @sre_strdup(i8* %81, i32 -1)
  %83 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %84 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %83, i32 0, i32 15
  %85 = load %struct.ssiskey_s*, %struct.ssiskey_s** %84, align 8
  %86 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %87 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %86, i32 0, i32 17
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %85, i64 %89
  %91 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %90, i32 0, i32 1
  store i8* %82, i8** %91, align 8
  %92 = icmp eq i8* %82, null
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %80
  store i32 3, i32* %4, align 4
  br label %126

; <label>:94:                                     ; preds = %80
  %95 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %96 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %95, i32 0, i32 17
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %100 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %99, i32 0, i32 17
  %101 = load i32, i32* %100, align 4
  %102 = urem i32 %101, 100
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %125

; <label>:104:                                    ; preds = %94
  %105 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %106 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %105, i32 0, i32 15
  %107 = load %struct.ssiskey_s*, %struct.ssiskey_s** %106, align 8
  %108 = bitcast %struct.ssiskey_s* %107 to i8*
  %109 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %110 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %109, i32 0, i32 17
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, 100
  %113 = zext i32 %112 to i64
  %114 = mul i64 16, %113
  %115 = call i8* @realloc(i8* %108, i64 %114) #6
  %116 = bitcast i8* %115 to %struct.ssiskey_s*
  %117 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %118 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %117, i32 0, i32 15
  store %struct.ssiskey_s* %116, %struct.ssiskey_s** %118, align 8
  %119 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %120 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %119, i32 0, i32 15
  %121 = load %struct.ssiskey_s*, %struct.ssiskey_s** %120, align 8
  %122 = icmp eq %struct.ssiskey_s* %121, null
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %104
  store i32 3, i32* %4, align 4
  br label %126

; <label>:124:                                    ; preds = %104
  br label %125

; <label>:125:                                    ; preds = %124, %94
  store i32 0, i32* %4, align 4
  br label %126

; <label>:126:                                    ; preds = %125, %123, %93, %79, %54, %32, %14
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SSIWriteIndex(i8*, %struct.ssiindex_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ssiindex_s*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [1024 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ssipkey_s, align 8
  %23 = alloca %struct.ssiskey_s, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ssiindex_s* %1, %struct.ssiindex_s** %5, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** %6, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %2
  store i32 4, i32* %3, align 4
  br label %734

; <label>:30:                                     ; preds = %2
  store i32 0, i32* %7, align 4
  %31 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %32 = call i64 @current_index_size(%struct.ssiindex_s* %31)
  %33 = icmp uge i64 %32, 2047
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %30
  %35 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %36 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.8, i32 0, i32 0))
  br label %37

; <label>:37:                                     ; preds = %34, %30
  %38 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %39 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = add i32 16, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %43 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %37
  %47 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %48 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 8
  %50 = add i32 22, %49
  br label %56

; <label>:51:                                     ; preds = %37
  %52 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %53 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = add i32 14, %54
  br label %56

; <label>:56:                                     ; preds = %51, %46
  %57 = phi i32 [ %50, %46 ], [ %55, %51 ]
  store i32 %57, i32* %12, align 4
  %58 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %59 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %58, i32 0, i32 16
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %62 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 8
  %64 = add i32 %60, %63
  store i32 %64, i32* %13, align 4
  store i32 0, i32* %9, align 4
  %65 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %66 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %56
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %72

; <label>:72:                                     ; preds = %69, %56
  %73 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %74 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, 2
  store i32 %79, i32* %9, align 4
  br label %80

; <label>:80:                                     ; preds = %77, %72
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 66, i32 54
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %90 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %89, i32 0, i32 9
  %91 = load i16, i16* %90, align 4
  %92 = zext i16 %91 to i32
  %93 = mul i32 %88, %92
  %94 = zext i32 %93 to i64
  %95 = add i64 %87, %94
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %99 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 4
  %101 = mul i32 %97, %100
  %102 = zext i32 %101 to i64
  %103 = add i64 %96, %102
  store i64 %103, i64* %16, align 8
  %104 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %105 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %165

; <label>:108:                                    ; preds = %80
  %109 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %110 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %109, i32 0, i32 14
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %110, align 8
  %112 = call i32 @fclose(%struct._IO_FILE* %111)
  %113 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %114 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %113, i32 0, i32 14
  store %struct._IO_FILE* null, %struct._IO_FILE** %114, align 8
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  %116 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %117 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %116, i32 0, i32 13
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %120 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %119, i32 0, i32 13
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i8* %118, i8* %121) #6
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  %124 = call i32 @system(i8* %123)
  store i32 %124, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

; <label>:126:                                    ; preds = %108
  store i32 16, i32* %3, align 4
  br label %734

; <label>:127:                                    ; preds = %108
  %128 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %129 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %128, i32 0, i32 13
  %130 = load i8*, i8** %129, align 8
  %131 = call %struct._IO_FILE* @fopen(i8* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %132 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %133 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %132, i32 0, i32 14
  store %struct._IO_FILE* %131, %struct._IO_FILE** %133, align 8
  %134 = icmp eq %struct._IO_FILE* %131, null
  br i1 %134, label %135, label %136

; <label>:135:                                    ; preds = %127
  store i32 16, i32* %3, align 4
  br label %734

; <label>:136:                                    ; preds = %127
  %137 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %138 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %137, i32 0, i32 19
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %138, align 8
  %140 = call i32 @fclose(%struct._IO_FILE* %139)
  %141 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %142 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %141, i32 0, i32 19
  store %struct._IO_FILE* null, %struct._IO_FILE** %142, align 8
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  %144 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %145 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %144, i32 0, i32 18
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %148 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %147, i32 0, i32 18
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i8*, ...) @sprintf(i8* %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i8* %146, i8* %149) #6
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  %152 = call i32 @system(i8* %151)
  store i32 %152, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

; <label>:154:                                    ; preds = %136
  store i32 16, i32* %3, align 4
  br label %734

; <label>:155:                                    ; preds = %136
  %156 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %157 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %156, i32 0, i32 18
  %158 = load i8*, i8** %157, align 8
  %159 = call %struct._IO_FILE* @fopen(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %160 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %161 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %160, i32 0, i32 19
  store %struct._IO_FILE* %159, %struct._IO_FILE** %161, align 8
  %162 = icmp eq %struct._IO_FILE* %159, null
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %155
  store i32 16, i32* %3, align 4
  br label %734

; <label>:164:                                    ; preds = %155
  br label %182

; <label>:165:                                    ; preds = %80
  %166 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %167 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %166, i32 0, i32 10
  %168 = load %struct.ssipkey_s*, %struct.ssipkey_s** %167, align 8
  %169 = bitcast %struct.ssipkey_s* %168 to i8*
  %170 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %171 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %170, i32 0, i32 12
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...) bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %169, i32 %172, i64 56, i32 (i8*, i8*)* @pkeysort)
  %174 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %175 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %174, i32 0, i32 15
  %176 = load %struct.ssiskey_s*, %struct.ssiskey_s** %175, align 8
  %177 = bitcast %struct.ssiskey_s* %176 to i8*
  %178 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %179 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %178, i32 0, i32 17
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...) bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %177, i32 %180, i64 16, i32 (i8*, i8*)* @skeysort)
  br label %182

; <label>:182:                                    ; preds = %165, %164
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %184 = load i32, i32* @v20magic, align 4
  %185 = call i32 @write_i32(%struct._IO_FILE* %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

; <label>:187:                                    ; preds = %182
  store i32 15, i32* %3, align 4
  br label %734

; <label>:188:                                    ; preds = %182
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @write_i32(%struct._IO_FILE* %189, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

; <label>:193:                                    ; preds = %188
  store i32 15, i32* %3, align 4
  br label %734

; <label>:194:                                    ; preds = %188
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %196 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %197 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %196, i32 0, i32 9
  %198 = load i16, i16* %197, align 4
  %199 = call i32 @write_i16(%struct._IO_FILE* %195, i16 zeroext %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

; <label>:201:                                    ; preds = %194
  store i32 15, i32* %3, align 4
  br label %734

; <label>:202:                                    ; preds = %194
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %204 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %205 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %204, i32 0, i32 12
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @write_i32(%struct._IO_FILE* %203, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

; <label>:209:                                    ; preds = %202
  store i32 15, i32* %3, align 4
  br label %734

; <label>:210:                                    ; preds = %202
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %212 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %213 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %212, i32 0, i32 17
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @write_i32(%struct._IO_FILE* %211, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

; <label>:217:                                    ; preds = %210
  store i32 15, i32* %3, align 4
  br label %734

; <label>:218:                                    ; preds = %210
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %220 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %221 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %220, i32 0, i32 8
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @write_i32(%struct._IO_FILE* %219, i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

; <label>:225:                                    ; preds = %218
  store i32 15, i32* %3, align 4
  br label %734

; <label>:226:                                    ; preds = %218
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %228 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %229 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @write_i32(%struct._IO_FILE* %227, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

; <label>:233:                                    ; preds = %226
  store i32 15, i32* %3, align 4
  br label %734

; <label>:234:                                    ; preds = %226
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %236 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %237 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %236, i32 0, i32 16
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @write_i32(%struct._IO_FILE* %235, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

; <label>:241:                                    ; preds = %234
  store i32 15, i32* %3, align 4
  br label %734

; <label>:242:                                    ; preds = %234
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %244 = load i32, i32* %11, align 4
  %245 = call i32 @write_i32(%struct._IO_FILE* %243, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

; <label>:247:                                    ; preds = %242
  store i32 15, i32* %3, align 4
  br label %734

; <label>:248:                                    ; preds = %242
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @write_i32(%struct._IO_FILE* %249, i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

; <label>:253:                                    ; preds = %248
  store i32 15, i32* %3, align 4
  br label %734

; <label>:254:                                    ; preds = %248
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @write_i32(%struct._IO_FILE* %255, i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

; <label>:259:                                    ; preds = %254
  store i32 15, i32* %3, align 4
  br label %734

; <label>:260:                                    ; preds = %254
  %261 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %262 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %287

; <label>:265:                                    ; preds = %260
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %267 = load i64, i64* %14, align 8
  %268 = trunc i64 %267 to i32
  %269 = call i32 @write_i32(%struct._IO_FILE* %266, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

; <label>:271:                                    ; preds = %265
  store i32 15, i32* %3, align 4
  br label %734

; <label>:272:                                    ; preds = %265
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %274 = load i64, i64* %15, align 8
  %275 = trunc i64 %274 to i32
  %276 = call i32 @write_i32(%struct._IO_FILE* %273, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

; <label>:278:                                    ; preds = %272
  store i32 15, i32* %3, align 4
  br label %734

; <label>:279:                                    ; preds = %272
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %281 = load i64, i64* %16, align 8
  %282 = trunc i64 %281 to i32
  %283 = call i32 @write_i32(%struct._IO_FILE* %280, i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

; <label>:285:                                    ; preds = %279
  store i32 15, i32* %3, align 4
  br label %734

; <label>:286:                                    ; preds = %279
  br label %306

; <label>:287:                                    ; preds = %260
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %289 = load i64, i64* %14, align 8
  %290 = call i32 @write_i64(%struct._IO_FILE* %288, i64 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

; <label>:292:                                    ; preds = %287
  store i32 15, i32* %3, align 4
  br label %734

; <label>:293:                                    ; preds = %287
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %295 = load i64, i64* %15, align 8
  %296 = call i32 @write_i64(%struct._IO_FILE* %294, i64 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

; <label>:298:                                    ; preds = %293
  store i32 15, i32* %3, align 4
  br label %734

; <label>:299:                                    ; preds = %293
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %301 = load i64, i64* %16, align 8
  %302 = call i32 @write_i64(%struct._IO_FILE* %300, i64 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

; <label>:304:                                    ; preds = %299
  store i32 15, i32* %3, align 4
  br label %734

; <label>:305:                                    ; preds = %299
  br label %306

; <label>:306:                                    ; preds = %305, %286
  %307 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %308 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 8
  %310 = zext i32 %309 to i64
  %311 = mul i64 1, %310
  %312 = call noalias i8* @malloc(i64 %311) #6
  store i8* %312, i8** %17, align 8
  %313 = icmp eq i8* %312, null
  br i1 %313, label %314, label %315

; <label>:314:                                    ; preds = %306
  store i32 3, i32* %3, align 4
  br label %734

; <label>:315:                                    ; preds = %306
  store i32 0, i32* %8, align 4
  br label %316

; <label>:316:                                    ; preds = %410, %315
  %317 = load i32, i32* %8, align 4
  %318 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %319 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %318, i32 0, i32 9
  %320 = load i16, i16* %319, align 4
  %321 = zext i16 %320 to i32
  %322 = icmp slt i32 %317, %321
  br i1 %322, label %323, label %413

; <label>:323:                                    ; preds = %316
  store i32 0, i32* %10, align 4
  %324 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %325 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %324, i32 0, i32 6
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = icmp ugt i32 %330, 0
  br i1 %331, label %332, label %344

; <label>:332:                                    ; preds = %323
  %333 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %334 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %333, i32 0, i32 7
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = icmp ugt i32 %339, 0
  br i1 %340, label %341, label %344

; <label>:341:                                    ; preds = %332
  %342 = load i32, i32* %10, align 4
  %343 = or i32 %342, 1
  store i32 %343, i32* %10, align 4
  br label %344

; <label>:344:                                    ; preds = %341, %332, %323
  %345 = load i8*, i8** %17, align 8
  %346 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %347 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %346, i32 0, i32 4
  %348 = load i8**, i8*** %347, align 8
  %349 = load i32, i32* %8, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %348, i64 %350
  %352 = load i8*, i8** %351, align 8
  %353 = call i8* @strcpy(i8* %345, i8* %352) #6
  %354 = load i8*, i8** %17, align 8
  %355 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %356 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %355, i32 0, i32 8
  %357 = load i32, i32* %356, align 8
  %358 = zext i32 %357 to i64
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %360 = call i64 @fwrite(i8* %354, i64 1, i64 %358, %struct._IO_FILE* %359)
  %361 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %362 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %361, i32 0, i32 8
  %363 = load i32, i32* %362, align 8
  %364 = zext i32 %363 to i64
  %365 = icmp ne i64 %360, %364
  br i1 %365, label %366, label %367

; <label>:366:                                    ; preds = %344
  store i32 15, i32* %3, align 4
  br label %734

; <label>:367:                                    ; preds = %344
  %368 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %369 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %370 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %369, i32 0, i32 5
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @write_i32(%struct._IO_FILE* %368, i32 %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %379, label %378

; <label>:378:                                    ; preds = %367
  store i32 15, i32* %3, align 4
  br label %734

; <label>:379:                                    ; preds = %367
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %381 = load i32, i32* %10, align 4
  %382 = call i32 @write_i32(%struct._IO_FILE* %380, i32 %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %385, label %384

; <label>:384:                                    ; preds = %379
  store i32 15, i32* %3, align 4
  br label %734

; <label>:385:                                    ; preds = %379
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %387 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %388 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %387, i32 0, i32 6
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %8, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @write_i32(%struct._IO_FILE* %386, i32 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %397, label %396

; <label>:396:                                    ; preds = %385
  store i32 15, i32* %3, align 4
  br label %734

; <label>:397:                                    ; preds = %385
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %399 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %400 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %399, i32 0, i32 7
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %8, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @write_i32(%struct._IO_FILE* %398, i32 %405)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %409, label %408

; <label>:408:                                    ; preds = %397
  store i32 15, i32* %3, align 4
  br label %734

; <label>:409:                                    ; preds = %397
  br label %410

; <label>:410:                                    ; preds = %409
  %411 = load i32, i32* %8, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %8, align 4
  br label %316

; <label>:413:                                    ; preds = %316
  %414 = load i8*, i8** %17, align 8
  call void @free(i8* %414) #6
  %415 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %416 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %415, i32 0, i32 11
  %417 = load i32, i32* %416, align 8
  %418 = zext i32 %417 to i64
  %419 = mul i64 1, %418
  %420 = call noalias i8* @malloc(i64 %419) #6
  store i8* %420, i8** %17, align 8
  %421 = icmp eq i8* %420, null
  br i1 %421, label %422, label %423

; <label>:422:                                    ; preds = %413
  store i32 3, i32* %3, align 4
  br label %734

; <label>:423:                                    ; preds = %413
  %424 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %425 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %501

; <label>:428:                                    ; preds = %423
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %8, align 4
  br label %429

; <label>:429:                                    ; preds = %496, %428
  %430 = load i32, i32* %8, align 4
  %431 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %432 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %431, i32 0, i32 12
  %433 = load i32, i32* %432, align 4
  %434 = icmp ult i32 %430, %433
  br i1 %434, label %435, label %499

; <label>:435:                                    ; preds = %429
  %436 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %437 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %436, i32 0, i32 14
  %438 = load %struct._IO_FILE*, %struct._IO_FILE** %437, align 8
  %439 = call i8* @sre_fgets(i8** %20, i32* %21, %struct._IO_FILE* %438)
  %440 = icmp eq i8* %439, null
  br i1 %440, label %441, label %442

; <label>:441:                                    ; preds = %435
  store i32 1, i32* %3, align 4
  br label %734

; <label>:442:                                    ; preds = %435
  %443 = load i8*, i8** %20, align 8
  %444 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %445 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = trunc i32 %446 to i8
  %448 = call i32 @parse_pkey_info(i8* %443, i8 signext %447, %struct.ssipkey_s* %22)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %451

; <label>:450:                                    ; preds = %442
  store i32 6, i32* %3, align 4
  br label %734

; <label>:451:                                    ; preds = %442
  %452 = load i8*, i8** %17, align 8
  %453 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %22, i32 0, i32 0
  %454 = load i8*, i8** %453, align 8
  %455 = call i8* @strcpy(i8* %452, i8* %454) #6
  %456 = load i8*, i8** %17, align 8
  %457 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %458 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %457, i32 0, i32 11
  %459 = load i32, i32* %458, align 8
  %460 = zext i32 %459 to i64
  %461 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %462 = call i64 @fwrite(i8* %456, i64 1, i64 %460, %struct._IO_FILE* %461)
  %463 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %464 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %463, i32 0, i32 11
  %465 = load i32, i32* %464, align 8
  %466 = zext i32 %465 to i64
  %467 = icmp ne i64 %462, %466
  br i1 %467, label %468, label %469

; <label>:468:                                    ; preds = %451
  store i32 15, i32* %3, align 4
  br label %734

; <label>:469:                                    ; preds = %451
  %470 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %471 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %22, i32 0, i32 1
  %472 = load i16, i16* %471, align 8
  %473 = call i32 @write_i16(%struct._IO_FILE* %470, i16 zeroext %472)
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %476, label %475

; <label>:475:                                    ; preds = %469
  store i32 15, i32* %3, align 4
  br label %734

; <label>:476:                                    ; preds = %469
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %478 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %22, i32 0, i32 2
  %479 = call i32 @write_offset(%struct._IO_FILE* %477, %struct.ssioffset_s* %478)
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %482, label %481

; <label>:481:                                    ; preds = %476
  store i32 15, i32* %3, align 4
  br label %734

; <label>:482:                                    ; preds = %476
  %483 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %484 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %22, i32 0, i32 3
  %485 = call i32 @write_offset(%struct._IO_FILE* %483, %struct.ssioffset_s* %484)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %488, label %487

; <label>:487:                                    ; preds = %482
  store i32 15, i32* %3, align 4
  br label %734

; <label>:488:                                    ; preds = %482
  %489 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %490 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %22, i32 0, i32 4
  %491 = load i32, i32* %490, align 8
  %492 = call i32 @write_i32(%struct._IO_FILE* %489, i32 %491)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %495, label %494

; <label>:494:                                    ; preds = %488
  store i32 15, i32* %3, align 4
  br label %734

; <label>:495:                                    ; preds = %488
  br label %496

; <label>:496:                                    ; preds = %495
  %497 = load i32, i32* %8, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %8, align 4
  br label %429

; <label>:499:                                    ; preds = %429
  %500 = load i8*, i8** %20, align 8
  call void @free(i8* %500) #6
  br label %587

; <label>:501:                                    ; preds = %423
  store i32 0, i32* %8, align 4
  br label %502

; <label>:502:                                    ; preds = %583, %501
  %503 = load i32, i32* %8, align 4
  %504 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %505 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %504, i32 0, i32 12
  %506 = load i32, i32* %505, align 4
  %507 = icmp ult i32 %503, %506
  br i1 %507, label %508, label %586

; <label>:508:                                    ; preds = %502
  %509 = load i8*, i8** %17, align 8
  %510 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %511 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %510, i32 0, i32 10
  %512 = load %struct.ssipkey_s*, %struct.ssipkey_s** %511, align 8
  %513 = load i32, i32* %8, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %512, i64 %514
  %516 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %515, i32 0, i32 0
  %517 = load i8*, i8** %516, align 8
  %518 = call i8* @strcpy(i8* %509, i8* %517) #6
  %519 = load i8*, i8** %17, align 8
  %520 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %521 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %520, i32 0, i32 11
  %522 = load i32, i32* %521, align 8
  %523 = zext i32 %522 to i64
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %525 = call i64 @fwrite(i8* %519, i64 1, i64 %523, %struct._IO_FILE* %524)
  %526 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %527 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %526, i32 0, i32 11
  %528 = load i32, i32* %527, align 8
  %529 = zext i32 %528 to i64
  %530 = icmp ne i64 %525, %529
  br i1 %530, label %531, label %532

; <label>:531:                                    ; preds = %508
  store i32 15, i32* %3, align 4
  br label %734

; <label>:532:                                    ; preds = %508
  %533 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %534 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %535 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %534, i32 0, i32 10
  %536 = load %struct.ssipkey_s*, %struct.ssipkey_s** %535, align 8
  %537 = load i32, i32* %8, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %536, i64 %538
  %540 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %539, i32 0, i32 1
  %541 = load i16, i16* %540, align 8
  %542 = call i32 @write_i16(%struct._IO_FILE* %533, i16 zeroext %541)
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %545, label %544

; <label>:544:                                    ; preds = %532
  store i32 15, i32* %3, align 4
  br label %734

; <label>:545:                                    ; preds = %532
  %546 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %547 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %548 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %547, i32 0, i32 10
  %549 = load %struct.ssipkey_s*, %struct.ssipkey_s** %548, align 8
  %550 = load i32, i32* %8, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %549, i64 %551
  %553 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %552, i32 0, i32 2
  %554 = call i32 @write_offset(%struct._IO_FILE* %546, %struct.ssioffset_s* %553)
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %557, label %556

; <label>:556:                                    ; preds = %545
  store i32 15, i32* %3, align 4
  br label %734

; <label>:557:                                    ; preds = %545
  %558 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %559 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %560 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %559, i32 0, i32 10
  %561 = load %struct.ssipkey_s*, %struct.ssipkey_s** %560, align 8
  %562 = load i32, i32* %8, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %561, i64 %563
  %565 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %564, i32 0, i32 3
  %566 = call i32 @write_offset(%struct._IO_FILE* %558, %struct.ssioffset_s* %565)
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %569, label %568

; <label>:568:                                    ; preds = %557
  store i32 15, i32* %3, align 4
  br label %734

; <label>:569:                                    ; preds = %557
  %570 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %571 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %572 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %571, i32 0, i32 10
  %573 = load %struct.ssipkey_s*, %struct.ssipkey_s** %572, align 8
  %574 = load i32, i32* %8, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %573, i64 %575
  %577 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %576, i32 0, i32 4
  %578 = load i32, i32* %577, align 8
  %579 = call i32 @write_i32(%struct._IO_FILE* %570, i32 %578)
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %582, label %581

; <label>:581:                                    ; preds = %569
  store i32 15, i32* %3, align 4
  br label %734

; <label>:582:                                    ; preds = %569
  br label %583

; <label>:583:                                    ; preds = %582
  %584 = load i32, i32* %8, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %8, align 4
  br label %502

; <label>:586:                                    ; preds = %502
  br label %587

; <label>:587:                                    ; preds = %586, %499
  %588 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %589 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %588, i32 0, i32 17
  %590 = load i32, i32* %589, align 4
  %591 = icmp ugt i32 %590, 0
  br i1 %591, label %592, label %729

; <label>:592:                                    ; preds = %587
  %593 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %594 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %593, i32 0, i32 16
  %595 = load i32, i32* %594, align 8
  %596 = zext i32 %595 to i64
  %597 = mul i64 1, %596
  %598 = call noalias i8* @malloc(i64 %597) #6
  store i8* %598, i8** %18, align 8
  %599 = icmp eq i8* %598, null
  br i1 %599, label %600, label %601

; <label>:600:                                    ; preds = %592
  store i32 3, i32* %3, align 4
  br label %734

; <label>:601:                                    ; preds = %592
  %602 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %603 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %602, i32 0, i32 2
  %604 = load i32, i32* %603, align 8
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %667

; <label>:606:                                    ; preds = %601
  store i8* null, i8** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %8, align 4
  br label %607

; <label>:607:                                    ; preds = %662, %606
  %608 = load i32, i32* %8, align 4
  %609 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %610 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %609, i32 0, i32 17
  %611 = load i32, i32* %610, align 4
  %612 = icmp ult i32 %608, %611
  br i1 %612, label %613, label %665

; <label>:613:                                    ; preds = %607
  %614 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %615 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %614, i32 0, i32 19
  %616 = load %struct._IO_FILE*, %struct._IO_FILE** %615, align 8
  %617 = call i8* @sre_fgets(i8** %24, i32* %25, %struct._IO_FILE* %616)
  %618 = icmp eq i8* %617, null
  br i1 %618, label %619, label %620

; <label>:619:                                    ; preds = %613
  store i32 1, i32* %3, align 4
  br label %734

; <label>:620:                                    ; preds = %613
  %621 = load i8*, i8** %24, align 8
  %622 = call i32 @parse_skey_info(i8* %621, %struct.ssiskey_s* %23)
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %625

; <label>:624:                                    ; preds = %620
  store i32 6, i32* %3, align 4
  br label %734

; <label>:625:                                    ; preds = %620
  %626 = load i8*, i8** %18, align 8
  %627 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %23, i32 0, i32 0
  %628 = load i8*, i8** %627, align 8
  %629 = call i8* @strcpy(i8* %626, i8* %628) #6
  %630 = load i8*, i8** %17, align 8
  %631 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %23, i32 0, i32 1
  %632 = load i8*, i8** %631, align 8
  %633 = call i8* @strcpy(i8* %630, i8* %632) #6
  %634 = load i8*, i8** %18, align 8
  %635 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %636 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %635, i32 0, i32 16
  %637 = load i32, i32* %636, align 8
  %638 = zext i32 %637 to i64
  %639 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %640 = call i64 @fwrite(i8* %634, i64 1, i64 %638, %struct._IO_FILE* %639)
  %641 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %642 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %641, i32 0, i32 16
  %643 = load i32, i32* %642, align 8
  %644 = zext i32 %643 to i64
  %645 = icmp ne i64 %640, %644
  br i1 %645, label %646, label %647

; <label>:646:                                    ; preds = %625
  store i32 15, i32* %3, align 4
  br label %734

; <label>:647:                                    ; preds = %625
  %648 = load i8*, i8** %17, align 8
  %649 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %650 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %649, i32 0, i32 11
  %651 = load i32, i32* %650, align 8
  %652 = zext i32 %651 to i64
  %653 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %654 = call i64 @fwrite(i8* %648, i64 1, i64 %652, %struct._IO_FILE* %653)
  %655 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %656 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %655, i32 0, i32 11
  %657 = load i32, i32* %656, align 8
  %658 = zext i32 %657 to i64
  %659 = icmp ne i64 %654, %658
  br i1 %659, label %660, label %661

; <label>:660:                                    ; preds = %647
  store i32 15, i32* %3, align 4
  br label %734

; <label>:661:                                    ; preds = %647
  br label %662

; <label>:662:                                    ; preds = %661
  %663 = load i32, i32* %8, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %8, align 4
  br label %607

; <label>:665:                                    ; preds = %607
  %666 = load i8*, i8** %24, align 8
  call void @free(i8* %666) #6
  br label %727

; <label>:667:                                    ; preds = %601
  store i32 0, i32* %8, align 4
  br label %668

; <label>:668:                                    ; preds = %723, %667
  %669 = load i32, i32* %8, align 4
  %670 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %671 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %670, i32 0, i32 17
  %672 = load i32, i32* %671, align 4
  %673 = icmp ult i32 %669, %672
  br i1 %673, label %674, label %726

; <label>:674:                                    ; preds = %668
  %675 = load i8*, i8** %18, align 8
  %676 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %677 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %676, i32 0, i32 15
  %678 = load %struct.ssiskey_s*, %struct.ssiskey_s** %677, align 8
  %679 = load i32, i32* %8, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %678, i64 %680
  %682 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %681, i32 0, i32 0
  %683 = load i8*, i8** %682, align 8
  %684 = call i8* @strcpy(i8* %675, i8* %683) #6
  %685 = load i8*, i8** %17, align 8
  %686 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %687 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %686, i32 0, i32 15
  %688 = load %struct.ssiskey_s*, %struct.ssiskey_s** %687, align 8
  %689 = load i32, i32* %8, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %688, i64 %690
  %692 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %691, i32 0, i32 1
  %693 = load i8*, i8** %692, align 8
  %694 = call i8* @strcpy(i8* %685, i8* %693) #6
  %695 = load i8*, i8** %18, align 8
  %696 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %697 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %696, i32 0, i32 16
  %698 = load i32, i32* %697, align 8
  %699 = zext i32 %698 to i64
  %700 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %701 = call i64 @fwrite(i8* %695, i64 1, i64 %699, %struct._IO_FILE* %700)
  %702 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %703 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %702, i32 0, i32 16
  %704 = load i32, i32* %703, align 8
  %705 = zext i32 %704 to i64
  %706 = icmp ne i64 %701, %705
  br i1 %706, label %707, label %708

; <label>:707:                                    ; preds = %674
  store i32 15, i32* %3, align 4
  br label %734

; <label>:708:                                    ; preds = %674
  %709 = load i8*, i8** %17, align 8
  %710 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %711 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %710, i32 0, i32 11
  %712 = load i32, i32* %711, align 8
  %713 = zext i32 %712 to i64
  %714 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %715 = call i64 @fwrite(i8* %709, i64 1, i64 %713, %struct._IO_FILE* %714)
  %716 = load %struct.ssiindex_s*, %struct.ssiindex_s** %5, align 8
  %717 = getelementptr inbounds %struct.ssiindex_s, %struct.ssiindex_s* %716, i32 0, i32 11
  %718 = load i32, i32* %717, align 8
  %719 = zext i32 %718 to i64
  %720 = icmp ne i64 %715, %719
  br i1 %720, label %721, label %722

; <label>:721:                                    ; preds = %708
  store i32 15, i32* %3, align 4
  br label %734

; <label>:722:                                    ; preds = %708
  br label %723

; <label>:723:                                    ; preds = %722
  %724 = load i32, i32* %8, align 4
  %725 = add nsw i32 %724, 1
  store i32 %725, i32* %8, align 4
  br label %668

; <label>:726:                                    ; preds = %668
  br label %727

; <label>:727:                                    ; preds = %726, %665
  %728 = load i8*, i8** %18, align 8
  call void @free(i8* %728) #6
  br label %729

; <label>:729:                                    ; preds = %727, %587
  %730 = load i8*, i8** %17, align 8
  call void @free(i8* %730) #6
  %731 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %732 = call i32 @fclose(%struct._IO_FILE* %731)
  %733 = load i32, i32* %7, align 4
  store i32 %733, i32* %3, align 4
  br label %734

; <label>:734:                                    ; preds = %729, %721, %707, %660, %646, %624, %619, %600, %581, %568, %556, %544, %531, %494, %487, %481, %475, %468, %450, %441, %422, %408, %396, %384, %378, %366, %314, %304, %298, %292, %285, %278, %271, %259, %253, %247, %241, %233, %225, %217, %209, %201, %193, %187, %163, %154, %135, %126, %29
  %735 = load i32, i32* %3, align 4
  ret i32 %735
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @system(i8*) #2

declare i32 @specqsort(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkeysort(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ssipkey_s*, align 8
  %6 = alloca %struct.ssipkey_s*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ssipkey_s*
  store %struct.ssipkey_s* %8, %struct.ssipkey_s** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ssipkey_s*
  store %struct.ssipkey_s* %10, %struct.ssipkey_s** %6, align 8
  %11 = load %struct.ssipkey_s*, %struct.ssipkey_s** %5, align 8
  %12 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.ssipkey_s*, %struct.ssipkey_s** %6, align 8
  %15 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %13, i8* %16) #7
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skeysort(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ssiskey_s*, align 8
  %6 = alloca %struct.ssiskey_s*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ssiskey_s*
  store %struct.ssiskey_s* %8, %struct.ssiskey_s** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ssiskey_s*
  store %struct.ssiskey_s* %10, %struct.ssiskey_s** %6, align 8
  %11 = load %struct.ssiskey_s*, %struct.ssiskey_s** %5, align 8
  %12 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.ssiskey_s*, %struct.ssiskey_s** %6, align 8
  %15 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %13, i8* %16) #7
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_i32(%struct._IO_FILE*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @sre_hton32(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = bitcast i32* %5 to i8*
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = call i64 @fwrite(i8* %8, i64 4, i64 1, %struct._IO_FILE* %9)
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

; <label>:13:                                     ; preds = %2
  store i32 1, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_i16(%struct._IO_FILE*, i16 zeroext) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i16, align 2
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load i16, i16* %5, align 2
  %7 = call zeroext i16 @sre_hton16(i16 zeroext %6)
  store i16 %7, i16* %5, align 2
  %8 = bitcast i16* %5 to i8*
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = call i64 @fwrite(i8* %8, i64 2, i64 1, %struct._IO_FILE* %9)
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

; <label>:13:                                     ; preds = %2
  store i32 1, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_i64(%struct._IO_FILE*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @sre_hton64(i64 %6)
  store i64 %7, i64* %5, align 8
  %8 = bitcast i64* %5 to i8*
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = call i64 @fwrite(i8* %8, i64 8, i64 1, %struct._IO_FILE* %9)
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

; <label>:13:                                     ; preds = %2
  store i32 1, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pkey_info(i8*, i8 signext, %struct.ssipkey_s*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.ssipkey_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.ssipkey_s* %2, %struct.ssipkey_s** %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = call i8* @sre_strtok(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %10)
  store i8* %12, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  store i32 6, i32* %4, align 4
  br label %73

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.ssipkey_s*, %struct.ssipkey_s** %7, align 8
  %18 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = call i8* @sre_strtok(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %10)
  store i8* %19, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %15
  store i32 6, i32* %4, align 4
  br label %73

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @atoi(i8* %23) #7
  %25 = trunc i32 %24 to i16
  %26 = load %struct.ssipkey_s*, %struct.ssipkey_s** %7, align 8
  %27 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %26, i32 0, i32 1
  store i16 %25, i16* %27, align 8
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %62

; <label>:31:                                     ; preds = %22
  %32 = call i8* @sre_strtok(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %10)
  store i8* %32, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31
  store i32 6, i32* %4, align 4
  br label %73

; <label>:35:                                     ; preds = %31
  %36 = load i8, i8* %6, align 1
  %37 = load %struct.ssipkey_s*, %struct.ssipkey_s** %7, align 8
  %38 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %38, i32 0, i32 0
  store i8 %36, i8* %39, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @strtoul(i8* %40, i8** null, i32 10) #6
  %42 = trunc i64 %41 to i32
  %43 = load %struct.ssipkey_s*, %struct.ssipkey_s** %7, align 8
  %44 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %44, i32 0, i32 1
  %46 = bitcast %union.anon* %45 to i32*
  store i32 %42, i32* %46, align 8
  %47 = call i8* @sre_strtok(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %10)
  store i8* %47, i8** %9, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %35
  store i32 6, i32* %4, align 4
  br label %73

; <label>:50:                                     ; preds = %35
  %51 = load i8, i8* %6, align 1
  %52 = load %struct.ssipkey_s*, %struct.ssipkey_s** %7, align 8
  %53 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %53, i32 0, i32 0
  store i8 %51, i8* %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @strtoul(i8* %55, i8** null, i32 10) #6
  %57 = trunc i64 %56 to i32
  %58 = load %struct.ssipkey_s*, %struct.ssipkey_s** %7, align 8
  %59 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %59, i32 0, i32 1
  %61 = bitcast %union.anon* %60 to i32*
  store i32 %57, i32* %61, align 8
  br label %63

; <label>:62:                                     ; preds = %22
  store i32 7, i32* %4, align 4
  br label %73

; <label>:63:                                     ; preds = %50
  %64 = call i8* @sre_strtok(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %10)
  store i8* %64, i8** %9, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %63
  store i32 6, i32* %4, align 4
  br label %73

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @strtoul(i8* %68, i8** null, i32 10) #6
  %70 = trunc i64 %69 to i32
  %71 = load %struct.ssipkey_s*, %struct.ssipkey_s** %7, align 8
  %72 = getelementptr inbounds %struct.ssipkey_s, %struct.ssipkey_s* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

; <label>:73:                                     ; preds = %67, %66, %62, %49, %34, %21, %14
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_offset(%struct._IO_FILE*, %struct.ssioffset_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.ssioffset_s*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.ssioffset_s* %1, %struct.ssioffset_s** %5, align 8
  %6 = load %struct.ssioffset_s*, %struct.ssioffset_s** %5, align 8
  %7 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 8
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %13 = load %struct.ssioffset_s*, %struct.ssioffset_s** %5, align 8
  %14 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %13, i32 0, i32 1
  %15 = bitcast %union.anon* %14 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @write_i32(%struct._IO_FILE* %12, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %32

; <label>:18:                                     ; preds = %2
  %19 = load %struct.ssioffset_s*, %struct.ssioffset_s** %5, align 8
  %20 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %18
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %26 = load %struct.ssioffset_s*, %struct.ssioffset_s** %5, align 8
  %27 = getelementptr inbounds %struct.ssioffset_s, %struct.ssioffset_s* %26, i32 0, i32 1
  %28 = bitcast %union.anon* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @write_i64(%struct._IO_FILE* %25, i64 %29)
  store i32 %30, i32* %3, align 4
  br label %32

; <label>:31:                                     ; preds = %18
  call void @abort() #8
  unreachable

; <label>:32:                                     ; preds = %24, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_skey_info(i8*, %struct.ssiskey_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ssiskey_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ssiskey_s* %1, %struct.ssiskey_s** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = call i8* @sre_strtok(i8** %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %8)
  store i8* %10, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 6, i32* %3, align 4
  br label %24

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.ssiskey_s*, %struct.ssiskey_s** %5, align 8
  %16 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = call i8* @sre_strtok(i8** %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32* %8)
  store i8* %17, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %13
  store i32 6, i32* %3, align 4
  br label %24

; <label>:20:                                     ; preds = %13
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.ssiskey_s*, %struct.ssiskey_s** %5, align 8
  %23 = getelementptr inbounds %struct.ssiskey_s, %struct.ssiskey_s* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

; <label>:24:                                     ; preds = %20, %19, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: nounwind
declare i32 @remove(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @SSIErrorString(i32) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %22 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 12, label %17
    i32 13, label %18
    i32 14, label %19
    i32 15, label %20
    i32 16, label %21
  ]

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:9:                                      ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:10:                                     ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:11:                                     ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:12:                                     ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:13:                                     ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:14:                                     ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:15:                                     ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:16:                                     ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:17:                                     ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:18:                                     ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:19:                                     ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:20:                                     ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:21:                                     ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:22:                                     ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %2, align 8
  br label %23

; <label>:23:                                     ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

; Function Attrs: noinline nounwind optnone uwtable
define void @SSIForceExternalSort(%struct.ssiindex_s*) #0 {
  %2 = alloca %struct.ssiindex_s*, align 8
  store %struct.ssiindex_s* %0, %struct.ssiindex_s** %2, align 8
  %3 = load %struct.ssiindex_s*, %struct.ssiindex_s** %2, align 8
  %4 = call i32 @activate_external_sort(%struct.ssiindex_s* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0))
  br label %7

; <label>:7:                                      ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare zeroext i16 @sre_ntoh16(i16 zeroext) #2

declare zeroext i16 @sre_hton16(i16 zeroext) #2

declare i32 @sre_ntoh32(i32) #2

declare i32 @sre_hton32(i32) #2

declare i64 @sre_hton64(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_i64(%struct._IO_FILE*, i64*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = bitcast i64* %6 to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %9 = call i64 @fread(i8* %7, i64 8, i64 1, %struct._IO_FILE* %8)
  %10 = icmp ne i64 %9, 1
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

; <label>:12:                                     ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @sre_ntoh64(i64 %13)
  %15 = load i64*, i64** %5, align 8
  store i64 %14, i64* %15, align 8
  store i32 1, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %12, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare i64 @sre_ntoh64(i64) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #1

declare i32 @FileExists(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
