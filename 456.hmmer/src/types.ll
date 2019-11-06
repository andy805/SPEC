; ModuleID = 'types.c'
source_filename = "types.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@squid_errno = external global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @IsInt(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 6, i32* @squid_errno, align 4
  store i32 0, i32* %2, align 4
  br label %122

; <label>:8:                                      ; preds = %1
  br label %9

; <label>:9:                                      ; preds = %21, %8
  %10 = call i16** @__ctype_b_loc() #3
  %11 = load i16*, i16** %10, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %11, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 8192
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %9
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  br label %9

; <label>:24:                                     ; preds = %9
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %34, label %29

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %29, %24
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  br label %37

; <label>:37:                                     ; preds = %34, %29
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strlen(i8* %42) #4
  %44 = trunc i64 %43 to i32
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %55, label %46

; <label>:46:                                     ; preds = %41, %37
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 2) #4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

; <label>:50:                                     ; preds = %46
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @strlen(i8* %51) #4
  %53 = trunc i64 %52 to i32
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %50, %41
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %57, i8** %3, align 8
  store i32 1, i32* %4, align 4
  br label %72

; <label>:58:                                     ; preds = %50, %46
  %59 = load i8*, i8** %3, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 48
  br i1 %62, label %63, label %71

; <label>:63:                                     ; preds = %58
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @strlen(i8* %64) #4
  %66 = trunc i64 %65 to i32
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %3, align 8
  br label %71

; <label>:71:                                     ; preds = %68, %63, %58
  br label %72

; <label>:72:                                     ; preds = %71, %55
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %98, label %75

; <label>:75:                                     ; preds = %72
  br label %76

; <label>:76:                                     ; preds = %94, %75
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

; <label>:81:                                     ; preds = %76
  %82 = call i16** @__ctype_b_loc() #3
  %83 = load i16*, i16** %82, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %83, i64 %87
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  %91 = and i32 %90, 2048
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

; <label>:93:                                     ; preds = %81
  store i32 0, i32* %2, align 4
  br label %122

; <label>:94:                                     ; preds = %81
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %3, align 8
  br label %76

; <label>:97:                                     ; preds = %76
  br label %121

; <label>:98:                                     ; preds = %72
  br label %99

; <label>:99:                                     ; preds = %117, %98
  %100 = load i8*, i8** %3, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

; <label>:104:                                    ; preds = %99
  %105 = call i16** @__ctype_b_loc() #3
  %106 = load i16*, i16** %105, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i16, i16* %106, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = zext i16 %112 to i32
  %114 = and i32 %113, 4096
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

; <label>:116:                                    ; preds = %104
  store i32 0, i32* %2, align 4
  br label %122

; <label>:117:                                    ; preds = %104
  %118 = load i8*, i8** %3, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %3, align 8
  br label %99

; <label>:120:                                    ; preds = %99
  br label %121

; <label>:121:                                    ; preds = %120, %97
  store i32 1, i32* %2, align 4
  br label %122

; <label>:122:                                    ; preds = %121, %116, %93, %7
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @IsReal(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %140

; <label>:10:                                     ; preds = %1
  br label %11

; <label>:11:                                     ; preds = %23, %10
  %12 = call i16** @__ctype_b_loc() #3
  %13 = load i16*, i16** %12, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %13, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 8192
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %11
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %11

; <label>:26:                                     ; preds = %11
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br i1 %30, label %36, label %31

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 43
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %31, %26
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  br label %39

; <label>:39:                                     ; preds = %36, %31
  br label %40

; <label>:40:                                     ; preds = %111, %39
  %41 = load i8*, i8** %3, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %114

; <label>:45:                                     ; preds = %40
  %46 = call i16** @__ctype_b_loc() #3
  %47 = load i16*, i16** %46, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %47, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 2048
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %111

; <label>:60:                                     ; preds = %45
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 46
  br i1 %64, label %65, label %77

; <label>:65:                                     ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %65
  store i32 0, i32* %2, align 4
  br label %140

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %69
  store i32 0, i32* %2, align 4
  br label %140

; <label>:73:                                     ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %76

; <label>:76:                                     ; preds = %73
  br label %110

; <label>:77:                                     ; preds = %60
  %78 = load i8*, i8** %3, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 101
  br i1 %81, label %87, label %82

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %3, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 69
  br i1 %86, label %87, label %95

; <label>:87:                                     ; preds = %82, %77
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  store i32 0, i32* %2, align 4
  br label %140

; <label>:91:                                     ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %94

; <label>:94:                                     ; preds = %91
  br label %109

; <label>:95:                                     ; preds = %82
  %96 = call i16** @__ctype_b_loc() #3
  %97 = load i16*, i16** %96, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %97, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = and i32 %104, 8192
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %95
  br label %114

; <label>:108:                                    ; preds = %95
  br label %109

; <label>:109:                                    ; preds = %108, %94
  br label %110

; <label>:110:                                    ; preds = %109, %76
  br label %111

; <label>:111:                                    ; preds = %110, %57
  %112 = load i8*, i8** %3, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %3, align 8
  br label %40

; <label>:114:                                    ; preds = %107, %40
  br label %115

; <label>:115:                                    ; preds = %127, %114
  %116 = call i16** @__ctype_b_loc() #3
  %117 = load i16*, i16** %116, align 8
  %118 = load i8*, i8** %3, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i16, i16* %117, i64 %121
  %123 = load i16, i16* %122, align 2
  %124 = zext i16 %123 to i32
  %125 = and i32 %124, 8192
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

; <label>:127:                                    ; preds = %115
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %3, align 8
  br label %115

; <label>:130:                                    ; preds = %115
  %131 = load i8*, i8** %3, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

; <label>:135:                                    ; preds = %130
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

; <label>:138:                                    ; preds = %135
  store i32 1, i32* %2, align 4
  br label %140

; <label>:139:                                    ; preds = %135, %130
  store i32 0, i32* %2, align 4
  br label %140

; <label>:140:                                    ; preds = %139, %138, %90, %72, %68, %9
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

; Function Attrs: noinline nounwind optnone uwtable
define void @Byteswap(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %38, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 %9, 2
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %41

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %13, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %6, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  store i8 %25, i8* %32, align 1
  %33 = load i8, i8* %6, align 1
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  br label %38

; <label>:38:                                     ; preds = %12
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %7

; <label>:41:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i16 @sre_ntoh16(i16 zeroext) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  ret i16 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sre_ntoh32(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i16 @sre_hton16(i16 zeroext) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  ret i16 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sre_hton32(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @sre_ntoh64(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @sre_hton64(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
