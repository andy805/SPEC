; ModuleID = 'misc.c'
source_filename = "misc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.threshold_s = type { float, double, float, double, i32, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s %s (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"HMMER\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"May 2003\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"Copyright (C) 1992-2003 HHMI/Washington University School of Medicine\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Freely distributed under the GNU General Public License (GPL)\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\00", align 1
@Getword.buffer = internal global [512 x i8] zeroinitializer, align 16
@Getword.sptr = internal global i8* null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Parse failed: expected string, got nothing\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Parse failed: expected integer, got %s\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Parse failed: expected real value, got %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @HMMERBanner(%struct._IO_FILE*, i8*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %6)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @Getword(%struct._IO_FILE*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** @Getword.sptr, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %9, i8** @Getword.sptr, align 8
  br label %10

; <label>:10:                                     ; preds = %8, %2
  br label %11

; <label>:11:                                     ; preds = %24, %10
  %12 = load i8*, i8** @Getword.sptr, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i8* @fgets(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @Getword.buffer, i32 0, i32 0), i32 512, %struct._IO_FILE* %15)
  store i8* %16, i8** @Getword.sptr, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14
  store i8* null, i8** %3, align 8
  br label %50

; <label>:19:                                     ; preds = %14
  %20 = call i8* @strchr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @Getword.buffer, i32 0, i32 0), i32 35) #6
  store i8* %20, i8** @Getword.sptr, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = load i8*, i8** @Getword.sptr, align 8
  store i8 0, i8* %23, align 1
  br label %24

; <label>:24:                                     ; preds = %22, %19
  %25 = call i8* @strtok(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @Getword.buffer, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %25, i8** @Getword.sptr, align 8
  br label %11

; <label>:26:                                     ; preds = %11
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %48 [
    i32 4, label %28
    i32 1, label %34
    i32 2, label %41
  ]

; <label>:28:                                     ; preds = %26
  %29 = load i8*, i8** @Getword.sptr, align 8
  %30 = call i64 @strlen(i8* %29) #6
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %28
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** @Getword.sptr, align 8
  br label %33

; <label>:33:                                     ; preds = %32, %28
  br label %48

; <label>:34:                                     ; preds = %26
  %35 = load i8*, i8** @Getword.sptr, align 8
  %36 = call i32 @IsInt(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** @Getword.sptr, align 8
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), i8* %39)
  store i8* null, i8** @Getword.sptr, align 8
  br label %40

; <label>:40:                                     ; preds = %38, %34
  br label %48

; <label>:41:                                     ; preds = %26
  %42 = load i8*, i8** @Getword.sptr, align 8
  %43 = call i32 @IsReal(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** @Getword.sptr, align 8
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i8* %46)
  store i8* null, i8** @Getword.sptr, align 8
  br label %47

; <label>:47:                                     ; preds = %45, %41
  br label %48

; <label>:48:                                     ; preds = %26, %47, %40, %33
  %49 = load i8*, i8** @Getword.sptr, align 8
  store i8* %49, i8** %3, align 8
  br label %50

; <label>:50:                                     ; preds = %48, %18
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @Warn(i8*, ...) #1

declare i32 @IsInt(i8*) #1

declare i32 @IsReal(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @Getline(i8*, i32, %struct._IO_FILE*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  br label %9

; <label>:9:                                      ; preds = %44, %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %13 = call i8* @fgets(i8* %10, i32 %11, %struct._IO_FILE* %12)
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %9
  store i8* null, i8** %4, align 8
  br label %48

; <label>:16:                                     ; preds = %9
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  br label %18

; <label>:18:                                     ; preds = %30, %16
  %19 = call i16** @__ctype_b_loc() #7
  %20 = load i16*, i16** %19, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %20, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 8192
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %18
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  br label %18

; <label>:33:                                     ; preds = %18
  br label %34

; <label>:34:                                     ; preds = %33
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 35
  br i1 %38, label %44, label %39

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br label %44

; <label>:44:                                     ; preds = %39, %34
  %45 = phi i1 [ true, %34 ], [ %43, %39 ]
  br i1 %45, label %9, label %46

; <label>:46:                                     ; preds = %44
  %47 = load i8*, i8** %5, align 8
  store i8* %47, i8** %4, align 8
  br label %48

; <label>:48:                                     ; preds = %46, %15
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @SetAutocuts(%struct.threshold_s*, %struct.plan7_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.threshold_s*, align 8
  %5 = alloca %struct.plan7_s*, align 8
  store %struct.threshold_s* %0, %struct.threshold_s** %4, align 8
  store %struct.plan7_s* %1, %struct.plan7_s** %5, align 8
  %6 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %7 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %32

; <label>:10:                                     ; preds = %2
  %11 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 47
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1024
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %10
  store i32 0, i32* %3, align 4
  br label %89

; <label>:17:                                     ; preds = %10
  %18 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 14
  %20 = load float, float* %19, align 8
  %21 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %22 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %21, i32 0, i32 0
  store float %20, float* %22, align 8
  %23 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 15
  %25 = load float, float* %24, align 4
  %26 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %27 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %26, i32 0, i32 2
  store float %25, float* %27, align 8
  %28 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %29 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %28, i32 0, i32 3
  store double 0x47EFFFFFE0000000, double* %29, align 8
  %30 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %31 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %30, i32 0, i32 1
  store double 0x47EFFFFFE0000000, double* %31, align 8
  br label %88

; <label>:32:                                     ; preds = %2
  %33 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %34 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %59

; <label>:37:                                     ; preds = %32
  %38 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 47
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 4096
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

; <label>:43:                                     ; preds = %37
  store i32 0, i32* %3, align 4
  br label %89

; <label>:44:                                     ; preds = %37
  %45 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %46 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 18
  %47 = load float, float* %46, align 8
  %48 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %49 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %48, i32 0, i32 0
  store float %47, float* %49, align 8
  %50 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %51 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 19
  %52 = load float, float* %51, align 4
  %53 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %54 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %53, i32 0, i32 2
  store float %52, float* %54, align 8
  %55 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %56 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %55, i32 0, i32 3
  store double 0x47EFFFFFE0000000, double* %56, align 8
  %57 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %58 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %57, i32 0, i32 1
  store double 0x47EFFFFFE0000000, double* %58, align 8
  br label %87

; <label>:59:                                     ; preds = %32
  %60 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %61 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %86

; <label>:64:                                     ; preds = %59
  %65 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %66 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %65, i32 0, i32 47
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 2048
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

; <label>:70:                                     ; preds = %64
  store i32 0, i32* %3, align 4
  br label %89

; <label>:71:                                     ; preds = %64
  %72 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 16
  %74 = load float, float* %73, align 8
  %75 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %76 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %75, i32 0, i32 0
  store float %74, float* %76, align 8
  %77 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %78 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %77, i32 0, i32 17
  %79 = load float, float* %78, align 4
  %80 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %81 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %80, i32 0, i32 2
  store float %79, float* %81, align 8
  %82 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %83 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %82, i32 0, i32 3
  store double 0x47EFFFFFE0000000, double* %83, align 8
  %84 = load %struct.threshold_s*, %struct.threshold_s** %4, align 8
  %85 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %84, i32 0, i32 1
  store double 0x47EFFFFFE0000000, double* %85, align 8
  br label %86

; <label>:86:                                     ; preds = %71, %59
  br label %87

; <label>:87:                                     ; preds = %86, %44
  br label %88

; <label>:88:                                     ; preds = %87, %17
  store i32 1, i32* %3, align 4
  br label %89

; <label>:89:                                     ; preds = %88, %70, %43, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
