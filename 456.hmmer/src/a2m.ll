; ModuleID = 'a2m.c'
source_filename = "a2m.c"
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

@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Blank name in A2M file %s (line %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c">%s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msa_struct* @ReadA2M(%struct.msafile_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca %struct.msafile_struct*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msafile_struct* %0, %struct.msafile_struct** %3, align 8
  %12 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %13 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %12, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %15 = call i32 @feof(%struct._IO_FILE* %14) #3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %1
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %116

; <label>:18:                                     ; preds = %1
  store i8* null, i8** %6, align 8
  %19 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0)
  store %struct.msa_struct* %19, %struct.msa_struct** %4, align 8
  store i32 0, i32* %9, align 4
  br label %20

; <label>:20:                                     ; preds = %107, %82, %18
  %21 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %22 = call i8* @MSAFileGetLine(%struct.msafile_struct* %21)
  store i8* %22, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %108

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 62
  br i1 %28, label %29, label %76

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  %32 = call i8* @sre_strtok(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %10)
  store i8* %32, i8** %6, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %29
  %35 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %36 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %39 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i8* %37, i32 %40)
  br label %41

; <label>:41:                                     ; preds = %34, %29
  %42 = call i8* @sre_strtok(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32* %11)
  store i8* %42, i8** %7, align 8
  %43 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %44 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 39
  %45 = load %struct.GKI*, %struct.GKI** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @GKIStoreKey(%struct.GKI* %45, i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %50 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 40
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %41
  %54 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  call void @MSAExpand(%struct.msa_struct* %54)
  br label %55

; <label>:55:                                     ; preds = %53, %41
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i8* @sre_strdup(i8* %56, i32 %57)
  %59 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %60 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %55
  %68 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %7, align 8
  call void @MSASetSeqDescription(%struct.msa_struct* %68, i32 %69, i8* %70)
  br label %71

; <label>:71:                                     ; preds = %67, %55
  %72 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %73 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %107

; <label>:76:                                     ; preds = %24
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %106

; <label>:79:                                     ; preds = %76
  %80 = call i8* @sre_strtok(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %10)
  store i8* %80, i8** %8, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  br label %20

; <label>:83:                                     ; preds = %79
  %84 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %85 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %91 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %90, i32 0, i32 42
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @sre_strcat(i8** %89, i32 %96, i8* %97, i32 %98)
  %100 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %101 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %100, i32 0, i32 42
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

; <label>:106:                                    ; preds = %83, %76
  br label %107

; <label>:107:                                    ; preds = %106, %71
  br label %20

; <label>:108:                                    ; preds = %20
  %109 = load i8*, i8** %6, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %108
  %112 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  call void @MSAFree(%struct.msa_struct* %112)
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %116

; <label>:113:                                    ; preds = %108
  %114 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %114)
  %115 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  store %struct.msa_struct* %115, %struct.msa_struct** %2, align 8
  br label %116

; <label>:116:                                    ; preds = %113, %111, %17
  %117 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  ret %struct.msa_struct* %117
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

declare void @Die(i8*, ...) #2

declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

declare void @MSAExpand(%struct.msa_struct*) #2

declare i8* @sre_strdup(i8*, i32) #2

declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #2

declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

declare void @MSAFree(%struct.msa_struct*) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @WriteA2M(%struct._IO_FILE*, %struct.msa_struct*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.msa_struct* %1, %struct.msa_struct** %4, align 8
  store i32 60, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %10
  store i8 0, i8* %11, align 1
  store i32 0, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %81, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %84

; <label>:18:                                     ; preds = %12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %20 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 1
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %28 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 15
  %29 = load i8**, i8*** %28, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %48

; <label>:31:                                     ; preds = %18
  %32 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 15
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %48

; <label>:40:                                     ; preds = %31
  %41 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %42 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 15
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  br label %49

; <label>:48:                                     ; preds = %31, %18
  br label %49

; <label>:49:                                     ; preds = %48, %40
  %50 = phi i8* [ %47, %40 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %48 ]
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %26, i8* %50)
  store i32 0, i32* %6, align 4
  br label %52

; <label>:52:                                     ; preds = %76, %49
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %55 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %80

; <label>:58:                                     ; preds = %52
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0
  %60 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %61 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = call i8* @strncpy(i8* %59, i8* %69, i64 %71) #3
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %74)
  br label %76

; <label>:76:                                     ; preds = %58
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %52

; <label>:80:                                     ; preds = %52
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %12

; <label>:84:                                     ; preds = %12
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
