; ModuleID = 'psimplex.c'
source_filename = "psimplex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define i64 @primal_net_simplex(%struct.network*) #0 {
  %2 = alloca %struct.network*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca %struct.node*, align 8
  %12 = alloca %struct.node*, align 8
  %13 = alloca %struct.arc*, align 8
  %14 = alloca %struct.arc*, align 8
  %15 = alloca %struct.arc*, align 8
  %16 = alloca %struct.arc*, align 8
  %17 = alloca %struct.node*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  store %struct.network* %0, %struct.network** %2, align 8
  store i64 0, i64* %5, align 8
  %24 = load %struct.network*, %struct.network** %2, align 8
  %25 = getelementptr inbounds %struct.network, %struct.network* %24, i32 0, i32 23
  %26 = load %struct.arc*, %struct.arc** %25, align 8
  store %struct.arc* %26, %struct.arc** %15, align 8
  %27 = load %struct.network*, %struct.network** %2, align 8
  %28 = getelementptr inbounds %struct.network, %struct.network* %27, i32 0, i32 24
  %29 = load %struct.arc*, %struct.arc** %28, align 8
  store %struct.arc* %29, %struct.arc** %16, align 8
  %30 = load %struct.network*, %struct.network** %2, align 8
  %31 = getelementptr inbounds %struct.network, %struct.network* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %18, align 8
  %33 = load %struct.network*, %struct.network** %2, align 8
  %34 = getelementptr inbounds %struct.network, %struct.network* %33, i32 0, i32 27
  store i64* %34, i64** %21, align 8
  %35 = load %struct.network*, %struct.network** %2, align 8
  %36 = getelementptr inbounds %struct.network, %struct.network* %35, i32 0, i32 28
  store i64* %36, i64** %22, align 8
  %37 = load %struct.network*, %struct.network** %2, align 8
  %38 = getelementptr inbounds %struct.network, %struct.network* %37, i32 0, i32 29
  store i64* %38, i64** %23, align 8
  br label %39

; <label>:39:                                     ; preds = %174, %1
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %175

; <label>:43:                                     ; preds = %39
  %44 = load i64, i64* %18, align 8
  %45 = load %struct.arc*, %struct.arc** %15, align 8
  %46 = load %struct.arc*, %struct.arc** %16, align 8
  %47 = call %struct.arc* @primal_bea_mpp(i64 %44, %struct.arc* %45, %struct.arc* %46, i64* %20)
  store %struct.arc* %47, %struct.arc** %13, align 8
  %48 = icmp ne %struct.arc* %47, null
  br i1 %48, label %49, label %173

; <label>:49:                                     ; preds = %43
  %50 = load i64*, i64** %21, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %20, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %62

; <label>:55:                                     ; preds = %49
  %56 = load %struct.arc*, %struct.arc** %13, align 8
  %57 = getelementptr inbounds %struct.arc, %struct.arc* %56, i32 0, i32 2
  %58 = load %struct.node*, %struct.node** %57, align 8
  store %struct.node* %58, %struct.node** %8, align 8
  %59 = load %struct.arc*, %struct.arc** %13, align 8
  %60 = getelementptr inbounds %struct.arc, %struct.arc* %59, i32 0, i32 1
  %61 = load %struct.node*, %struct.node** %60, align 8
  store %struct.node* %61, %struct.node** %9, align 8
  br label %69

; <label>:62:                                     ; preds = %49
  %63 = load %struct.arc*, %struct.arc** %13, align 8
  %64 = getelementptr inbounds %struct.arc, %struct.arc* %63, i32 0, i32 1
  %65 = load %struct.node*, %struct.node** %64, align 8
  store %struct.node* %65, %struct.node** %8, align 8
  %66 = load %struct.arc*, %struct.arc** %13, align 8
  %67 = getelementptr inbounds %struct.arc, %struct.arc* %66, i32 0, i32 2
  %68 = load %struct.node*, %struct.node** %67, align 8
  store %struct.node* %68, %struct.node** %9, align 8
  br label %69

; <label>:69:                                     ; preds = %62, %55
  store i64 1, i64* %3, align 8
  %70 = load %struct.node*, %struct.node** %8, align 8
  %71 = load %struct.node*, %struct.node** %9, align 8
  %72 = call %struct.node* @primal_iminus(i64* %3, i64* %6, %struct.node* %70, %struct.node* %71, %struct.node** %12)
  store %struct.node* %72, %struct.node** %10, align 8
  %73 = load %struct.node*, %struct.node** %10, align 8
  %74 = icmp ne %struct.node* %73, null
  br i1 %74, label %97, label %75

; <label>:75:                                     ; preds = %69
  %76 = load i64*, i64** %22, align 8
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.arc*, %struct.arc** %13, align 8
  %80 = getelementptr inbounds %struct.arc, %struct.arc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %75
  %84 = load %struct.arc*, %struct.arc** %13, align 8
  %85 = getelementptr inbounds %struct.arc, %struct.arc* %84, i32 0, i32 3
  store i32 1, i32* %85, align 8
  br label %89

; <label>:86:                                     ; preds = %75
  %87 = load %struct.arc*, %struct.arc** %13, align 8
  %88 = getelementptr inbounds %struct.arc, %struct.arc* %87, i32 0, i32 3
  store i32 2, i32* %88, align 8
  br label %89

; <label>:89:                                     ; preds = %86, %83
  %90 = load i64, i64* %3, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

; <label>:92:                                     ; preds = %89
  %93 = load %struct.node*, %struct.node** %8, align 8
  %94 = load %struct.node*, %struct.node** %9, align 8
  %95 = load %struct.node*, %struct.node** %12, align 8
  call void @primal_update_flow(%struct.node* %93, %struct.node* %94, %struct.node* %95)
  br label %96

; <label>:96:                                     ; preds = %92, %89
  br label %172

; <label>:97:                                     ; preds = %69
  %98 = load i64, i64* %6, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

; <label>:100:                                    ; preds = %97
  %101 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %101, %struct.node** %17, align 8
  %102 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %102, %struct.node** %9, align 8
  %103 = load %struct.node*, %struct.node** %17, align 8
  store %struct.node* %103, %struct.node** %8, align 8
  br label %104

; <label>:104:                                    ; preds = %100, %97
  %105 = load %struct.node*, %struct.node** %10, align 8
  %106 = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 3
  %107 = load %struct.node*, %struct.node** %106, align 8
  store %struct.node* %107, %struct.node** %11, align 8
  %108 = load %struct.node*, %struct.node** %10, align 8
  %109 = getelementptr inbounds %struct.node, %struct.node* %108, i32 0, i32 6
  %110 = load %struct.arc*, %struct.arc** %109, align 8
  store %struct.arc* %110, %struct.arc** %14, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.node*, %struct.node** %10, align 8
  %113 = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp ne i64 %111, %115
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %104
  store i64 1, i64* %19, align 8
  br label %119

; <label>:118:                                    ; preds = %104
  store i64 2, i64* %19, align 8
  br label %119

; <label>:119:                                    ; preds = %118, %117
  %120 = load i64, i64* %20, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %125

; <label>:122:                                    ; preds = %119
  %123 = load i64, i64* %3, align 8
  %124 = sub nsw i64 1, %123
  store i64 %124, i64* %4, align 8
  br label %127

; <label>:125:                                    ; preds = %119
  %126 = load i64, i64* %3, align 8
  store i64 %126, i64* %4, align 8
  br label %127

; <label>:127:                                    ; preds = %125, %122
  %128 = load %struct.arc*, %struct.arc** %13, align 8
  %129 = getelementptr inbounds %struct.arc, %struct.arc* %128, i32 0, i32 1
  %130 = load %struct.node*, %struct.node** %129, align 8
  %131 = load %struct.node*, %struct.node** %8, align 8
  %132 = icmp eq %struct.node* %130, %131
  br i1 %132, label %133, label %134

; <label>:133:                                    ; preds = %127
  store i64 1, i64* %7, align 8
  br label %135

; <label>:134:                                    ; preds = %127
  store i64 0, i64* %7, align 8
  br label %135

; <label>:135:                                    ; preds = %134, %133
  %136 = load i64, i64* %6, align 8
  %137 = icmp ne i64 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %3, align 8
  %143 = load i64, i64* %4, align 8
  %144 = load %struct.node*, %struct.node** %8, align 8
  %145 = load %struct.node*, %struct.node** %9, align 8
  %146 = load %struct.node*, %struct.node** %10, align 8
  %147 = load %struct.node*, %struct.node** %11, align 8
  %148 = load %struct.node*, %struct.node** %12, align 8
  %149 = load %struct.arc*, %struct.arc** %13, align 8
  %150 = load i64, i64* %20, align 8
  %151 = load %struct.network*, %struct.network** %2, align 8
  %152 = getelementptr inbounds %struct.network, %struct.network* %151, i32 0, i32 16
  %153 = load i64, i64* %152, align 8
  call void @update_tree(i64 %140, i64 %141, i64 %142, i64 %143, %struct.node* %144, %struct.node* %145, %struct.node* %146, %struct.node* %147, %struct.node* %148, %struct.arc* %149, i64 %150, i64 %153)
  %154 = load %struct.arc*, %struct.arc** %13, align 8
  %155 = getelementptr inbounds %struct.arc, %struct.arc* %154, i32 0, i32 3
  store i32 0, i32* %155, align 8
  %156 = load i64, i64* %19, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.arc*, %struct.arc** %14, align 8
  %159 = getelementptr inbounds %struct.arc, %struct.arc* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load i64*, i64** %21, align 8
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %161, 1
  %163 = srem i64 %162, 200
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %171, label %165

; <label>:165:                                    ; preds = %135
  %166 = load %struct.network*, %struct.network** %2, align 8
  %167 = call i64 @refresh_potential(%struct.network* %166)
  %168 = load i64*, i64** %23, align 8
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %167
  store i64 %170, i64* %168, align 8
  br label %171

; <label>:171:                                    ; preds = %165, %135
  br label %172

; <label>:172:                                    ; preds = %171, %96
  br label %174

; <label>:173:                                    ; preds = %43
  store i64 1, i64* %5, align 8
  br label %174

; <label>:174:                                    ; preds = %173, %172
  br label %39

; <label>:175:                                    ; preds = %39
  %176 = load %struct.network*, %struct.network** %2, align 8
  %177 = call i64 @refresh_potential(%struct.network* %176)
  %178 = load i64*, i64** %23, align 8
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, %177
  store i64 %180, i64* %178, align 8
  %181 = load %struct.network*, %struct.network** %2, align 8
  %182 = call i64 @primal_feasible(%struct.network* %181)
  %183 = load %struct.network*, %struct.network** %2, align 8
  %184 = call i64 @dual_feasible(%struct.network* %183)
  ret i64 0
}

declare %struct.arc* @primal_bea_mpp(i64, %struct.arc*, %struct.arc*, i64*) #1

declare %struct.node* @primal_iminus(i64*, i64*, %struct.node*, %struct.node*, %struct.node**) #1

declare void @primal_update_flow(%struct.node*, %struct.node*, %struct.node*) #1

declare void @update_tree(i64, i64, i64, i64, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, i64, i64) #1

declare i64 @refresh_potential(%struct.network*) #1

declare i64 @primal_feasible(%struct.network*) #1

declare i64 @dual_feasible(%struct.network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
