; ModuleID = 'draw.c'
source_filename = "draw.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fifty = external global i32, align 4
@move_number = external global i32, align 4
@ply = external global i32, align 4
@hash = external global i32, align 4
@hash_history = external global [600 x i32], align 16

; Function Attrs: noinline nounwind optnone uwtable
define i32 @is_draw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @fifty, align 4
  %7 = icmp sge i32 %6, 4
  br i1 %7, label %8, label %53

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* @move_number, align 4
  %10 = load i32, i32* @move_number, align 4
  %11 = load i32, i32* @ply, align 4
  %12 = add nsw i32 %10, %11
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* @fifty, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp slt i32 %9, %15
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %8
  %18 = load i32, i32* @move_number, align 4
  %19 = load i32, i32* @ply, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @fifty, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  br label %26

; <label>:24:                                     ; preds = %8
  %25 = load i32, i32* @move_number, align 4
  store i32 %25, i32* %4, align 4
  br label %26

; <label>:26:                                     ; preds = %24, %17
  %27 = load i32, i32* @move_number, align 4
  %28 = load i32, i32* @ply, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 3
  store i32 %30, i32* %2, align 4
  br label %31

; <label>:31:                                     ; preds = %49, %26
  %32 = load i32, i32* %2, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sge i32 %35, %36
  br label %38

; <label>:38:                                     ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %52

; <label>:40:                                     ; preds = %38
  %41 = load i32, i32* @hash, align 4
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %40
  store i32 1, i32* %1, align 4
  br label %98

; <label>:48:                                     ; preds = %40
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %2, align 4
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %2, align 4
  br label %31

; <label>:52:                                     ; preds = %38
  br label %53

; <label>:53:                                     ; preds = %52, %0
  %54 = load i32, i32* @fifty, align 4
  %55 = icmp sge i32 %54, 6
  br i1 %55, label %56, label %97

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* @move_number, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @ply, align 4
  %60 = srem i32 %59, 2
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @move_number, align 4
  %63 = load i32, i32* @ply, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* @fifty, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

; <label>:69:                                     ; preds = %93, %56
  %70 = load i32, i32* %2, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp sge i32 %73, %74
  br label %76

; <label>:76:                                     ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %78, label %96

; <label>:78:                                     ; preds = %76
  %79 = load i32, i32* @hash, align 4
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %79, %83
  br i1 %84, label %85, label %88

; <label>:85:                                     ; preds = %78
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %88

; <label>:88:                                     ; preds = %85, %78
  %89 = load i32, i32* %3, align 4
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %92

; <label>:91:                                     ; preds = %88
  store i32 1, i32* %1, align 4
  br label %98

; <label>:92:                                     ; preds = %88
  br label %93

; <label>:93:                                     ; preds = %92
  %94 = load i32, i32* %2, align 4
  %95 = sub nsw i32 %94, 2
  store i32 %95, i32* %2, align 4
  br label %69

; <label>:96:                                     ; preds = %76
  br label %97

; <label>:97:                                     ; preds = %96, %53
  store i32 0, i32* %1, align 4
  br label %98

; <label>:98:                                     ; preds = %97, %91, %47
  %99 = load i32, i32* %1, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
