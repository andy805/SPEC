; ModuleID = 'pbla.c'
source_filename = "pbla.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define %struct.node* @primal_iminus(i64*, i64*, %struct.node*, %struct.node*, %struct.node**) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node**, align 8
  %11 = alloca %struct.node*, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.node* %2, %struct.node** %8, align 8
  store %struct.node* %3, %struct.node** %9, align 8
  store %struct.node** %4, %struct.node*** %10, align 8
  store %struct.node* null, %struct.node** %11, align 8
  br label %12

; <label>:12:                                     ; preds = %122, %5
  %13 = load %struct.node*, %struct.node** %8, align 8
  %14 = load %struct.node*, %struct.node** %9, align 8
  %15 = icmp ne %struct.node* %13, %14
  br i1 %15, label %16, label %123

; <label>:16:                                     ; preds = %12
  %17 = load %struct.node*, %struct.node** %8, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 11
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.node*, %struct.node** %9, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %73

; <label>:24:                                     ; preds = %16
  %25 = load %struct.node*, %struct.node** %8, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

; <label>:29:                                     ; preds = %24
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.node*, %struct.node** %8, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %43

; <label>:36:                                     ; preds = %29
  %37 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %37, %struct.node** %11, align 8
  %38 = load %struct.node*, %struct.node** %8, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %6, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 0, i64* %42, align 8
  br label %43

; <label>:43:                                     ; preds = %36, %29
  br label %69

; <label>:44:                                     ; preds = %24
  %45 = load %struct.node*, %struct.node** %8, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 3
  %47 = load %struct.node*, %struct.node** %46, align 8
  %48 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 3
  %49 = load %struct.node*, %struct.node** %48, align 8
  %50 = icmp ne %struct.node* %49, null
  br i1 %50, label %51, label %68

; <label>:51:                                     ; preds = %44
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.node*, %struct.node** %8, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 10
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 1, %56
  %58 = icmp sgt i64 %53, %57
  br i1 %58, label %59, label %67

; <label>:59:                                     ; preds = %51
  %60 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %60, %struct.node** %11, align 8
  %61 = load %struct.node*, %struct.node** %8, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 10
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 1, %63
  %65 = load i64*, i64** %6, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64*, i64** %7, align 8
  store i64 0, i64* %66, align 8
  br label %67

; <label>:67:                                     ; preds = %59, %51
  br label %68

; <label>:68:                                     ; preds = %67, %44
  br label %69

; <label>:69:                                     ; preds = %68, %43
  %70 = load %struct.node*, %struct.node** %8, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 3
  %72 = load %struct.node*, %struct.node** %71, align 8
  store %struct.node* %72, %struct.node** %8, align 8
  br label %122

; <label>:73:                                     ; preds = %16
  %74 = load %struct.node*, %struct.node** %9, align 8
  %75 = getelementptr inbounds %struct.node, %struct.node* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %93, label %78

; <label>:78:                                     ; preds = %73
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.node*, %struct.node** %9, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %92

; <label>:85:                                     ; preds = %78
  %86 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %86, %struct.node** %11, align 8
  %87 = load %struct.node*, %struct.node** %9, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 10
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64*, i64** %7, align 8
  store i64 1, i64* %91, align 8
  br label %92

; <label>:92:                                     ; preds = %85, %78
  br label %118

; <label>:93:                                     ; preds = %73
  %94 = load %struct.node*, %struct.node** %9, align 8
  %95 = getelementptr inbounds %struct.node, %struct.node* %94, i32 0, i32 3
  %96 = load %struct.node*, %struct.node** %95, align 8
  %97 = getelementptr inbounds %struct.node, %struct.node* %96, i32 0, i32 3
  %98 = load %struct.node*, %struct.node** %97, align 8
  %99 = icmp ne %struct.node* %98, null
  br i1 %99, label %100, label %117

; <label>:100:                                    ; preds = %93
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.node*, %struct.node** %9, align 8
  %104 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 10
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 1, %105
  %107 = icmp sge i64 %102, %106
  br i1 %107, label %108, label %116

; <label>:108:                                    ; preds = %100
  %109 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %109, %struct.node** %11, align 8
  %110 = load %struct.node*, %struct.node** %9, align 8
  %111 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 10
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 1, %112
  %114 = load i64*, i64** %6, align 8
  store i64 %113, i64* %114, align 8
  %115 = load i64*, i64** %7, align 8
  store i64 1, i64* %115, align 8
  br label %116

; <label>:116:                                    ; preds = %108, %100
  br label %117

; <label>:117:                                    ; preds = %116, %93
  br label %118

; <label>:118:                                    ; preds = %117, %92
  %119 = load %struct.node*, %struct.node** %9, align 8
  %120 = getelementptr inbounds %struct.node, %struct.node* %119, i32 0, i32 3
  %121 = load %struct.node*, %struct.node** %120, align 8
  store %struct.node* %121, %struct.node** %9, align 8
  br label %122

; <label>:122:                                    ; preds = %118, %69
  br label %12

; <label>:123:                                    ; preds = %12
  %124 = load %struct.node*, %struct.node** %8, align 8
  %125 = load %struct.node**, %struct.node*** %10, align 8
  store %struct.node* %124, %struct.node** %125, align 8
  %126 = load %struct.node*, %struct.node** %11, align 8
  ret %struct.node* %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
