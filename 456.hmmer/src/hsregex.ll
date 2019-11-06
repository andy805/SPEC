; ModuleID = 'hsregex.c'
source_filename = "hsregex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sqd_regexp = type { [10 x i8*], [10 x i8*], i8, i8, i8*, i32, [1 x i8] }
%struct.comp = type { i8*, i32, i8*, [3 x i8], i64 }
%struct.exec = type { i8*, i8*, i8**, i8** }

@.str = private unnamed_addr constant [31 x i8] c"Strparse(): ntok must be <= %d\00", align 1
@sqd_parse = common global [10 x i8*] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"regexp compilation failed.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hsregex.c\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"NULL argument to sqd_regcomp\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"regexp too big\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"NULL argument to sqd_regexec\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"corrupted regexp\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"NULL parameter to sqd_regsub\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"damaged regexp\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"damaged match string\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"regexp(3): %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"too many ()\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"unterminated ()\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"unmatched ()\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"internal error: junk on end\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"*+ operand could be empty\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"nested *?+\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"invalid [] range\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"unmatched []\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"internal error: \5C0|) unexpected\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"?+* follows nothing\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"trailing \5C\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"^$.[()|?+*\5C\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"internal error: strcspn 0\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"regexp corruption\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"corrupted pointers\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"internal error: bad call of regrepeat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Strparse(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sqd_regexp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 10
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 9)
  br label %14

; <label>:14:                                     ; preds = %13, %3
  store i32 0, i32* %10, align 4
  br label %15

; <label>:15:                                     ; preds = %34, %14
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %37

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  call void @free(i8* %29) #7
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 %31
  store i8* null, i8** %32, align 8
  br label %33

; <label>:33:                                     ; preds = %25, %19
  br label %34

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %15

; <label>:37:                                     ; preds = %15
  %38 = load i8*, i8** %4, align 8
  %39 = call %struct.sqd_regexp* @sqd_regcomp(i8* %38)
  store %struct.sqd_regexp* %39, %struct.sqd_regexp** %7, align 8
  %40 = icmp eq %struct.sqd_regexp* %39, null
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %37
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  br label %42

; <label>:42:                                     ; preds = %41, %37
  %43 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @sqd_regexec(%struct.sqd_regexp* %43, i8* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %119

; <label>:48:                                     ; preds = %42
  store i32 0, i32* %10, align 4
  br label %49

; <label>:49:                                     ; preds = %115, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %118

; <label>:53:                                     ; preds = %49
  %54 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %55 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %54, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [10 x i8*], [10 x i8*]* %55, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %114

; <label>:61:                                     ; preds = %53
  %62 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %63 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %62, i32 0, i32 1
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %63, i64 0, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %114

; <label>:69:                                     ; preds = %61
  %70 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %71 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %70, i32 0, i32 1
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i8*], [10 x i8*]* %71, i64 0, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %77 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %76, i32 0, i32 0
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x i8*], [10 x i8*]* %77, i64 0, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %75 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = mul i64 1, %88
  %90 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 124, i64 %89)
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 %92
  store i8* %90, i8** %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %99 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %98, i32 0, i32 0
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [10 x i8*], [10 x i8*]* %99, i64 0, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = call i8* @strncpy(i8* %97, i8* %103, i64 %105) #7
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 0, i8* %113, align 1
  br label %114

; <label>:114:                                    ; preds = %69, %61, %53
  br label %115

; <label>:115:                                    ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %49

; <label>:118:                                    ; preds = %49
  br label %119

; <label>:119:                                    ; preds = %118, %42
  %120 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %121 = bitcast %struct.sqd_regexp* %120 to i8*
  call void @free(i8* %121) #7
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare void @Die(i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define %struct.sqd_regexp* @sqd_regcomp(i8*) #0 {
  %2 = alloca %struct.sqd_regexp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sqd_regexp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comp, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %2, align 8
  br label %135

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 3
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  store i8 9, i8* %19, align 8
  %20 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 3
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 2
  store i8 0, i8* %21, align 2
  %22 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 3
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %22, i64 0, i64 1
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 3
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  call void @regc(%struct.comp* %7, i32 156)
  %27 = call i8* @reg(%struct.comp* %7, i32 0, i32* %6)
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %13
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %2, align 8
  br label %135

; <label>:30:                                     ; preds = %13
  %31 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 32767
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  call void @sqd_regerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %2, align 8
  br label %135

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add i64 184, %37
  %39 = call noalias i8* @malloc(i64 %38) #7
  %40 = bitcast i8* %39 to %struct.sqd_regexp*
  store %struct.sqd_regexp* %40, %struct.sqd_regexp** %4, align 8
  %41 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %42 = icmp eq %struct.sqd_regexp* %41, null
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %35
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %2, align 8
  br label %135

; <label>:44:                                     ; preds = %35
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %49 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %48, i32 0, i32 6
  %50 = getelementptr inbounds [1 x i8], [1 x i8]* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  call void @regc(%struct.comp* %7, i32 156)
  %52 = call i8* @reg(%struct.comp* %7, i32 0, i32* %6)
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %44
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %2, align 8
  br label %135

; <label>:55:                                     ; preds = %44
  %56 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %57 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %56, i32 0, i32 2
  store i8 0, i8* %57, align 8
  %58 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %59 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %58, i32 0, i32 3
  store i8 0, i8* %59, align 1
  %60 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %61 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %60, i32 0, i32 4
  store i8* null, i8** %61, align 8
  %62 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %63 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %62, i32 0, i32 5
  store i32 0, i32* %63, align 8
  %64 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %65 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %64, i32 0, i32 6
  %66 = getelementptr inbounds [1 x i8], [1 x i8]* %65, i32 0, i32 0
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @regnext(i8* %68)
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %133

; <label>:73:                                     ; preds = %55
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  store i8* %75, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %86

; <label>:80:                                     ; preds = %73
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  %83 = load i8, i8* %82, align 1
  %84 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %85 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %84, i32 0, i32 2
  store i8 %83, i8* %85, align 8
  br label %95

; <label>:86:                                     ; preds = %73
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %94

; <label>:91:                                     ; preds = %86
  %92 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %93 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %92, i32 0, i32 3
  store i8 1, i8* %93, align 1
  br label %94

; <label>:94:                                     ; preds = %91, %86
  br label %95

; <label>:95:                                     ; preds = %94, %80
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %132

; <label>:99:                                     ; preds = %95
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %100

; <label>:100:                                    ; preds = %121, %99
  %101 = load i8*, i8** %5, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %124

; <label>:103:                                    ; preds = %100
  %104 = load i8*, i8** %5, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 8
  br i1 %107, label %108, label %120

; <label>:108:                                    ; preds = %103
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  %111 = call i64 @strlen(i8* %110) #8
  %112 = load i64, i64* %9, align 8
  %113 = icmp uge i64 %111, %112
  br i1 %113, label %114, label %120

; <label>:114:                                    ; preds = %108
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  store i8* %116, i8** %8, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = call i64 @strlen(i8* %118) #8
  store i64 %119, i64* %9, align 8
  br label %120

; <label>:120:                                    ; preds = %114, %108, %103
  br label %121

; <label>:121:                                    ; preds = %120
  %122 = load i8*, i8** %5, align 8
  %123 = call i8* @regnext(i8* %122)
  store i8* %123, i8** %5, align 8
  br label %100

; <label>:124:                                    ; preds = %100
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %127 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i64, i64* %9, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %131 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  br label %132

; <label>:132:                                    ; preds = %124, %95
  br label %133

; <label>:133:                                    ; preds = %132, %55
  %134 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  store %struct.sqd_regexp* %134, %struct.sqd_regexp** %2, align 8
  br label %135

; <label>:135:                                    ; preds = %133, %54, %43, %34, %29, %12
  %136 = load %struct.sqd_regexp*, %struct.sqd_regexp** %2, align 8
  ret %struct.sqd_regexp* %136
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sqd_regexec(%struct.sqd_regexp*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sqd_regexp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.exec, align 8
  store %struct.sqd_regexp* %0, %struct.sqd_regexp** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %11 = icmp eq %struct.sqd_regexp* %10, null
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12, %2
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %102

; <label>:16:                                     ; preds = %12
  %17 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %18 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %17, i32 0, i32 6
  %19 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 4
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 156
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %16
  call void @sqd_regerror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %102

; <label>:24:                                     ; preds = %16
  %25 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %26 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %32 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @strstr(i8* %30, i8* %33) #8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %29
  store i32 0, i32* %3, align 4
  br label %102

; <label>:37:                                     ; preds = %29, %24
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds %struct.exec, %struct.exec* %8, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %41 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %40, i32 0, i32 0
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.exec, %struct.exec* %8, i32 0, i32 2
  store i8** %42, i8*** %43, align 8
  %44 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %45 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %44, i32 0, i32 1
  %46 = getelementptr inbounds [10 x i8*], [10 x i8*]* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.exec, %struct.exec* %8, i32 0, i32 3
  store i8** %46, i8*** %47, align 8
  %48 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %49 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %48, i32 0, i32 3
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %37
  %53 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @regtry(%struct.exec* %8, %struct.sqd_regexp* %53, i8* %54)
  store i32 %55, i32* %3, align 4
  br label %102

; <label>:56:                                     ; preds = %37
  %57 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %58 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %57, i32 0, i32 2
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

; <label>:62:                                     ; preds = %56
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %7, align 8
  br label %64

; <label>:64:                                     ; preds = %74, %62
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %82

; <label>:67:                                     ; preds = %64
  %68 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @regtry(%struct.exec* %8, %struct.sqd_regexp* %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %67
  store i32 1, i32* %3, align 4
  br label %102

; <label>:73:                                     ; preds = %67
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %78 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %77, i32 0, i32 2
  %79 = load i8, i8* %78, align 8
  %80 = sext i8 %79 to i32
  %81 = call i8* @strchr(i8* %76, i32 %80) #8
  store i8* %81, i8** %7, align 8
  br label %64

; <label>:82:                                     ; preds = %64
  store i32 0, i32* %3, align 4
  br label %102

; <label>:83:                                     ; preds = %56
  %84 = load i8*, i8** %6, align 8
  store i8* %84, i8** %7, align 8
  br label %85

; <label>:85:                                     ; preds = %98, %83
  %86 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @regtry(%struct.exec* %8, %struct.sqd_regexp* %86, i8* %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br i1 %90, label %91, label %101

; <label>:91:                                     ; preds = %85
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %91
  store i32 0, i32* %3, align 4
  br label %102

; <label>:97:                                     ; preds = %91
  br label %98

; <label>:98:                                     ; preds = %97
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  br label %85

; <label>:101:                                    ; preds = %85
  store i32 1, i32* %3, align 4
  br label %102

; <label>:102:                                    ; preds = %101, %96, %82, %72, %52, %36, %23, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @SqdClean() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %20, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 9
  br i1 %4, label %5, label %23

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  call void @free(i8* %15) #7
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 %17
  store i8* null, i8** %18, align 8
  br label %19

; <label>:19:                                     ; preds = %11, %5
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %2

; <label>:23:                                     ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @sqd_regerror(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* %4)
  call void @exit(i32 1) #9
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regc(%struct.comp*, i32) #0 {
  %3 = alloca %struct.comp*, align 8
  %4 = alloca i8, align 1
  %5 = trunc i32 %1 to i8
  store %struct.comp* %0, %struct.comp** %3, align 8
  store i8 %5, i8* %4, align 1
  %6 = load %struct.comp*, %struct.comp** %3, align 8
  %7 = getelementptr inbounds %struct.comp, %struct.comp* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.comp*, %struct.comp** %3, align 8
  %10 = getelementptr inbounds %struct.comp, %struct.comp* %9, i32 0, i32 3
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i32 0, i32 0
  %12 = icmp ne i8* %8, %11
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1
  %15 = load %struct.comp*, %struct.comp** %3, align 8
  %16 = getelementptr inbounds %struct.comp, %struct.comp* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %16, align 8
  store i8 %14, i8* %17, align 1
  br label %24

; <label>:19:                                     ; preds = %2
  %20 = load %struct.comp*, %struct.comp** %3, align 8
  %21 = getelementptr inbounds %struct.comp, %struct.comp* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %24

; <label>:24:                                     ; preds = %19, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @reg(%struct.comp*, i32, i32*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comp* %0, %struct.comp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

; <label>:16:                                     ; preds = %3
  %17 = load %struct.comp*, %struct.comp** %5, align 8
  %18 = getelementptr inbounds %struct.comp, %struct.comp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 10
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %16
  call void @sqd_regerror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store i8* null, i8** %4, align 8
  br label %154

; <label>:22:                                     ; preds = %16
  %23 = load %struct.comp*, %struct.comp** %5, align 8
  %24 = getelementptr inbounds %struct.comp, %struct.comp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.comp*, %struct.comp** %5, align 8
  %27 = getelementptr inbounds %struct.comp, %struct.comp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.comp*, %struct.comp** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 20, %31
  %33 = call i8* @regnode(%struct.comp* %30, i32 %32)
  store i8* %33, i8** %8, align 8
  br label %34

; <label>:34:                                     ; preds = %22, %3
  %35 = load %struct.comp*, %struct.comp** %5, align 8
  %36 = call i8* @regbranch(%struct.comp* %35, i32* %12)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %34
  store i8* null, i8** %4, align 8
  br label %154

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %40
  %44 = load %struct.comp*, %struct.comp** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  call void @regtail(%struct.comp* %44, i8* %45, i8* %46)
  br label %49

; <label>:47:                                     ; preds = %40
  %48 = load i8*, i8** %9, align 8
  store i8* %48, i8** %8, align 8
  br label %49

; <label>:49:                                     ; preds = %47, %43
  %50 = load i32, i32* %12, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %51, 1
  %53 = xor i32 %52, -1
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

; <label>:62:                                     ; preds = %79, %49
  %63 = load %struct.comp*, %struct.comp** %5, align 8
  %64 = getelementptr inbounds %struct.comp, %struct.comp* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 124
  br i1 %68, label %69, label %95

; <label>:69:                                     ; preds = %62
  %70 = load %struct.comp*, %struct.comp** %5, align 8
  %71 = getelementptr inbounds %struct.comp, %struct.comp* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %71, align 8
  %74 = load %struct.comp*, %struct.comp** %5, align 8
  %75 = call i8* @regbranch(%struct.comp* %74, i32* %12)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %69
  store i8* null, i8** %4, align 8
  br label %154

; <label>:79:                                     ; preds = %69
  %80 = load %struct.comp*, %struct.comp** %5, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %9, align 8
  call void @regtail(%struct.comp* %80, i8* %81, i8* %82)
  %83 = load i32, i32* %12, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %84, 1
  %86 = xor i32 %85, -1
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %86
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %62

; <label>:95:                                     ; preds = %62
  %96 = load %struct.comp*, %struct.comp** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 30, %100
  br label %103

; <label>:102:                                    ; preds = %95
  br label %103

; <label>:103:                                    ; preds = %102, %99
  %104 = phi i32 [ %101, %99 ], [ 0, %102 ]
  %105 = call i8* @regnode(%struct.comp* %96, i32 %104)
  store i8* %105, i8** %10, align 8
  %106 = load %struct.comp*, %struct.comp** %5, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %10, align 8
  call void @regtail(%struct.comp* %106, i8* %107, i8* %108)
  %109 = load i8*, i8** %8, align 8
  store i8* %109, i8** %9, align 8
  br label %110

; <label>:110:                                    ; preds = %117, %103
  %111 = load i8*, i8** %9, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %120

; <label>:113:                                    ; preds = %110
  %114 = load %struct.comp*, %struct.comp** %5, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = load i8*, i8** %10, align 8
  call void @regoptail(%struct.comp* %114, i8* %115, i8* %116)
  br label %117

; <label>:117:                                    ; preds = %113
  %118 = load i8*, i8** %9, align 8
  %119 = call i8* @regnext(i8* %118)
  store i8* %119, i8** %9, align 8
  br label %110

; <label>:120:                                    ; preds = %110
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

; <label>:123:                                    ; preds = %120
  %124 = load %struct.comp*, %struct.comp** %5, align 8
  %125 = getelementptr inbounds %struct.comp, %struct.comp* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %125, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 41
  br i1 %130, label %131, label %132

; <label>:131:                                    ; preds = %123
  call void @sqd_regerror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %4, align 8
  br label %154

; <label>:132:                                    ; preds = %123, %120
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %151, label %135

; <label>:135:                                    ; preds = %132
  %136 = load %struct.comp*, %struct.comp** %5, align 8
  %137 = getelementptr inbounds %struct.comp, %struct.comp* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

; <label>:142:                                    ; preds = %135
  %143 = load %struct.comp*, %struct.comp** %5, align 8
  %144 = getelementptr inbounds %struct.comp, %struct.comp* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 41
  br i1 %148, label %149, label %150

; <label>:149:                                    ; preds = %142
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  store i8* null, i8** %4, align 8
  br label %154

; <label>:150:                                    ; preds = %142
  call void @sqd_regerror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0))
  store i8* null, i8** %4, align 8
  br label %154

; <label>:151:                                    ; preds = %135, %132
  br label %152

; <label>:152:                                    ; preds = %151
  %153 = load i8*, i8** %8, align 8
  store i8* %153, i8** %4, align 8
  br label %154

; <label>:154:                                    ; preds = %152, %150, %149, %131, %78, %39, %21
  %155 = load i8*, i8** %4, align 8
  ret i8* %155
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @regnext(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 1
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, 127
  %10 = shl i32 %9, 8
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 %14, 255
  %16 = add nsw i32 %10, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %1
  store i8* null, i8** %2, align 8
  br label %38

; <label>:20:                                     ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  br label %36

; <label>:31:                                     ; preds = %20
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  br label %36

; <label>:36:                                     ; preds = %31, %25
  %37 = phi i8* [ %30, %25 ], [ %35, %31 ]
  store i8* %37, i8** %2, align 8
  br label %38

; <label>:38:                                     ; preds = %36, %19
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regtry(%struct.exec*, %struct.sqd_regexp*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exec*, align 8
  %6 = alloca %struct.sqd_regexp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store %struct.exec* %0, %struct.exec** %5, align 8
  store %struct.sqd_regexp* %1, %struct.sqd_regexp** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.exec*, %struct.exec** %5, align 8
  %13 = getelementptr inbounds %struct.exec, %struct.exec* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.sqd_regexp*, %struct.sqd_regexp** %6, align 8
  %15 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %14, i32 0, i32 0
  %16 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i32 0, i32 0
  store i8** %16, i8*** %9, align 8
  %17 = load %struct.sqd_regexp*, %struct.sqd_regexp** %6, align 8
  %18 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %17, i32 0, i32 1
  %19 = getelementptr inbounds [10 x i8*], [10 x i8*]* %18, i32 0, i32 0
  store i8** %19, i8*** %10, align 8
  store i32 10, i32* %8, align 4
  br label %20

; <label>:20:                                     ; preds = %28, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %20
  %24 = load i8**, i8*** %9, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %9, align 8
  store i8* null, i8** %24, align 8
  %26 = load i8**, i8*** %10, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %10, align 8
  store i8* null, i8** %26, align 8
  br label %28

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  br label %20

; <label>:31:                                     ; preds = %20
  %32 = load %struct.exec*, %struct.exec** %5, align 8
  %33 = load %struct.sqd_regexp*, %struct.sqd_regexp** %6, align 8
  %34 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %33, i32 0, i32 6
  %35 = getelementptr inbounds [1 x i8], [1 x i8]* %34, i32 0, i32 0
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i32 @regmatch(%struct.exec* %32, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

; <label>:39:                                     ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.sqd_regexp*, %struct.sqd_regexp** %6, align 8
  %42 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %41, i32 0, i32 0
  %43 = getelementptr inbounds [10 x i8*], [10 x i8*]* %42, i64 0, i64 0
  store i8* %40, i8** %43, align 8
  %44 = load %struct.exec*, %struct.exec** %5, align 8
  %45 = getelementptr inbounds %struct.exec, %struct.exec* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.sqd_regexp*, %struct.sqd_regexp** %6, align 8
  %48 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %47, i32 0, i32 1
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %48, i64 0, i64 0
  store i8* %46, i8** %49, align 8
  store i32 1, i32* %4, align 4
  br label %51

; <label>:50:                                     ; preds = %31
  store i32 0, i32* %4, align 4
  br label %51

; <label>:51:                                     ; preds = %50, %39
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @sqd_regsub(%struct.sqd_regexp*, i8*, i8*) #0 {
  %4 = alloca %struct.sqd_regexp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sqd_regexp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sqd_regexp* %0, %struct.sqd_regexp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.sqd_regexp*, %struct.sqd_regexp** %4, align 8
  store %struct.sqd_regexp* %13, %struct.sqd_regexp** %7, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %17 = icmp eq %struct.sqd_regexp* %16, null
  br i1 %17, label %24, label %18

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21, %18, %3
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %164

; <label>:25:                                     ; preds = %21
  %26 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %27 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %26, i32 0, i32 6
  %28 = getelementptr inbounds [1 x i8], [1 x i8]* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 156
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %25
  call void @sqd_regerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %164

; <label>:33:                                     ; preds = %25
  br label %34

; <label>:34:                                     ; preds = %160, %33
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  %37 = load i8, i8* %35, align 1
  store i8 %37, i8* %10, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %161

; <label>:40:                                     ; preds = %34
  %41 = load i8, i8* %10, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 38
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %40
  store i32 0, i32* %11, align 4
  br label %69

; <label>:45:                                     ; preds = %40
  %46 = load i8, i8* %10, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 92
  br i1 %48, label %49, label %67

; <label>:49:                                     ; preds = %45
  %50 = call i16** @__ctype_b_loc() #10
  %51 = load i16*, i16** %50, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %51, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 2048
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

; <label>:61:                                     ; preds = %49
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 48
  store i32 %66, i32* %11, align 4
  br label %68

; <label>:67:                                     ; preds = %49, %45
  store i32 -1, i32* %11, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %61
  br label %69

; <label>:69:                                     ; preds = %68, %44
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %94

; <label>:72:                                     ; preds = %69
  %73 = load i8, i8* %10, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 92
  br i1 %75, label %76, label %90

; <label>:76:                                     ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 92
  br i1 %80, label %86, label %81

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 38
  br i1 %85, label %86, label %90

; <label>:86:                                     ; preds = %81, %76
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  %89 = load i8, i8* %87, align 1
  store i8 %89, i8* %10, align 1
  br label %90

; <label>:90:                                     ; preds = %86, %81, %72
  %91 = load i8, i8* %10, align 1
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  store i8 %91, i8* %92, align 1
  br label %160

; <label>:94:                                     ; preds = %69
  %95 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %96 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %95, i32 0, i32 0
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [10 x i8*], [10 x i8*]* %96, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %159

; <label>:102:                                    ; preds = %94
  %103 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %104 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %103, i32 0, i32 1
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [10 x i8*], [10 x i8*]* %104, i64 0, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %159

; <label>:110:                                    ; preds = %102
  %111 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %112 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %111, i32 0, i32 1
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x i8*], [10 x i8*]* %112, i64 0, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %118 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %117, i32 0, i32 0
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [10 x i8*], [10 x i8*]* %118, i64 0, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ugt i8* %116, %122
  br i1 %123, label %124, label %159

; <label>:124:                                    ; preds = %110
  %125 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %126 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %125, i32 0, i32 1
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %126, i64 0, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %132 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %131, i32 0, i32 0
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x i8*], [10 x i8*]* %132, i64 0, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = ptrtoint i8* %130 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  store i64 %139, i64* %12, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load %struct.sqd_regexp*, %struct.sqd_regexp** %7, align 8
  %142 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %141, i32 0, i32 0
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [10 x i8*], [10 x i8*]* %142, i64 0, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = load i64, i64* %12, align 8
  %148 = call i8* @strncpy(i8* %140, i8* %146, i64 %147) #7
  %149 = load i64, i64* %12, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 %149
  store i8* %151, i8** %9, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 -1
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %124
  call void @sqd_regerror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0))
  br label %164

; <label>:158:                                    ; preds = %124
  br label %159

; <label>:159:                                    ; preds = %158, %110, %102, %94
  br label %160

; <label>:160:                                    ; preds = %159, %90
  br label %34

; <label>:161:                                    ; preds = %34
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %9, align 8
  store i8 0, i8* %162, align 1
  br label %164

; <label>:164:                                    ; preds = %161, %157, %32, %24
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @regnode(%struct.comp*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.comp*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = trunc i32 %1 to i8
  store %struct.comp* %0, %struct.comp** %4, align 8
  store i8 %8, i8* %5, align 1
  %9 = load %struct.comp*, %struct.comp** %4, align 8
  %10 = getelementptr inbounds %struct.comp, %struct.comp* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.comp*, %struct.comp** %4, align 8
  %13 = getelementptr inbounds %struct.comp, %struct.comp* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.comp*, %struct.comp** %4, align 8
  %16 = getelementptr inbounds %struct.comp, %struct.comp* %15, i32 0, i32 3
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i32 0, i32 0
  %18 = icmp ne i8* %14, %17
  br i1 %18, label %25, label %19

; <label>:19:                                     ; preds = %2
  %20 = load %struct.comp*, %struct.comp** %4, align 8
  %21 = getelementptr inbounds %struct.comp, %struct.comp* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 3
  store i64 %23, i64* %21, align 8
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %3, align 8
  br label %38

; <label>:25:                                     ; preds = %2
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8, i8* %5, align 1
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  store i8 %27, i8* %28, align 1
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  store i8 0, i8* %30, align 1
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  store i8 0, i8* %32, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.comp*, %struct.comp** %4, align 8
  %36 = getelementptr inbounds %struct.comp, %struct.comp* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %3, align 8
  br label %38

; <label>:38:                                     ; preds = %25, %19
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @regbranch(%struct.comp*, i32*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.comp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comp* %0, %struct.comp** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.comp*, %struct.comp** %4, align 8
  %13 = call i8* @regnode(%struct.comp* %12, i32 6)
  store i8* %13, i8** %6, align 8
  store i8* null, i8** %7, align 8
  br label %14

; <label>:14:                                     ; preds = %53, %2
  %15 = load %struct.comp*, %struct.comp** %4, align 8
  %16 = getelementptr inbounds %struct.comp, %struct.comp* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 124
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 41
  br label %27

; <label>:27:                                     ; preds = %24, %21, %14
  %28 = phi i1 [ false, %21 ], [ false, %14 ], [ %26, %24 ]
  br i1 %28, label %29, label %55

; <label>:29:                                     ; preds = %27
  %30 = load %struct.comp*, %struct.comp** %4, align 8
  %31 = call i8* @regpiece(%struct.comp* %30, i32* %9)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %29
  store i8* null, i8** %3, align 8
  br label %63

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 1
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %53

; <label>:49:                                     ; preds = %35
  %50 = load %struct.comp*, %struct.comp** %4, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %8, align 8
  call void @regtail(%struct.comp* %50, i8* %51, i8* %52)
  br label %53

; <label>:53:                                     ; preds = %49, %43
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %7, align 8
  br label %14

; <label>:55:                                     ; preds = %27
  %56 = load i8*, i8** %7, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %55
  %59 = load %struct.comp*, %struct.comp** %4, align 8
  %60 = call i8* @regnode(%struct.comp* %59, i32 9)
  br label %61

; <label>:61:                                     ; preds = %58, %55
  %62 = load i8*, i8** %6, align 8
  store i8* %62, i8** %3, align 8
  br label %63

; <label>:63:                                     ; preds = %61, %34
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regtail(%struct.comp*, i8*, i8*) #0 {
  %4 = alloca %struct.comp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.comp* %0, %struct.comp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.comp*, %struct.comp** %4, align 8
  %11 = getelementptr inbounds %struct.comp, %struct.comp* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.comp*, %struct.comp** %4, align 8
  %14 = getelementptr inbounds %struct.comp, %struct.comp* %13, i32 0, i32 3
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i32 0, i32 0
  %16 = icmp ne i8* %12, %15
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %3
  br label %58

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %7, align 8
  br label %20

; <label>:20:                                     ; preds = %25, %18
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @regnext(i8* %21)
  store i8* %22, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %20
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %7, align 8
  br label %20

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 7
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  br label %44

; <label>:38:                                     ; preds = %27
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  br label %44

; <label>:44:                                     ; preds = %38, %32
  %45 = phi i64 [ %37, %32 ], [ %43, %38 ]
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 127
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8 %55, i8* %57, align 1
  br label %58

; <label>:58:                                     ; preds = %44, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regoptail(%struct.comp*, i8*, i8*) #0 {
  %4 = alloca %struct.comp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.comp* %0, %struct.comp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.comp*, %struct.comp** %4, align 8
  %8 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.comp*, %struct.comp** %4, align 8
  %11 = getelementptr inbounds %struct.comp, %struct.comp* %10, i32 0, i32 3
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i32 0, i32 0
  %13 = icmp ne i8* %9, %12
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 6
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %14, %3
  br label %25

; <label>:20:                                     ; preds = %14
  %21 = load %struct.comp*, %struct.comp** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = load i8*, i8** %6, align 8
  call void @regtail(%struct.comp* %21, i8* %23, i8* %24)
  br label %25

; <label>:25:                                     ; preds = %20, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @regpiece(%struct.comp*, i32*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.comp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.comp* %0, %struct.comp** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.comp*, %struct.comp** %4, align 8
  %11 = call i8* @regatom(%struct.comp* %10, i32* %9)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %170

; <label>:15:                                     ; preds = %2
  %16 = load %struct.comp*, %struct.comp** %4, align 8
  %17 = getelementptr inbounds %struct.comp, %struct.comp* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %7, align 1
  %20 = load i8, i8* %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %35, label %23

; <label>:23:                                     ; preds = %15
  %24 = load i8, i8* %7, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 43
  br i1 %26, label %35, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 63
  br i1 %30, label %35, label %31

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %3, align 8
  br label %170

; <label>:35:                                     ; preds = %27, %23, %15
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

; <label>:39:                                     ; preds = %35
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 63
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %39
  call void @sqd_regerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0))
  store i8* null, i8** %3, align 8
  br label %170

; <label>:44:                                     ; preds = %39, %35
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %53 [
    i32 42, label %47
    i32 43, label %49
    i32 63, label %51
  ]

; <label>:47:                                     ; preds = %44
  %48 = load i32*, i32** %5, align 8
  store i32 4, i32* %48, align 4
  br label %53

; <label>:49:                                     ; preds = %44
  %50 = load i32*, i32** %5, align 8
  store i32 5, i32* %50, align 4
  br label %53

; <label>:51:                                     ; preds = %44
  %52 = load i32*, i32** %5, align 8
  store i32 0, i32* %52, align 4
  br label %53

; <label>:53:                                     ; preds = %44, %51, %49, %47
  %54 = load i8, i8* %7, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 42
  br i1 %56, label %57, label %64

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 2
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %57
  %62 = load %struct.comp*, %struct.comp** %4, align 8
  %63 = load i8*, i8** %6, align 8
  call void @reginsert(%struct.comp* %62, i32 10, i8* %63)
  br label %142

; <label>:64:                                     ; preds = %57, %53
  %65 = load i8, i8* %7, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 42
  br i1 %67, label %68, label %86

; <label>:68:                                     ; preds = %64
  %69 = load %struct.comp*, %struct.comp** %4, align 8
  %70 = load i8*, i8** %6, align 8
  call void @reginsert(%struct.comp* %69, i32 6, i8* %70)
  %71 = load %struct.comp*, %struct.comp** %4, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.comp*, %struct.comp** %4, align 8
  %74 = call i8* @regnode(%struct.comp* %73, i32 7)
  call void @regoptail(%struct.comp* %71, i8* %72, i8* %74)
  %75 = load %struct.comp*, %struct.comp** %4, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  call void @regoptail(%struct.comp* %75, i8* %76, i8* %77)
  %78 = load %struct.comp*, %struct.comp** %4, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.comp*, %struct.comp** %4, align 8
  %81 = call i8* @regnode(%struct.comp* %80, i32 6)
  call void @regtail(%struct.comp* %78, i8* %79, i8* %81)
  %82 = load %struct.comp*, %struct.comp** %4, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.comp*, %struct.comp** %4, align 8
  %85 = call i8* @regnode(%struct.comp* %84, i32 9)
  call void @regtail(%struct.comp* %82, i8* %83, i8* %85)
  br label %141

; <label>:86:                                     ; preds = %64
  %87 = load i8, i8* %7, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 43
  br i1 %89, label %90, label %97

; <label>:90:                                     ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 2
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

; <label>:94:                                     ; preds = %90
  %95 = load %struct.comp*, %struct.comp** %4, align 8
  %96 = load i8*, i8** %6, align 8
  call void @reginsert(%struct.comp* %95, i32 11, i8* %96)
  br label %140

; <label>:97:                                     ; preds = %90, %86
  %98 = load i8, i8* %7, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 43
  br i1 %100, label %101, label %119

; <label>:101:                                    ; preds = %97
  %102 = load %struct.comp*, %struct.comp** %4, align 8
  %103 = call i8* @regnode(%struct.comp* %102, i32 6)
  store i8* %103, i8** %8, align 8
  %104 = load %struct.comp*, %struct.comp** %4, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %8, align 8
  call void @regtail(%struct.comp* %104, i8* %105, i8* %106)
  %107 = load %struct.comp*, %struct.comp** %4, align 8
  %108 = load %struct.comp*, %struct.comp** %4, align 8
  %109 = call i8* @regnode(%struct.comp* %108, i32 7)
  %110 = load i8*, i8** %6, align 8
  call void @regtail(%struct.comp* %107, i8* %109, i8* %110)
  %111 = load %struct.comp*, %struct.comp** %4, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.comp*, %struct.comp** %4, align 8
  %114 = call i8* @regnode(%struct.comp* %113, i32 6)
  call void @regtail(%struct.comp* %111, i8* %112, i8* %114)
  %115 = load %struct.comp*, %struct.comp** %4, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.comp*, %struct.comp** %4, align 8
  %118 = call i8* @regnode(%struct.comp* %117, i32 9)
  call void @regtail(%struct.comp* %115, i8* %116, i8* %118)
  br label %139

; <label>:119:                                    ; preds = %97
  %120 = load i8, i8* %7, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 63
  br i1 %122, label %123, label %138

; <label>:123:                                    ; preds = %119
  %124 = load %struct.comp*, %struct.comp** %4, align 8
  %125 = load i8*, i8** %6, align 8
  call void @reginsert(%struct.comp* %124, i32 6, i8* %125)
  %126 = load %struct.comp*, %struct.comp** %4, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load %struct.comp*, %struct.comp** %4, align 8
  %129 = call i8* @regnode(%struct.comp* %128, i32 6)
  call void @regtail(%struct.comp* %126, i8* %127, i8* %129)
  %130 = load %struct.comp*, %struct.comp** %4, align 8
  %131 = call i8* @regnode(%struct.comp* %130, i32 9)
  store i8* %131, i8** %8, align 8
  %132 = load %struct.comp*, %struct.comp** %4, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = load i8*, i8** %8, align 8
  call void @regtail(%struct.comp* %132, i8* %133, i8* %134)
  %135 = load %struct.comp*, %struct.comp** %4, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = load i8*, i8** %8, align 8
  call void @regoptail(%struct.comp* %135, i8* %136, i8* %137)
  br label %138

; <label>:138:                                    ; preds = %123, %119
  br label %139

; <label>:139:                                    ; preds = %138, %101
  br label %140

; <label>:140:                                    ; preds = %139, %94
  br label %141

; <label>:141:                                    ; preds = %140, %68
  br label %142

; <label>:142:                                    ; preds = %141, %61
  %143 = load %struct.comp*, %struct.comp** %4, align 8
  %144 = getelementptr inbounds %struct.comp, %struct.comp* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %144, align 8
  %147 = load %struct.comp*, %struct.comp** %4, align 8
  %148 = getelementptr inbounds %struct.comp, %struct.comp* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 42
  br i1 %152, label %167, label %153

; <label>:153:                                    ; preds = %142
  %154 = load %struct.comp*, %struct.comp** %4, align 8
  %155 = getelementptr inbounds %struct.comp, %struct.comp* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 43
  br i1 %159, label %167, label %160

; <label>:160:                                    ; preds = %153
  %161 = load %struct.comp*, %struct.comp** %4, align 8
  %162 = getelementptr inbounds %struct.comp, %struct.comp* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 63
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %160, %153, %142
  call void @sqd_regerror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0))
  store i8* null, i8** %3, align 8
  br label %170

; <label>:168:                                    ; preds = %160
  %169 = load i8*, i8** %6, align 8
  store i8* %169, i8** %3, align 8
  br label %170

; <label>:170:                                    ; preds = %168, %167, %43, %31, %14
  %171 = load i8*, i8** %3, align 8
  ret i8* %171
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @regatom(%struct.comp*, i32*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.comp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store %struct.comp* %0, %struct.comp** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.comp*, %struct.comp** %4, align 8
  %15 = getelementptr inbounds %struct.comp, %struct.comp* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %15, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %177 [
    i32 94, label %20
    i32 36, label %23
    i32 46, label %26
    i32 91, label %32
    i32 40, label %141
    i32 0, label %153
    i32 124, label %153
    i32 41, label %153
    i32 63, label %154
    i32 43, label %154
    i32 42, label %154
    i32 92, label %155
  ]

; <label>:20:                                     ; preds = %2
  %21 = load %struct.comp*, %struct.comp** %4, align 8
  %22 = call i8* @regnode(%struct.comp* %21, i32 1)
  store i8* %22, i8** %6, align 8
  br label %242

; <label>:23:                                     ; preds = %2
  %24 = load %struct.comp*, %struct.comp** %4, align 8
  %25 = call i8* @regnode(%struct.comp* %24, i32 2)
  store i8* %25, i8** %6, align 8
  br label %242

; <label>:26:                                     ; preds = %2
  %27 = load %struct.comp*, %struct.comp** %4, align 8
  %28 = call i8* @regnode(%struct.comp* %27, i32 3)
  store i8* %28, i8** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 3
  store i32 %31, i32* %29, align 4
  br label %242

; <label>:32:                                     ; preds = %2
  %33 = load %struct.comp*, %struct.comp** %4, align 8
  %34 = getelementptr inbounds %struct.comp, %struct.comp* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 94
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %32
  %40 = load %struct.comp*, %struct.comp** %4, align 8
  %41 = call i8* @regnode(%struct.comp* %40, i32 5)
  store i8* %41, i8** %6, align 8
  %42 = load %struct.comp*, %struct.comp** %4, align 8
  %43 = getelementptr inbounds %struct.comp, %struct.comp* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  br label %49

; <label>:46:                                     ; preds = %32
  %47 = load %struct.comp*, %struct.comp** %4, align 8
  %48 = call i8* @regnode(%struct.comp* %47, i32 4)
  store i8* %48, i8** %6, align 8
  br label %49

; <label>:49:                                     ; preds = %46, %39
  %50 = load %struct.comp*, %struct.comp** %4, align 8
  %51 = getelementptr inbounds %struct.comp, %struct.comp* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = icmp eq i32 %54, 93
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %59, label %66

; <label>:59:                                     ; preds = %56, %49
  %60 = load %struct.comp*, %struct.comp** %4, align 8
  %61 = load i32, i32* %10, align 4
  call void @regc(%struct.comp* %60, i32 %61)
  %62 = load %struct.comp*, %struct.comp** %4, align 8
  %63 = getelementptr inbounds %struct.comp, %struct.comp* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %63, align 8
  br label %66

; <label>:66:                                     ; preds = %59, %56
  br label %67

; <label>:67:                                     ; preds = %131, %66
  %68 = load %struct.comp*, %struct.comp** %4, align 8
  %69 = getelementptr inbounds %struct.comp, %struct.comp* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 93
  br label %78

; <label>:78:                                     ; preds = %75, %67
  %79 = phi i1 [ false, %67 ], [ %77, %75 ]
  br i1 %79, label %80, label %132

; <label>:80:                                     ; preds = %78
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 45
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %80
  %84 = load %struct.comp*, %struct.comp** %4, align 8
  %85 = load i32, i32* %10, align 4
  call void @regc(%struct.comp* %84, i32 %85)
  br label %131

; <label>:86:                                     ; preds = %80
  %87 = load %struct.comp*, %struct.comp** %4, align 8
  %88 = getelementptr inbounds %struct.comp, %struct.comp* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  store i32 %91, i32* %10, align 4
  %92 = icmp eq i32 %91, 93
  br i1 %92, label %96, label %93

; <label>:93:                                     ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %93, %86
  %97 = load %struct.comp*, %struct.comp** %4, align 8
  call void @regc(%struct.comp* %97, i32 45)
  br label %130

; <label>:98:                                     ; preds = %93
  %99 = load %struct.comp*, %struct.comp** %4, align 8
  %100 = getelementptr inbounds %struct.comp, %struct.comp* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 -2
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %10, align 4
  %106 = trunc i32 %105 to i8
  %107 = zext i8 %106 to i32
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %98
  call void @sqd_regerror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  store i8* null, i8** %3, align 8
  br label %244

; <label>:112:                                    ; preds = %98
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %115

; <label>:115:                                    ; preds = %122, %112
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %125

; <label>:119:                                    ; preds = %115
  %120 = load %struct.comp*, %struct.comp** %4, align 8
  %121 = load i32, i32* %8, align 4
  call void @regc(%struct.comp* %120, i32 %121)
  br label %122

; <label>:122:                                    ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %115

; <label>:125:                                    ; preds = %115
  %126 = load %struct.comp*, %struct.comp** %4, align 8
  %127 = getelementptr inbounds %struct.comp, %struct.comp* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %127, align 8
  br label %130

; <label>:130:                                    ; preds = %125, %96
  br label %131

; <label>:131:                                    ; preds = %130, %83
  br label %67

; <label>:132:                                    ; preds = %78
  %133 = load %struct.comp*, %struct.comp** %4, align 8
  call void @regc(%struct.comp* %133, i32 0)
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 93
  br i1 %135, label %136, label %137

; <label>:136:                                    ; preds = %132
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0))
  store i8* null, i8** %3, align 8
  br label %244

; <label>:137:                                    ; preds = %132
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, 3
  store i32 %140, i32* %138, align 4
  br label %242

; <label>:141:                                    ; preds = %2
  %142 = load %struct.comp*, %struct.comp** %4, align 8
  %143 = call i8* @reg(%struct.comp* %142, i32 1, i32* %7)
  store i8* %143, i8** %6, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %147

; <label>:146:                                    ; preds = %141
  store i8* null, i8** %3, align 8
  br label %244

; <label>:147:                                    ; preds = %141
  %148 = load i32, i32* %7, align 4
  %149 = and i32 %148, 5
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %242

; <label>:153:                                    ; preds = %2, %2, %2
  call void @sqd_regerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0))
  store i8* null, i8** %3, align 8
  br label %244

; <label>:154:                                    ; preds = %2, %2, %2
  call void @sqd_regerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0))
  store i8* null, i8** %3, align 8
  br label %244

; <label>:155:                                    ; preds = %2
  %156 = load %struct.comp*, %struct.comp** %4, align 8
  %157 = getelementptr inbounds %struct.comp, %struct.comp* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

; <label>:162:                                    ; preds = %155
  call void @sqd_regerror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0))
  store i8* null, i8** %3, align 8
  br label %244

; <label>:163:                                    ; preds = %155
  %164 = load %struct.comp*, %struct.comp** %4, align 8
  %165 = call i8* @regnode(%struct.comp* %164, i32 8)
  store i8* %165, i8** %6, align 8
  %166 = load %struct.comp*, %struct.comp** %4, align 8
  %167 = load %struct.comp*, %struct.comp** %4, align 8
  %168 = getelementptr inbounds %struct.comp, %struct.comp* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %168, align 8
  %171 = load i8, i8* %169, align 1
  %172 = sext i8 %171 to i32
  call void @regc(%struct.comp* %166, i32 %172)
  %173 = load %struct.comp*, %struct.comp** %4, align 8
  call void @regc(%struct.comp* %173, i32 0)
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, 3
  store i32 %176, i32* %174, align 4
  br label %242

; <label>:177:                                    ; preds = %2
  %178 = load %struct.comp*, %struct.comp** %4, align 8
  %179 = getelementptr inbounds %struct.comp, %struct.comp* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 -1
  store i8* %181, i8** %179, align 8
  %182 = load %struct.comp*, %struct.comp** %4, align 8
  %183 = getelementptr inbounds %struct.comp, %struct.comp* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @strcspn(i8* %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #8
  store i64 %185, i64* %11, align 8
  %186 = load i64, i64* %11, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

; <label>:188:                                    ; preds = %177
  call void @sqd_regerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
  store i8* null, i8** %3, align 8
  br label %244

; <label>:189:                                    ; preds = %177
  %190 = load %struct.comp*, %struct.comp** %4, align 8
  %191 = getelementptr inbounds %struct.comp, %struct.comp* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i64, i64* %11, align 8
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  %195 = load i8, i8* %194, align 1
  store i8 %195, i8* %12, align 1
  %196 = load i64, i64* %11, align 8
  %197 = icmp ugt i64 %196, 1
  br i1 %197, label %198, label %213

; <label>:198:                                    ; preds = %189
  %199 = load i8, i8* %12, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 42
  br i1 %201, label %210, label %202

; <label>:202:                                    ; preds = %198
  %203 = load i8, i8* %12, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 43
  br i1 %205, label %210, label %206

; <label>:206:                                    ; preds = %202
  %207 = load i8, i8* %12, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 63
  br i1 %209, label %210, label %213

; <label>:210:                                    ; preds = %206, %202, %198
  %211 = load i64, i64* %11, align 8
  %212 = add i64 %211, -1
  store i64 %212, i64* %11, align 8
  br label %213

; <label>:213:                                    ; preds = %210, %206, %189
  %214 = load i32*, i32** %5, align 8
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, 1
  store i32 %216, i32* %214, align 4
  %217 = load i64, i64* %11, align 8
  %218 = icmp eq i64 %217, 1
  br i1 %218, label %219, label %223

; <label>:219:                                    ; preds = %213
  %220 = load i32*, i32** %5, align 8
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, 2
  store i32 %222, i32* %220, align 4
  br label %223

; <label>:223:                                    ; preds = %219, %213
  %224 = load %struct.comp*, %struct.comp** %4, align 8
  %225 = call i8* @regnode(%struct.comp* %224, i32 8)
  store i8* %225, i8** %6, align 8
  br label %226

; <label>:226:                                    ; preds = %237, %223
  %227 = load i64, i64* %11, align 8
  %228 = icmp ugt i64 %227, 0
  br i1 %228, label %229, label %240

; <label>:229:                                    ; preds = %226
  %230 = load %struct.comp*, %struct.comp** %4, align 8
  %231 = load %struct.comp*, %struct.comp** %4, align 8
  %232 = getelementptr inbounds %struct.comp, %struct.comp* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %232, align 8
  %235 = load i8, i8* %233, align 1
  %236 = sext i8 %235 to i32
  call void @regc(%struct.comp* %230, i32 %236)
  br label %237

; <label>:237:                                    ; preds = %229
  %238 = load i64, i64* %11, align 8
  %239 = add i64 %238, -1
  store i64 %239, i64* %11, align 8
  br label %226

; <label>:240:                                    ; preds = %226
  %241 = load %struct.comp*, %struct.comp** %4, align 8
  call void @regc(%struct.comp* %241, i32 0)
  br label %242

; <label>:242:                                    ; preds = %240, %163, %147, %137, %26, %23, %20
  %243 = load i8*, i8** %6, align 8
  store i8* %243, i8** %3, align 8
  br label %244

; <label>:244:                                    ; preds = %242, %188, %162, %154, %153, %146, %136, %111
  %245 = load i8*, i8** %3, align 8
  ret i8* %245
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reginsert(%struct.comp*, i32, i8*) #0 {
  %4 = alloca %struct.comp*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = trunc i32 %1 to i8
  store %struct.comp* %0, %struct.comp** %4, align 8
  store i8 %8, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %9 = load %struct.comp*, %struct.comp** %4, align 8
  %10 = getelementptr inbounds %struct.comp, %struct.comp* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.comp*, %struct.comp** %4, align 8
  %13 = getelementptr inbounds %struct.comp, %struct.comp* %12, i32 0, i32 3
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i32 0, i32 0
  %15 = icmp ne i8* %11, %14
  br i1 %15, label %21, label %16

; <label>:16:                                     ; preds = %3
  %17 = load %struct.comp*, %struct.comp** %4, align 8
  %18 = getelementptr inbounds %struct.comp, %struct.comp* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 3
  store i64 %20, i64* %18, align 8
  br label %44

; <label>:21:                                     ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.comp*, %struct.comp** %4, align 8
  %26 = getelementptr inbounds %struct.comp, %struct.comp* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %23, i8* %24, i64 %31, i32 1, i1 false)
  %32 = load %struct.comp*, %struct.comp** %4, align 8
  %33 = getelementptr inbounds %struct.comp, %struct.comp* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8* %35, i8** %33, align 8
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %7, align 8
  %37 = load i8, i8* %5, align 1
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 %37, i8* %38, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  store i8 0, i8* %40, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  store i8 0, i8* %42, align 1
  br label %44

; <label>:44:                                     ; preds = %21, %16
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmatch(%struct.exec*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.exec* %0, %struct.exec** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %6, align 8
  br label %20

; <label>:20:                                     ; preds = %303, %2
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %305

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @regnext(i8* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %301 [
    i32 1, label %29
    i32 2, label %39
    i32 3, label %48
    i32 8, label %61
    i32 4, label %94
    i32 5, label %117
    i32 9, label %140
    i32 7, label %141
    i32 21, label %142
    i32 22, label %142
    i32 23, label %142
    i32 24, label %142
    i32 25, label %142
    i32 26, label %142
    i32 27, label %142
    i32 28, label %142
    i32 29, label %142
    i32 31, label %173
    i32 32, label %173
    i32 33, label %173
    i32 34, label %173
    i32 35, label %173
    i32 36, label %173
    i32 37, label %173
    i32 38, label %173
    i32 39, label %173
    i32 6, label %204
    i32 10, label %236
    i32 11, label %236
    i32 0, label %300
  ]

; <label>:29:                                     ; preds = %23
  %30 = load %struct.exec*, %struct.exec** %4, align 8
  %31 = getelementptr inbounds %struct.exec, %struct.exec* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.exec*, %struct.exec** %4, align 8
  %34 = getelementptr inbounds %struct.exec, %struct.exec* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %32, %35
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %29
  store i32 0, i32* %3, align 4
  br label %306

; <label>:38:                                     ; preds = %29
  br label %302

; <label>:39:                                     ; preds = %23
  %40 = load %struct.exec*, %struct.exec** %4, align 8
  %41 = getelementptr inbounds %struct.exec, %struct.exec* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %39
  store i32 0, i32* %3, align 4
  br label %306

; <label>:47:                                     ; preds = %39
  br label %302

; <label>:48:                                     ; preds = %23
  %49 = load %struct.exec*, %struct.exec** %4, align 8
  %50 = getelementptr inbounds %struct.exec, %struct.exec* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %48
  store i32 0, i32* %3, align 4
  br label %306

; <label>:56:                                     ; preds = %48
  %57 = load %struct.exec*, %struct.exec** %4, align 8
  %58 = getelementptr inbounds %struct.exec, %struct.exec* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %58, align 8
  br label %302

; <label>:61:                                     ; preds = %23
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load %struct.exec*, %struct.exec** %4, align 8
  %68 = getelementptr inbounds %struct.exec, %struct.exec* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %66, %71
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %61
  store i32 0, i32* %3, align 4
  br label %306

; <label>:74:                                     ; preds = %61
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @strlen(i8* %75) #8
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ugt i64 %77, 1
  br i1 %78, label %79, label %88

; <label>:79:                                     ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.exec*, %struct.exec** %4, align 8
  %82 = getelementptr inbounds %struct.exec, %struct.exec* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @strncmp(i8* %80, i8* %83, i64 %84) #8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %79
  store i32 0, i32* %3, align 4
  br label %306

; <label>:88:                                     ; preds = %79, %74
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.exec*, %struct.exec** %4, align 8
  %91 = getelementptr inbounds %struct.exec, %struct.exec* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %89
  store i8* %93, i8** %91, align 8
  br label %302

; <label>:94:                                     ; preds = %23
  %95 = load %struct.exec*, %struct.exec** %4, align 8
  %96 = getelementptr inbounds %struct.exec, %struct.exec* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %111, label %101

; <label>:101:                                    ; preds = %94
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  %104 = load %struct.exec*, %struct.exec** %4, align 8
  %105 = getelementptr inbounds %struct.exec, %struct.exec* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = call i8* @strchr(i8* %103, i32 %108) #8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %101, %94
  store i32 0, i32* %3, align 4
  br label %306

; <label>:112:                                    ; preds = %101
  %113 = load %struct.exec*, %struct.exec** %4, align 8
  %114 = getelementptr inbounds %struct.exec, %struct.exec* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %114, align 8
  br label %302

; <label>:117:                                    ; preds = %23
  %118 = load %struct.exec*, %struct.exec** %4, align 8
  %119 = getelementptr inbounds %struct.exec, %struct.exec* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %134, label %124

; <label>:124:                                    ; preds = %117
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 3
  %127 = load %struct.exec*, %struct.exec** %4, align 8
  %128 = getelementptr inbounds %struct.exec, %struct.exec* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = call i8* @strchr(i8* %126, i32 %131) #8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %135

; <label>:134:                                    ; preds = %124, %117
  store i32 0, i32* %3, align 4
  br label %306

; <label>:135:                                    ; preds = %124
  %136 = load %struct.exec*, %struct.exec** %4, align 8
  %137 = getelementptr inbounds %struct.exec, %struct.exec* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %137, align 8
  br label %302

; <label>:140:                                    ; preds = %23
  br label %302

; <label>:141:                                    ; preds = %23
  br label %302

; <label>:142:                                    ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23
  %143 = load i8*, i8** %6, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = sub nsw i32 %145, 20
  store i32 %146, i32* %10, align 4
  %147 = load %struct.exec*, %struct.exec** %4, align 8
  %148 = getelementptr inbounds %struct.exec, %struct.exec* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %11, align 8
  %150 = load %struct.exec*, %struct.exec** %4, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @regmatch(%struct.exec* %150, i8* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %172

; <label>:154:                                    ; preds = %142
  %155 = load %struct.exec*, %struct.exec** %4, align 8
  %156 = getelementptr inbounds %struct.exec, %struct.exec* %155, i32 0, i32 2
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %171

; <label>:163:                                    ; preds = %154
  %164 = load i8*, i8** %11, align 8
  %165 = load %struct.exec*, %struct.exec** %4, align 8
  %166 = getelementptr inbounds %struct.exec, %struct.exec* %165, i32 0, i32 2
  %167 = load i8**, i8*** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* %164, i8** %170, align 8
  br label %171

; <label>:171:                                    ; preds = %163, %154
  store i32 1, i32* %3, align 4
  br label %306

; <label>:172:                                    ; preds = %142
  store i32 0, i32* %3, align 4
  br label %306

; <label>:173:                                    ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23
  %174 = load i8*, i8** %6, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = sub nsw i32 %176, 30
  store i32 %177, i32* %12, align 4
  %178 = load %struct.exec*, %struct.exec** %4, align 8
  %179 = getelementptr inbounds %struct.exec, %struct.exec* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %13, align 8
  %181 = load %struct.exec*, %struct.exec** %4, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = call i32 @regmatch(%struct.exec* %181, i8* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %203

; <label>:185:                                    ; preds = %173
  %186 = load %struct.exec*, %struct.exec** %4, align 8
  %187 = getelementptr inbounds %struct.exec, %struct.exec* %186, i32 0, i32 3
  %188 = load i8**, i8*** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %202

; <label>:194:                                    ; preds = %185
  %195 = load i8*, i8** %13, align 8
  %196 = load %struct.exec*, %struct.exec** %4, align 8
  %197 = getelementptr inbounds %struct.exec, %struct.exec* %196, i32 0, i32 3
  %198 = load i8**, i8*** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  store i8* %195, i8** %201, align 8
  br label %202

; <label>:202:                                    ; preds = %194, %185
  store i32 1, i32* %3, align 4
  br label %306

; <label>:203:                                    ; preds = %173
  store i32 0, i32* %3, align 4
  br label %306

; <label>:204:                                    ; preds = %23
  %205 = load %struct.exec*, %struct.exec** %4, align 8
  %206 = getelementptr inbounds %struct.exec, %struct.exec* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %14, align 8
  %208 = load i8*, i8** %7, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 6
  br i1 %211, label %212, label %215

; <label>:212:                                    ; preds = %204
  %213 = load i8*, i8** %6, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 3
  store i8* %214, i8** %7, align 8
  br label %235

; <label>:215:                                    ; preds = %204
  br label %216

; <label>:216:                                    ; preds = %228, %215
  %217 = load i8*, i8** %6, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 6
  br i1 %220, label %221, label %234

; <label>:221:                                    ; preds = %216
  %222 = load %struct.exec*, %struct.exec** %4, align 8
  %223 = load i8*, i8** %6, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 3
  %225 = call i32 @regmatch(%struct.exec* %222, i8* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

; <label>:227:                                    ; preds = %221
  store i32 1, i32* %3, align 4
  br label %306

; <label>:228:                                    ; preds = %221
  %229 = load i8*, i8** %14, align 8
  %230 = load %struct.exec*, %struct.exec** %4, align 8
  %231 = getelementptr inbounds %struct.exec, %struct.exec* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** %6, align 8
  %233 = call i8* @regnext(i8* %232)
  store i8* %233, i8** %6, align 8
  br label %216

; <label>:234:                                    ; preds = %216
  store i32 0, i32* %3, align 4
  br label %306

; <label>:235:                                    ; preds = %212
  br label %302

; <label>:236:                                    ; preds = %23, %23
  %237 = load i8*, i8** %7, align 8
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 8
  br i1 %240, label %241, label %246

; <label>:241:                                    ; preds = %236
  %242 = load i8*, i8** %7, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 3
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  br label %247

; <label>:246:                                    ; preds = %236
  br label %247

; <label>:247:                                    ; preds = %246, %241
  %248 = phi i32 [ %245, %241 ], [ 0, %246 ]
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %15, align 1
  %250 = load %struct.exec*, %struct.exec** %4, align 8
  %251 = getelementptr inbounds %struct.exec, %struct.exec* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  store i8* %252, i8** %17, align 8
  %253 = load i8*, i8** %6, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 10
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 0, i32 1
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %18, align 8
  %260 = load %struct.exec*, %struct.exec** %4, align 8
  %261 = load i8*, i8** %6, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 3
  %263 = call i64 @regrepeat(%struct.exec* %260, i8* %262)
  %264 = add i64 %263, 1
  store i64 %264, i64* %16, align 8
  br label %265

; <label>:265:                                    ; preds = %296, %247
  %266 = load i64, i64* %16, align 8
  %267 = load i64, i64* %18, align 8
  %268 = icmp ugt i64 %266, %267
  br i1 %268, label %269, label %299

; <label>:269:                                    ; preds = %265
  %270 = load i8*, i8** %17, align 8
  %271 = load i64, i64* %16, align 8
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  %273 = getelementptr inbounds i8, i8* %272, i64 -1
  %274 = load %struct.exec*, %struct.exec** %4, align 8
  %275 = getelementptr inbounds %struct.exec, %struct.exec* %274, i32 0, i32 0
  store i8* %273, i8** %275, align 8
  %276 = load i8, i8* %15, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %288, label %279

; <label>:279:                                    ; preds = %269
  %280 = load %struct.exec*, %struct.exec** %4, align 8
  %281 = getelementptr inbounds %struct.exec, %struct.exec* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = load i8, i8* %15, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %284, %286
  br i1 %287, label %288, label %295

; <label>:288:                                    ; preds = %279, %269
  %289 = load %struct.exec*, %struct.exec** %4, align 8
  %290 = load i8*, i8** %7, align 8
  %291 = call i32 @regmatch(%struct.exec* %289, i8* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

; <label>:293:                                    ; preds = %288
  store i32 1, i32* %3, align 4
  br label %306

; <label>:294:                                    ; preds = %288
  br label %295

; <label>:295:                                    ; preds = %294, %279
  br label %296

; <label>:296:                                    ; preds = %295
  %297 = load i64, i64* %16, align 8
  %298 = add i64 %297, -1
  store i64 %298, i64* %16, align 8
  br label %265

; <label>:299:                                    ; preds = %265
  store i32 0, i32* %3, align 4
  br label %306

; <label>:300:                                    ; preds = %23
  store i32 1, i32* %3, align 4
  br label %306

; <label>:301:                                    ; preds = %23
  call void @sqd_regerror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %306

; <label>:302:                                    ; preds = %235, %141, %140, %135, %112, %88, %56, %47, %38
  br label %303

; <label>:303:                                    ; preds = %302
  %304 = load i8*, i8** %7, align 8
  store i8* %304, i8** %6, align 8
  br label %20

; <label>:305:                                    ; preds = %20
  call void @sqd_regerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %306

; <label>:306:                                    ; preds = %305, %301, %300, %299, %293, %234, %227, %203, %202, %172, %171, %134, %111, %87, %73, %55, %46, %37
  %307 = load i32, i32* %3, align 4
  ret i32 %307
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @regrepeat(%struct.exec*, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.exec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.exec* %0, %struct.exec** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %53 [
    i32 3, label %12
    i32 8, label %17
    i32 4, label %39
    i32 5, label %46
  ]

; <label>:12:                                     ; preds = %2
  %13 = load %struct.exec*, %struct.exec** %4, align 8
  %14 = getelementptr inbounds %struct.exec, %struct.exec* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strlen(i8* %15) #8
  store i64 %16, i64* %3, align 8
  br label %54

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  store i64 0, i64* %6, align 8
  %21 = load %struct.exec*, %struct.exec** %4, align 8
  %22 = getelementptr inbounds %struct.exec, %struct.exec* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  br label %24

; <label>:24:                                     ; preds = %34, %17
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* %8, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %34

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  br label %24

; <label>:37:                                     ; preds = %24
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %54

; <label>:39:                                     ; preds = %2
  %40 = load %struct.exec*, %struct.exec** %4, align 8
  %41 = getelementptr inbounds %struct.exec, %struct.exec* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  %45 = call i64 @strspn(i8* %42, i8* %44) #8
  store i64 %45, i64* %3, align 8
  br label %54

; <label>:46:                                     ; preds = %2
  %47 = load %struct.exec*, %struct.exec** %4, align 8
  %48 = getelementptr inbounds %struct.exec, %struct.exec* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  %52 = call i64 @strcspn(i8* %49, i8* %51) #8
  store i64 %52, i64* %3, align 8
  br label %54

; <label>:53:                                     ; preds = %2
  call void @sqd_regerror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0))
  store i64 0, i64* %3, align 8
  br label %54

; <label>:54:                                     ; preds = %53, %46, %39, %37, %12
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
