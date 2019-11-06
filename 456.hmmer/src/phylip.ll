; ModuleID = 'phylip.c'
source_filename = "phylip.c"
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
@.str.1 = private unnamed_addr constant [61 x i8] c"Failed to parse nseq/alen from first line of PHYLIP file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"nseq and/or alen not an integer in first line of PHYLIP file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed to parse sequence at line %d of PHYLIP file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" %d  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%-10.10s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msa_struct* @ReadPhylip(%struct.msafile_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca %struct.msafile_struct*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [11 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.msafile_struct* %0, %struct.msafile_struct** %3, align 8
  %14 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %15 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %14, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %17 = call i32 @feof(%struct._IO_FILE* %16) #5
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %1
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %144

; <label>:20:                                     ; preds = %1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %21

; <label>:21:                                     ; preds = %28, %20
  %22 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %23 = call i8* @MSAFileGetLine(%struct.msafile_struct* %22)
  store i8* %23, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %53

; <label>:25:                                     ; preds = %21
  %26 = call i8* @sre_strtok(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* null)
  store i8* %26, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  br label %21

; <label>:29:                                     ; preds = %25
  %30 = call i8* @sre_strtok(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* null)
  store i8* %30, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %29
  %33 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %34 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0), i8* %35)
  br label %36

; <label>:36:                                     ; preds = %32, %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @IsInt(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @IsInt(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %40, %36
  %45 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %46 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i8* %47)
  br label %48

; <label>:48:                                     ; preds = %44, %40
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @atoi(i8* %49) #6
  store i32 %50, i32* %9, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @atoi(i8* %51) #6
  store i32 %52, i32* %10, align 4
  br label %53

; <label>:53:                                     ; preds = %48, %21
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.msa_struct* @MSAAlloc(i32 %54, i32 0)
  store %struct.msa_struct* %55, %struct.msa_struct** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %56

; <label>:56:                                     ; preds = %137, %72, %53
  %57 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %58 = call i8* @MSAFileGetLine(%struct.msafile_struct* %57)
  store i8* %58, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %138

; <label>:60:                                     ; preds = %56
  %61 = call i16** @__ctype_b_loc() #7
  %62 = load i16*, i16** %61, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %62, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 8192
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %60
  br label %56

; <label>:73:                                     ; preds = %60
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i32 0, i32 0
  %78 = load i8*, i8** %5, align 8
  %79 = call i8* @strncpy(i8* %77, i8* %78, i64 10) #5
  %80 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 10
  store i8 0, i8* %80, align 1
  %81 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %82 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 39
  %83 = load %struct.GKI*, %struct.GKI** %82, align 8
  %84 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i32 0, i32 0
  %85 = call i32 @GKIStoreKey(%struct.GKI* %83, i8* %84)
  %86 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i32 0, i32 0
  %87 = call i8* @sre_strdup(i8* %86, i32 -1)
  %88 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %89 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* %87, i8** %93, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 10
  store i8* %95, i8** %5, align 8
  br label %96

; <label>:96:                                     ; preds = %76, %73
  %97 = call i8* @sre_strtok(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %12)
  store i8* %97, i8** %6, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %106

; <label>:99:                                     ; preds = %96
  %100 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %101 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %104 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0), i32 %102, i8* %105)
  br label %106

; <label>:106:                                    ; preds = %99, %96
  %107 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %108 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %114 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %113, i32 0, i32 42
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @sre_strcat(i8** %112, i32 %119, i8* %120, i32 %121)
  %123 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %124 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %123, i32 0, i32 42
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

; <label>:134:                                    ; preds = %106
  store i32 0, i32* %11, align 4
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %137

; <label>:137:                                    ; preds = %134, %106
  br label %56

; <label>:138:                                    ; preds = %56
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %141 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %142)
  %143 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  store %struct.msa_struct* %143, %struct.msa_struct** %2, align 8
  br label %144

; <label>:144:                                    ; preds = %138, %19
  %145 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  ret %struct.msa_struct* %145
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

declare void @Die(i8*, ...) #2

declare i32 @IsInt(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

declare i8* @sre_strdup(i8*, i32) #2

declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @WritePhylip(%struct._IO_FILE*, %struct.msa_struct*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [51 x i8], align 16
  %8 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.msa_struct* %1, %struct.msa_struct** %4, align 8
  store i32 50, i32* %6, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %10 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %11 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %12, i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

; <label>:17:                                     ; preds = %76, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %80

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %29

; <label>:29:                                     ; preds = %26, %23
  store i32 0, i32* %5, align 4
  br label %30

; <label>:30:                                     ; preds = %72, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %75

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds [51 x i8], [51 x i8]* %7, i32 0, i32 0
  %38 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %39 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = call i8* @strncpy(i8* %37, i8* %47, i64 %49) #5
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [51 x i8], [51 x i8]* %7, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %36
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %58 = getelementptr inbounds [51 x i8], [51 x i8]* %7, i32 0, i32 0
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %58)
  br label %71

; <label>:60:                                     ; preds = %36
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %62 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %63 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds [51 x i8], [51 x i8]* %7, i32 0, i32 0
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* %68, i8* %69)
  br label %71

; <label>:71:                                     ; preds = %60, %56
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %30

; <label>:75:                                     ; preds = %30
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %17

; <label>:80:                                     ; preds = %17
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
