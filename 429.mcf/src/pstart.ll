; ModuleID = 'pstart.c'
source_filename = "pstart.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define i64 @primal_start_artificial(%struct.network*) #0 {
  %2 = alloca %struct.network*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.arc*, align 8
  %6 = alloca i8*, align 8
  store %struct.network* %0, %struct.network** %2, align 8
  %7 = load %struct.network*, %struct.network** %2, align 8
  %8 = getelementptr inbounds %struct.network, %struct.network* %7, i32 0, i32 21
  %9 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %9, %struct.node** %3, align 8
  store %struct.node* %9, %struct.node** %4, align 8
  %10 = load %struct.node*, %struct.node** %3, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 1
  store %struct.node* %11, %struct.node** %3, align 8
  %12 = load %struct.node*, %struct.node** %4, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 6
  store %struct.arc* null, %struct.arc** %13, align 8
  %14 = load %struct.node*, %struct.node** %4, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 3
  store %struct.node* null, %struct.node** %15, align 8
  %16 = load %struct.node*, %struct.node** %3, align 8
  %17 = load %struct.node*, %struct.node** %4, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 2
  store %struct.node* %16, %struct.node** %18, align 8
  %19 = load %struct.node*, %struct.node** %4, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 4
  store %struct.node* null, %struct.node** %20, align 8
  %21 = load %struct.node*, %struct.node** %4, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 5
  store %struct.node* null, %struct.node** %22, align 8
  %23 = load %struct.network*, %struct.network** %2, align 8
  %24 = getelementptr inbounds %struct.network, %struct.network* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = load %struct.node*, %struct.node** %4, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 11
  store i64 %26, i64* %28, align 8
  %29 = load %struct.node*, %struct.node** %4, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = load %struct.node*, %struct.node** %4, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 0
  store i64 -100000000, i64* %32, align 8
  %33 = load %struct.node*, %struct.node** %4, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 10
  store i64 0, i64* %34, align 8
  %35 = load %struct.network*, %struct.network** %2, align 8
  %36 = getelementptr inbounds %struct.network, %struct.network* %35, i32 0, i32 24
  %37 = load %struct.arc*, %struct.arc** %36, align 8
  %38 = bitcast %struct.arc* %37 to i8*
  store i8* %38, i8** %6, align 8
  %39 = load %struct.network*, %struct.network** %2, align 8
  %40 = getelementptr inbounds %struct.network, %struct.network* %39, i32 0, i32 23
  %41 = load %struct.arc*, %struct.arc** %40, align 8
  store %struct.arc* %41, %struct.arc** %5, align 8
  br label %42

; <label>:42:                                     ; preds = %56, %1
  %43 = load %struct.arc*, %struct.arc** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = bitcast i8* %44 to %struct.arc*
  %46 = icmp ne %struct.arc* %43, %45
  br i1 %46, label %47, label %59

; <label>:47:                                     ; preds = %42
  %48 = load %struct.arc*, %struct.arc** %5, align 8
  %49 = getelementptr inbounds %struct.arc, %struct.arc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %47
  %53 = load %struct.arc*, %struct.arc** %5, align 8
  %54 = getelementptr inbounds %struct.arc, %struct.arc* %53, i32 0, i32 3
  store i32 1, i32* %54, align 8
  br label %55

; <label>:55:                                     ; preds = %52, %47
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load %struct.arc*, %struct.arc** %5, align 8
  %58 = getelementptr inbounds %struct.arc, %struct.arc* %57, i32 1
  store %struct.arc* %58, %struct.arc** %5, align 8
  br label %42

; <label>:59:                                     ; preds = %42
  %60 = load %struct.network*, %struct.network** %2, align 8
  %61 = getelementptr inbounds %struct.network, %struct.network* %60, i32 0, i32 25
  %62 = load %struct.arc*, %struct.arc** %61, align 8
  store %struct.arc* %62, %struct.arc** %5, align 8
  %63 = load %struct.network*, %struct.network** %2, align 8
  %64 = getelementptr inbounds %struct.network, %struct.network* %63, i32 0, i32 22
  %65 = load %struct.node*, %struct.node** %64, align 8
  %66 = bitcast %struct.node* %65 to i8*
  store i8* %66, i8** %6, align 8
  br label %67

; <label>:67:                                     ; preds = %107, %59
  %68 = load %struct.node*, %struct.node** %3, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = bitcast i8* %69 to %struct.node*
  %71 = icmp ne %struct.node* %68, %70
  br i1 %71, label %72, label %112

; <label>:72:                                     ; preds = %67
  %73 = load %struct.arc*, %struct.arc** %5, align 8
  %74 = load %struct.node*, %struct.node** %3, align 8
  %75 = getelementptr inbounds %struct.node, %struct.node* %74, i32 0, i32 6
  store %struct.arc* %73, %struct.arc** %75, align 8
  %76 = load %struct.node*, %struct.node** %4, align 8
  %77 = load %struct.node*, %struct.node** %3, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 3
  store %struct.node* %76, %struct.node** %78, align 8
  %79 = load %struct.node*, %struct.node** %3, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 2
  store %struct.node* null, %struct.node** %80, align 8
  %81 = load %struct.node*, %struct.node** %3, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i64 1
  %83 = load %struct.node*, %struct.node** %3, align 8
  %84 = getelementptr inbounds %struct.node, %struct.node* %83, i32 0, i32 4
  store %struct.node* %82, %struct.node** %84, align 8
  %85 = load %struct.node*, %struct.node** %3, align 8
  %86 = getelementptr inbounds %struct.node, %struct.node* %85, i64 -1
  %87 = load %struct.node*, %struct.node** %3, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 5
  store %struct.node* %86, %struct.node** %88, align 8
  %89 = load %struct.node*, %struct.node** %3, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 11
  store i64 1, i64* %90, align 8
  %91 = load %struct.arc*, %struct.arc** %5, align 8
  %92 = getelementptr inbounds %struct.arc, %struct.arc* %91, i32 0, i32 0
  store i64 100000000, i64* %92, align 8
  %93 = load %struct.arc*, %struct.arc** %5, align 8
  %94 = getelementptr inbounds %struct.arc, %struct.arc* %93, i32 0, i32 3
  store i32 0, i32* %94, align 8
  %95 = load %struct.node*, %struct.node** %3, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 1
  store i32 1, i32* %96, align 8
  %97 = load %struct.node*, %struct.node** %3, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.node*, %struct.node** %3, align 8
  %100 = load %struct.arc*, %struct.arc** %5, align 8
  %101 = getelementptr inbounds %struct.arc, %struct.arc* %100, i32 0, i32 1
  store %struct.node* %99, %struct.node** %101, align 8
  %102 = load %struct.node*, %struct.node** %4, align 8
  %103 = load %struct.arc*, %struct.arc** %5, align 8
  %104 = getelementptr inbounds %struct.arc, %struct.arc* %103, i32 0, i32 2
  store %struct.node* %102, %struct.node** %104, align 8
  %105 = load %struct.node*, %struct.node** %3, align 8
  %106 = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 10
  store i64 0, i64* %106, align 8
  br label %107

; <label>:107:                                    ; preds = %72
  %108 = load %struct.arc*, %struct.arc** %5, align 8
  %109 = getelementptr inbounds %struct.arc, %struct.arc* %108, i32 1
  store %struct.arc* %109, %struct.arc** %5, align 8
  %110 = load %struct.node*, %struct.node** %3, align 8
  %111 = getelementptr inbounds %struct.node, %struct.node* %110, i32 1
  store %struct.node* %111, %struct.node** %3, align 8
  br label %67

; <label>:112:                                    ; preds = %67
  %113 = load %struct.node*, %struct.node** %3, align 8
  %114 = getelementptr inbounds %struct.node, %struct.node* %113, i32 -1
  store %struct.node* %114, %struct.node** %3, align 8
  %115 = load %struct.node*, %struct.node** %4, align 8
  %116 = getelementptr inbounds %struct.node, %struct.node* %115, i32 1
  store %struct.node* %116, %struct.node** %4, align 8
  %117 = load %struct.node*, %struct.node** %3, align 8
  %118 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 4
  store %struct.node* null, %struct.node** %118, align 8
  %119 = load %struct.node*, %struct.node** %4, align 8
  %120 = getelementptr inbounds %struct.node, %struct.node* %119, i32 0, i32 5
  store %struct.node* null, %struct.node** %120, align 8
  ret i64 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
