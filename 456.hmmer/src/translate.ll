; ModuleID = 'translate.c'
source_filename = "translate.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@squid_errno = external global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @Translate(i8*, i8**) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 2, i32* @squid_errno, align 4
  store i8* null, i8** %3, align 8
  br label %97

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14) #4
  %16 = add i64 %15, 1
  %17 = call noalias i8* @calloc(i64 %16, i64 1) #5
  store i8* %17, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %13
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %20

; <label>:20:                                     ; preds = %19, %13
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %8, align 8
  br label %22

; <label>:22:                                     ; preds = %92, %20
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %27
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br label %39

; <label>:39:                                     ; preds = %33, %27, %22
  %40 = phi i1 [ false, %27 ], [ false, %22 ], [ %38, %33 ]
  br i1 %40, label %41, label %95

; <label>:41:                                     ; preds = %39
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %42

; <label>:42:                                     ; preds = %73, %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %76

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 4
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %67 [
    i32 65, label %54
    i32 97, label %54
    i32 67, label %55
    i32 99, label %55
    i32 71, label %58
    i32 103, label %58
    i32 84, label %61
    i32 116, label %61
    i32 85, label %64
    i32 117, label %64
  ]

; <label>:54:                                     ; preds = %45, %45
  br label %68

; <label>:55:                                     ; preds = %45, %45
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %68

; <label>:58:                                     ; preds = %45, %45
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %6, align 4
  br label %68

; <label>:61:                                     ; preds = %45, %45
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 3
  store i32 %63, i32* %6, align 4
  br label %68

; <label>:64:                                     ; preds = %45, %45
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 3
  store i32 %66, i32* %6, align 4
  br label %68

; <label>:67:                                     ; preds = %45
  store i32 64, i32* %6, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %64, %61, %58, %55, %54
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 64
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  br label %76

; <label>:72:                                     ; preds = %68
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %42

; <label>:76:                                     ; preds = %71, %42
  %77 = load i8*, i8** %8, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @strcpy(i8* %77, i8* %82) #5
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strlen(i8* %88) #4
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %8, align 8
  br label %92

; <label>:92:                                     ; preds = %76
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  store i8* %94, i8** %4, align 8
  br label %22

; <label>:95:                                     ; preds = %39
  %96 = load i8*, i8** %7, align 8
  store i8* %96, i8** %3, align 8
  br label %97

; <label>:97:                                     ; preds = %95, %12
  %98 = load i8*, i8** %3, align 8
  ret i8* %98
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @Die(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
