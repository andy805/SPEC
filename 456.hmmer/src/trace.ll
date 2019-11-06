; ModuleID = 'trace.c'
source_filename = "trace.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"trace.c\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"illegal state transition %s->%s in traceback\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"illegal state %s in traceback\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"yo! you don't support J in Traces2Alignment(), remember?\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Traces2Alignment reports unrecognized statetype %c\00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"HMMER %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"illegal %s->%s transition\00", align 1
@Alphabet_type = external global i32, align 4
@Alphabet_size = external global i32, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"bogus statetype\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"  %16s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"CS\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"  %10.10s %5d %s %-5d\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"  %10.10s %5s %s %-5s\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"sanity check failed: didn't find a match state in trace\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"never happens. Trust me.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7AllocTrace(i32, %struct.p7trace_s**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p7trace_s**, align 8
  %5 = alloca %struct.p7trace_s*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.p7trace_s** %1, %struct.p7trace_s*** %4, align 8
  %6 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 40, i64 32)
  %7 = bitcast i8* %6 to %struct.p7trace_s*
  store %struct.p7trace_s* %7, %struct.p7trace_s** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 1, %9
  %11 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 41, i64 %10)
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 42, i64 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %20 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 43, i64 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %27 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %29 = load %struct.p7trace_s**, %struct.p7trace_s*** %4, align 8
  store %struct.p7trace_s* %28, %struct.p7trace_s** %29, align 8
  ret void
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7ReallocTrace(%struct.p7trace_s*, i32) #0 {
  %3 = alloca %struct.p7trace_s*, align 8
  %4 = alloca i32, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.p7trace_s*, %struct.p7trace_s** %3, align 8
  %6 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 1
  %11 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 49, i8* %7, i64 %10)
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %3, align 8
  %13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %3, align 8
  %15 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 50, i8* %17, i64 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.p7trace_s*, %struct.p7trace_s** %3, align 8
  %24 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.p7trace_s*, %struct.p7trace_s** %3, align 8
  %26 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 51, i8* %28, i64 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.p7trace_s*, %struct.p7trace_s** %3, align 8
  %35 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  ret void
}

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7FreeTrace(%struct.p7trace_s*) #0 {
  %2 = alloca %struct.p7trace_s*, align 8
  store %struct.p7trace_s* %0, %struct.p7trace_s** %2, align 8
  %3 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %4 = icmp eq %struct.p7trace_s* %3, null
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  br label %20

; <label>:6:                                      ; preds = %1
  %7 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %8 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  call void @free(i8* %10) #6
  %11 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %12 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #6
  %15 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %16 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* %17) #6
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %19 = bitcast %struct.p7trace_s* %18 to i8*
  call void @free(i8* %19) #6
  br label %20

; <label>:20:                                     ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @TraceSet(%struct.p7trace_s*, i32, i8 signext, i32, i32) #0 {
  %6 = alloca %struct.p7trace_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i8, i8* %8, align 1
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8 %11, i8* %17, align 1
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %20 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %27 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.p7trace_s** @MergeTraceArrays(%struct.p7trace_s**, i32, %struct.p7trace_s**, i32) #0 {
  %5 = alloca %struct.p7trace_s**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p7trace_s**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p7trace_s**, align 8
  %10 = alloca i32, align 4
  store %struct.p7trace_s** %0, %struct.p7trace_s*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.p7trace_s** %2, %struct.p7trace_s*** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 110, i64 %15)
  %17 = bitcast i8* %16 to %struct.p7trace_s**
  store %struct.p7trace_s** %17, %struct.p7trace_s*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

; <label>:18:                                     ; preds = %32, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

; <label>:22:                                     ; preds = %18
  %23 = load %struct.p7trace_s**, %struct.p7trace_s*** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %23, i64 %25
  %27 = load %struct.p7trace_s*, %struct.p7trace_s** %26, align 8
  %28 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %28, i64 %30
  store %struct.p7trace_s* %27, %struct.p7trace_s** %31, align 8
  br label %32

; <label>:32:                                     ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %18

; <label>:35:                                     ; preds = %18
  store i32 0, i32* %10, align 4
  br label %36

; <label>:36:                                     ; preds = %52, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

; <label>:40:                                     ; preds = %36
  %41 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %41, i64 %43
  %45 = load %struct.p7trace_s*, %struct.p7trace_s** %44, align 8
  %46 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %46, i64 %50
  store %struct.p7trace_s* %45, %struct.p7trace_s** %51, align 8
  br label %52

; <label>:52:                                     ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %36

; <label>:55:                                     ; preds = %36
  %56 = load %struct.p7trace_s**, %struct.p7trace_s*** %5, align 8
  %57 = bitcast %struct.p7trace_s** %56 to i8*
  call void @free(i8* %57) #6
  %58 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %59 = bitcast %struct.p7trace_s** %58 to i8*
  call void @free(i8* %59) #6
  %60 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  ret %struct.p7trace_s** %60
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P7ReverseTrace(%struct.p7trace_s*) #0 {
  %2 = alloca %struct.p7trace_s*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %2, align 8
  %8 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %9 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 1, %11
  %13 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 149, i64 %12)
  store i8* %13, i8** %3, align 8
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %15 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 150, i64 %18)
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %4, align 8
  %21 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %22 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 151, i64 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %5, align 8
  %28 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %29 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %32

; <label>:32:                                     ; preds = %72, %1
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %35 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %77

; <label>:38:                                     ; preds = %32
  %39 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %40 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 %45, i8* %49, align 1
  %50 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %51 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %62 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

; <label>:72:                                     ; preds = %38
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  br label %32

; <label>:77:                                     ; preds = %32
  %78 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %79 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  call void @free(i8* %80) #6
  %81 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %82 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = bitcast i32* %83 to i8*
  call void @free(i8* %84) #6
  %85 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %86 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to i8*
  call void @free(i8* %88) #6
  %89 = load i8*, i8** %3, align 8
  %90 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %91 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %94 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %97 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %96, i32 0, i32 3
  store i32* %95, i32** %97, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P7TraceCount(%struct.plan7_s*, i8*, float, %struct.p7trace_s*) #0 {
  %5 = alloca %struct.plan7_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca %struct.p7trace_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store float %2, float* %7, align 4
  store %struct.p7trace_s* %3, %struct.p7trace_s** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

; <label>:11:                                     ; preds = %568, %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %14 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %571

; <label>:17:                                     ; preds = %11
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %26 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %54

; <label>:34:                                     ; preds = %17
  %35 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %36 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 22
  %37 = load float**, float*** %36, align 8
  %38 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %39 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float*, float** %37, i64 %45
  %47 = load float*, float** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load float, float* %7, align 4
  call void @P7CountSymbol(float* %47, i8 signext %52, float %53)
  br label %85

; <label>:54:                                     ; preds = %17
  %55 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %56 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %84

; <label>:64:                                     ; preds = %54
  %65 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %66 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %65, i32 0, i32 23
  %67 = load float**, float*** %66, align 8
  %68 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %69 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float*, float** %67, i64 %75
  %77 = load float*, float** %76, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load float, float* %7, align 4
  call void @P7CountSymbol(float* %77, i8 signext %82, float %83)
  br label %84

; <label>:84:                                     ; preds = %64, %54
  br label %85

; <label>:85:                                     ; preds = %84, %34
  %86 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %87 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  switch i32 %93, label %558 [
    i32 4, label %94
    i32 5, label %95
    i32 6, label %140
    i32 1, label %192
    i32 3, label %291
    i32 2, label %356
    i32 7, label %422
    i32 10, label %467
    i32 8, label %512
    i32 9, label %557
  ]

; <label>:94:                                     ; preds = %85
  br label %567

; <label>:95:                                     ; preds = %85
  %96 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %97 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  switch i32 %104, label %121 [
    i32 6, label %105
    i32 5, label %113
  ]

; <label>:105:                                    ; preds = %95
  %106 = load float, float* %7, align 4
  %107 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %108 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 25
  %109 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %108, i64 0, i64 0
  %110 = getelementptr inbounds [2 x float], [2 x float]* %109, i64 0, i64 0
  %111 = load float, float* %110, align 4
  %112 = fadd float %111, %106
  store float %112, float* %110, align 4
  br label %139

; <label>:113:                                    ; preds = %95
  %114 = load float, float* %7, align 4
  %115 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %116 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 25
  %117 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %116, i64 0, i64 0
  %118 = getelementptr inbounds [2 x float], [2 x float]* %117, i64 0, i64 1
  %119 = load float, float* %118, align 4
  %120 = fadd float %119, %114
  store float %120, float* %118, align 4
  br label %139

; <label>:121:                                    ; preds = %95
  %122 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %123 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = call i8* @Statetype(i8 signext %128)
  %130 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %131 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = call i8* @Statetype(i8 signext %137)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %129, i8* %138)
  br label %139

; <label>:139:                                    ; preds = %121, %113, %105
  br label %567

; <label>:140:                                    ; preds = %85
  %141 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %142 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  switch i32 %149, label %173 [
    i32 1, label %150
    i32 2, label %167
  ]

; <label>:150:                                    ; preds = %140
  %151 = load float, float* %7, align 4
  %152 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %153 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %152, i32 0, i32 26
  %154 = load float*, float** %153, align 8
  %155 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %156 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %154, i64 %163
  %165 = load float, float* %164, align 4
  %166 = fadd float %165, %151
  store float %166, float* %164, align 4
  br label %191

; <label>:167:                                    ; preds = %140
  %168 = load float, float* %7, align 4
  %169 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %170 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %169, i32 0, i32 24
  %171 = load float, float* %170, align 8
  %172 = fadd float %171, %168
  store float %172, float* %170, align 8
  br label %191

; <label>:173:                                    ; preds = %140
  %174 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %175 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = call i8* @Statetype(i8 signext %180)
  %182 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %183 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = call i8* @Statetype(i8 signext %189)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %181, i8* %190)
  br label %191

; <label>:191:                                    ; preds = %173, %167, %150
  br label %567

; <label>:192:                                    ; preds = %85
  %193 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %194 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  switch i32 %201, label %272 [
    i32 1, label %202
    i32 3, label %220
    i32 2, label %238
    i32 7, label %256
  ]

; <label>:202:                                    ; preds = %192
  %203 = load float, float* %7, align 4
  %204 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %205 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %204, i32 0, i32 21
  %206 = load float**, float*** %205, align 8
  %207 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %208 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float*, float** %206, i64 %214
  %216 = load float*, float** %215, align 8
  %217 = getelementptr inbounds float, float* %216, i64 0
  %218 = load float, float* %217, align 4
  %219 = fadd float %218, %203
  store float %219, float* %217, align 4
  br label %290

; <label>:220:                                    ; preds = %192
  %221 = load float, float* %7, align 4
  %222 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %223 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %222, i32 0, i32 21
  %224 = load float**, float*** %223, align 8
  %225 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %226 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float*, float** %224, i64 %232
  %234 = load float*, float** %233, align 8
  %235 = getelementptr inbounds float, float* %234, i64 1
  %236 = load float, float* %235, align 4
  %237 = fadd float %236, %221
  store float %237, float* %235, align 4
  br label %290

; <label>:238:                                    ; preds = %192
  %239 = load float, float* %7, align 4
  %240 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %241 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %240, i32 0, i32 21
  %242 = load float**, float*** %241, align 8
  %243 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %244 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float*, float** %242, i64 %250
  %252 = load float*, float** %251, align 8
  %253 = getelementptr inbounds float, float* %252, i64 2
  %254 = load float, float* %253, align 4
  %255 = fadd float %254, %239
  store float %255, float* %253, align 4
  br label %290

; <label>:256:                                    ; preds = %192
  %257 = load float, float* %7, align 4
  %258 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %259 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %258, i32 0, i32 27
  %260 = load float*, float** %259, align 8
  %261 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %262 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %260, i64 %268
  %270 = load float, float* %269, align 4
  %271 = fadd float %270, %257
  store float %271, float* %269, align 4
  br label %290

; <label>:272:                                    ; preds = %192
  %273 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %274 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = call i8* @Statetype(i8 signext %279)
  %281 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %282 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = call i8* @Statetype(i8 signext %288)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %280, i8* %289)
  br label %290

; <label>:290:                                    ; preds = %272, %256, %238, %220, %202
  br label %567

; <label>:291:                                    ; preds = %85
  %292 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %293 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = load i32, i32* %9, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %294, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  switch i32 %300, label %337 [
    i32 1, label %301
    i32 3, label %319
  ]

; <label>:301:                                    ; preds = %291
  %302 = load float, float* %7, align 4
  %303 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %304 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %303, i32 0, i32 21
  %305 = load float**, float*** %304, align 8
  %306 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %307 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float*, float** %305, i64 %313
  %315 = load float*, float** %314, align 8
  %316 = getelementptr inbounds float, float* %315, i64 3
  %317 = load float, float* %316, align 4
  %318 = fadd float %317, %302
  store float %318, float* %316, align 4
  br label %355

; <label>:319:                                    ; preds = %291
  %320 = load float, float* %7, align 4
  %321 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %322 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %321, i32 0, i32 21
  %323 = load float**, float*** %322, align 8
  %324 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %325 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float*, float** %323, i64 %331
  %333 = load float*, float** %332, align 8
  %334 = getelementptr inbounds float, float* %333, i64 4
  %335 = load float, float* %334, align 4
  %336 = fadd float %335, %320
  store float %336, float* %334, align 4
  br label %355

; <label>:337:                                    ; preds = %291
  %338 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %339 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %338, i32 0, i32 1
  %340 = load i8*, i8** %339, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %340, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = call i8* @Statetype(i8 signext %344)
  %346 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %347 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %346, i32 0, i32 1
  %348 = load i8*, i8** %347, align 8
  %349 = load i32, i32* %9, align 4
  %350 = add nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %348, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = call i8* @Statetype(i8 signext %353)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %345, i8* %354)
  br label %355

; <label>:355:                                    ; preds = %337, %319, %301
  br label %567

; <label>:356:                                    ; preds = %85
  %357 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %358 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %357, i32 0, i32 1
  %359 = load i8*, i8** %358, align 8
  %360 = load i32, i32* %9, align 4
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %359, i64 %362
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  switch i32 %365, label %403 [
    i32 1, label %366
    i32 2, label %384
    i32 7, label %402
  ]

; <label>:366:                                    ; preds = %356
  %367 = load float, float* %7, align 4
  %368 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %369 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %368, i32 0, i32 21
  %370 = load float**, float*** %369, align 8
  %371 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %372 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %9, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds float*, float** %370, i64 %378
  %380 = load float*, float** %379, align 8
  %381 = getelementptr inbounds float, float* %380, i64 5
  %382 = load float, float* %381, align 4
  %383 = fadd float %382, %367
  store float %383, float* %381, align 4
  br label %421

; <label>:384:                                    ; preds = %356
  %385 = load float, float* %7, align 4
  %386 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %387 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %386, i32 0, i32 21
  %388 = load float**, float*** %387, align 8
  %389 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %390 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %389, i32 0, i32 2
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %9, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float*, float** %388, i64 %396
  %398 = load float*, float** %397, align 8
  %399 = getelementptr inbounds float, float* %398, i64 6
  %400 = load float, float* %399, align 4
  %401 = fadd float %400, %385
  store float %401, float* %399, align 4
  br label %421

; <label>:402:                                    ; preds = %356
  br label %421

; <label>:403:                                    ; preds = %356
  %404 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %405 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = load i32, i32* %9, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %406, i64 %408
  %410 = load i8, i8* %409, align 1
  %411 = call i8* @Statetype(i8 signext %410)
  %412 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %413 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %412, i32 0, i32 1
  %414 = load i8*, i8** %413, align 8
  %415 = load i32, i32* %9, align 4
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8, i8* %414, i64 %417
  %419 = load i8, i8* %418, align 1
  %420 = call i8* @Statetype(i8 signext %419)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %411, i8* %420)
  br label %421

; <label>:421:                                    ; preds = %403, %402, %384, %366
  br label %567

; <label>:422:                                    ; preds = %85
  %423 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %424 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %423, i32 0, i32 1
  %425 = load i8*, i8** %424, align 8
  %426 = load i32, i32* %9, align 4
  %427 = add nsw i32 %426, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %425, i64 %428
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i32
  switch i32 %431, label %448 [
    i32 8, label %432
    i32 10, label %440
  ]

; <label>:432:                                    ; preds = %422
  %433 = load float, float* %7, align 4
  %434 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %435 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %434, i32 0, i32 25
  %436 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %435, i64 0, i64 1
  %437 = getelementptr inbounds [2 x float], [2 x float]* %436, i64 0, i64 0
  %438 = load float, float* %437, align 4
  %439 = fadd float %438, %433
  store float %439, float* %437, align 4
  br label %466

; <label>:440:                                    ; preds = %422
  %441 = load float, float* %7, align 4
  %442 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %443 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %442, i32 0, i32 25
  %444 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %443, i64 0, i64 1
  %445 = getelementptr inbounds [2 x float], [2 x float]* %444, i64 0, i64 1
  %446 = load float, float* %445, align 4
  %447 = fadd float %446, %441
  store float %447, float* %445, align 4
  br label %466

; <label>:448:                                    ; preds = %422
  %449 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %450 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %449, i32 0, i32 1
  %451 = load i8*, i8** %450, align 8
  %452 = load i32, i32* %9, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, i8* %451, i64 %453
  %455 = load i8, i8* %454, align 1
  %456 = call i8* @Statetype(i8 signext %455)
  %457 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %458 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %457, i32 0, i32 1
  %459 = load i8*, i8** %458, align 8
  %460 = load i32, i32* %9, align 4
  %461 = add nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i8, i8* %459, i64 %462
  %464 = load i8, i8* %463, align 1
  %465 = call i8* @Statetype(i8 signext %464)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %456, i8* %465)
  br label %466

; <label>:466:                                    ; preds = %448, %440, %432
  br label %567

; <label>:467:                                    ; preds = %85
  %468 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %469 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %468, i32 0, i32 1
  %470 = load i8*, i8** %469, align 8
  %471 = load i32, i32* %9, align 4
  %472 = add nsw i32 %471, 1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i8, i8* %470, i64 %473
  %475 = load i8, i8* %474, align 1
  %476 = sext i8 %475 to i32
  switch i32 %476, label %493 [
    i32 6, label %477
    i32 10, label %485
  ]

; <label>:477:                                    ; preds = %467
  %478 = load float, float* %7, align 4
  %479 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %480 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %479, i32 0, i32 25
  %481 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %480, i64 0, i64 3
  %482 = getelementptr inbounds [2 x float], [2 x float]* %481, i64 0, i64 0
  %483 = load float, float* %482, align 4
  %484 = fadd float %483, %478
  store float %484, float* %482, align 4
  br label %511

; <label>:485:                                    ; preds = %467
  %486 = load float, float* %7, align 4
  %487 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %488 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %487, i32 0, i32 25
  %489 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %488, i64 0, i64 3
  %490 = getelementptr inbounds [2 x float], [2 x float]* %489, i64 0, i64 1
  %491 = load float, float* %490, align 4
  %492 = fadd float %491, %486
  store float %492, float* %490, align 4
  br label %511

; <label>:493:                                    ; preds = %467
  %494 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %495 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %494, i32 0, i32 1
  %496 = load i8*, i8** %495, align 8
  %497 = load i32, i32* %9, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8, i8* %496, i64 %498
  %500 = load i8, i8* %499, align 1
  %501 = call i8* @Statetype(i8 signext %500)
  %502 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %503 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %502, i32 0, i32 1
  %504 = load i8*, i8** %503, align 8
  %505 = load i32, i32* %9, align 4
  %506 = add nsw i32 %505, 1
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8, i8* %504, i64 %507
  %509 = load i8, i8* %508, align 1
  %510 = call i8* @Statetype(i8 signext %509)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %501, i8* %510)
  br label %511

; <label>:511:                                    ; preds = %493, %485, %477
  br label %567

; <label>:512:                                    ; preds = %85
  %513 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %514 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %513, i32 0, i32 1
  %515 = load i8*, i8** %514, align 8
  %516 = load i32, i32* %9, align 4
  %517 = add nsw i32 %516, 1
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8, i8* %515, i64 %518
  %520 = load i8, i8* %519, align 1
  %521 = sext i8 %520 to i32
  switch i32 %521, label %538 [
    i32 9, label %522
    i32 8, label %530
  ]

; <label>:522:                                    ; preds = %512
  %523 = load float, float* %7, align 4
  %524 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %525 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %524, i32 0, i32 25
  %526 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %525, i64 0, i64 2
  %527 = getelementptr inbounds [2 x float], [2 x float]* %526, i64 0, i64 0
  %528 = load float, float* %527, align 4
  %529 = fadd float %528, %523
  store float %529, float* %527, align 4
  br label %556

; <label>:530:                                    ; preds = %512
  %531 = load float, float* %7, align 4
  %532 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %533 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %532, i32 0, i32 25
  %534 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %533, i64 0, i64 2
  %535 = getelementptr inbounds [2 x float], [2 x float]* %534, i64 0, i64 1
  %536 = load float, float* %535, align 4
  %537 = fadd float %536, %531
  store float %537, float* %535, align 4
  br label %556

; <label>:538:                                    ; preds = %512
  %539 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %540 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %539, i32 0, i32 1
  %541 = load i8*, i8** %540, align 8
  %542 = load i32, i32* %9, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8, i8* %541, i64 %543
  %545 = load i8, i8* %544, align 1
  %546 = call i8* @Statetype(i8 signext %545)
  %547 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %548 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %547, i32 0, i32 1
  %549 = load i8*, i8** %548, align 8
  %550 = load i32, i32* %9, align 4
  %551 = add nsw i32 %550, 1
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, i8* %549, i64 %552
  %554 = load i8, i8* %553, align 1
  %555 = call i8* @Statetype(i8 signext %554)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %546, i8* %555)
  br label %556

; <label>:556:                                    ; preds = %538, %530, %522
  br label %567

; <label>:557:                                    ; preds = %85
  br label %567

; <label>:558:                                    ; preds = %85
  %559 = load %struct.p7trace_s*, %struct.p7trace_s** %8, align 8
  %560 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %559, i32 0, i32 1
  %561 = load i8*, i8** %560, align 8
  %562 = load i32, i32* %9, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8, i8* %561, i64 %563
  %565 = load i8, i8* %564, align 1
  %566 = call i8* @Statetype(i8 signext %565)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* %566)
  br label %567

; <label>:567:                                    ; preds = %558, %557, %556, %511, %466, %421, %355, %290, %191, %139, %94
  br label %568

; <label>:568:                                    ; preds = %567
  %569 = load i32, i32* %9, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %9, align 4
  br label %11

; <label>:571:                                    ; preds = %11
  ret void
}

declare void @P7CountSymbol(float*, i8 signext, float) #1

declare void @Die(i8*, ...) #1

declare i8* @Statetype(i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define float @P7TraceScore(%struct.plan7_s*, i8*, %struct.p7trace_s*) #0 {
  %4 = alloca %struct.plan7_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.p7trace_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.p7trace_s* %2, %struct.p7trace_s** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

; <label>:10:                                     ; preds = %125, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %128

; <label>:17:                                     ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %20 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %18, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %31 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %59

; <label>:39:                                     ; preds = %17
  %40 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 31
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %48 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %46, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %90

; <label>:59:                                     ; preds = %17
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %61 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %89

; <label>:69:                                     ; preds = %59
  %70 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %71 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 32
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %78 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %76, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

; <label>:89:                                     ; preds = %69, %59
  br label %90

; <label>:90:                                     ; preds = %89, %39
  %91 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %92 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %93 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %100 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %107 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %115 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @TransitionScoreLookup(%struct.plan7_s* %91, i8 signext %98, i32 %105, i8 signext %113, i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

; <label>:125:                                    ; preds = %90
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %10

; <label>:128:                                    ; preds = %10
  %129 = load i32, i32* %7, align 4
  %130 = call float @Scorify(i32 %129)
  ret float %130
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @TransitionScoreLookup(%struct.plan7_s*, i8 signext, i32, i8 signext, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.plan7_s*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  %12 = load i8, i8* %8, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %228 [
    i32 4, label %14
    i32 5, label %15
    i32 6, label %36
    i32 1, label %58
    i32 3, label %105
    i32 2, label %134
    i32 7, label %164
    i32 10, label %185
    i32 8, label %206
    i32 9, label %227
  ]

; <label>:14:                                     ; preds = %5
  store i32 0, i32* %6, align 4
  br label %232

; <label>:15:                                     ; preds = %5
  %16 = load i8, i8* %10, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %30 [
    i32 6, label %18
    i32 5, label %24
  ]

; <label>:18:                                     ; preds = %15
  %19 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 33
  %21 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %20, i64 0, i64 0
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  br label %232

; <label>:24:                                     ; preds = %15
  %25 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %26 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 33
  %27 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %26, i64 0, i64 0
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %232

; <label>:30:                                     ; preds = %15
  %31 = load i8, i8* %8, align 1
  %32 = call i8* @Statetype(i8 signext %31)
  %33 = load i8, i8* %10, align 1
  %34 = call i8* @Statetype(i8 signext %33)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %32, i8* %34)
  br label %35

; <label>:35:                                     ; preds = %30
  br label %231

; <label>:36:                                     ; preds = %5
  %37 = load i8, i8* %10, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %52 [
    i32 1, label %39
    i32 2, label %47
  ]

; <label>:39:                                     ; preds = %36
  %40 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 34
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  br label %232

; <label>:47:                                     ; preds = %36
  %48 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %49 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 24
  %50 = load float, float* %49, align 8
  %51 = call i32 @Prob2Score(float %50, float 1.000000e+00)
  store i32 %51, i32* %6, align 4
  br label %232

; <label>:52:                                     ; preds = %36
  %53 = load i8, i8* %8, align 1
  %54 = call i8* @Statetype(i8 signext %53)
  %55 = load i8, i8* %10, align 1
  %56 = call i8* @Statetype(i8 signext %55)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %54, i8* %56)
  br label %57

; <label>:57:                                     ; preds = %52
  br label %231

; <label>:58:                                     ; preds = %5
  %59 = load i8, i8* %10, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %99 [
    i32 1, label %61
    i32 3, label %71
    i32 2, label %81
    i32 7, label %91
  ]

; <label>:61:                                     ; preds = %58
  %62 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %63 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 30
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  br label %232

; <label>:71:                                     ; preds = %58
  %72 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 30
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %6, align 4
  br label %232

; <label>:81:                                     ; preds = %58
  %82 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %83 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 30
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %6, align 4
  br label %232

; <label>:91:                                     ; preds = %58
  %92 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %93 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %92, i32 0, i32 35
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %6, align 4
  br label %232

; <label>:99:                                     ; preds = %58
  %100 = load i8, i8* %8, align 1
  %101 = call i8* @Statetype(i8 signext %100)
  %102 = load i8, i8* %10, align 1
  %103 = call i8* @Statetype(i8 signext %102)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %101, i8* %103)
  br label %104

; <label>:104:                                    ; preds = %99
  br label %231

; <label>:105:                                    ; preds = %5
  %106 = load i8, i8* %10, align 1
  %107 = sext i8 %106 to i32
  switch i32 %107, label %128 [
    i32 1, label %108
    i32 3, label %118
  ]

; <label>:108:                                    ; preds = %105
  %109 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %110 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %109, i32 0, i32 30
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %6, align 4
  br label %232

; <label>:118:                                    ; preds = %105
  %119 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %120 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %119, i32 0, i32 30
  %121 = load i32**, i32*** %120, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %6, align 4
  br label %232

; <label>:128:                                    ; preds = %105
  %129 = load i8, i8* %8, align 1
  %130 = call i8* @Statetype(i8 signext %129)
  %131 = load i8, i8* %10, align 1
  %132 = call i8* @Statetype(i8 signext %131)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %130, i8* %132)
  br label %133

; <label>:133:                                    ; preds = %128
  br label %231

; <label>:134:                                    ; preds = %5
  %135 = load i8, i8* %10, align 1
  %136 = sext i8 %135 to i32
  switch i32 %136, label %158 [
    i32 1, label %137
    i32 2, label %147
    i32 7, label %157
  ]

; <label>:137:                                    ; preds = %134
  %138 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %139 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %138, i32 0, i32 30
  %140 = load i32**, i32*** %139, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 5
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %6, align 4
  br label %232

; <label>:147:                                    ; preds = %134
  %148 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %149 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %148, i32 0, i32 30
  %150 = load i32**, i32*** %149, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 6
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %6, align 4
  br label %232

; <label>:157:                                    ; preds = %134
  store i32 0, i32* %6, align 4
  br label %232

; <label>:158:                                    ; preds = %134
  %159 = load i8, i8* %8, align 1
  %160 = call i8* @Statetype(i8 signext %159)
  %161 = load i8, i8* %10, align 1
  %162 = call i8* @Statetype(i8 signext %161)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %160, i8* %162)
  br label %163

; <label>:163:                                    ; preds = %158
  br label %231

; <label>:164:                                    ; preds = %5
  %165 = load i8, i8* %10, align 1
  %166 = sext i8 %165 to i32
  switch i32 %166, label %179 [
    i32 8, label %167
    i32 10, label %173
  ]

; <label>:167:                                    ; preds = %164
  %168 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %169 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %168, i32 0, i32 33
  %170 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %169, i64 0, i64 1
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %170, i64 0, i64 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %6, align 4
  br label %232

; <label>:173:                                    ; preds = %164
  %174 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %175 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %174, i32 0, i32 33
  %176 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %175, i64 0, i64 1
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %176, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %6, align 4
  br label %232

; <label>:179:                                    ; preds = %164
  %180 = load i8, i8* %8, align 1
  %181 = call i8* @Statetype(i8 signext %180)
  %182 = load i8, i8* %10, align 1
  %183 = call i8* @Statetype(i8 signext %182)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %181, i8* %183)
  br label %184

; <label>:184:                                    ; preds = %179
  br label %231

; <label>:185:                                    ; preds = %5
  %186 = load i8, i8* %10, align 1
  %187 = sext i8 %186 to i32
  switch i32 %187, label %200 [
    i32 6, label %188
    i32 10, label %194
  ]

; <label>:188:                                    ; preds = %185
  %189 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %190 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %189, i32 0, i32 33
  %191 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %190, i64 0, i64 3
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %191, i64 0, i64 0
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %6, align 4
  br label %232

; <label>:194:                                    ; preds = %185
  %195 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %196 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %195, i32 0, i32 33
  %197 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %196, i64 0, i64 3
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %197, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %6, align 4
  br label %232

; <label>:200:                                    ; preds = %185
  %201 = load i8, i8* %8, align 1
  %202 = call i8* @Statetype(i8 signext %201)
  %203 = load i8, i8* %10, align 1
  %204 = call i8* @Statetype(i8 signext %203)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %202, i8* %204)
  br label %205

; <label>:205:                                    ; preds = %200
  br label %231

; <label>:206:                                    ; preds = %5
  %207 = load i8, i8* %10, align 1
  %208 = sext i8 %207 to i32
  switch i32 %208, label %221 [
    i32 9, label %209
    i32 8, label %215
  ]

; <label>:209:                                    ; preds = %206
  %210 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %211 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %210, i32 0, i32 33
  %212 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %211, i64 0, i64 2
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %212, i64 0, i64 0
  %214 = load i32, i32* %213, align 8
  store i32 %214, i32* %6, align 4
  br label %232

; <label>:215:                                    ; preds = %206
  %216 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %217 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %216, i32 0, i32 33
  %218 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %217, i64 0, i64 2
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %218, i64 0, i64 1
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %6, align 4
  br label %232

; <label>:221:                                    ; preds = %206
  %222 = load i8, i8* %8, align 1
  %223 = call i8* @Statetype(i8 signext %222)
  %224 = load i8, i8* %10, align 1
  %225 = call i8* @Statetype(i8 signext %224)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %223, i8* %225)
  br label %226

; <label>:226:                                    ; preds = %221
  br label %231

; <label>:227:                                    ; preds = %5
  store i32 0, i32* %6, align 4
  br label %232

; <label>:228:                                    ; preds = %5
  %229 = load i8, i8* %8, align 1
  %230 = call i8* @Statetype(i8 signext %229)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* %230)
  br label %231

; <label>:231:                                    ; preds = %228, %226, %205, %184, %163, %133, %104, %57, %35
  store i32 0, i32* %6, align 4
  br label %232

; <label>:232:                                    ; preds = %231, %227, %215, %209, %194, %188, %173, %167, %157, %147, %137, %118, %108, %91, %81, %71, %61, %47, %39, %24, %18, %14
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare float @Scorify(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msa_struct* @P7Traces2Alignment(i8**, %struct.seqinfo_s*, float*, i32, i32, %struct.p7trace_s**, i32) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca %struct.seqinfo_s*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.p7trace_s**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.msa_struct*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store %struct.seqinfo_s* %1, %struct.seqinfo_s** %9, align 8
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.p7trace_s** %5, %struct.p7trace_s*** %13, align 8
  store i32 %6, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 408, i64 %29)
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %18, align 8
  store i32 0, i32* %25, align 4
  br label %32

; <label>:32:                                     ; preds = %41, %7
  %33 = load i32, i32* %25, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %44

; <label>:36:                                     ; preds = %32
  %37 = load i32*, i32** %18, align 8
  %38 = load i32, i32* %25, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 0, i32* %40, align 4
  br label %41

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %25, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %25, align 4
  br label %32

; <label>:44:                                     ; preds = %32
  store i32 0, i32* %16, align 4
  br label %45

; <label>:45:                                     ; preds = %197, %44
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %200

; <label>:49:                                     ; preds = %45
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %50

; <label>:50:                                     ; preds = %193, %49
  %51 = load i32, i32* %23, align 4
  %52 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %52, i64 %54
  %56 = load %struct.p7trace_s*, %struct.p7trace_s** %55, align 8
  %57 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %51, %58
  br i1 %59, label %60, label %196

; <label>:60:                                     ; preds = %50
  %61 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %61, i64 %63
  %65 = load %struct.p7trace_s*, %struct.p7trace_s** %64, align 8
  %66 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %23, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %179 [
    i32 3, label %73
    i32 5, label %76
    i32 8, label %95
    i32 1, label %114
    i32 2, label %114
    i32 6, label %151
    i32 9, label %162
    i32 4, label %177
    i32 7, label %177
    i32 10, label %178
  ]

; <label>:73:                                     ; preds = %60
  %74 = load i32, i32* %20, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %20, align 4
  br label %192

; <label>:76:                                     ; preds = %60
  %77 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %77, i64 %79
  %81 = load %struct.p7trace_s*, %struct.p7trace_s** %80, align 8
  %82 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %23, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 5
  br i1 %90, label %91, label %94

; <label>:91:                                     ; preds = %76
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %20, align 4
  br label %94

; <label>:94:                                     ; preds = %91, %76
  br label %192

; <label>:95:                                     ; preds = %60
  %96 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %96, i64 %98
  %100 = load %struct.p7trace_s*, %struct.p7trace_s** %99, align 8
  %101 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %23, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 8
  br i1 %109, label %110, label %113

; <label>:110:                                    ; preds = %95
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %20, align 4
  br label %113

; <label>:113:                                    ; preds = %110, %95
  br label %192

; <label>:114:                                    ; preds = %60, %60
  %115 = load i32, i32* %20, align 4
  %116 = load i32*, i32** %18, align 8
  %117 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %117, i64 %119
  %121 = load %struct.p7trace_s*, %struct.p7trace_s** %120, align 8
  %122 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %116, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %115, %131
  br i1 %132, label %133, label %150

; <label>:133:                                    ; preds = %114
  %134 = load i32, i32* %20, align 4
  %135 = load i32*, i32** %18, align 8
  %136 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %136, i64 %138
  %140 = load %struct.p7trace_s*, %struct.p7trace_s** %139, align 8
  %141 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %135, i64 %148
  store i32 %134, i32* %149, align 4
  br label %150

; <label>:150:                                    ; preds = %133, %114
  store i32 0, i32* %20, align 4
  br label %192

; <label>:151:                                    ; preds = %60
  %152 = load i32, i32* %20, align 4
  %153 = load i32*, i32** %18, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %152, %155
  br i1 %156, label %157, label %161

; <label>:157:                                    ; preds = %151
  %158 = load i32, i32* %20, align 4
  %159 = load i32*, i32** %18, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %158, i32* %160, align 4
  br label %161

; <label>:161:                                    ; preds = %157, %151
  store i32 0, i32* %20, align 4
  br label %192

; <label>:162:                                    ; preds = %60
  %163 = load i32, i32* %20, align 4
  %164 = load i32*, i32** %18, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %163, %168
  br i1 %169, label %170, label %176

; <label>:170:                                    ; preds = %162
  %171 = load i32, i32* %20, align 4
  %172 = load i32*, i32** %18, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %171, i32* %175, align 4
  br label %176

; <label>:176:                                    ; preds = %170, %162
  br label %192

; <label>:177:                                    ; preds = %60, %60
  br label %192

; <label>:178:                                    ; preds = %60
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0))
  br label %179

; <label>:179:                                    ; preds = %60, %178
  %180 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %180, i64 %182
  %184 = load %struct.p7trace_s*, %struct.p7trace_s** %183, align 8
  %185 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %23, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = call i8* @Statetype(i8 signext %190)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i8* %191)
  br label %192

; <label>:192:                                    ; preds = %179, %177, %176, %161, %150, %113, %94, %73
  br label %193

; <label>:193:                                    ; preds = %192
  %194 = load i32, i32* %23, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %23, align 4
  br label %50

; <label>:196:                                    ; preds = %50
  br label %197

; <label>:197:                                    ; preds = %196
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %16, align 4
  br label %45

; <label>:200:                                    ; preds = %45
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %225

; <label>:203:                                    ; preds = %200
  store i32 0, i32* %25, align 4
  br label %204

; <label>:204:                                    ; preds = %221, %203
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp sle i32 %205, %206
  br i1 %207, label %208, label %224

; <label>:208:                                    ; preds = %204
  %209 = load i32*, i32** %18, align 8
  %210 = load i32, i32* %25, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %213, 1
  br i1 %214, label %215, label %220

; <label>:215:                                    ; preds = %208
  %216 = load i32*, i32** %18, align 8
  %217 = load i32, i32* %25, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 1, i32* %219, align 4
  br label %220

; <label>:220:                                    ; preds = %215, %208
  br label %221

; <label>:221:                                    ; preds = %220
  %222 = load i32, i32* %25, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %25, align 4
  br label %204

; <label>:224:                                    ; preds = %204
  br label %225

; <label>:225:                                    ; preds = %224, %200
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = mul i64 4, %228
  %230 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 453, i64 %229)
  %231 = bitcast i8* %230 to i32*
  store i32* %231, i32** %19, align 8
  %232 = load i32*, i32** %19, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 -1, i32* %233, align 4
  %234 = load i32*, i32** %18, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %17, align 4
  store i32 1, i32* %25, align 4
  br label %237

; <label>:237:                                    ; preds = %255, %225
  %238 = load i32, i32* %25, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp sle i32 %238, %239
  br i1 %240, label %241, label %258

; <label>:241:                                    ; preds = %237
  %242 = load i32, i32* %17, align 4
  %243 = load i32*, i32** %19, align 8
  %244 = load i32, i32* %25, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %242, i32* %246, align 4
  %247 = load i32*, i32** %18, align 8
  %248 = load i32, i32* %25, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %17, align 4
  br label %255

; <label>:255:                                    ; preds = %241
  %256 = load i32, i32* %25, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %25, align 4
  br label %237

; <label>:258:                                    ; preds = %237
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %17, align 4
  %261 = call %struct.msa_struct* @MSAAlloc(i32 %259, i32 %260)
  store %struct.msa_struct* %261, %struct.msa_struct** %15, align 8
  store i32 0, i32* %16, align 4
  br label %262

; <label>:262:                                    ; preds = %618, %258
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* %11, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %621

; <label>:266:                                    ; preds = %262
  store i32 0, i32* %21, align 4
  br label %267

; <label>:267:                                    ; preds = %282, %266
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* %17, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %285

; <label>:271:                                    ; preds = %267
  %272 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %273 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %272, i32 0, i32 0
  %274 = load i8**, i8*** %273, align 8
  %275 = load i32, i32* %16, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  store i8 46, i8* %281, align 1
  br label %282

; <label>:282:                                    ; preds = %271
  %283 = load i32, i32* %21, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %21, align 4
  br label %267

; <label>:285:                                    ; preds = %267
  store i32 1, i32* %25, align 4
  br label %286

; <label>:286:                                    ; preds = %305, %285
  %287 = load i32, i32* %25, align 4
  %288 = load i32, i32* %12, align 4
  %289 = icmp sle i32 %287, %288
  br i1 %289, label %290, label %308

; <label>:290:                                    ; preds = %286
  %291 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %292 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %291, i32 0, i32 0
  %293 = load i8**, i8*** %292, align 8
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8*, i8** %293, i64 %295
  %297 = load i8*, i8** %296, align 8
  %298 = load i32*, i32** %19, align 8
  %299 = load i32, i32* %25, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %297, i64 %303
  store i8 45, i8* %304, align 1
  br label %305

; <label>:305:                                    ; preds = %290
  %306 = load i32, i32* %25, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %25, align 4
  br label %286

; <label>:308:                                    ; preds = %286
  %309 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %310 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %309, i32 0, i32 0
  %311 = load i8**, i8*** %310, align 8
  %312 = load i32, i32* %16, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %311, i64 %313
  %315 = load i8*, i8** %314, align 8
  %316 = load i32, i32* %17, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %315, i64 %317
  store i8 0, i8* %318, align 1
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %319

; <label>:319:                                    ; preds = %522, %308
  %320 = load i32, i32* %23, align 4
  %321 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %322 = load i32, i32* %16, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %321, i64 %323
  %325 = load %struct.p7trace_s*, %struct.p7trace_s** %324, align 8
  %326 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp slt i32 %320, %327
  br i1 %328, label %329, label %525

; <label>:329:                                    ; preds = %319
  %330 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %331 = load i32, i32* %16, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %330, i64 %332
  %334 = load %struct.p7trace_s*, %struct.p7trace_s** %333, align 8
  %335 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %334, i32 0, i32 1
  %336 = load i8*, i8** %335, align 8
  %337 = load i32, i32* %23, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  store i32 %341, i32* %24, align 4
  %342 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %343 = load i32, i32* %16, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %342, i64 %344
  %346 = load %struct.p7trace_s*, %struct.p7trace_s** %345, align 8
  %347 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %346, i32 0, i32 3
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %23, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  store i32 %352, i32* %22, align 4
  %353 = load %struct.p7trace_s**, %struct.p7trace_s*** %13, align 8
  %354 = load i32, i32* %16, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %353, i64 %355
  %357 = load %struct.p7trace_s*, %struct.p7trace_s** %356, align 8
  %358 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %23, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %25, align 4
  %364 = load i32, i32* %24, align 4
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %366, label %397

; <label>:366:                                    ; preds = %329
  %367 = load i32*, i32** %19, align 8
  %368 = load i32, i32* %25, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %21, align 4
  %372 = load i8**, i8*** %8, align 8
  %373 = load i32, i32* %16, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %372, i64 %374
  %376 = load i8*, i8** %375, align 8
  %377 = load i32, i32* %22, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %376, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %382
  %384 = load i8, i8* %383, align 1
  %385 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %386 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %385, i32 0, i32 0
  %387 = load i8**, i8*** %386, align 8
  %388 = load i32, i32* %16, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8*, i8** %387, i64 %389
  %391 = load i8*, i8** %390, align 8
  %392 = load i32, i32* %21, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %391, i64 %393
  store i8 %384, i8* %394, align 1
  %395 = load i32, i32* %21, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %21, align 4
  br label %521

; <label>:397:                                    ; preds = %329
  %398 = load i32, i32* %24, align 4
  %399 = icmp eq i32 %398, 2
  br i1 %399, label %400, label %407

; <label>:400:                                    ; preds = %397
  %401 = load i32*, i32** %19, align 8
  %402 = load i32, i32* %25, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %21, align 4
  br label %520

; <label>:407:                                    ; preds = %397
  %408 = load i32, i32* %24, align 4
  %409 = icmp eq i32 %408, 3
  br i1 %409, label %410, label %454

; <label>:410:                                    ; preds = %407
  %411 = load i32, i32* %14, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %424

; <label>:413:                                    ; preds = %410
  %414 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %415 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %414, i32 0, i32 0
  %416 = load i8**, i8*** %415, align 8
  %417 = load i32, i32* %16, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8*, i8** %416, i64 %418
  %420 = load i8*, i8** %419, align 8
  %421 = load i32, i32* %21, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, i8* %420, i64 %422
  store i8 42, i8* %423, align 1
  br label %453

; <label>:424:                                    ; preds = %410
  %425 = load i8**, i8*** %8, align 8
  %426 = load i32, i32* %16, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8*, i8** %425, i64 %427
  %429 = load i8*, i8** %428, align 8
  %430 = load i32, i32* %22, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, i8* %429, i64 %431
  %433 = load i8, i8* %432, align 1
  %434 = sext i8 %433 to i32
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = sext i8 %437 to i32
  %439 = call i32 @tolower(i32 %438) #7
  %440 = trunc i32 %439 to i8
  %441 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %442 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %441, i32 0, i32 0
  %443 = load i8**, i8*** %442, align 8
  %444 = load i32, i32* %16, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8*, i8** %443, i64 %445
  %447 = load i8*, i8** %446, align 8
  %448 = load i32, i32* %21, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %447, i64 %449
  store i8 %440, i8* %450, align 1
  %451 = load i32, i32* %21, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %21, align 4
  br label %453

; <label>:453:                                    ; preds = %424, %413
  br label %519

; <label>:454:                                    ; preds = %407
  %455 = load i32, i32* %24, align 4
  %456 = icmp eq i32 %455, 5
  br i1 %456, label %460, label %457

; <label>:457:                                    ; preds = %454
  %458 = load i32, i32* %24, align 4
  %459 = icmp eq i32 %458, 8
  br i1 %459, label %460, label %507

; <label>:460:                                    ; preds = %457, %454
  %461 = load i32, i32* %22, align 4
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %507

; <label>:463:                                    ; preds = %460
  %464 = load i32, i32* %14, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %477

; <label>:466:                                    ; preds = %463
  %467 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %468 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %467, i32 0, i32 0
  %469 = load i8**, i8*** %468, align 8
  %470 = load i32, i32* %16, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8*, i8** %469, i64 %471
  %473 = load i8*, i8** %472, align 8
  %474 = load i32, i32* %21, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8, i8* %473, i64 %475
  store i8 42, i8* %476, align 1
  br label %506

; <label>:477:                                    ; preds = %463
  %478 = load i8**, i8*** %8, align 8
  %479 = load i32, i32* %16, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i8*, i8** %478, i64 %480
  %482 = load i8*, i8** %481, align 8
  %483 = load i32, i32* %22, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8, i8* %482, i64 %484
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i32
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %488
  %490 = load i8, i8* %489, align 1
  %491 = sext i8 %490 to i32
  %492 = call i32 @tolower(i32 %491) #7
  %493 = trunc i32 %492 to i8
  %494 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %495 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %494, i32 0, i32 0
  %496 = load i8**, i8*** %495, align 8
  %497 = load i32, i32* %16, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8*, i8** %496, i64 %498
  %500 = load i8*, i8** %499, align 8
  %501 = load i32, i32* %21, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i8, i8* %500, i64 %502
  store i8 %493, i8* %503, align 1
  %504 = load i32, i32* %21, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %21, align 4
  br label %506

; <label>:506:                                    ; preds = %477, %466
  br label %518

; <label>:507:                                    ; preds = %460, %457
  %508 = load i32, i32* %24, align 4
  %509 = icmp eq i32 %508, 7
  br i1 %509, label %510, label %517

; <label>:510:                                    ; preds = %507
  %511 = load i32*, i32** %19, align 8
  %512 = load i32, i32* %12, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %21, align 4
  br label %517

; <label>:517:                                    ; preds = %510, %507
  br label %518

; <label>:518:                                    ; preds = %517, %506
  br label %519

; <label>:519:                                    ; preds = %518, %453
  br label %520

; <label>:520:                                    ; preds = %519, %400
  br label %521

; <label>:521:                                    ; preds = %520, %366
  br label %522

; <label>:522:                                    ; preds = %521
  %523 = load i32, i32* %23, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %23, align 4
  br label %319

; <label>:525:                                    ; preds = %319
  %526 = load i32, i32* %14, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %617, label %528

; <label>:528:                                    ; preds = %525
  %529 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %530 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %529, i32 0, i32 0
  %531 = load i8**, i8*** %530, align 8
  %532 = load i32, i32* %16, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8*, i8** %531, i64 %533
  %535 = load i8*, i8** %534, align 8
  %536 = load i32*, i32** %18, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 0
  %538 = load i32, i32* %537, align 4
  call void @rightjustify(i8* %535, i32 %538)
  store i32 1, i32* %25, align 4
  br label %539

; <label>:539:                                    ; preds = %613, %528
  %540 = load i32, i32* %25, align 4
  %541 = load i32, i32* %12, align 4
  %542 = icmp slt i32 %540, %541
  br i1 %542, label %543, label %616

; <label>:543:                                    ; preds = %539
  %544 = load i32*, i32** %18, align 8
  %545 = load i32, i32* %25, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %544, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = icmp sgt i32 %548, 1
  br i1 %549, label %550, label %612

; <label>:550:                                    ; preds = %543
  store i32 0, i32* %20, align 4
  %551 = load i32*, i32** %19, align 8
  %552 = load i32, i32* %25, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, i32* %551, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %21, align 4
  br label %557

; <label>:557:                                    ; preds = %581, %550
  %558 = call i16** @__ctype_b_loc() #8
  %559 = load i16*, i16** %558, align 8
  %560 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %561 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %560, i32 0, i32 0
  %562 = load i8**, i8*** %561, align 8
  %563 = load i32, i32* %16, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8*, i8** %562, i64 %564
  %566 = load i8*, i8** %565, align 8
  %567 = load i32, i32* %21, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8, i8* %566, i64 %568
  %570 = load i8, i8* %569, align 1
  %571 = sext i8 %570 to i32
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i16, i16* %559, i64 %572
  %574 = load i16, i16* %573, align 2
  %575 = zext i16 %574 to i32
  %576 = and i32 %575, 512
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %584

; <label>:578:                                    ; preds = %557
  %579 = load i32, i32* %20, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %20, align 4
  br label %581

; <label>:581:                                    ; preds = %578
  %582 = load i32, i32* %21, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %21, align 4
  br label %557

; <label>:584:                                    ; preds = %557
  %585 = load i32, i32* %20, align 4
  %586 = sdiv i32 %585, 2
  store i32 %586, i32* %20, align 4
  %587 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %588 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %587, i32 0, i32 0
  %589 = load i8**, i8*** %588, align 8
  %590 = load i32, i32* %16, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i8*, i8** %589, i64 %591
  %593 = load i8*, i8** %592, align 8
  %594 = load i32*, i32** %19, align 8
  %595 = load i32, i32* %25, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, i8* %593, i64 %599
  %601 = getelementptr inbounds i8, i8* %600, i64 1
  %602 = load i32, i32* %20, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, i8* %601, i64 %603
  %605 = load i32*, i32** %18, align 8
  %606 = load i32, i32* %25, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %605, i64 %607
  %609 = load i32, i32* %608, align 4
  %610 = load i32, i32* %20, align 4
  %611 = sub nsw i32 %609, %610
  call void @rightjustify(i8* %604, i32 %611)
  br label %612

; <label>:612:                                    ; preds = %584, %543
  br label %613

; <label>:613:                                    ; preds = %612
  %614 = load i32, i32* %25, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %25, align 4
  br label %539

; <label>:616:                                    ; preds = %539
  br label %617

; <label>:617:                                    ; preds = %616, %525
  br label %618

; <label>:618:                                    ; preds = %617
  %619 = load i32, i32* %16, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %16, align 4
  br label %262

; <label>:621:                                    ; preds = %262
  %622 = load i32, i32* %11, align 4
  %623 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %624 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %623, i32 0, i32 4
  store i32 %622, i32* %624, align 4
  %625 = load i32, i32* %17, align 4
  %626 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %627 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %626, i32 0, i32 3
  store i32 %625, i32* %627, align 8
  %628 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 529, i64 10)
  %629 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %630 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %629, i32 0, i32 10
  store i8* %628, i8** %630, align 8
  %631 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %632 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %631, i32 0, i32 10
  %633 = load i8*, i8** %632, align 8
  %634 = call i32 (i8*, i8*, ...) @sprintf(i8* %633, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #6
  store i32 0, i32* %16, align 4
  br label %635

; <label>:635:                                    ; preds = %788, %621
  %636 = load i32, i32* %16, align 4
  %637 = load i32, i32* %11, align 4
  %638 = icmp slt i32 %636, %637
  br i1 %638, label %639, label %791

; <label>:639:                                    ; preds = %635
  %640 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %641 = load i32, i32* %16, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %640, i64 %642
  %644 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %643, i32 0, i32 1
  %645 = getelementptr inbounds [64 x i8], [64 x i8]* %644, i32 0, i32 0
  %646 = call i8* @sre_strdup(i8* %645, i32 -1)
  %647 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %648 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %647, i32 0, i32 1
  %649 = load i8**, i8*** %648, align 8
  %650 = load i32, i32* %16, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i8*, i8** %649, i64 %651
  store i8* %646, i8** %652, align 8
  %653 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %654 = load i32, i32* %16, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %653, i64 %655
  %657 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 8
  %659 = and i32 %658, 4
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %670

; <label>:661:                                    ; preds = %639
  %662 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %663 = load i32, i32* %16, align 4
  %664 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %665 = load i32, i32* %16, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %664, i64 %666
  %668 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %667, i32 0, i32 3
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %668, i32 0, i32 0
  call void @MSASetSeqAccession(%struct.msa_struct* %662, i32 %663, i8* %669)
  br label %670

; <label>:670:                                    ; preds = %661, %639
  %671 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %672 = load i32, i32* %16, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %671, i64 %673
  %675 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 8
  %677 = and i32 %676, 8
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %688

; <label>:679:                                    ; preds = %670
  %680 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %681 = load i32, i32* %16, align 4
  %682 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %683 = load i32, i32* %16, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %682, i64 %684
  %686 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %685, i32 0, i32 4
  %687 = getelementptr inbounds [128 x i8], [128 x i8]* %686, i32 0, i32 0
  call void @MSASetSeqDescription(%struct.msa_struct* %680, i32 %681, i8* %687)
  br label %688

; <label>:688:                                    ; preds = %679, %670
  %689 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %690 = load i32, i32* %16, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %689, i64 %691
  %693 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %692, i32 0, i32 0
  %694 = load i32, i32* %693, align 8
  %695 = and i32 %694, 512
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %732

; <label>:697:                                    ; preds = %688
  %698 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %699 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %698, i32 0, i32 16
  %700 = load i8**, i8*** %699, align 8
  %701 = icmp eq i8** %700, null
  br i1 %701, label %702, label %710

; <label>:702:                                    ; preds = %697
  %703 = load i32, i32* %11, align 4
  %704 = sext i32 %703 to i64
  %705 = mul i64 8, %704
  %706 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 541, i64 %705)
  %707 = bitcast i8* %706 to i8**
  %708 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %709 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %708, i32 0, i32 16
  store i8** %707, i8*** %709, align 8
  br label %710

; <label>:710:                                    ; preds = %702, %697
  %711 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %712 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %711, i32 0, i32 0
  %713 = load i8**, i8*** %712, align 8
  %714 = load i32, i32* %16, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i8*, i8** %713, i64 %715
  %717 = load i8*, i8** %716, align 8
  %718 = load i32, i32* %17, align 4
  %719 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %720 = load i32, i32* %16, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %719, i64 %721
  %723 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %722, i32 0, i32 10
  %724 = load i8*, i8** %723, align 8
  %725 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %726 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %725, i32 0, i32 16
  %727 = load i8**, i8*** %726, align 8
  %728 = load i32, i32* %16, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i8*, i8** %727, i64 %729
  %731 = call i32 @MakeAlignedString(i8* %717, i32 %718, i8* %724, i8** %730)
  br label %732

; <label>:732:                                    ; preds = %710, %688
  %733 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %734 = load i32, i32* %16, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %733, i64 %735
  %737 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %736, i32 0, i32 0
  %738 = load i32, i32* %737, align 8
  %739 = and i32 %738, 1024
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %776

; <label>:741:                                    ; preds = %732
  %742 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %743 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %742, i32 0, i32 17
  %744 = load i8**, i8*** %743, align 8
  %745 = icmp eq i8** %744, null
  br i1 %745, label %746, label %754

; <label>:746:                                    ; preds = %741
  %747 = load i32, i32* %11, align 4
  %748 = sext i32 %747 to i64
  %749 = mul i64 8, %748
  %750 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 546, i64 %749)
  %751 = bitcast i8* %750 to i8**
  %752 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %753 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %752, i32 0, i32 17
  store i8** %751, i8*** %753, align 8
  br label %754

; <label>:754:                                    ; preds = %746, %741
  %755 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %756 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %755, i32 0, i32 0
  %757 = load i8**, i8*** %756, align 8
  %758 = load i32, i32* %16, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i8*, i8** %757, i64 %759
  %761 = load i8*, i8** %760, align 8
  %762 = load i32, i32* %17, align 4
  %763 = load %struct.seqinfo_s*, %struct.seqinfo_s** %9, align 8
  %764 = load i32, i32* %16, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %763, i64 %765
  %767 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %766, i32 0, i32 11
  %768 = load i8*, i8** %767, align 8
  %769 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %770 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %769, i32 0, i32 17
  %771 = load i8**, i8*** %770, align 8
  %772 = load i32, i32* %16, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i8*, i8** %771, i64 %773
  %775 = call i32 @MakeAlignedString(i8* %761, i32 %762, i8* %768, i8** %774)
  br label %776

; <label>:776:                                    ; preds = %754, %732
  %777 = load float*, float** %10, align 8
  %778 = load i32, i32* %16, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds float, float* %777, i64 %779
  %781 = load float, float* %780, align 4
  %782 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %783 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %782, i32 0, i32 2
  %784 = load float*, float** %783, align 8
  %785 = load i32, i32* %16, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds float, float* %784, i64 %786
  store float %781, float* %787, align 4
  br label %788

; <label>:788:                                    ; preds = %776
  %789 = load i32, i32* %16, align 4
  %790 = add nsw i32 %789, 1
  store i32 %790, i32* %16, align 4
  br label %635

; <label>:791:                                    ; preds = %635
  %792 = load i32, i32* %17, align 4
  %793 = add nsw i32 %792, 1
  %794 = sext i32 %793 to i64
  %795 = mul i64 1, %794
  %796 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 555, i64 %795)
  %797 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %798 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %797, i32 0, i32 13
  store i8* %796, i8** %798, align 8
  store i32 0, i32* %21, align 4
  br label %799

; <label>:799:                                    ; preds = %810, %791
  %800 = load i32, i32* %21, align 4
  %801 = load i32, i32* %17, align 4
  %802 = icmp slt i32 %800, %801
  br i1 %802, label %803, label %813

; <label>:803:                                    ; preds = %799
  %804 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %805 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %804, i32 0, i32 13
  %806 = load i8*, i8** %805, align 8
  %807 = load i32, i32* %21, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds i8, i8* %806, i64 %808
  store i8 46, i8* %809, align 1
  br label %810

; <label>:810:                                    ; preds = %803
  %811 = load i32, i32* %21, align 4
  %812 = add nsw i32 %811, 1
  store i32 %812, i32* %21, align 4
  br label %799

; <label>:813:                                    ; preds = %799
  store i32 1, i32* %25, align 4
  br label %814

; <label>:814:                                    ; preds = %829, %813
  %815 = load i32, i32* %25, align 4
  %816 = load i32, i32* %12, align 4
  %817 = icmp sle i32 %815, %816
  br i1 %817, label %818, label %832

; <label>:818:                                    ; preds = %814
  %819 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %820 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %819, i32 0, i32 13
  %821 = load i8*, i8** %820, align 8
  %822 = load i32*, i32** %19, align 8
  %823 = load i32, i32* %25, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds i32, i32* %822, i64 %824
  %826 = load i32, i32* %825, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i8, i8* %821, i64 %827
  store i8 120, i8* %828, align 1
  br label %829

; <label>:829:                                    ; preds = %818
  %830 = load i32, i32* %25, align 4
  %831 = add nsw i32 %830, 1
  store i32 %831, i32* %25, align 4
  br label %814

; <label>:832:                                    ; preds = %814
  %833 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  %834 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %833, i32 0, i32 13
  %835 = load i8*, i8** %834, align 8
  %836 = load i32, i32* %17, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds i8, i8* %835, i64 %837
  store i8 0, i8* %838, align 1
  %839 = load i32*, i32** %18, align 8
  %840 = bitcast i32* %839 to i8*
  call void @free(i8* %840) #6
  %841 = load i32*, i32** %19, align 8
  %842 = bitcast i32* %841 to i8*
  call void @free(i8* %842) #6
  %843 = load %struct.msa_struct*, %struct.msa_struct** %15, align 8
  ret %struct.msa_struct* %843
}

declare %struct.msa_struct* @MSAAlloc(i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rightjustify(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  br label %11

; <label>:11:                                     ; preds = %69, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %70

; <label>:14:                                     ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %54, label %22

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 46
  br i1 %29, label %54, label %30

; <label>:30:                                     ; preds = %22
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 95
  br i1 %37, label %54, label %38

; <label>:38:                                     ; preds = %30
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %54, label %46

; <label>:46:                                     ; preds = %38
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 126
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %46, %38, %30, %22, %14
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  br label %69

; <label>:57:                                     ; preds = %46
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %5, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 %63, i8* %68, align 1
  br label %69

; <label>:69:                                     ; preds = %57, %54
  br label %11

; <label>:70:                                     ; preds = %11
  br label %71

; <label>:71:                                     ; preds = %74, %70
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %80

; <label>:74:                                     ; preds = %71
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %5, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 46, i8* %79, align 1
  br label %71

; <label>:80:                                     ; preds = %71
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @sre_strdup(i8*, i32) #1

declare void @MSASetSeqAccession(%struct.msa_struct*, i32, i8*) #1

declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #1

declare i32 @MakeAlignedString(i8*, i32, i8*, i8**) #1

declare i32 @Prob2Score(float, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s*, %struct.plan7_s*, i8*, i8*) #0 {
  %5 = alloca %struct.p7trace_s*, align 8
  %6 = alloca %struct.plan7_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fancyali_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %5, align 8
  store %struct.plan7_s* %1, %struct.plan7_s** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = call %struct.fancyali_s* @AllocFancyAli()
  store %struct.fancyali_s* %13, %struct.fancyali_s** %9, align 8
  %14 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %15 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %14, i32 0, i32 0
  store i8* null, i8** %15, align 8
  %16 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %17 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %16, i32 0, i32 1
  store i8* null, i8** %17, align 8
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 1, %22
  %24 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 680, i64 %23)
  %25 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %26 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %28 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 1, %31
  %33 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 681, i64 %32)
  %34 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %35 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %37 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 1, %40
  %42 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 682, i64 %41)
  %43 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %44 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %46 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %49 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  call void @llvm.memset.p0i8.i64(i8* %47, i8 32, i64 %51, i32 1, i1 false)
  %52 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %53 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %56 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  call void @llvm.memset.p0i8.i64(i8* %54, i8 32, i64 %58, i32 1, i1 false)
  %59 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %60 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %63 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  call void @llvm.memset.p0i8.i64(i8* %61, i8 32, i64 %65, i32 1, i1 false)
  %66 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %67 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 47
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

; <label>:71:                                     ; preds = %4
  %72 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %73 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 1, %76
  %78 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 690, i64 %77)
  %79 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %80 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %82 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %85 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  call void @llvm.memset.p0i8.i64(i8* %83, i8 32, i64 %87, i32 1, i1 false)
  br label %88

; <label>:88:                                     ; preds = %71, %4
  %89 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %90 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %89, i32 0, i32 47
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

; <label>:94:                                     ; preds = %88
  %95 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %96 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = mul i64 1, %99
  %101 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 695, i64 %100)
  %102 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %103 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %105 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %108 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  call void @llvm.memset.p0i8.i64(i8* %106, i8 32, i64 %110, i32 1, i1 false)
  br label %111

; <label>:111:                                    ; preds = %94, %88
  %112 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @Strdup(i8* %114)
  %116 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %117 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i8* @Strdup(i8* %118)
  %120 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %121 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %120, i32 0, i32 7
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @Alphabet_type, align 4
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %111
  store float 5.000000e-01, float* %12, align 4
  br label %126

; <label>:125:                                    ; preds = %111
  store float 0x3FECCCCCC0000000, float* %12, align 4
  br label %126

; <label>:126:                                    ; preds = %125, %124
  store i32 0, i32* %10, align 4
  br label %127

; <label>:127:                                    ; preds = %153, %126
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %130 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %156

; <label>:133:                                    ; preds = %127
  %134 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %135 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %152

; <label>:142:                                    ; preds = %133
  %143 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %144 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %151 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 8
  br label %156

; <label>:152:                                    ; preds = %133
  br label %153

; <label>:153:                                    ; preds = %152
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %127

; <label>:156:                                    ; preds = %142, %127
  %157 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %158 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %161

; <label>:161:                                    ; preds = %184, %156
  %162 = load i32, i32* %10, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %187

; <label>:164:                                    ; preds = %161
  %165 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %166 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %183

; <label>:173:                                    ; preds = %164
  %174 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %175 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %182 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %181, i32 0, i32 9
  store i32 %180, i32* %182, align 4
  br label %187

; <label>:183:                                    ; preds = %164
  br label %184

; <label>:184:                                    ; preds = %183
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %10, align 4
  br label %161

; <label>:187:                                    ; preds = %173, %161
  store i32 0, i32* %10, align 4
  br label %188

; <label>:188:                                    ; preds = %704, %187
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %191 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %707

; <label>:194:                                    ; preds = %188
  %195 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %196 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  switch i32 %202, label %702 [
    i32 4, label %203
    i32 9, label %203
    i32 5, label %210
    i32 10, label %210
    i32 8, label %210
    i32 6, label %251
    i32 7, label %258
    i32 1, label %265
    i32 2, label %513
    i32 3, label %634
  ]

; <label>:203:                                    ; preds = %194, %194
  %204 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %205 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  store i8 42, i8* %209, align 1
  br label %703

; <label>:210:                                    ; preds = %194, %194, %194
  %211 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %212 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  store i8 45, i8* %216, align 1
  %217 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %218 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %250

; <label>:225:                                    ; preds = %210
  %226 = load i8*, i8** %7, align 8
  %227 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %228 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %226, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = call i32 @tolower(i32 %241) #7
  %243 = trunc i32 %242 to i8
  %244 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %245 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %244, i32 0, i32 4
  %246 = load i8*, i8** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  store i8 %243, i8* %249, align 1
  br label %250

; <label>:250:                                    ; preds = %225, %210
  br label %703

; <label>:251:                                    ; preds = %194
  %252 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %253 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  store i8 62, i8* %257, align 1
  br label %703

; <label>:258:                                    ; preds = %194
  %259 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %260 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %259, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  store i8 60, i8* %264, align 1
  br label %703

; <label>:265:                                    ; preds = %194
  %266 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %267 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %266, i32 0, i32 47
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %291

; <label>:271:                                    ; preds = %265
  %272 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %273 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %272, i32 0, i32 3
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %276 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %274, i64 %282
  %284 = load i8, i8* %283, align 1
  %285 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %286 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  store i8 %284, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %271, %265
  %292 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %293 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %292, i32 0, i32 47
  %294 = load i32, i32* %293, align 8
  %295 = and i32 %294, 8
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %317

; <label>:297:                                    ; preds = %291
  %298 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %299 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %298, i32 0, i32 4
  %300 = load i8*, i8** %299, align 8
  %301 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %302 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %300, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %312 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %311, i32 0, i32 1
  %313 = load i8*, i8** %312, align 8
  %314 = load i32, i32* %10, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  store i8 %310, i8* %316, align 1
  br label %317

; <label>:317:                                    ; preds = %297, %291
  %318 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %319 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %318, i32 0, i32 22
  %320 = load float**, float*** %319, align 8
  %321 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %322 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %321, i32 0, i32 2
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %10, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float*, float** %320, i64 %328
  %330 = load float*, float** %329, align 8
  %331 = load i32, i32* @Alphabet_size, align 4
  %332 = call i32 @FArgMax(float* %330, i32 %331)
  store i32 %332, i32* %11, align 4
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %338 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %337, i32 0, i32 2
  %339 = load i8*, i8** %338, align 8
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  store i8 %336, i8* %342, align 1
  %343 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %344 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %343, i32 0, i32 22
  %345 = load float**, float*** %344, align 8
  %346 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %347 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %346, i32 0, i32 2
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %10, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float*, float** %345, i64 %353
  %355 = load float*, float** %354, align 8
  %356 = load i32, i32* %11, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %355, i64 %357
  %359 = load float, float* %358, align 4
  %360 = load float, float* %12, align 4
  %361 = fcmp olt float %359, %360
  br i1 %361, label %362, label %379

; <label>:362:                                    ; preds = %317
  %363 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %364 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %363, i32 0, i32 2
  %365 = load i8*, i8** %364, align 8
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = call i32 @tolower(i32 %370) #7
  %372 = trunc i32 %371 to i8
  %373 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %374 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %373, i32 0, i32 2
  %375 = load i8*, i8** %374, align 8
  %376 = load i32, i32* %10, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %375, i64 %377
  store i8 %372, i8* %378, align 1
  br label %379

; <label>:379:                                    ; preds = %362, %317
  %380 = load i8*, i8** %7, align 8
  %381 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %382 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %381, i32 0, i32 3
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %10, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %380, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = load i32, i32* %11, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %453

; <label>:394:                                    ; preds = %379
  %395 = load i8*, i8** %7, align 8
  %396 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %397 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %396, i32 0, i32 3
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %10, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %395, i64 %403
  %405 = load i8, i8* %404, align 1
  %406 = sext i8 %405 to i32
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %407
  %409 = load i8, i8* %408, align 1
  %410 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %411 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %410, i32 0, i32 3
  %412 = load i8*, i8** %411, align 8
  %413 = load i32, i32* %10, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  store i8 %409, i8* %415, align 1
  %416 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %417 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %416, i32 0, i32 22
  %418 = load float**, float*** %417, align 8
  %419 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %420 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %419, i32 0, i32 2
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %10, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds float*, float** %418, i64 %426
  %428 = load float*, float** %427, align 8
  %429 = load i32, i32* %11, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float, float* %428, i64 %430
  %432 = load float, float* %431, align 4
  %433 = load float, float* %12, align 4
  %434 = fcmp olt float %432, %433
  br i1 %434, label %435, label %452

; <label>:435:                                    ; preds = %394
  %436 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %437 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %436, i32 0, i32 3
  %438 = load i8*, i8** %437, align 8
  %439 = load i32, i32* %10, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %438, i64 %440
  %442 = load i8, i8* %441, align 1
  %443 = sext i8 %442 to i32
  %444 = call i32 @tolower(i32 %443) #7
  %445 = trunc i32 %444 to i8
  %446 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %447 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %446, i32 0, i32 3
  %448 = load i8*, i8** %447, align 8
  %449 = load i32, i32* %10, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* %448, i64 %450
  store i8 %445, i8* %451, align 1
  br label %452

; <label>:452:                                    ; preds = %435, %394
  br label %491

; <label>:453:                                    ; preds = %379
  %454 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %455 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %454, i32 0, i32 31
  %456 = load i32**, i32*** %455, align 8
  %457 = load i8*, i8** %7, align 8
  %458 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %459 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %458, i32 0, i32 3
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %10, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %457, i64 %465
  %467 = load i8, i8* %466, align 1
  %468 = sext i8 %467 to i32
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32*, i32** %456, i64 %469
  %471 = load i32*, i32** %470, align 8
  %472 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %473 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %472, i32 0, i32 2
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %10, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %471, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = icmp sgt i32 %481, 0
  br i1 %482, label %483, label %490

; <label>:483:                                    ; preds = %453
  %484 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %485 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %484, i32 0, i32 3
  %486 = load i8*, i8** %485, align 8
  %487 = load i32, i32* %10, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8, i8* %486, i64 %488
  store i8 43, i8* %489, align 1
  br label %490

; <label>:490:                                    ; preds = %483, %453
  br label %491

; <label>:491:                                    ; preds = %490, %452
  %492 = load i8*, i8** %7, align 8
  %493 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %494 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %493, i32 0, i32 3
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %10, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i8, i8* %492, i64 %500
  %502 = load i8, i8* %501, align 1
  %503 = sext i8 %502 to i32
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %504
  %506 = load i8, i8* %505, align 1
  %507 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %508 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %507, i32 0, i32 4
  %509 = load i8*, i8** %508, align 8
  %510 = load i32, i32* %10, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8, i8* %509, i64 %511
  store i8 %506, i8* %512, align 1
  br label %703

; <label>:513:                                    ; preds = %194
  %514 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %515 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %514, i32 0, i32 47
  %516 = load i32, i32* %515, align 8
  %517 = and i32 %516, 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %539

; <label>:519:                                    ; preds = %513
  %520 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %521 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %520, i32 0, i32 3
  %522 = load i8*, i8** %521, align 8
  %523 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %524 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %523, i32 0, i32 2
  %525 = load i32*, i32** %524, align 8
  %526 = load i32, i32* %10, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %525, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i8, i8* %522, i64 %530
  %532 = load i8, i8* %531, align 1
  %533 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %534 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %533, i32 0, i32 0
  %535 = load i8*, i8** %534, align 8
  %536 = load i32, i32* %10, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i8, i8* %535, i64 %537
  store i8 %532, i8* %538, align 1
  br label %539

; <label>:539:                                    ; preds = %519, %513
  %540 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %541 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %540, i32 0, i32 47
  %542 = load i32, i32* %541, align 8
  %543 = and i32 %542, 8
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %565

; <label>:545:                                    ; preds = %539
  %546 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %547 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %546, i32 0, i32 4
  %548 = load i8*, i8** %547, align 8
  %549 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %550 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %549, i32 0, i32 2
  %551 = load i32*, i32** %550, align 8
  %552 = load i32, i32* %10, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, i32* %551, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i8, i8* %548, i64 %556
  %558 = load i8, i8* %557, align 1
  %559 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %560 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %559, i32 0, i32 1
  %561 = load i8*, i8** %560, align 8
  %562 = load i32, i32* %10, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8, i8* %561, i64 %563
  store i8 %558, i8* %564, align 1
  br label %565

; <label>:565:                                    ; preds = %545, %539
  %566 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %567 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %566, i32 0, i32 22
  %568 = load float**, float*** %567, align 8
  %569 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %570 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %569, i32 0, i32 2
  %571 = load i32*, i32** %570, align 8
  %572 = load i32, i32* %10, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i32, i32* %571, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds float*, float** %568, i64 %576
  %578 = load float*, float** %577, align 8
  %579 = load i32, i32* @Alphabet_size, align 4
  %580 = call i32 @FArgMax(float* %578, i32 %579)
  store i32 %580, i32* %11, align 4
  %581 = load i32, i32* %11, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %582
  %584 = load i8, i8* %583, align 1
  %585 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %586 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %585, i32 0, i32 2
  %587 = load i8*, i8** %586, align 8
  %588 = load i32, i32* %10, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i8, i8* %587, i64 %589
  store i8 %584, i8* %590, align 1
  %591 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %592 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %591, i32 0, i32 22
  %593 = load float**, float*** %592, align 8
  %594 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %595 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %594, i32 0, i32 2
  %596 = load i32*, i32** %595, align 8
  %597 = load i32, i32* %10, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %596, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds float*, float** %593, i64 %601
  %603 = load float*, float** %602, align 8
  %604 = load i32, i32* %11, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds float, float* %603, i64 %605
  %607 = load float, float* %606, align 4
  %608 = load float, float* %12, align 4
  %609 = fcmp olt float %607, %608
  br i1 %609, label %610, label %627

; <label>:610:                                    ; preds = %565
  %611 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %612 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %611, i32 0, i32 2
  %613 = load i8*, i8** %612, align 8
  %614 = load i32, i32* %10, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i8, i8* %613, i64 %615
  %617 = load i8, i8* %616, align 1
  %618 = sext i8 %617 to i32
  %619 = call i32 @tolower(i32 %618) #7
  %620 = trunc i32 %619 to i8
  %621 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %622 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %621, i32 0, i32 2
  %623 = load i8*, i8** %622, align 8
  %624 = load i32, i32* %10, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i8, i8* %623, i64 %625
  store i8 %620, i8* %626, align 1
  br label %627

; <label>:627:                                    ; preds = %610, %565
  %628 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %629 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %628, i32 0, i32 4
  %630 = load i8*, i8** %629, align 8
  %631 = load i32, i32* %10, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i8, i8* %630, i64 %632
  store i8 45, i8* %633, align 1
  br label %703

; <label>:634:                                    ; preds = %194
  %635 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %636 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %635, i32 0, i32 2
  %637 = load i8*, i8** %636, align 8
  %638 = load i32, i32* %10, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i8, i8* %637, i64 %639
  store i8 46, i8* %640, align 1
  %641 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %642 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %641, i32 0, i32 32
  %643 = load i32**, i32*** %642, align 8
  %644 = load i8*, i8** %7, align 8
  %645 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %646 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %645, i32 0, i32 3
  %647 = load i32*, i32** %646, align 8
  %648 = load i32, i32* %10, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32, i32* %647, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i8, i8* %644, i64 %652
  %654 = load i8, i8* %653, align 1
  %655 = sext i8 %654 to i32
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i32*, i32** %643, i64 %656
  %658 = load i32*, i32** %657, align 8
  %659 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %660 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %659, i32 0, i32 2
  %661 = load i32*, i32** %660, align 8
  %662 = load i32, i32* %10, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32, i32* %661, i64 %663
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds i32, i32* %658, i64 %666
  %668 = load i32, i32* %667, align 4
  %669 = icmp sgt i32 %668, 0
  br i1 %669, label %670, label %677

; <label>:670:                                    ; preds = %634
  %671 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %672 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %671, i32 0, i32 3
  %673 = load i8*, i8** %672, align 8
  %674 = load i32, i32* %10, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i8, i8* %673, i64 %675
  store i8 43, i8* %676, align 1
  br label %677

; <label>:677:                                    ; preds = %670, %634
  %678 = load i8*, i8** %7, align 8
  %679 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %680 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %679, i32 0, i32 3
  %681 = load i32*, i32** %680, align 8
  %682 = load i32, i32* %10, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, i32* %681, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i8, i8* %678, i64 %686
  %688 = load i8, i8* %687, align 1
  %689 = sext i8 %688 to i32
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %690
  %692 = load i8, i8* %691, align 1
  %693 = sext i8 %692 to i32
  %694 = call i32 @tolower(i32 %693) #7
  %695 = trunc i32 %694 to i8
  %696 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %697 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %696, i32 0, i32 4
  %698 = load i8*, i8** %697, align 8
  %699 = load i32, i32* %10, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8, i8* %698, i64 %700
  store i8 %695, i8* %701, align 1
  br label %703

; <label>:702:                                    ; preds = %194
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %703

; <label>:703:                                    ; preds = %702, %677, %627, %491, %258, %251, %250, %203
  br label %704

; <label>:704:                                    ; preds = %703
  %705 = load i32, i32* %10, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %10, align 4
  br label %188

; <label>:707:                                    ; preds = %188
  %708 = load i32, i32* %10, align 4
  %709 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %710 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %709, i32 0, i32 5
  store i32 %708, i32* %710, align 8
  %711 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %712 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %711, i32 0, i32 47
  %713 = load i32, i32* %712, align 8
  %714 = and i32 %713, 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %723

; <label>:716:                                    ; preds = %707
  %717 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %718 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %717, i32 0, i32 0
  %719 = load i8*, i8** %718, align 8
  %720 = load i32, i32* %10, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i8, i8* %719, i64 %721
  store i8 0, i8* %722, align 1
  br label %723

; <label>:723:                                    ; preds = %716, %707
  %724 = load %struct.plan7_s*, %struct.plan7_s** %6, align 8
  %725 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %724, i32 0, i32 47
  %726 = load i32, i32* %725, align 8
  %727 = and i32 %726, 8
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %736

; <label>:729:                                    ; preds = %723
  %730 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %731 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %730, i32 0, i32 1
  %732 = load i8*, i8** %731, align 8
  %733 = load i32, i32* %10, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds i8, i8* %732, i64 %734
  store i8 0, i8* %735, align 1
  br label %736

; <label>:736:                                    ; preds = %729, %723
  %737 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %738 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %737, i32 0, i32 2
  %739 = load i8*, i8** %738, align 8
  %740 = load i32, i32* %10, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds i8, i8* %739, i64 %741
  store i8 0, i8* %742, align 1
  %743 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %744 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %743, i32 0, i32 3
  %745 = load i8*, i8** %744, align 8
  %746 = load i32, i32* %10, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds i8, i8* %745, i64 %747
  store i8 0, i8* %748, align 1
  %749 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  %750 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %749, i32 0, i32 4
  %751 = load i8*, i8** %750, align 8
  %752 = load i32, i32* %10, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i8, i8* %751, i64 %753
  store i8 0, i8* %754, align 1
  %755 = load %struct.fancyali_s*, %struct.fancyali_s** %9, align 8
  ret %struct.fancyali_s* %755
}

declare %struct.fancyali_s* @AllocFancyAli() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare i8* @Strdup(i8*) #1

declare i32 @FArgMax(float*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @PrintFancyAli(%struct._IO_FILE*, %struct.fancyali_s*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.fancyali_s*, align 8
  %5 = alloca [51 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.fancyali_s* %1, %struct.fancyali_s** %4, align 8
  %10 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i64 0, i64 50
  store i8 0, i8* %10, align 2
  %11 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %12 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %15

; <label>:15:                                     ; preds = %202, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %18 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %205

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %9, align 4
  br label %25

; <label>:25:                                     ; preds = %96, %21
  %26 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %27 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 50
  %39 = icmp slt i32 %36, %38
  br label %40

; <label>:40:                                     ; preds = %35, %25
  %41 = phi i1 [ false, %25 ], [ %39, %35 ]
  br i1 %41, label %42, label %99

; <label>:42:                                     ; preds = %40
  %43 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %44 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %95, label %52

; <label>:52:                                     ; preds = %42
  %53 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %54 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %95, label %62

; <label>:62:                                     ; preds = %52
  %63 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %64 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 95
  br i1 %71, label %95, label %72

; <label>:72:                                     ; preds = %62
  %73 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %74 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %73, i32 0, i32 4
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 45
  br i1 %81, label %95, label %82

; <label>:82:                                     ; preds = %72
  %83 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %84 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 126
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %95

; <label>:95:                                     ; preds = %92, %82, %72, %62, %52, %42
  br label %96

; <label>:96:                                     ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %25

; <label>:99:                                     ; preds = %40
  %100 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %101 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %116

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %106 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %107 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = call i8* @strncpy(i8* %105, i8* %111, i64 50) #6
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %114 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %114)
  br label %116

; <label>:116:                                    ; preds = %104, %99
  %117 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %118 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %133

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %123 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %124 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = call i8* @strncpy(i8* %122, i8* %128, i64 50) #6
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %131 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %131)
  br label %133

; <label>:133:                                    ; preds = %121, %116
  %134 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %135 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %150

; <label>:138:                                    ; preds = %133
  %139 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %140 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %141 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = call i8* @strncpy(i8* %139, i8* %145, i64 50) #6
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %148 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* %148)
  br label %150

; <label>:150:                                    ; preds = %138, %133
  %151 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %152 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %167

; <label>:155:                                    ; preds = %150
  %156 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %157 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %158 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = call i8* @strncpy(i8* %156, i8* %162, i64 50) #6
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %165 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* %165)
  br label %167

; <label>:167:                                    ; preds = %155, %150
  %168 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %169 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %168, i32 0, i32 4
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %201

; <label>:172:                                    ; preds = %167
  %173 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %174 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %175 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = call i8* @strncpy(i8* %173, i8* %179, i64 50) #6
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %193

; <label>:184:                                    ; preds = %172
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %186 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %187 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %186, i32 0, i32 7
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %191 = load i32, i32* %7, align 4
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* %188, i32 %189, i8* %190, i32 %191)
  br label %200

; <label>:193:                                    ; preds = %172
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %195 = load %struct.fancyali_s*, %struct.fancyali_s** %4, align 8
  %196 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %195, i32 0, i32 7
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i32 0, i32 0
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  br label %200

; <label>:200:                                    ; preds = %193, %184
  br label %201

; <label>:201:                                    ; preds = %200, %167
  br label %202

; <label>:202:                                    ; preds = %201
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 50
  store i32 %204, i32* %8, align 4
  br label %15

; <label>:205:                                    ; preds = %15
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %207 = call i32 @fflush(%struct._IO_FILE* %206)
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @TraceDecompose(%struct.p7trace_s*, %struct.p7trace_s***, i32*) #0 {
  %4 = alloca %struct.p7trace_s*, align 8
  %5 = alloca %struct.p7trace_s***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.p7trace_s**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %4, align 8
  store %struct.p7trace_s*** %1, %struct.p7trace_s**** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %32, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %15 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %35

; <label>:18:                                     ; preds = %12
  %19 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %20 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

; <label>:31:                                     ; preds = %28, %18
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %12

; <label>:35:                                     ; preds = %12
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %35
  %39 = load i32*, i32** %6, align 8
  store i32 0, i32* %39, align 4
  %40 = load %struct.p7trace_s***, %struct.p7trace_s**** %5, align 8
  store %struct.p7trace_s** null, %struct.p7trace_s*** %40, align 8
  br label %297

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 893, i64 %44)
  %46 = bitcast i8* %45 to %struct.p7trace_s**
  store %struct.p7trace_s** %46, %struct.p7trace_s*** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %47

; <label>:47:                                     ; preds = %289, %41
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %50 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %292

; <label>:53:                                     ; preds = %47
  %54 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %55 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 6
  br i1 %62, label %63, label %288

; <label>:63:                                     ; preds = %53
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %66

; <label>:66:                                     ; preds = %84, %63
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %69 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %87

; <label>:72:                                     ; preds = %66
  %73 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %74 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 7
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %72
  br label %87

; <label>:83:                                     ; preds = %72
  br label %84

; <label>:84:                                     ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %66

; <label>:87:                                     ; preds = %82, %66
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %88, %89
  %91 = add nsw i32 %90, 5
  %92 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %92, i64 %94
  call void @P7AllocTrace(i32 %91, %struct.p7trace_s** %95)
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %96, %97
  %99 = add nsw i32 %98, 5
  %100 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %100, i64 %102
  %104 = load %struct.p7trace_s*, %struct.p7trace_s** %103, align 8
  %105 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %104, i32 0, i32 0
  store i32 %99, i32* %105, align 8
  %106 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %106, i64 %108
  %110 = load %struct.p7trace_s*, %struct.p7trace_s** %109, align 8
  %111 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 4, i8* %113, align 1
  %114 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %114, i64 %116
  %118 = load %struct.p7trace_s*, %struct.p7trace_s** %117, align 8
  %119 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 0, i32* %121, align 4
  %122 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %122, i64 %124
  %126 = load %struct.p7trace_s*, %struct.p7trace_s** %125, align 8
  %127 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 0, i32* %129, align 4
  %130 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %130, i64 %132
  %134 = load %struct.p7trace_s*, %struct.p7trace_s** %133, align 8
  %135 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 5, i8* %137, align 1
  %138 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %138, i64 %140
  %142 = load %struct.p7trace_s*, %struct.p7trace_s** %141, align 8
  %143 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 0, i32* %145, align 4
  %146 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %146, i64 %148
  %150 = load %struct.p7trace_s*, %struct.p7trace_s** %149, align 8
  %151 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 0, i32* %153, align 4
  store i32 2, i32* %10, align 4
  br label %154

; <label>:154:                                    ; preds = %87, %216
  %155 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %156 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %162, i64 %164
  %166 = load %struct.p7trace_s*, %struct.p7trace_s** %165, align 8
  %167 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8 %161, i8* %171, align 1
  %172 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %173 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %179, i64 %181
  %183 = load %struct.p7trace_s*, %struct.p7trace_s** %182, align 8
  %184 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %178, i32* %188, align 4
  %189 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %190 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %196, i64 %198
  %200 = load %struct.p7trace_s*, %struct.p7trace_s** %199, align 8
  %201 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %195, i32* %205, align 4
  %206 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %207 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 7
  br i1 %214, label %215, label %216

; <label>:215:                                    ; preds = %154
  br label %221

; <label>:216:                                    ; preds = %154
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %154

; <label>:221:                                    ; preds = %215
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  %224 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %224, i64 %226
  %228 = load %struct.p7trace_s*, %struct.p7trace_s** %227, align 8
  %229 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  store i8 8, i8* %233, align 1
  %234 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %234, i64 %236
  %238 = load %struct.p7trace_s*, %struct.p7trace_s** %237, align 8
  %239 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 0, i32* %243, align 4
  %244 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %244, i64 %246
  %248 = load %struct.p7trace_s*, %struct.p7trace_s** %247, align 8
  %249 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 0, i32* %253, align 4
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %10, align 4
  %256 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %256, i64 %258
  %260 = load %struct.p7trace_s*, %struct.p7trace_s** %259, align 8
  %261 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  store i8 9, i8* %265, align 1
  %266 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %266, i64 %268
  %270 = load %struct.p7trace_s*, %struct.p7trace_s** %269, align 8
  %271 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %10, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 0, i32* %275, align 4
  %276 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %276, i64 %278
  %280 = load %struct.p7trace_s*, %struct.p7trace_s** %279, align 8
  %281 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 0, i32* %285, align 4
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %11, align 4
  br label %288

; <label>:288:                                    ; preds = %221, %53
  br label %289

; <label>:289:                                    ; preds = %288
  %290 = load i32, i32* %9, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %9, align 4
  br label %47

; <label>:292:                                    ; preds = %47
  %293 = load %struct.p7trace_s**, %struct.p7trace_s*** %7, align 8
  %294 = load %struct.p7trace_s***, %struct.p7trace_s**** %5, align 8
  store %struct.p7trace_s** %293, %struct.p7trace_s*** %294, align 8
  %295 = load i32, i32* %8, align 4
  %296 = load i32*, i32** %6, align 8
  store i32 %295, i32* %296, align 4
  br label %297

; <label>:297:                                    ; preds = %292, %38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @TraceDomainNumber(%struct.p7trace_s*) #0 {
  %2 = alloca %struct.p7trace_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %8 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %28

; <label>:11:                                     ; preds = %5
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %2, align 8
  %13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %24

; <label>:24:                                     ; preds = %21, %11
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

; <label>:28:                                     ; preds = %5
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define void @TraceSimpleBounds(%struct.p7trace_s*, i32*, i32*, i32*, i32*) #0 {
  %6 = alloca %struct.p7trace_s*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %16

; <label>:16:                                     ; preds = %72, %5
  %17 = load i32, i32* %15, align 4
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %75

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %53

; <label>:25:                                     ; preds = %22
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %27 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %45, label %35

; <label>:35:                                     ; preds = %25
  %36 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %37 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %53

; <label>:45:                                     ; preds = %35, %25
  %46 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %47 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  br label %53

; <label>:53:                                     ; preds = %45, %35, %22
  %54 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %55 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %71

; <label>:63:                                     ; preds = %53
  %64 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %65 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  br label %75

; <label>:71:                                     ; preds = %53
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %16

; <label>:75:                                     ; preds = %63, %16
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %78 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %87, label %81

; <label>:81:                                     ; preds = %75
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %87, label %84

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %84, %81, %75
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i32 0, i32 0))
  br label %88

; <label>:88:                                     ; preds = %87, %84
  %89 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %90 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %93

; <label>:93:                                     ; preds = %146, %88
  %94 = load i32, i32* %15, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %149

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %127

; <label>:99:                                     ; preds = %96
  %100 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %101 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %119, label %109

; <label>:109:                                    ; preds = %99
  %110 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %111 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %127

; <label>:119:                                    ; preds = %109, %99
  %120 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %121 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %14, align 4
  br label %127

; <label>:127:                                    ; preds = %119, %109, %96
  %128 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %129 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %145

; <label>:137:                                    ; preds = %127
  %138 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %139 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %12, align 4
  br label %149

; <label>:145:                                    ; preds = %127
  br label %146

; <label>:146:                                    ; preds = %145
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %15, align 4
  br label %93

; <label>:149:                                    ; preds = %137, %93
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %152 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %150, %153
  br i1 %154, label %161, label %155

; <label>:155:                                    ; preds = %149
  %156 = load i32, i32* %12, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %161, label %158

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* %14, align 4
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %162

; <label>:161:                                    ; preds = %158, %155, %149
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i32 0, i32 0))
  br label %162

; <label>:162:                                    ; preds = %161, %158
  %163 = load i32, i32* %13, align 4
  %164 = load i32*, i32** %9, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32*, i32** %7, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32*, i32** %10, align 8
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32*, i32** %8, align 8
  store i32 %169, i32* %170, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.p7trace_s* @MasterTraceFromMap(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.p7trace_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 6
  call void @P7AllocTrace(i32 %12, %struct.p7trace_s** %7)
  store i32 0, i32* %8, align 4
  %13 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %14 = load i32, i32* %8, align 4
  call void @TraceSet(%struct.p7trace_s* %13, i32 %14, i8 signext 4, i32 0, i32 0)
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %18 = load i32, i32* %8, align 4
  call void @TraceSet(%struct.p7trace_s* %17, i32 %18, i8 signext 5, i32 0, i32 0)
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %21

; <label>:21:                                     ; preds = %33, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %21
  %28 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  call void @TraceSet(%struct.p7trace_s* %28, i32 %29, i8 signext 5, i32 0, i32 %30)
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %21

; <label>:36:                                     ; preds = %21
  %37 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %38 = load i32, i32* %8, align 4
  call void @TraceSet(%struct.p7trace_s* %37, i32 %38, i8 signext 6, i32 0, i32 0)
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %41

; <label>:41:                                     ; preds = %74, %36
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %77

; <label>:45:                                     ; preds = %41
  %46 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  call void @TraceSet(%struct.p7trace_s* %46, i32 %47, i8 signext 1, i32 %48, i32 %49)
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %54

; <label>:54:                                     ; preds = %70, %45
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %73

; <label>:63:                                     ; preds = %54
  %64 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  call void @TraceSet(%struct.p7trace_s* %64, i32 %65, i8 signext 3, i32 %66, i32 %67)
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %70

; <label>:70:                                     ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %54

; <label>:73:                                     ; preds = %54
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %41

; <label>:77:                                     ; preds = %41
  %78 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %9, align 4
  call void @TraceSet(%struct.p7trace_s* %78, i32 %79, i8 signext 1, i32 %80, i32 %81)
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %87 = load i32, i32* %8, align 4
  call void @TraceSet(%struct.p7trace_s* %86, i32 %87, i8 signext 7, i32 0, i32 0)
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %91 = load i32, i32* %8, align 4
  call void @TraceSet(%struct.p7trace_s* %90, i32 %91, i8 signext 8, i32 0, i32 0)
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %94

; <label>:94:                                     ; preds = %104, %77
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %107

; <label>:98:                                     ; preds = %94
  %99 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  call void @TraceSet(%struct.p7trace_s* %99, i32 %100, i8 signext 8, i32 0, i32 %101)
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %104

; <label>:104:                                    ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %94

; <label>:107:                                    ; preds = %94
  %108 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %109 = load i32, i32* %8, align 4
  call void @TraceSet(%struct.p7trace_s* %108, i32 %109, i8 signext 9, i32 0, i32 0)
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %114 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  ret %struct.p7trace_s* %115
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ImposeMasterTrace(i8**, i32, %struct.p7trace_s*, %struct.p7trace_s***) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p7trace_s*, align 8
  %8 = alloca %struct.p7trace_s***, align 8
  %9 = alloca %struct.p7trace_s**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.p7trace_s* %2, %struct.p7trace_s** %7, align 8
  store %struct.p7trace_s*** %3, %struct.p7trace_s**** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1126, i64 %16)
  %18 = bitcast i8* %17 to %struct.p7trace_s**
  store %struct.p7trace_s** %18, %struct.p7trace_s*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %19

; <label>:19:                                     ; preds = %467, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %470

; <label>:23:                                     ; preds = %19
  %24 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %25 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %27, i64 %29
  call void @P7AllocTrace(i32 %26, %struct.p7trace_s** %30)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %31

; <label>:31:                                     ; preds = %456, %23
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %34 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %459

; <label>:37:                                     ; preds = %31
  %38 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %39 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %455 [
    i32 4, label %46
    i32 6, label %46
    i32 2, label %46
    i32 7, label %46
    i32 9, label %46
    i32 1, label %69
    i32 3, label %198
    i32 10, label %313
    i32 5, label %313
    i32 8, label %313
    i32 0, label %454
  ]

; <label>:46:                                     ; preds = %37, %37, %37, %37, %37
  %47 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %47, i64 %49
  %51 = load %struct.p7trace_s*, %struct.p7trace_s** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %54 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %61 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  call void @TraceSet(%struct.p7trace_s* %51, i32 %52, i8 signext %59, i32 %66, i32 0)
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %455

; <label>:69:                                     ; preds = %37
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %76 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %74, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %164, label %88

; <label>:88:                                     ; preds = %69
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %95 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %93, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 46
  br i1 %106, label %164, label %107

; <label>:107:                                    ; preds = %88
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %114 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %112, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 95
  br i1 %125, label %164, label %126

; <label>:126:                                    ; preds = %107
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %133 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %131, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 45
  br i1 %144, label %164, label %145

; <label>:145:                                    ; preds = %126
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %152 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %150, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 126
  br i1 %163, label %164, label %178

; <label>:164:                                    ; preds = %145, %126, %107, %88, %69
  %165 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %165, i64 %167
  %169 = load %struct.p7trace_s*, %struct.p7trace_s** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %172 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  call void @TraceSet(%struct.p7trace_s* %169, i32 %170, i8 signext 2, i32 %177, i32 0)
  br label %195

; <label>:178:                                    ; preds = %145
  %179 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %179, i64 %181
  %183 = load %struct.p7trace_s*, %struct.p7trace_s** %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %186 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  call void @TraceSet(%struct.p7trace_s* %183, i32 %184, i8 signext 1, i32 %191, i32 %192)
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %195

; <label>:195:                                    ; preds = %178, %164
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %455

; <label>:198:                                    ; preds = %37
  %199 = load i8**, i8*** %5, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %205 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %203, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 32
  br i1 %216, label %312, label %217

; <label>:217:                                    ; preds = %198
  %218 = load i8**, i8*** %5, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %224 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %222, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 46
  br i1 %235, label %312, label %236

; <label>:236:                                    ; preds = %217
  %237 = load i8**, i8*** %5, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %237, i64 %239
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %243 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %241, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 95
  br i1 %254, label %312, label %255

; <label>:255:                                    ; preds = %236
  %256 = load i8**, i8*** %5, align 8
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %256, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %262 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %260, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 45
  br i1 %273, label %312, label %274

; <label>:274:                                    ; preds = %255
  %275 = load i8**, i8*** %5, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %281 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %279, i64 %288
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 126
  br i1 %292, label %312, label %293

; <label>:293:                                    ; preds = %274
  %294 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %294, i64 %296
  %298 = load %struct.p7trace_s*, %struct.p7trace_s** %297, align 8
  %299 = load i32, i32* %12, align 4
  %300 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %301 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %11, align 4
  call void @TraceSet(%struct.p7trace_s* %298, i32 %299, i8 signext 3, i32 %306, i32 %307)
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %11, align 4
  %310 = load i32, i32* %12, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %12, align 4
  br label %312

; <label>:312:                                    ; preds = %293, %274, %255, %236, %217, %198
  br label %455

; <label>:313:                                    ; preds = %37, %37, %37
  %314 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %315 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %338

; <label>:322:                                    ; preds = %313
  %323 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %324 = load i32, i32* %10, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %323, i64 %325
  %327 = load %struct.p7trace_s*, %struct.p7trace_s** %326, align 8
  %328 = load i32, i32* %12, align 4
  %329 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %330 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %329, i32 0, i32 1
  %331 = load i8*, i8** %330, align 8
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %331, i64 %333
  %335 = load i8, i8* %334, align 1
  call void @TraceSet(%struct.p7trace_s* %327, i32 %328, i8 signext %335, i32 0, i32 0)
  %336 = load i32, i32* %12, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %12, align 4
  br label %453

; <label>:338:                                    ; preds = %313
  %339 = load i8**, i8*** %5, align 8
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  %343 = load i8*, i8** %342, align 8
  %344 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %345 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %344, i32 0, i32 3
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %13, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = sub nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %343, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp eq i32 %355, 32
  br i1 %356, label %452, label %357

; <label>:357:                                    ; preds = %338
  %358 = load i8**, i8*** %5, align 8
  %359 = load i32, i32* %10, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8*, i8** %358, i64 %360
  %362 = load i8*, i8** %361, align 8
  %363 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %364 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %363, i32 0, i32 3
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %13, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = sub nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %362, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp eq i32 %374, 46
  br i1 %375, label %452, label %376

; <label>:376:                                    ; preds = %357
  %377 = load i8**, i8*** %5, align 8
  %378 = load i32, i32* %10, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8*, i8** %377, i64 %379
  %381 = load i8*, i8** %380, align 8
  %382 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %383 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %382, i32 0, i32 3
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %13, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = sub nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, i8* %381, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %393, 95
  br i1 %394, label %452, label %395

; <label>:395:                                    ; preds = %376
  %396 = load i8**, i8*** %5, align 8
  %397 = load i32, i32* %10, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8*, i8** %396, i64 %398
  %400 = load i8*, i8** %399, align 8
  %401 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %402 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %401, i32 0, i32 3
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %13, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = sub nsw i32 %407, 1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %400, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp eq i32 %412, 45
  br i1 %413, label %452, label %414

; <label>:414:                                    ; preds = %395
  %415 = load i8**, i8*** %5, align 8
  %416 = load i32, i32* %10, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8*, i8** %415, i64 %417
  %419 = load i8*, i8** %418, align 8
  %420 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %421 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %420, i32 0, i32 3
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %13, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = sub nsw i32 %426, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %419, i64 %428
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i32
  %432 = icmp eq i32 %431, 126
  br i1 %432, label %452, label %433

; <label>:433:                                    ; preds = %414
  %434 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %435 = load i32, i32* %10, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %434, i64 %436
  %438 = load %struct.p7trace_s*, %struct.p7trace_s** %437, align 8
  %439 = load i32, i32* %12, align 4
  %440 = load %struct.p7trace_s*, %struct.p7trace_s** %7, align 8
  %441 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %440, i32 0, i32 1
  %442 = load i8*, i8** %441, align 8
  %443 = load i32, i32* %13, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8, i8* %442, i64 %444
  %446 = load i8, i8* %445, align 1
  %447 = load i32, i32* %11, align 4
  call void @TraceSet(%struct.p7trace_s* %438, i32 %439, i8 signext %446, i32 0, i32 %447)
  %448 = load i32, i32* %11, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %11, align 4
  %450 = load i32, i32* %12, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %12, align 4
  br label %452

; <label>:452:                                    ; preds = %433, %414, %395, %376, %357, %338
  br label %453

; <label>:453:                                    ; preds = %452, %322
  br label %455

; <label>:454:                                    ; preds = %37
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  br label %455

; <label>:455:                                    ; preds = %454, %37, %453, %312, %195, %46
  br label %456

; <label>:456:                                    ; preds = %455
  %457 = load i32, i32* %13, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %13, align 4
  br label %31

; <label>:459:                                    ; preds = %31
  %460 = load i32, i32* %12, align 4
  %461 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %462 = load i32, i32* %10, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %461, i64 %463
  %465 = load %struct.p7trace_s*, %struct.p7trace_s** %464, align 8
  %466 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %465, i32 0, i32 0
  store i32 %460, i32* %466, align 8
  br label %467

; <label>:467:                                    ; preds = %459
  %468 = load i32, i32* %10, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %10, align 4
  br label %19

; <label>:470:                                    ; preds = %19
  %471 = load %struct.p7trace_s**, %struct.p7trace_s*** %9, align 8
  %472 = load %struct.p7trace_s***, %struct.p7trace_s**** %8, align 8
  store %struct.p7trace_s** %471, %struct.p7trace_s*** %472, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
