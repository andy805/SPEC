; ModuleID = 'clustal.c'
source_filename = "clustal.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"CLUSTAL\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"multiple sequence alignment\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".*:\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Parse failed at line %d, file %s: possibly using spaces as gaps\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"CLUSTAL W(1.5) multiple sequence alignment\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%*s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msa_struct* @ReadClustal(%struct.msafile_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca %struct.msafile_struct*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.msafile_struct* %0, %struct.msafile_struct** %3, align 8
  %11 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %12 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %11, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %14 = call i32 @feof(%struct._IO_FILE* %13) #4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %1
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %106

; <label>:17:                                     ; preds = %1
  br label %18

; <label>:18:                                     ; preds = %31, %17
  %19 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %20 = call i8* @MSAFileGetLine(%struct.msafile_struct* %19)
  store i8* %20, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 7) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #5
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %26
  br label %32

; <label>:31:                                     ; preds = %26, %22
  br label %18

; <label>:32:                                     ; preds = %30, %18
  %33 = load i8*, i8** %5, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %106

; <label>:36:                                     ; preds = %32
  %37 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0)
  store %struct.msa_struct* %37, %struct.msa_struct** %4, align 8
  br label %38

; <label>:38:                                     ; preds = %70, %59, %49, %45, %36
  %39 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %40 = call i8* @MSAFileGetLine(%struct.msafile_struct* %39)
  store i8* %40, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %103

; <label>:42:                                     ; preds = %38
  %43 = call i8* @sre_strtok(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32* null)
  store i8* %43, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  br label %38

; <label>:46:                                     ; preds = %42
  %47 = call i8* @sre_strtok(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32* %6)
  store i8* %47, i8** %9, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %46
  br label %38

; <label>:50:                                     ; preds = %46
  %51 = call i8* @sre_strtok(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32* null)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i8* @strpbrk(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %9, align 8
  %57 = call i8* @strpbrk(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %55
  br label %38

; <label>:60:                                     ; preds = %55, %50
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

; <label>:63:                                     ; preds = %60
  %64 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %65 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %68 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0), i32 %66, i8* %69)
  br label %70

; <label>:70:                                     ; preds = %63, %60
  %71 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %74 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %73, i32 0, i32 45
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  %77 = call i32 @MSAGetSeqidx(%struct.msa_struct* %71, i8* %72, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %80 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %79, i32 0, i32 45
  store i32 %78, i32* %80, align 8
  %81 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %82 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %88 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %87, i32 0, i32 42
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @sre_strcat(i8** %86, i32 %93, i8* %94, i32 %95)
  %97 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %98 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %97, i32 0, i32 42
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  br label %38

; <label>:103:                                    ; preds = %38
  %104 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %104)
  %105 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  store %struct.msa_struct* %105, %struct.msa_struct** %2, align 8
  br label %106

; <label>:106:                                    ; preds = %103, %35, %16
  %107 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  ret %struct.msa_struct* %107
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #3

declare void @Die(i8*, ...) #2

declare i32 @MSAGetSeqidx(%struct.msa_struct*, i8*, i32) #2

declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @WriteClustal(%struct._IO_FILE*, %struct.msa_struct*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.msa_struct* %1, %struct.msa_struct** %4, align 8
  store i32 50, i32* %10, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %32, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

; <label>:17:                                     ; preds = %11
  %18 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strlen(i8* %24) #5
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %17
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %7, align 4
  br label %31

; <label>:31:                                     ; preds = %29, %17
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %11

; <label>:35:                                     ; preds = %11
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %38

; <label>:38:                                     ; preds = %86, %35
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %41 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %90

; <label>:44:                                     ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %5, align 4
  br label %47

; <label>:47:                                     ; preds = %82, %44
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %50 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %85

; <label>:53:                                     ; preds = %47
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i32 0, i32 0
  %55 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = call i8* @strncpy(i8* %54, i8* %64, i64 %66) #4
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %74 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i32 0, i32 0
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %72, i8* %79, i8* %80)
  br label %82

; <label>:82:                                     ; preds = %53
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %47

; <label>:85:                                     ; preds = %47
  br label %86

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %38

; <label>:90:                                     ; preds = %38
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
