; ModuleID = 'debug.c'
source_filename = "debug.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"protein\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"nucleic acid\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c" [ trace is NULL ]\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"st  node   rpos  - traceback len %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"--  ---- ------\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"%1s  %4d %6d\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"oi, you can't print scores from that hmm, it's not ready.\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"st  node   rpos  transit emission - traceback len %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"--  ---- ------  ------- --------\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"%1s  %4d %6d  %7d\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c" %8d %c\00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.23 = private unnamed_addr constant [8 x i8] c" %8s %c\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"                 ------- --------\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"           total: %6d\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Dirichlet\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"PAM\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"No such strategy.\00", align 1
@Alphabet_type = external global i32, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"Amino\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Nucleic\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"\0A%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"%.4f\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%.4f \00", align 1
@Alphabet_size = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i8* @Statetype(i8 signext) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %16 [
    i32 4, label %6
    i32 5, label %7
    i32 6, label %8
    i32 1, label %9
    i32 2, label %10
    i32 3, label %11
    i32 7, label %12
    i32 10, label %13
    i32 8, label %14
    i32 9, label %15
  ]

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:9:                                      ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:10:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:11:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:12:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:13:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:14:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:15:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:16:                                     ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** %2, align 8
  br label %17

; <label>:17:                                     ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @AlphabetType2String(i32) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %8 [
    i32 3, label %5
    i32 2, label %6
    i32 0, label %7
  ]

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8** %2, align 8
  br label %9

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8** %2, align 8
  br label %9

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8** %2, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** %2, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %7, %6, %5
  %10 = load i8*, i8** %2, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P7PrintTrace(%struct._IO_FILE*, %struct.p7trace_s*, %struct.plan7_s*, i8*) #0 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.p7trace_s*, align 8
  %7 = alloca %struct.plan7_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.p7trace_s* %1, %struct.p7trace_s** %6, align 8
  store %struct.plan7_s* %2, %struct.plan7_s** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %13 = icmp eq %struct.p7trace_s* %12, null
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  br label %414

; <label>:17:                                     ; preds = %4
  %18 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %19 = icmp eq %struct.plan7_s* %18, null
  br i1 %19, label %20, label %63

; <label>:20:                                     ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %22 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %23 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i32 %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %28

; <label>:28:                                     ; preds = %59, %20
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %31 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %62

; <label>:34:                                     ; preds = %28
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %36 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %37 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i8* @Statetype(i8 signext %42)
  %44 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %45 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %52 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* %43, i32 %50, i32 %57)
  br label %59

; <label>:59:                                     ; preds = %34
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %28

; <label>:62:                                     ; preds = %28
  br label %414

; <label>:63:                                     ; preds = %17
  %64 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %65 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 47
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

; <label>:69:                                     ; preds = %63
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i32 0, i32 0))
  br label %70

; <label>:70:                                     ; preds = %69, %63
  store i32 0, i32* %11, align 4
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %72 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %73 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), i32 %74)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %78

; <label>:78:                                     ; preds = %405, %70
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %81 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %408

; <label>:84:                                     ; preds = %78
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %100

; <label>:87:                                     ; preds = %84
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %90 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %88, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  store i32 %99, i32* %10, align 4
  br label %100

; <label>:100:                                    ; preds = %87, %84
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %102 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %103 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = call i8* @Statetype(i8 signext %108)
  %110 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %111 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %118 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %126 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %163

; <label>:130:                                    ; preds = %100
  %131 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %132 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %133 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %140 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %147 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %155 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @TransitionScoreLookup(%struct.plan7_s* %131, i8 signext %138, i32 %145, i8 signext %153, i32 %161)
  br label %164

; <label>:163:                                    ; preds = %100
  br label %164

; <label>:164:                                    ; preds = %163, %130
  %165 = phi i32 [ %162, %130 ], [ 0, %163 ]
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* %109, i32 %116, i32 %123, i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %169 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  %172 = icmp slt i32 %167, %171
  br i1 %172, label %173, label %208

; <label>:173:                                    ; preds = %164
  %174 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %175 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %176 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %183 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %190 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %198 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @TransitionScoreLookup(%struct.plan7_s* %174, i8 signext %181, i32 %188, i8 signext %196, i32 %204)
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %11, align 4
  br label %208

; <label>:208:                                    ; preds = %173, %164
  %209 = load i8*, i8** %8, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %399

; <label>:211:                                    ; preds = %208
  %212 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %213 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %265

; <label>:221:                                    ; preds = %211
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %223 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %224 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %223, i32 0, i32 31
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %231 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %229, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 %239, i32 %244)
  %246 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %247 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %246, i32 0, i32 31
  %248 = load i32**, i32*** %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %248, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %254 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %252, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %11, align 4
  br label %398

; <label>:265:                                    ; preds = %211
  %266 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %267 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 3
  br i1 %274, label %275, label %322

; <label>:275:                                    ; preds = %265
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %277 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %278 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %277, i32 0, i32 32
  %279 = load i32**, i32*** %278, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %279, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %285 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %283, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %10, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = call i32 @tolower(i32 %298) #3
  %300 = trunc i32 %299 to i8
  %301 = sext i8 %300 to i32
  %302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %276, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 %293, i32 %301)
  %303 = load %struct.plan7_s*, %struct.plan7_s** %7, align 8
  %304 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %303, i32 0, i32 32
  %305 = load i32**, i32*** %304, align 8
  %306 = load i32, i32* %10, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %305, i64 %307
  %309 = load i32*, i32** %308, align 8
  %310 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %311 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %309, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %11, align 4
  %321 = add nsw i32 %320, %319
  store i32 %321, i32* %11, align 4
  br label %397

; <label>:322:                                    ; preds = %265
  %323 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %324 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %323, i32 0, i32 1
  %325 = load i8*, i8** %324, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 5
  br i1 %331, label %332, label %343

; <label>:332:                                    ; preds = %322
  %333 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %334 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %333, i32 0, i32 1
  %335 = load i8*, i8** %334, align 8
  %336 = load i32, i32* %9, align 4
  %337 = sub nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %335, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 5
  br i1 %342, label %385, label %343

; <label>:343:                                    ; preds = %332, %322
  %344 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %345 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %344, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = icmp eq i32 %351, 8
  br i1 %352, label %353, label %364

; <label>:353:                                    ; preds = %343
  %354 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %355 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %354, i32 0, i32 1
  %356 = load i8*, i8** %355, align 8
  %357 = load i32, i32* %9, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %356, i64 %359
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp eq i32 %362, 8
  br i1 %363, label %385, label %364

; <label>:364:                                    ; preds = %353, %343
  %365 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %366 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %365, i32 0, i32 1
  %367 = load i8*, i8** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %367, i64 %369
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp eq i32 %372, 10
  br i1 %373, label %374, label %396

; <label>:374:                                    ; preds = %364
  %375 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %376 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %375, i32 0, i32 1
  %377 = load i8*, i8** %376, align 8
  %378 = load i32, i32* %9, align 4
  %379 = sub nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %377, i64 %380
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = icmp eq i32 %383, 10
  br i1 %384, label %385, label %396

; <label>:385:                                    ; preds = %374, %353, %332
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %387 = load i32, i32* %10, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = call i32 @tolower(i32 %391) #3
  %393 = trunc i32 %392 to i8
  %394 = sext i8 %393 to i32
  %395 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %386, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 %394)
  br label %396

; <label>:396:                                    ; preds = %385, %374, %364
  br label %397

; <label>:397:                                    ; preds = %396, %275
  br label %398

; <label>:398:                                    ; preds = %397, %221
  br label %402

; <label>:399:                                    ; preds = %208
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %401 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %400, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 45)
  br label %402

; <label>:402:                                    ; preds = %399, %398
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %404 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %403)
  br label %405

; <label>:405:                                    ; preds = %402
  %406 = load i32, i32* %9, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %9, align 4
  br label %78

; <label>:408:                                    ; preds = %78
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %410 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %409, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0))
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %412 = load i32, i32* %11, align 4
  %413 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %411, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i32 %412)
  br label %414

; <label>:414:                                    ; preds = %14, %408, %62
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @Die(i8*, ...) #1

declare i32 @TransitionScoreLookup(%struct.plan7_s*, i8 signext, i32, i8 signext, i32) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7PrintPrior(%struct._IO_FILE*, %struct.p7prior_s*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.p7prior_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.p7prior_s* %1, %struct.p7prior_s** %4, align 8
  %7 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %8 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %12)
  br label %24

; <label>:14:                                     ; preds = %2
  %15 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %16 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %14
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %21 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %20)
  br label %23

; <label>:22:                                     ; preds = %14
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0))
  br label %23

; <label>:23:                                     ; preds = %22, %19
  br label %24

; <label>:24:                                     ; preds = %23, %11
  %25 = load i32, i32* @Alphabet_type, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %29 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %28)
  br label %37

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* @Alphabet_type, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %30
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %35 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %34)
  br label %36

; <label>:36:                                     ; preds = %33, %30
  br label %37

; <label>:37:                                     ; preds = %36, %27
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %39 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %40 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

; <label>:43:                                     ; preds = %81, %37
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %46 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %84

; <label>:49:                                     ; preds = %43
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %51 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %52 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %51, i32 0, i32 2
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [200 x float], [200 x float]* %52, i64 0, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fpext float %56 to double
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), double %57)
  store i32 0, i32* %6, align 4
  br label %59

; <label>:59:                                     ; preds = %75, %49
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 7
  br i1 %61, label %62, label %78

; <label>:62:                                     ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %64 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %65 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %64, i32 0, i32 3
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %65, i64 0, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [7 x float], [7 x float]* %68, i64 0, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fpext float %72 to double
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), double %73)
  br label %75

; <label>:75:                                     ; preds = %62
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %59

; <label>:78:                                     ; preds = %59
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %80 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %79)
  br label %81

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %43

; <label>:84:                                     ; preds = %43
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %86 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %87 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %88)
  store i32 0, i32* %5, align 4
  br label %90

; <label>:90:                                     ; preds = %129, %84
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %93 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %132

; <label>:96:                                     ; preds = %90
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %98 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %99 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %98, i32 0, i32 5
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [200 x float], [200 x float]* %99, i64 0, i64 %101
  %103 = load float, float* %102, align 4
  %104 = fpext float %103 to double
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), double %104)
  store i32 0, i32* %6, align 4
  br label %106

; <label>:106:                                    ; preds = %123, %96
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @Alphabet_size, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %126

; <label>:110:                                    ; preds = %106
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %112 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %113 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %112, i32 0, i32 6
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %113, i64 0, i64 %115
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [20 x float], [20 x float]* %116, i64 0, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fpext float %120 to double
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), double %121)
  br label %123

; <label>:123:                                    ; preds = %110
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %106

; <label>:126:                                    ; preds = %106
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %128 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %127)
  br label %129

; <label>:129:                                    ; preds = %126
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %90

; <label>:132:                                    ; preds = %90
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %134 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %135 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %136)
  store i32 0, i32* %5, align 4
  br label %138

; <label>:138:                                    ; preds = %177, %132
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %141 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %180

; <label>:144:                                    ; preds = %138
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %146 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %147 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %146, i32 0, i32 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [200 x float], [200 x float]* %147, i64 0, i64 %149
  %151 = load float, float* %150, align 4
  %152 = fpext float %151 to double
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), double %152)
  store i32 0, i32* %6, align 4
  br label %154

; <label>:154:                                    ; preds = %171, %144
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @Alphabet_size, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %174

; <label>:158:                                    ; preds = %154
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %160 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %161 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %160, i32 0, i32 9
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %161, i64 0, i64 %163
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [20 x float], [20 x float]* %164, i64 0, i64 %166
  %168 = load float, float* %167, align 4
  %169 = fpext float %168 to double
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), double %169)
  br label %171

; <label>:171:                                    ; preds = %158
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %154

; <label>:174:                                    ; preds = %154
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %176 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %175)
  br label %177

; <label>:177:                                    ; preds = %174
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %138

; <label>:180:                                    ; preds = %138
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @TraceVerify(%struct.p7trace_s*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p7trace_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %16 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %494

; <label>:23:                                     ; preds = %3
  %24 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %25 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 5
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %23
  store i32 0, i32* %4, align 4
  br label %494

; <label>:32:                                     ; preds = %23
  %33 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %34 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %37 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 8
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %32
  store i32 0, i32* %4, align 4
  br label %494

; <label>:46:                                     ; preds = %32
  %47 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %48 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %51 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 9
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %46
  store i32 0, i32* %4, align 4
  br label %494

; <label>:60:                                     ; preds = %46
  %61 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %62 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %60
  store i32 0, i32* %4, align 4
  br label %494

; <label>:68:                                     ; preds = %60
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %69

; <label>:69:                                     ; preds = %490, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %72 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %493

; <label>:75:                                     ; preds = %69
  %76 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %77 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  switch i32 %83, label %488 [
    i32 4, label %84
    i32 5, label %117
    i32 6, label %167
    i32 1, label %188
    i32 3, label %251
    i32 2, label %303
    i32 7, label %348
    i32 10, label %369
    i32 8, label %411
    i32 9, label %453
    i32 0, label %487
  ]

; <label>:84:                                     ; preds = %75
  %85 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %86 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %84
  store i32 0, i32* %4, align 4
  br label %494

; <label>:94:                                     ; preds = %84
  %95 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %96 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %94
  store i32 0, i32* %4, align 4
  br label %494

; <label>:104:                                    ; preds = %94
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %104
  store i32 0, i32* %4, align 4
  br label %494

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %108
  store i32 0, i32* %4, align 4
  br label %494

; <label>:112:                                    ; preds = %108
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %112
  store i32 0, i32* %4, align 4
  br label %494

; <label>:116:                                    ; preds = %112
  br label %489

; <label>:117:                                    ; preds = %75
  %118 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %119 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

; <label>:126:                                    ; preds = %117
  store i32 0, i32* %4, align 4
  br label %494

; <label>:127:                                    ; preds = %117
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

; <label>:130:                                    ; preds = %127
  store i32 0, i32* %4, align 4
  br label %494

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %149

; <label>:134:                                    ; preds = %131
  %135 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %136 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  %144 = icmp ne i32 %141, %143
  br i1 %144, label %145, label %146

; <label>:145:                                    ; preds = %134
  store i32 0, i32* %4, align 4
  br label %494

; <label>:146:                                    ; preds = %134
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %164

; <label>:149:                                    ; preds = %131
  %150 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %151 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %149
  store i32 0, i32* %4, align 4
  br label %494

; <label>:159:                                    ; preds = %149
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

; <label>:162:                                    ; preds = %159
  store i32 0, i32* %4, align 4
  br label %494

; <label>:163:                                    ; preds = %159
  br label %164

; <label>:164:                                    ; preds = %163, %146
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %489

; <label>:167:                                    ; preds = %75
  %168 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %169 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

; <label>:176:                                    ; preds = %167
  store i32 0, i32* %4, align 4
  br label %494

; <label>:177:                                    ; preds = %167
  %178 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %179 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

; <label>:186:                                    ; preds = %177
  store i32 0, i32* %4, align 4
  br label %494

; <label>:187:                                    ; preds = %177
  store i32 0, i32* %14, align 4
  br label %489

; <label>:188:                                    ; preds = %75
  %189 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %190 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 1
  %198 = icmp ne i32 %195, %197
  br i1 %198, label %199, label %200

; <label>:199:                                    ; preds = %188
  store i32 0, i32* %4, align 4
  br label %494

; <label>:200:                                    ; preds = %188
  %201 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %202 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %207, 1
  br i1 %208, label %219, label %209

; <label>:209:                                    ; preds = %200
  %210 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %211 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp sgt i32 %216, %217
  br i1 %218, label %219, label %220

; <label>:219:                                    ; preds = %209, %200
  store i32 0, i32* %4, align 4
  br label %494

; <label>:220:                                    ; preds = %209
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %233

; <label>:225:                                    ; preds = %220
  %226 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %227 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %9, align 4
  br label %248

; <label>:233:                                    ; preds = %220
  %234 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %235 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 1
  %243 = icmp ne i32 %240, %242
  br i1 %243, label %244, label %245

; <label>:244:                                    ; preds = %233
  store i32 0, i32* %4, align 4
  br label %494

; <label>:245:                                    ; preds = %233
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %9, align 4
  br label %248

; <label>:248:                                    ; preds = %245, %225
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %14, align 4
  br label %489

; <label>:251:                                    ; preds = %75
  %252 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %253 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  %261 = icmp ne i32 %258, %260
  br i1 %261, label %262, label %263

; <label>:262:                                    ; preds = %251
  store i32 0, i32* %4, align 4
  br label %494

; <label>:263:                                    ; preds = %251
  %264 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %265 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %274

; <label>:273:                                    ; preds = %263
  store i32 0, i32* %4, align 4
  br label %494

; <label>:274:                                    ; preds = %263
  %275 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %276 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = icmp slt i32 %281, 1
  br i1 %282, label %294, label %283

; <label>:283:                                    ; preds = %274
  %284 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %285 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %6, align 4
  %292 = sub nsw i32 %291, 1
  %293 = icmp sgt i32 %290, %292
  br i1 %293, label %294, label %295

; <label>:294:                                    ; preds = %283, %274
  store i32 0, i32* %4, align 4
  br label %494

; <label>:295:                                    ; preds = %283
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %6, align 4
  %298 = icmp sge i32 %296, %297
  br i1 %298, label %299, label %300

; <label>:299:                                    ; preds = %295
  store i32 0, i32* %4, align 4
  br label %494

; <label>:300:                                    ; preds = %295
  %301 = load i32, i32* %10, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %10, align 4
  br label %489

; <label>:303:                                    ; preds = %75
  %304 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %305 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

; <label>:312:                                    ; preds = %303
  store i32 0, i32* %4, align 4
  br label %494

; <label>:313:                                    ; preds = %303
  %314 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %315 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %9, align 4
  %322 = add nsw i32 %321, 1
  %323 = icmp ne i32 %320, %322
  br i1 %323, label %324, label %325

; <label>:324:                                    ; preds = %313
  store i32 0, i32* %4, align 4
  br label %494

; <label>:325:                                    ; preds = %313
  %326 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %327 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = icmp slt i32 %332, 1
  br i1 %333, label %344, label %334

; <label>:334:                                    ; preds = %325
  %335 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %336 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %6, align 4
  %343 = icmp sgt i32 %341, %342
  br i1 %343, label %344, label %345

; <label>:344:                                    ; preds = %334, %325
  store i32 0, i32* %4, align 4
  br label %494

; <label>:345:                                    ; preds = %334
  %346 = load i32, i32* %9, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %9, align 4
  br label %489

; <label>:348:                                    ; preds = %75
  %349 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %350 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %8, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

; <label>:357:                                    ; preds = %348
  store i32 0, i32* %4, align 4
  br label %494

; <label>:358:                                    ; preds = %348
  %359 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %360 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %359, i32 0, i32 3
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %8, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

; <label>:367:                                    ; preds = %358
  store i32 0, i32* %4, align 4
  br label %494

; <label>:368:                                    ; preds = %358
  store i32 0, i32* %13, align 4
  br label %489

; <label>:369:                                    ; preds = %75
  %370 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %371 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %370, i32 0, i32 2
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %8, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

; <label>:378:                                    ; preds = %369
  store i32 0, i32* %4, align 4
  br label %494

; <label>:379:                                    ; preds = %369
  %380 = load i32, i32* %13, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %397

; <label>:382:                                    ; preds = %379
  %383 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %384 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %383, i32 0, i32 3
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %8, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %10, align 4
  %391 = add nsw i32 %390, 1
  %392 = icmp ne i32 %389, %391
  br i1 %392, label %393, label %394

; <label>:393:                                    ; preds = %382
  store i32 0, i32* %4, align 4
  br label %494

; <label>:394:                                    ; preds = %382
  %395 = load i32, i32* %10, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %10, align 4
  br label %408

; <label>:397:                                    ; preds = %379
  %398 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %399 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %398, i32 0, i32 3
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %8, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %407

; <label>:406:                                    ; preds = %397
  store i32 0, i32* %4, align 4
  br label %494

; <label>:407:                                    ; preds = %397
  br label %408

; <label>:408:                                    ; preds = %407, %394
  %409 = load i32, i32* %13, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %13, align 4
  br label %489

; <label>:411:                                    ; preds = %75
  %412 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %413 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %412, i32 0, i32 2
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %8, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

; <label>:420:                                    ; preds = %411
  store i32 0, i32* %4, align 4
  br label %494

; <label>:421:                                    ; preds = %411
  %422 = load i32, i32* %12, align 4
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %424, label %439

; <label>:424:                                    ; preds = %421
  %425 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %426 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %425, i32 0, i32 3
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %8, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* %10, align 4
  %433 = add nsw i32 %432, 1
  %434 = icmp ne i32 %431, %433
  br i1 %434, label %435, label %436

; <label>:435:                                    ; preds = %424
  store i32 0, i32* %4, align 4
  br label %494

; <label>:436:                                    ; preds = %424
  %437 = load i32, i32* %10, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %10, align 4
  br label %450

; <label>:439:                                    ; preds = %421
  %440 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %441 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %440, i32 0, i32 3
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %8, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %449

; <label>:448:                                    ; preds = %439
  store i32 0, i32* %4, align 4
  br label %494

; <label>:449:                                    ; preds = %439
  br label %450

; <label>:450:                                    ; preds = %449, %436
  %451 = load i32, i32* %12, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %12, align 4
  br label %489

; <label>:453:                                    ; preds = %75
  %454 = load i32, i32* %8, align 4
  %455 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %456 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = sub nsw i32 %457, 1
  %459 = icmp ne i32 %454, %458
  br i1 %459, label %460, label %461

; <label>:460:                                    ; preds = %453
  store i32 0, i32* %4, align 4
  br label %494

; <label>:461:                                    ; preds = %453
  %462 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %463 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %462, i32 0, i32 2
  %464 = load i32*, i32** %463, align 8
  %465 = load i32, i32* %8, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %471

; <label>:470:                                    ; preds = %461
  store i32 0, i32* %4, align 4
  br label %494

; <label>:471:                                    ; preds = %461
  %472 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %473 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %472, i32 0, i32 3
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %8, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %481

; <label>:480:                                    ; preds = %471
  store i32 0, i32* %4, align 4
  br label %494

; <label>:481:                                    ; preds = %471
  %482 = load i32, i32* %10, align 4
  %483 = load i32, i32* %7, align 4
  %484 = icmp ne i32 %482, %483
  br i1 %484, label %485, label %486

; <label>:485:                                    ; preds = %481
  store i32 0, i32* %4, align 4
  br label %494

; <label>:486:                                    ; preds = %481
  br label %489

; <label>:487:                                    ; preds = %75
  br label %488

; <label>:488:                                    ; preds = %75, %487
  store i32 0, i32* %4, align 4
  br label %494

; <label>:489:                                    ; preds = %486, %450, %408, %368, %345, %300, %248, %187, %164, %116
  br label %490

; <label>:490:                                    ; preds = %489
  %491 = load i32, i32* %8, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %8, align 4
  br label %69

; <label>:493:                                    ; preds = %69
  store i32 1, i32* %4, align 4
  br label %494

; <label>:494:                                    ; preds = %493, %488, %485, %480, %470, %460, %448, %435, %420, %406, %393, %378, %367, %357, %344, %324, %312, %299, %294, %273, %262, %244, %219, %199, %186, %176, %162, %158, %145, %130, %126, %115, %111, %107, %103, %93, %67, %59, %45, %31, %22
  %495 = load i32, i32* %4, align 4
  ret i32 %495
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @TraceCompare(%struct.p7trace_s*, %struct.p7trace_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p7trace_s*, align 8
  %5 = alloca %struct.p7trace_s*, align 8
  %6 = alloca i32, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %4, align 8
  store %struct.p7trace_s* %1, %struct.p7trace_s** %5, align 8
  %7 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %8 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %11 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

; <label>:16:                                     ; preds = %76, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %79

; <label>:22:                                     ; preds = %16
  %23 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %24 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %32 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %30, %38
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %22
  store i32 0, i32* %3, align 4
  br label %80

; <label>:41:                                     ; preds = %22
  %42 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %43 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %50 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %48, %55
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %41
  store i32 0, i32* %3, align 4
  br label %80

; <label>:58:                                     ; preds = %41
  %59 = load %struct.p7trace_s*, %struct.p7trace_s** %4, align 8
  %60 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %67 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %65, %72
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %58
  store i32 0, i32* %3, align 4
  br label %80

; <label>:75:                                     ; preds = %58
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %16

; <label>:79:                                     ; preds = %16
  store i32 1, i32* %3, align 4
  br label %80

; <label>:80:                                     ; preds = %79, %74, %57, %40, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
