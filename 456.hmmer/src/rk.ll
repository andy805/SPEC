; ModuleID = 'rk.c'
source_filename = "rk.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i64 @rkcomp(i8*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [17 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) #3
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ugt i64 %11, 16
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  store i64 0, i64* %2, align 8
  br label %53

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i32 0, i32 0
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @seqencode(i8* %15, i8* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %14
  store i64 0, i64* %2, align 8
  br label %53

; <label>:20:                                     ; preds = %14
  store i32 0, i32* %7, align 4
  br label %21

; <label>:21:                                     ; preds = %35, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

; <label>:25:                                     ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = shl i64 %26, 4
  store i64 %27, i64* %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %35

; <label>:35:                                     ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %21

; <label>:38:                                     ; preds = %21
  br label %39

; <label>:39:                                     ; preds = %48, %38
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 16
  br i1 %42, label %43, label %51

; <label>:43:                                     ; preds = %39
  %44 = load i64, i64* %4, align 8
  %45 = shl i64 %44, 4
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = or i64 %46, 15
  store i64 %47, i64* %4, align 8
  br label %48

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %39

; <label>:51:                                     ; preds = %39
  %52 = load i64, i64* %4, align 8
  store i64 %52, i64* %2, align 8
  br label %53

; <label>:53:                                     ; preds = %51, %19, %13
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @seqencode(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @rkseq(i64, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %9

; <label>:9:                                      ; preds = %30, %2
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %33

; <label>:12:                                     ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %12
  br label %33

; <label>:20:                                     ; preds = %12
  %21 = load i64, i64* %8, align 8
  %22 = shl i64 %21, 4
  store i64 %22, i64* %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %8, align 8
  br label %30

; <label>:30:                                     ; preds = %20
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %9

; <label>:33:                                     ; preds = %19, %9
  br label %34

; <label>:34:                                     ; preds = %52, %33
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

; <label>:43:                                     ; preds = %34
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %43
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %89

; <label>:52:                                     ; preds = %43
  %53 = load i64, i64* %8, align 8
  %54 = shl i64 %53, 4
  store i64 %54, i64* %8, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 16
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i64
  %61 = load i64, i64* %8, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %34

; <label>:65:                                     ; preds = %34
  store i64 0, i64* %6, align 8
  br label %66

; <label>:66:                                     ; preds = %85, %65
  %67 = load i64, i64* %6, align 8
  %68 = icmp ult i64 %67, 16
  br i1 %68, label %69, label %88

; <label>:69:                                     ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = or i64 %70, 15
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %8, align 8
  %74 = and i64 %72, %73
  %75 = load i64, i64* %8, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %69
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %89

; <label>:80:                                     ; preds = %69
  %81 = load i64, i64* %8, align 8
  %82 = shl i64 %81, 4
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %85

; <label>:85:                                     ; preds = %80
  %86 = load i64, i64* %6, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %66

; <label>:88:                                     ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %89

; <label>:89:                                     ; preds = %88, %77, %49
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
