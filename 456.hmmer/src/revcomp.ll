; ModuleID = 'revcomp.c'
source_filename = "revcomp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i8* @revcomp(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %75

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  store i8* null, i8** %3, align 8
  br label %75

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @StrReverse(i8* %16, i8* %17)
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  br label %20

; <label>:20:                                     ; preds = %70, %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %73

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %7, align 1
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 @sre_toupper(i32 %29)
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %7, align 1
  %32 = load i8, i8* %7, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %49 [
    i32 65, label %34
    i32 67, label %35
    i32 71, label %36
    i32 84, label %37
    i32 85, label %38
    i32 82, label %39
    i32 89, label %40
    i32 77, label %41
    i32 75, label %42
    i32 83, label %43
    i32 87, label %44
    i32 72, label %45
    i32 68, label %46
    i32 66, label %47
    i32 86, label %48
  ]

; <label>:34:                                     ; preds = %25
  store i8 84, i8* %7, align 1
  br label %50

; <label>:35:                                     ; preds = %25
  store i8 71, i8* %7, align 1
  br label %50

; <label>:36:                                     ; preds = %25
  store i8 67, i8* %7, align 1
  br label %50

; <label>:37:                                     ; preds = %25
  store i8 65, i8* %7, align 1
  br label %50

; <label>:38:                                     ; preds = %25
  store i8 65, i8* %7, align 1
  br label %50

; <label>:39:                                     ; preds = %25
  store i8 89, i8* %7, align 1
  br label %50

; <label>:40:                                     ; preds = %25
  store i8 82, i8* %7, align 1
  br label %50

; <label>:41:                                     ; preds = %25
  store i8 75, i8* %7, align 1
  br label %50

; <label>:42:                                     ; preds = %25
  store i8 77, i8* %7, align 1
  br label %50

; <label>:43:                                     ; preds = %25
  store i8 83, i8* %7, align 1
  br label %50

; <label>:44:                                     ; preds = %25
  store i8 87, i8* %7, align 1
  br label %50

; <label>:45:                                     ; preds = %25
  store i8 68, i8* %7, align 1
  br label %50

; <label>:46:                                     ; preds = %25
  store i8 72, i8* %7, align 1
  br label %50

; <label>:47:                                     ; preds = %25
  store i8 86, i8* %7, align 1
  br label %50

; <label>:48:                                     ; preds = %25
  store i8 66, i8* %7, align 1
  br label %50

; <label>:49:                                     ; preds = %25
  br label %50

; <label>:50:                                     ; preds = %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34
  %51 = call i16** @__ctype_b_loc() #3
  %52 = load i16*, i16** %51, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %52, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 512
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %50
  %63 = load i8, i8* %7, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 @sre_tolower(i32 %64)
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %7, align 1
  br label %67

; <label>:67:                                     ; preds = %62, %50
  %68 = load i8, i8* %7, align 1
  %69 = load i8*, i8** %6, align 8
  store i8 %68, i8* %69, align 1
  br label %70

; <label>:70:                                     ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  br label %20

; <label>:73:                                     ; preds = %20
  %74 = load i8*, i8** %4, align 8
  store i8* %74, i8** %3, align 8
  br label %75

; <label>:75:                                     ; preds = %73, %14, %10
  %76 = load i8*, i8** %3, align 8
  ret i8* %76
}

declare i32 @StrReverse(i8*, i8*) #1

declare i32 @sre_toupper(i32) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

declare i32 @sre_tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
