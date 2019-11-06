; ModuleID = 'file.c'
source_filename = "file.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"file.c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @FileDirname(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strrchr(i8* %6, i32 47) #4
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  br label %18

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  br label %18

; <label>:18:                                     ; preds = %11, %10
  %19 = phi i32 [ 0, %10 ], [ %17, %11 ]
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = mul i64 1, %22
  %24 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 73, i64 %23)
  store i8* %24, i8** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %18
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = call i8* @strncpy(i8* %28, i8* %29, i64 %31) #5
  br label %43

; <label>:33:                                     ; preds = %18
  %34 = load i8*, i8** %2, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 47
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %3, align 8
  store i8 46, i8* %39, align 1
  store i32 1, i32* %5, align 4
  br label %42

; <label>:40:                                     ; preds = %33
  %41 = load i8*, i8** %3, align 8
  store i8 47, i8* %41, align 1
  store i32 1, i32* %5, align 4
  br label %42

; <label>:42:                                     ; preds = %40, %38
  br label %43

; <label>:43:                                     ; preds = %42, %27
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #1

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define i8* @FileTail(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strrchr(i8* %8, i32 47) #4
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10) #4
  %12 = add i64 %11, 1
  %13 = mul i64 1, %12
  %14 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 105, i64 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @strcpy(i8* %18, i8* %19) #5
  br label %26

; <label>:21:                                     ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i8* @strcpy(i8* %22, i8* %24) #5
  br label %26

; <label>:26:                                     ; preds = %21, %17
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @strrchr(i8* %30, i32 46) #4
  store i8* %31, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** %7, align 8
  store i8 0, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %33, %29
  br label %36

; <label>:36:                                     ; preds = %35, %26
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define i8* @FileSameDirectory(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %8, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @FileDirname(i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @FileTail(i8* %11, i32 0)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strcmp(i8* %13, i8* %14) #4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store i32 0, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %17, %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @FileConcat(i8* %19, i8* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strcmp(i8* %25, i8* %26) #4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %7, align 8
  call void @free(i8* %30) #5
  store i8* null, i8** %7, align 8
  br label %31

; <label>:31:                                     ; preds = %29, %24, %18
  %32 = load i8*, i8** %5, align 8
  call void @free(i8* %32) #5
  %33 = load i8*, i8** %6, align 8
  call void @free(i8* %33) #5
  %34 = load i8*, i8** %7, align 8
  ret i8* %34
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @FileConcat(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6) #4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #4
  %10 = add i64 %7, %9
  %11 = add i64 %10, 2
  %12 = mul i64 1, %11
  %13 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 170, i64 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strcpy(i8* %19, i8* %20) #5
  br label %27

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %24, i32 47, i8* %25) #5
  br label %27

; <label>:27:                                     ; preds = %22, %18
  %28 = load i8*, i8** %5, align 8
  ret i8* %28
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define i8* @FileAddSuffix(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6) #4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #4
  %10 = add i64 %7, %9
  %11 = add i64 %10, 2
  %12 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 190, i64 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %14, i8* %15) #5
  %17 = load i8*, i8** %5, align 8
  ret i8* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1024 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8
  br label %60

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @getenv(i8* %16) #5
  %18 = call i8* @Strdup(i8* %17)
  store i8* %18, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %15
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8
  br label %60

; <label>:21:                                     ; preds = %15
  store %struct._IO_FILE* null, %struct._IO_FILE** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @strtok(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %23, i8** %10, align 8
  br label %24

; <label>:24:                                     ; preds = %48, %21
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %50

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28) #4
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @strlen(i8* %31) #4
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 %30, %33
  %35 = add nsw i32 %34, 2
  %36 = icmp sgt i32 %35, 1024
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %27
  %38 = load i8*, i8** %9, align 8
  call void @free(i8* %38) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8
  br label %60

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %41, i32 47, i8* %42) #5
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  %45 = call %struct._IO_FILE* @fopen(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %45, %struct._IO_FILE** %8, align 8
  %46 = icmp ne %struct._IO_FILE* %45, null
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %39
  br label %50

; <label>:48:                                     ; preds = %39
  %49 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %49, i8** %10, align 8
  br label %24

; <label>:50:                                     ; preds = %47, %24
  %51 = load i8**, i8*** %7, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %50
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @Strdup(i8* %54)
  %56 = load i8**, i8*** %7, align 8
  store i8* %55, i8** %56, align 8
  br label %57

; <label>:57:                                     ; preds = %53, %50
  %58 = load i8*, i8** %9, align 8
  call void @free(i8* %58) #5
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  store %struct._IO_FILE* %59, %struct._IO_FILE** %4, align 8
  br label %60

; <label>:60:                                     ; preds = %57, %37, %20, %14
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  ret %struct._IO_FILE* %61
}

declare i8* @Strdup(i8*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FileExists(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %6, %struct._IO_FILE** %4, align 8
  %7 = icmp ne %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = call i32 @fclose(%struct._IO_FILE* %9)
  store i32 1, i32* %2, align 4
  br label %12

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

; <label>:12:                                     ; preds = %11, %8
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
