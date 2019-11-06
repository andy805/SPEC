; ModuleID = 'pbeampp.c'
source_filename = "pbeampp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.basket = type { %struct.arc*, i64, i64 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }

@perm = internal global [351 x %struct.basket*] zeroinitializer, align 16
@initialize = internal global i64 1, align 8
@basket = internal global [351 x %struct.basket] zeroinitializer, align 16
@nr_group = internal global i64 0, align 8
@group_pos = internal global i64 0, align 8
@basket_size = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @bea_is_dual_infeasible(%struct.arc*, i64) #0 {
  %3 = alloca %struct.arc*, align 8
  %4 = alloca i64, align 8
  store %struct.arc* %0, %struct.arc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %2
  %8 = load %struct.arc*, %struct.arc** %3, align 8
  %9 = getelementptr inbounds %struct.arc, %struct.arc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %22, label %12

; <label>:12:                                     ; preds = %7, %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %12
  %16 = load %struct.arc*, %struct.arc** %3, align 8
  %17 = getelementptr inbounds %struct.arc, %struct.arc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  br label %20

; <label>:20:                                     ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br label %22

; <label>:22:                                     ; preds = %20, %7
  %23 = phi i1 [ true, %7 ], [ %21, %20 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define void @sort_basket(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.basket*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add nsw i64 %11, %12
  %14 = sdiv i64 %13, 2
  %15 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %14
  %16 = load %struct.basket*, %struct.basket** %15, align 8
  %17 = getelementptr inbounds %struct.basket, %struct.basket* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  br label %19

; <label>:19:                                     ; preds = %69, %2
  br label %20

; <label>:20:                                     ; preds = %28, %19
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %21
  %23 = load %struct.basket*, %struct.basket** %22, align 8
  %24 = getelementptr inbounds %struct.basket, %struct.basket* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %20
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %20

; <label>:31:                                     ; preds = %20
  br label %32

; <label>:32:                                     ; preds = %40, %31
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %34
  %36 = load %struct.basket*, %struct.basket** %35, align 8
  %37 = getelementptr inbounds %struct.basket, %struct.basket* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %32
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %6, align 8
  br label %32

; <label>:43:                                     ; preds = %32
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %59

; <label>:47:                                     ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %48
  %50 = load %struct.basket*, %struct.basket** %49, align 8
  store %struct.basket* %50, %struct.basket** %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %51
  %53 = load %struct.basket*, %struct.basket** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %54
  store %struct.basket* %53, %struct.basket** %55, align 8
  %56 = load %struct.basket*, %struct.basket** %8, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %57
  store %struct.basket* %56, %struct.basket** %58, align 8
  br label %59

; <label>:59:                                     ; preds = %47, %43
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %68

; <label>:63:                                     ; preds = %59
  %64 = load i64, i64* %5, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %6, align 8
  br label %68

; <label>:68:                                     ; preds = %63, %59
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %19, label %73

; <label>:73:                                     ; preds = %69
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %73
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* %6, align 8
  call void @sort_basket(i64 %78, i64 %79)
  br label %80

; <label>:80:                                     ; preds = %77, %73
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %90

; <label>:84:                                     ; preds = %80
  %85 = load i64, i64* %5, align 8
  %86 = icmp sle i64 %85, 50
  br i1 %86, label %87, label %90

; <label>:87:                                     ; preds = %84
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %4, align 8
  call void @sort_basket(i64 %88, i64 %89)
  br label %90

; <label>:90:                                     ; preds = %87, %84, %80
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.arc* @primal_bea_mpp(i64, %struct.arc*, %struct.arc*, i64*) #0 {
  %5 = alloca %struct.arc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.arc*, align 8
  %8 = alloca %struct.arc*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.arc*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.arc* %1, %struct.arc** %7, align 8
  store %struct.arc* %2, %struct.arc** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i64, i64* @initialize, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

; <label>:17:                                     ; preds = %4
  store i64 1, i64* %10, align 8
  br label %18

; <label>:18:                                     ; preds = %26, %17
  %19 = load i64, i64* %10, align 8
  %20 = icmp slt i64 %19, 351
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %18
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds [351 x %struct.basket], [351 x %struct.basket]* @basket, i64 0, i64 %22
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %24
  store %struct.basket* %23, %struct.basket** %25, align 8
  br label %26

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %10, align 8
  br label %18

; <label>:29:                                     ; preds = %18
  %30 = load i64, i64* %6, align 8
  %31 = sub nsw i64 %30, 1
  %32 = sdiv i64 %31, 300
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @nr_group, align 8
  store i64 0, i64* @group_pos, align 8
  store i64 0, i64* @basket_size, align 8
  store i64 0, i64* @initialize, align 8
  br label %112

; <label>:34:                                     ; preds = %4
  store i64 2, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %35

; <label>:35:                                     ; preds = %107, %34
  %36 = load i64, i64* %10, align 8
  %37 = icmp sle i64 %36, 50
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @basket_size, align 8
  %41 = icmp sle i64 %39, %40
  br label %42

; <label>:42:                                     ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %44, label %110

; <label>:44:                                     ; preds = %42
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %45
  %47 = load %struct.basket*, %struct.basket** %46, align 8
  %48 = getelementptr inbounds %struct.basket, %struct.basket* %47, i32 0, i32 0
  %49 = load %struct.arc*, %struct.arc** %48, align 8
  store %struct.arc* %49, %struct.arc** %13, align 8
  %50 = load %struct.arc*, %struct.arc** %13, align 8
  %51 = getelementptr inbounds %struct.arc, %struct.arc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.arc*, %struct.arc** %13, align 8
  %54 = getelementptr inbounds %struct.arc, %struct.arc* %53, i32 0, i32 1
  %55 = load %struct.node*, %struct.node** %54, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %52, %57
  %59 = load %struct.arc*, %struct.arc** %13, align 8
  %60 = getelementptr inbounds %struct.arc, %struct.arc* %59, i32 0, i32 2
  %61 = load %struct.node*, %struct.node** %60, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

; <label>:67:                                     ; preds = %44
  %68 = load %struct.arc*, %struct.arc** %13, align 8
  %69 = getelementptr inbounds %struct.arc, %struct.arc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %80, label %72

; <label>:72:                                     ; preds = %67, %44
  %73 = load i64, i64* %14, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %106

; <label>:75:                                     ; preds = %72
  %76 = load %struct.arc*, %struct.arc** %13, align 8
  %77 = getelementptr inbounds %struct.arc, %struct.arc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %106

; <label>:80:                                     ; preds = %75, %67
  %81 = load i64, i64* %11, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %11, align 8
  %83 = load %struct.arc*, %struct.arc** %13, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %84
  %86 = load %struct.basket*, %struct.basket** %85, align 8
  %87 = getelementptr inbounds %struct.basket, %struct.basket* %86, i32 0, i32 0
  store %struct.arc* %83, %struct.arc** %87, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %89
  %91 = load %struct.basket*, %struct.basket** %90, align 8
  %92 = getelementptr inbounds %struct.basket, %struct.basket* %91, i32 0, i32 1
  store i64 %88, i64* %92, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %97

; <label>:95:                                     ; preds = %80
  %96 = load i64, i64* %14, align 8
  br label %100

; <label>:97:                                     ; preds = %80
  %98 = load i64, i64* %14, align 8
  %99 = sub nsw i64 0, %98
  br label %100

; <label>:100:                                    ; preds = %97, %95
  %101 = phi i64 [ %96, %95 ], [ %99, %97 ]
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %102
  %104 = load %struct.basket*, %struct.basket** %103, align 8
  %105 = getelementptr inbounds %struct.basket, %struct.basket* %104, i32 0, i32 2
  store i64 %101, i64* %105, align 8
  br label %106

; <label>:106:                                    ; preds = %100, %75, %72
  br label %107

; <label>:107:                                    ; preds = %106
  %108 = load i64, i64* %10, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %35

; <label>:110:                                    ; preds = %42
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* @basket_size, align 8
  br label %112

; <label>:112:                                    ; preds = %110, %29
  %113 = load i64, i64* @group_pos, align 8
  store i64 %113, i64* %12, align 8
  br label %114

; <label>:114:                                    ; preds = %192, %112
  %115 = load %struct.arc*, %struct.arc** %7, align 8
  %116 = load i64, i64* @group_pos, align 8
  %117 = getelementptr inbounds %struct.arc, %struct.arc* %115, i64 %116
  store %struct.arc* %117, %struct.arc** %13, align 8
  br label %118

; <label>:118:                                    ; preds = %175, %114
  %119 = load %struct.arc*, %struct.arc** %13, align 8
  %120 = load %struct.arc*, %struct.arc** %8, align 8
  %121 = icmp ult %struct.arc* %119, %120
  br i1 %121, label %122, label %179

; <label>:122:                                    ; preds = %118
  %123 = load %struct.arc*, %struct.arc** %13, align 8
  %124 = getelementptr inbounds %struct.arc, %struct.arc* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %174

; <label>:127:                                    ; preds = %122
  %128 = load %struct.arc*, %struct.arc** %13, align 8
  %129 = getelementptr inbounds %struct.arc, %struct.arc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.arc*, %struct.arc** %13, align 8
  %132 = getelementptr inbounds %struct.arc, %struct.arc* %131, i32 0, i32 1
  %133 = load %struct.node*, %struct.node** %132, align 8
  %134 = getelementptr inbounds %struct.node, %struct.node* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %130, %135
  %137 = load %struct.arc*, %struct.arc** %13, align 8
  %138 = getelementptr inbounds %struct.arc, %struct.arc* %137, i32 0, i32 2
  %139 = load %struct.node*, %struct.node** %138, align 8
  %140 = getelementptr inbounds %struct.node, %struct.node* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %136, %141
  store i64 %142, i64* %14, align 8
  %143 = load %struct.arc*, %struct.arc** %13, align 8
  %144 = load i64, i64* %14, align 8
  %145 = call i32 @bea_is_dual_infeasible(%struct.arc* %143, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

; <label>:147:                                    ; preds = %127
  %148 = load i64, i64* @basket_size, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* @basket_size, align 8
  %150 = load %struct.arc*, %struct.arc** %13, align 8
  %151 = load i64, i64* @basket_size, align 8
  %152 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %151
  %153 = load %struct.basket*, %struct.basket** %152, align 8
  %154 = getelementptr inbounds %struct.basket, %struct.basket* %153, i32 0, i32 0
  store %struct.arc* %150, %struct.arc** %154, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* @basket_size, align 8
  %157 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %156
  %158 = load %struct.basket*, %struct.basket** %157, align 8
  %159 = getelementptr inbounds %struct.basket, %struct.basket* %158, i32 0, i32 1
  store i64 %155, i64* %159, align 8
  %160 = load i64, i64* %14, align 8
  %161 = icmp sge i64 %160, 0
  br i1 %161, label %162, label %164

; <label>:162:                                    ; preds = %147
  %163 = load i64, i64* %14, align 8
  br label %167

; <label>:164:                                    ; preds = %147
  %165 = load i64, i64* %14, align 8
  %166 = sub nsw i64 0, %165
  br label %167

; <label>:167:                                    ; preds = %164, %162
  %168 = phi i64 [ %163, %162 ], [ %166, %164 ]
  %169 = load i64, i64* @basket_size, align 8
  %170 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %169
  %171 = load %struct.basket*, %struct.basket** %170, align 8
  %172 = getelementptr inbounds %struct.basket, %struct.basket* %171, i32 0, i32 2
  store i64 %168, i64* %172, align 8
  br label %173

; <label>:173:                                    ; preds = %167, %127
  br label %174

; <label>:174:                                    ; preds = %173, %122
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load i64, i64* @nr_group, align 8
  %177 = load %struct.arc*, %struct.arc** %13, align 8
  %178 = getelementptr inbounds %struct.arc, %struct.arc* %177, i64 %176
  store %struct.arc* %178, %struct.arc** %13, align 8
  br label %118

; <label>:179:                                    ; preds = %118
  %180 = load i64, i64* @group_pos, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* @group_pos, align 8
  %182 = load i64, i64* @nr_group, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %185

; <label>:184:                                    ; preds = %179
  store i64 0, i64* @group_pos, align 8
  br label %185

; <label>:185:                                    ; preds = %184, %179
  %186 = load i64, i64* @basket_size, align 8
  %187 = icmp slt i64 %186, 50
  br i1 %187, label %188, label %193

; <label>:188:                                    ; preds = %185
  %189 = load i64, i64* @group_pos, align 8
  %190 = load i64, i64* %12, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %193

; <label>:192:                                    ; preds = %188
  br label %114

; <label>:193:                                    ; preds = %188, %185
  %194 = load i64, i64* @basket_size, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %198

; <label>:196:                                    ; preds = %193
  store i64 1, i64* @initialize, align 8
  %197 = load i64*, i64** %9, align 8
  store i64 0, i64* %197, align 8
  store %struct.arc* null, %struct.arc** %5, align 8
  br label %207

; <label>:198:                                    ; preds = %193
  %199 = load i64, i64* @basket_size, align 8
  call void @sort_basket(i64 1, i64 %199)
  %200 = load %struct.basket*, %struct.basket** getelementptr inbounds ([351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 1), align 8
  %201 = getelementptr inbounds %struct.basket, %struct.basket* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64*, i64** %9, align 8
  store i64 %202, i64* %203, align 8
  %204 = load %struct.basket*, %struct.basket** getelementptr inbounds ([351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 1), align 8
  %205 = getelementptr inbounds %struct.basket, %struct.basket* %204, i32 0, i32 0
  %206 = load %struct.arc*, %struct.arc** %205, align 8
  store %struct.arc* %206, %struct.arc** %5, align 8
  br label %207

; <label>:207:                                    ; preds = %198, %196
  %208 = load %struct.arc*, %struct.arc** %5, align 8
  ret %struct.arc* %208
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
