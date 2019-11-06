; ModuleID = 'implicit.c'
source_filename = "implicit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i64 @resize_prob(%struct.network*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.network*, align 8
  %4 = alloca %struct.arc*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i64, align 8
  store %struct.network* %0, %struct.network** %3, align 8
  %9 = load %struct.network*, %struct.network** %3, align 8
  %10 = getelementptr inbounds %struct.network, %struct.network* %9, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.network*, %struct.network** %3, align 8
  %13 = getelementptr inbounds %struct.network, %struct.network* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load %struct.network*, %struct.network** %3, align 8
  %17 = getelementptr inbounds %struct.network, %struct.network* %16, i32 0, i32 9
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.network*, %struct.network** %3, align 8
  %20 = getelementptr inbounds %struct.network, %struct.network* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.network*, %struct.network** %3, align 8
  %24 = getelementptr inbounds %struct.network, %struct.network* %23, i32 0, i32 23
  %25 = load %struct.arc*, %struct.arc** %24, align 8
  %26 = bitcast %struct.arc* %25 to i8*
  %27 = load %struct.network*, %struct.network** %3, align 8
  %28 = getelementptr inbounds %struct.network, %struct.network* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %29, 64
  %31 = call i8* @realloc(i8* %26, i64 %30) #4
  %32 = bitcast i8* %31 to %struct.arc*
  store %struct.arc* %32, %struct.arc** %4, align 8
  %33 = load %struct.arc*, %struct.arc** %4, align 8
  %34 = icmp ne %struct.arc* %33, null
  br i1 %34, label %42, label %35

; <label>:35:                                     ; preds = %1
  %36 = load %struct.network*, %struct.network** %3, align 8
  %37 = getelementptr inbounds %struct.network, %struct.network* %36, i32 0, i32 0
  %38 = getelementptr inbounds [200 x i8], [200 x i8]* %37, i32 0, i32 0
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* %38)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = call i32 @fflush(%struct._IO_FILE* %40)
  store i64 -1, i64* %2, align 8
  br label %95

; <label>:42:                                     ; preds = %1
  %43 = load %struct.arc*, %struct.arc** %4, align 8
  %44 = ptrtoint %struct.arc* %43 to i64
  %45 = load %struct.network*, %struct.network** %3, align 8
  %46 = getelementptr inbounds %struct.network, %struct.network* %45, i32 0, i32 23
  %47 = load %struct.arc*, %struct.arc** %46, align 8
  %48 = ptrtoint %struct.arc* %47 to i64
  %49 = sub i64 %44, %48
  store i64 %49, i64* %8, align 8
  %50 = load %struct.arc*, %struct.arc** %4, align 8
  %51 = load %struct.network*, %struct.network** %3, align 8
  %52 = getelementptr inbounds %struct.network, %struct.network* %51, i32 0, i32 23
  store %struct.arc* %50, %struct.arc** %52, align 8
  %53 = load %struct.arc*, %struct.arc** %4, align 8
  %54 = load %struct.network*, %struct.network** %3, align 8
  %55 = getelementptr inbounds %struct.network, %struct.network* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.arc, %struct.arc* %53, i64 %56
  %58 = load %struct.network*, %struct.network** %3, align 8
  %59 = getelementptr inbounds %struct.network, %struct.network* %58, i32 0, i32 24
  store %struct.arc* %57, %struct.arc** %59, align 8
  %60 = load %struct.network*, %struct.network** %3, align 8
  %61 = getelementptr inbounds %struct.network, %struct.network* %60, i32 0, i32 21
  %62 = load %struct.node*, %struct.node** %61, align 8
  store %struct.node* %62, %struct.node** %5, align 8
  store %struct.node* %62, %struct.node** %7, align 8
  %63 = load %struct.node*, %struct.node** %5, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 1
  store %struct.node* %64, %struct.node** %5, align 8
  %65 = load %struct.network*, %struct.network** %3, align 8
  %66 = getelementptr inbounds %struct.network, %struct.network* %65, i32 0, i32 22
  %67 = load %struct.node*, %struct.node** %66, align 8
  %68 = bitcast %struct.node* %67 to i8*
  %69 = bitcast i8* %68 to %struct.node*
  store %struct.node* %69, %struct.node** %6, align 8
  br label %70

; <label>:70:                                     ; preds = %91, %42
  %71 = load %struct.node*, %struct.node** %5, align 8
  %72 = load %struct.node*, %struct.node** %6, align 8
  %73 = icmp ult %struct.node* %71, %72
  br i1 %73, label %74, label %94

; <label>:74:                                     ; preds = %70
  %75 = load %struct.node*, %struct.node** %5, align 8
  %76 = getelementptr inbounds %struct.node, %struct.node* %75, i32 0, i32 3
  %77 = load %struct.node*, %struct.node** %76, align 8
  %78 = load %struct.node*, %struct.node** %7, align 8
  %79 = icmp ne %struct.node* %77, %78
  br i1 %79, label %80, label %90

; <label>:80:                                     ; preds = %74
  %81 = load %struct.node*, %struct.node** %5, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 6
  %83 = load %struct.arc*, %struct.arc** %82, align 8
  %84 = ptrtoint %struct.arc* %83 to i64
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %84, %85
  %87 = inttoptr i64 %86 to %struct.arc*
  %88 = load %struct.node*, %struct.node** %5, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 6
  store %struct.arc* %87, %struct.arc** %89, align 8
  br label %90

; <label>:90:                                     ; preds = %80, %74
  br label %91

; <label>:91:                                     ; preds = %90
  %92 = load %struct.node*, %struct.node** %5, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 1
  store %struct.node* %93, %struct.node** %5, align 8
  br label %70

; <label>:94:                                     ; preds = %70
  store i64 0, i64* %2, align 8
  br label %95

; <label>:95:                                     ; preds = %94, %35
  %96 = load i64, i64* %2, align 8
  ret i64 %96
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @insert_new_arc(%struct.arc*, i64, %struct.node*, %struct.node*, i64, i64) #0 {
  %7 = alloca %struct.arc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.arc* %0, %struct.arc** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.node* %2, %struct.node** %9, align 8
  store %struct.node* %3, %struct.node** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.node*, %struct.node** %9, align 8
  %15 = load %struct.arc*, %struct.arc** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.arc, %struct.arc* %15, i64 %16
  %18 = getelementptr inbounds %struct.arc, %struct.arc* %17, i32 0, i32 1
  store %struct.node* %14, %struct.node** %18, align 8
  %19 = load %struct.node*, %struct.node** %10, align 8
  %20 = load %struct.arc*, %struct.arc** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.arc, %struct.arc* %20, i64 %21
  %23 = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 0, i32 2
  store %struct.node* %19, %struct.node** %23, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.arc*, %struct.arc** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.arc, %struct.arc* %25, i64 %26
  %28 = getelementptr inbounds %struct.arc, %struct.arc* %27, i32 0, i32 7
  store i64 %24, i64* %28, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.arc*, %struct.arc** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.arc, %struct.arc* %30, i64 %31
  %33 = getelementptr inbounds %struct.arc, %struct.arc* %32, i32 0, i32 0
  store i64 %29, i64* %33, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.arc*, %struct.arc** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.arc, %struct.arc* %35, i64 %36
  %38 = getelementptr inbounds %struct.arc, %struct.arc* %37, i32 0, i32 6
  store i64 %34, i64* %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %13, align 8
  br label %41

; <label>:41:                                     ; preds = %57, %6
  %42 = load i64, i64* %13, align 8
  %43 = sub nsw i64 %42, 1
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

; <label>:45:                                     ; preds = %41
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.arc*, %struct.arc** %7, align 8
  %48 = load i64, i64* %13, align 8
  %49 = sdiv i64 %48, 2
  %50 = sub nsw i64 %49, 1
  %51 = getelementptr inbounds %struct.arc, %struct.arc* %47, i64 %50
  %52 = getelementptr inbounds %struct.arc, %struct.arc* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %46, %53
  br label %55

; <label>:55:                                     ; preds = %45, %41
  %56 = phi i1 [ false, %41 ], [ %54, %45 ]
  br i1 %56, label %57, label %150

; <label>:57:                                     ; preds = %55
  %58 = load %struct.arc*, %struct.arc** %7, align 8
  %59 = load i64, i64* %13, align 8
  %60 = sdiv i64 %59, 2
  %61 = sub nsw i64 %60, 1
  %62 = getelementptr inbounds %struct.arc, %struct.arc* %58, i64 %61
  %63 = getelementptr inbounds %struct.arc, %struct.arc* %62, i32 0, i32 1
  %64 = load %struct.node*, %struct.node** %63, align 8
  %65 = load %struct.arc*, %struct.arc** %7, align 8
  %66 = load i64, i64* %13, align 8
  %67 = sub nsw i64 %66, 1
  %68 = getelementptr inbounds %struct.arc, %struct.arc* %65, i64 %67
  %69 = getelementptr inbounds %struct.arc, %struct.arc* %68, i32 0, i32 1
  store %struct.node* %64, %struct.node** %69, align 8
  %70 = load %struct.arc*, %struct.arc** %7, align 8
  %71 = load i64, i64* %13, align 8
  %72 = sdiv i64 %71, 2
  %73 = sub nsw i64 %72, 1
  %74 = getelementptr inbounds %struct.arc, %struct.arc* %70, i64 %73
  %75 = getelementptr inbounds %struct.arc, %struct.arc* %74, i32 0, i32 2
  %76 = load %struct.node*, %struct.node** %75, align 8
  %77 = load %struct.arc*, %struct.arc** %7, align 8
  %78 = load i64, i64* %13, align 8
  %79 = sub nsw i64 %78, 1
  %80 = getelementptr inbounds %struct.arc, %struct.arc* %77, i64 %79
  %81 = getelementptr inbounds %struct.arc, %struct.arc* %80, i32 0, i32 2
  store %struct.node* %76, %struct.node** %81, align 8
  %82 = load %struct.arc*, %struct.arc** %7, align 8
  %83 = load i64, i64* %13, align 8
  %84 = sdiv i64 %83, 2
  %85 = sub nsw i64 %84, 1
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %82, i64 %85
  %87 = getelementptr inbounds %struct.arc, %struct.arc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.arc*, %struct.arc** %7, align 8
  %90 = load i64, i64* %13, align 8
  %91 = sub nsw i64 %90, 1
  %92 = getelementptr inbounds %struct.arc, %struct.arc* %89, i64 %91
  %93 = getelementptr inbounds %struct.arc, %struct.arc* %92, i32 0, i32 0
  store i64 %88, i64* %93, align 8
  %94 = load %struct.arc*, %struct.arc** %7, align 8
  %95 = load i64, i64* %13, align 8
  %96 = sdiv i64 %95, 2
  %97 = sub nsw i64 %96, 1
  %98 = getelementptr inbounds %struct.arc, %struct.arc* %94, i64 %97
  %99 = getelementptr inbounds %struct.arc, %struct.arc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.arc*, %struct.arc** %7, align 8
  %102 = load i64, i64* %13, align 8
  %103 = sub nsw i64 %102, 1
  %104 = getelementptr inbounds %struct.arc, %struct.arc* %101, i64 %103
  %105 = getelementptr inbounds %struct.arc, %struct.arc* %104, i32 0, i32 7
  store i64 %100, i64* %105, align 8
  %106 = load %struct.arc*, %struct.arc** %7, align 8
  %107 = load i64, i64* %13, align 8
  %108 = sdiv i64 %107, 2
  %109 = sub nsw i64 %108, 1
  %110 = getelementptr inbounds %struct.arc, %struct.arc* %106, i64 %109
  %111 = getelementptr inbounds %struct.arc, %struct.arc* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.arc*, %struct.arc** %7, align 8
  %114 = load i64, i64* %13, align 8
  %115 = sub nsw i64 %114, 1
  %116 = getelementptr inbounds %struct.arc, %struct.arc* %113, i64 %115
  %117 = getelementptr inbounds %struct.arc, %struct.arc* %116, i32 0, i32 6
  store i64 %112, i64* %117, align 8
  %118 = load i64, i64* %13, align 8
  %119 = sdiv i64 %118, 2
  store i64 %119, i64* %13, align 8
  %120 = load %struct.node*, %struct.node** %9, align 8
  %121 = load %struct.arc*, %struct.arc** %7, align 8
  %122 = load i64, i64* %13, align 8
  %123 = sub nsw i64 %122, 1
  %124 = getelementptr inbounds %struct.arc, %struct.arc* %121, i64 %123
  %125 = getelementptr inbounds %struct.arc, %struct.arc* %124, i32 0, i32 1
  store %struct.node* %120, %struct.node** %125, align 8
  %126 = load %struct.node*, %struct.node** %10, align 8
  %127 = load %struct.arc*, %struct.arc** %7, align 8
  %128 = load i64, i64* %13, align 8
  %129 = sub nsw i64 %128, 1
  %130 = getelementptr inbounds %struct.arc, %struct.arc* %127, i64 %129
  %131 = getelementptr inbounds %struct.arc, %struct.arc* %130, i32 0, i32 2
  store %struct.node* %126, %struct.node** %131, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.arc*, %struct.arc** %7, align 8
  %134 = load i64, i64* %13, align 8
  %135 = sub nsw i64 %134, 1
  %136 = getelementptr inbounds %struct.arc, %struct.arc* %133, i64 %135
  %137 = getelementptr inbounds %struct.arc, %struct.arc* %136, i32 0, i32 0
  store i64 %132, i64* %137, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load %struct.arc*, %struct.arc** %7, align 8
  %140 = load i64, i64* %13, align 8
  %141 = sub nsw i64 %140, 1
  %142 = getelementptr inbounds %struct.arc, %struct.arc* %139, i64 %141
  %143 = getelementptr inbounds %struct.arc, %struct.arc* %142, i32 0, i32 7
  store i64 %138, i64* %143, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.arc*, %struct.arc** %7, align 8
  %146 = load i64, i64* %13, align 8
  %147 = sub nsw i64 %146, 1
  %148 = getelementptr inbounds %struct.arc, %struct.arc* %145, i64 %147
  %149 = getelementptr inbounds %struct.arc, %struct.arc* %148, i32 0, i32 6
  store i64 %144, i64* %149, align 8
  br label %41

; <label>:150:                                    ; preds = %55
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @replace_weaker_arc(%struct.network*, %struct.arc*, %struct.node*, %struct.node*, i64, i64) #0 {
  %7 = alloca %struct.network*, align 8
  %8 = alloca %struct.arc*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.network* %0, %struct.network** %7, align 8
  store %struct.arc* %1, %struct.arc** %8, align 8
  store %struct.node* %2, %struct.node** %9, align 8
  store %struct.node* %3, %struct.node** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load %struct.node*, %struct.node** %9, align 8
  %16 = load %struct.arc*, %struct.arc** %8, align 8
  %17 = getelementptr inbounds %struct.arc, %struct.arc* %16, i64 0
  %18 = getelementptr inbounds %struct.arc, %struct.arc* %17, i32 0, i32 1
  store %struct.node* %15, %struct.node** %18, align 8
  %19 = load %struct.node*, %struct.node** %10, align 8
  %20 = load %struct.arc*, %struct.arc** %8, align 8
  %21 = getelementptr inbounds %struct.arc, %struct.arc* %20, i64 0
  %22 = getelementptr inbounds %struct.arc, %struct.arc* %21, i32 0, i32 2
  store %struct.node* %19, %struct.node** %22, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.arc*, %struct.arc** %8, align 8
  %25 = getelementptr inbounds %struct.arc, %struct.arc* %24, i64 0
  %26 = getelementptr inbounds %struct.arc, %struct.arc* %25, i32 0, i32 7
  store i64 %23, i64* %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.arc*, %struct.arc** %8, align 8
  %29 = getelementptr inbounds %struct.arc, %struct.arc* %28, i64 0
  %30 = getelementptr inbounds %struct.arc, %struct.arc* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.arc*, %struct.arc** %8, align 8
  %33 = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 0
  %34 = getelementptr inbounds %struct.arc, %struct.arc* %33, i32 0, i32 6
  store i64 %31, i64* %34, align 8
  store i64 1, i64* %13, align 8
  %35 = load %struct.arc*, %struct.arc** %8, align 8
  %36 = getelementptr inbounds %struct.arc, %struct.arc* %35, i64 1
  %37 = getelementptr inbounds %struct.arc, %struct.arc* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.arc*, %struct.arc** %8, align 8
  %40 = getelementptr inbounds %struct.arc, %struct.arc* %39, i64 2
  %41 = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %38, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 2, i32 3
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %14, align 8
  br label %47

; <label>:47:                                     ; preds = %176, %6
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.network*, %struct.network** %7, align 8
  %50 = getelementptr inbounds %struct.network, %struct.network* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %48, %51
  br i1 %52, label %53, label %62

; <label>:53:                                     ; preds = %47
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.arc*, %struct.arc** %8, align 8
  %56 = load i64, i64* %14, align 8
  %57 = sub nsw i64 %56, 1
  %58 = getelementptr inbounds %struct.arc, %struct.arc* %55, i64 %57
  %59 = getelementptr inbounds %struct.arc, %struct.arc* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %54, %60
  br label %62

; <label>:62:                                     ; preds = %53, %47
  %63 = phi i1 [ false, %47 ], [ %61, %53 ]
  br i1 %63, label %64, label %177

; <label>:64:                                     ; preds = %62
  %65 = load %struct.arc*, %struct.arc** %8, align 8
  %66 = load i64, i64* %14, align 8
  %67 = sub nsw i64 %66, 1
  %68 = getelementptr inbounds %struct.arc, %struct.arc* %65, i64 %67
  %69 = getelementptr inbounds %struct.arc, %struct.arc* %68, i32 0, i32 1
  %70 = load %struct.node*, %struct.node** %69, align 8
  %71 = load %struct.arc*, %struct.arc** %8, align 8
  %72 = load i64, i64* %13, align 8
  %73 = sub nsw i64 %72, 1
  %74 = getelementptr inbounds %struct.arc, %struct.arc* %71, i64 %73
  %75 = getelementptr inbounds %struct.arc, %struct.arc* %74, i32 0, i32 1
  store %struct.node* %70, %struct.node** %75, align 8
  %76 = load %struct.arc*, %struct.arc** %8, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub nsw i64 %77, 1
  %79 = getelementptr inbounds %struct.arc, %struct.arc* %76, i64 %78
  %80 = getelementptr inbounds %struct.arc, %struct.arc* %79, i32 0, i32 2
  %81 = load %struct.node*, %struct.node** %80, align 8
  %82 = load %struct.arc*, %struct.arc** %8, align 8
  %83 = load i64, i64* %13, align 8
  %84 = sub nsw i64 %83, 1
  %85 = getelementptr inbounds %struct.arc, %struct.arc* %82, i64 %84
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %85, i32 0, i32 2
  store %struct.node* %81, %struct.node** %86, align 8
  %87 = load %struct.arc*, %struct.arc** %8, align 8
  %88 = load i64, i64* %14, align 8
  %89 = sub nsw i64 %88, 1
  %90 = getelementptr inbounds %struct.arc, %struct.arc* %87, i64 %89
  %91 = getelementptr inbounds %struct.arc, %struct.arc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.arc*, %struct.arc** %8, align 8
  %94 = load i64, i64* %13, align 8
  %95 = sub nsw i64 %94, 1
  %96 = getelementptr inbounds %struct.arc, %struct.arc* %93, i64 %95
  %97 = getelementptr inbounds %struct.arc, %struct.arc* %96, i32 0, i32 0
  store i64 %92, i64* %97, align 8
  %98 = load %struct.arc*, %struct.arc** %8, align 8
  %99 = load i64, i64* %14, align 8
  %100 = sub nsw i64 %99, 1
  %101 = getelementptr inbounds %struct.arc, %struct.arc* %98, i64 %100
  %102 = getelementptr inbounds %struct.arc, %struct.arc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.arc*, %struct.arc** %8, align 8
  %105 = load i64, i64* %13, align 8
  %106 = sub nsw i64 %105, 1
  %107 = getelementptr inbounds %struct.arc, %struct.arc* %104, i64 %106
  %108 = getelementptr inbounds %struct.arc, %struct.arc* %107, i32 0, i32 7
  store i64 %103, i64* %108, align 8
  %109 = load %struct.arc*, %struct.arc** %8, align 8
  %110 = load i64, i64* %14, align 8
  %111 = sub nsw i64 %110, 1
  %112 = getelementptr inbounds %struct.arc, %struct.arc* %109, i64 %111
  %113 = getelementptr inbounds %struct.arc, %struct.arc* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.arc*, %struct.arc** %8, align 8
  %116 = load i64, i64* %13, align 8
  %117 = sub nsw i64 %116, 1
  %118 = getelementptr inbounds %struct.arc, %struct.arc* %115, i64 %117
  %119 = getelementptr inbounds %struct.arc, %struct.arc* %118, i32 0, i32 6
  store i64 %114, i64* %119, align 8
  %120 = load %struct.node*, %struct.node** %9, align 8
  %121 = load %struct.arc*, %struct.arc** %8, align 8
  %122 = load i64, i64* %14, align 8
  %123 = sub nsw i64 %122, 1
  %124 = getelementptr inbounds %struct.arc, %struct.arc* %121, i64 %123
  %125 = getelementptr inbounds %struct.arc, %struct.arc* %124, i32 0, i32 1
  store %struct.node* %120, %struct.node** %125, align 8
  %126 = load %struct.node*, %struct.node** %10, align 8
  %127 = load %struct.arc*, %struct.arc** %8, align 8
  %128 = load i64, i64* %14, align 8
  %129 = sub nsw i64 %128, 1
  %130 = getelementptr inbounds %struct.arc, %struct.arc* %127, i64 %129
  %131 = getelementptr inbounds %struct.arc, %struct.arc* %130, i32 0, i32 2
  store %struct.node* %126, %struct.node** %131, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.arc*, %struct.arc** %8, align 8
  %134 = load i64, i64* %14, align 8
  %135 = sub nsw i64 %134, 1
  %136 = getelementptr inbounds %struct.arc, %struct.arc* %133, i64 %135
  %137 = getelementptr inbounds %struct.arc, %struct.arc* %136, i32 0, i32 0
  store i64 %132, i64* %137, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load %struct.arc*, %struct.arc** %8, align 8
  %140 = load i64, i64* %14, align 8
  %141 = sub nsw i64 %140, 1
  %142 = getelementptr inbounds %struct.arc, %struct.arc* %139, i64 %141
  %143 = getelementptr inbounds %struct.arc, %struct.arc* %142, i32 0, i32 7
  store i64 %138, i64* %143, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.arc*, %struct.arc** %8, align 8
  %146 = load i64, i64* %14, align 8
  %147 = sub nsw i64 %146, 1
  %148 = getelementptr inbounds %struct.arc, %struct.arc* %145, i64 %147
  %149 = getelementptr inbounds %struct.arc, %struct.arc* %148, i32 0, i32 6
  store i64 %144, i64* %149, align 8
  %150 = load i64, i64* %14, align 8
  store i64 %150, i64* %13, align 8
  %151 = load i64, i64* %14, align 8
  %152 = mul nsw i64 %151, 2
  store i64 %152, i64* %14, align 8
  %153 = load i64, i64* %14, align 8
  %154 = add nsw i64 %153, 1
  %155 = load %struct.network*, %struct.network** %7, align 8
  %156 = getelementptr inbounds %struct.network, %struct.network* %155, i32 0, i32 8
  %157 = load i64, i64* %156, align 8
  %158 = icmp sle i64 %154, %157
  br i1 %158, label %159, label %176

; <label>:159:                                    ; preds = %64
  %160 = load %struct.arc*, %struct.arc** %8, align 8
  %161 = load i64, i64* %14, align 8
  %162 = sub nsw i64 %161, 1
  %163 = getelementptr inbounds %struct.arc, %struct.arc* %160, i64 %162
  %164 = getelementptr inbounds %struct.arc, %struct.arc* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.arc*, %struct.arc** %8, align 8
  %167 = load i64, i64* %14, align 8
  %168 = getelementptr inbounds %struct.arc, %struct.arc* %166, i64 %167
  %169 = getelementptr inbounds %struct.arc, %struct.arc* %168, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %165, %170
  br i1 %171, label %172, label %175

; <label>:172:                                    ; preds = %159
  %173 = load i64, i64* %14, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %14, align 8
  br label %175

; <label>:175:                                    ; preds = %172, %159
  br label %176

; <label>:176:                                    ; preds = %175, %64
  br label %47

; <label>:177:                                    ; preds = %62
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @price_out_impl(%struct.network*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.network*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.arc*, align 8
  %16 = alloca %struct.arc*, align 8
  %17 = alloca %struct.arc*, align 8
  %18 = alloca %struct.arc*, align 8
  %19 = alloca %struct.arc*, align 8
  %20 = alloca %struct.node*, align 8
  %21 = alloca %struct.node*, align 8
  store %struct.network* %0, %struct.network** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 15, i64* %9, align 8
  %22 = load %struct.network*, %struct.network** %3, align 8
  %23 = getelementptr inbounds %struct.network, %struct.network* %22, i32 0, i32 18
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  store i64 30, i64* %12, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %14, align 8
  %28 = load %struct.network*, %struct.network** %3, align 8
  %29 = getelementptr inbounds %struct.network, %struct.network* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 15000
  br i1 %31, label %32, label %69

; <label>:32:                                     ; preds = %1
  %33 = load %struct.network*, %struct.network** %3, align 8
  %34 = getelementptr inbounds %struct.network, %struct.network* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.network*, %struct.network** %3, align 8
  %37 = getelementptr inbounds %struct.network, %struct.network* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.network*, %struct.network** %3, align 8
  %41 = getelementptr inbounds %struct.network, %struct.network* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %68

; <label>:44:                                     ; preds = %32
  %45 = load %struct.network*, %struct.network** %3, align 8
  %46 = getelementptr inbounds %struct.network, %struct.network* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.network*, %struct.network** %3, align 8
  %49 = getelementptr inbounds %struct.network, %struct.network* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = mul nsw i64 %47, %50
  %52 = sdiv i64 %51, 2
  %53 = load %struct.network*, %struct.network** %3, align 8
  %54 = getelementptr inbounds %struct.network, %struct.network* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.network*, %struct.network** %3, align 8
  %58 = getelementptr inbounds %struct.network, %struct.network* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %68

; <label>:61:                                     ; preds = %44
  store i64 1, i64* %7, align 8
  %62 = load %struct.network*, %struct.network** %3, align 8
  %63 = call i64 @resize_prob(%struct.network* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %61
  store i64 -1, i64* %2, align 8
  br label %311

; <label>:66:                                     ; preds = %61
  %67 = load %struct.network*, %struct.network** %3, align 8
  call void @refresh_neighbour_lists(%struct.network* %67)
  br label %68

; <label>:68:                                     ; preds = %66, %44, %32
  br label %69

; <label>:69:                                     ; preds = %68, %1
  %70 = load %struct.network*, %struct.network** %3, align 8
  %71 = getelementptr inbounds %struct.network, %struct.network* %70, i32 0, i32 24
  %72 = load %struct.arc*, %struct.arc** %71, align 8
  store %struct.arc* %72, %struct.arc** %17, align 8
  %73 = load %struct.network*, %struct.network** %3, align 8
  %74 = getelementptr inbounds %struct.network, %struct.network* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %5, align 8
  %76 = load %struct.network*, %struct.network** %3, align 8
  %77 = getelementptr inbounds %struct.network, %struct.network* %76, i32 0, i32 23
  %78 = load %struct.arc*, %struct.arc** %77, align 8
  store %struct.arc* %78, %struct.arc** %15, align 8
  store i64 0, i64* %4, align 8
  br label %79

; <label>:79:                                     ; preds = %92, %69
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %89

; <label>:83:                                     ; preds = %79
  %84 = load %struct.arc*, %struct.arc** %15, align 8
  %85 = getelementptr inbounds %struct.arc, %struct.arc* %84, i64 1
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, -1
  br label %89

; <label>:89:                                     ; preds = %83, %79
  %90 = phi i1 [ false, %79 ], [ %88, %83 ]
  br i1 %90, label %91, label %97

; <label>:91:                                     ; preds = %89
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i64, i64* %4, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %4, align 8
  %95 = load %struct.arc*, %struct.arc** %15, align 8
  %96 = getelementptr inbounds %struct.arc, %struct.arc* %95, i64 3
  store %struct.arc* %96, %struct.arc** %15, align 8
  br label %79

; <label>:97:                                     ; preds = %89
  store %struct.arc* null, %struct.arc** %19, align 8
  br label %98

; <label>:98:                                     ; preds = %217, %97
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* %5, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %222

; <label>:102:                                    ; preds = %98
  %103 = load %struct.arc*, %struct.arc** %15, align 8
  %104 = getelementptr inbounds %struct.arc, %struct.arc* %103, i64 1
  %105 = getelementptr inbounds %struct.arc, %struct.arc* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %120

; <label>:108:                                    ; preds = %102
  %109 = load %struct.arc*, %struct.arc** %19, align 8
  %110 = load %struct.arc*, %struct.arc** %15, align 8
  %111 = getelementptr inbounds %struct.arc, %struct.arc* %110, i32 0, i32 2
  %112 = load %struct.node*, %struct.node** %111, align 8
  %113 = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 7
  %114 = load %struct.arc*, %struct.arc** %113, align 8
  %115 = getelementptr inbounds %struct.arc, %struct.arc* %114, i32 0, i32 2
  %116 = load %struct.node*, %struct.node** %115, align 8
  %117 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 9
  store %struct.arc* %109, %struct.arc** %117, align 8
  %118 = load %struct.arc*, %struct.arc** %15, align 8
  %119 = getelementptr inbounds %struct.arc, %struct.arc* %118, i64 1
  store %struct.arc* %119, %struct.arc** %19, align 8
  br label %120

; <label>:120:                                    ; preds = %108, %102
  %121 = load %struct.arc*, %struct.arc** %15, align 8
  %122 = getelementptr inbounds %struct.arc, %struct.arc* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %126

; <label>:125:                                    ; preds = %120
  br label %217

; <label>:126:                                    ; preds = %120
  %127 = load %struct.arc*, %struct.arc** %15, align 8
  %128 = getelementptr inbounds %struct.arc, %struct.arc* %127, i32 0, i32 2
  %129 = load %struct.node*, %struct.node** %128, align 8
  store %struct.node* %129, %struct.node** %21, align 8
  %130 = load %struct.node*, %struct.node** %21, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 13
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.arc*, %struct.arc** %15, align 8
  %135 = getelementptr inbounds %struct.arc, %struct.arc* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = load i64, i64* %14, align 8
  %139 = add nsw i64 %137, %138
  store i64 %139, i64* %8, align 8
  %140 = load %struct.node*, %struct.node** %21, align 8
  %141 = getelementptr inbounds %struct.node, %struct.node* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %11, align 8
  %143 = load %struct.arc*, %struct.arc** %19, align 8
  %144 = getelementptr inbounds %struct.arc, %struct.arc* %143, i32 0, i32 1
  %145 = load %struct.node*, %struct.node** %144, align 8
  %146 = getelementptr inbounds %struct.node, %struct.node* %145, i32 0, i32 9
  %147 = load %struct.arc*, %struct.arc** %146, align 8
  store %struct.arc* %147, %struct.arc** %16, align 8
  br label %148

; <label>:148:                                    ; preds = %212, %165, %126
  %149 = load %struct.arc*, %struct.arc** %16, align 8
  %150 = icmp ne %struct.arc* %149, null
  br i1 %150, label %151, label %216

; <label>:151:                                    ; preds = %148
  %152 = load %struct.arc*, %struct.arc** %16, align 8
  %153 = getelementptr inbounds %struct.arc, %struct.arc* %152, i32 0, i32 1
  %154 = load %struct.node*, %struct.node** %153, align 8
  store %struct.node* %154, %struct.node** %20, align 8
  %155 = load %struct.node*, %struct.node** %20, align 8
  %156 = getelementptr inbounds %struct.node, %struct.node* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.arc*, %struct.arc** %16, align 8
  %160 = getelementptr inbounds %struct.arc, %struct.arc* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %158, %161
  %163 = load i64, i64* %8, align 8
  %164 = icmp sgt i64 %162, %163
  br i1 %164, label %165, label %169

; <label>:165:                                    ; preds = %151
  %166 = load %struct.node*, %struct.node** %20, align 8
  %167 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 9
  %168 = load %struct.arc*, %struct.arc** %167, align 8
  store %struct.arc* %168, %struct.arc** %16, align 8
  br label %148

; <label>:169:                                    ; preds = %151
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.node*, %struct.node** %20, align 8
  %172 = getelementptr inbounds %struct.node, %struct.node* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %170, %173
  %175 = load %struct.node*, %struct.node** %21, align 8
  %176 = getelementptr inbounds %struct.node, %struct.node* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %174, %177
  store i64 %178, i64* %13, align 8
  %179 = load i64, i64* %13, align 8
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %212

; <label>:181:                                    ; preds = %169
  %182 = load i64, i64* %6, align 8
  %183 = load %struct.network*, %struct.network** %3, align 8
  %184 = getelementptr inbounds %struct.network, %struct.network* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = icmp slt i64 %182, %185
  br i1 %186, label %187, label %196

; <label>:187:                                    ; preds = %181
  %188 = load %struct.arc*, %struct.arc** %17, align 8
  %189 = load i64, i64* %6, align 8
  %190 = load %struct.node*, %struct.node** %20, align 8
  %191 = load %struct.node*, %struct.node** %21, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %13, align 8
  call void @insert_new_arc(%struct.arc* %188, i64 %189, %struct.node* %190, %struct.node* %191, i64 %192, i64 %193)
  %194 = load i64, i64* %6, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %6, align 8
  br label %211

; <label>:196:                                    ; preds = %181
  %197 = load %struct.arc*, %struct.arc** %17, align 8
  %198 = getelementptr inbounds %struct.arc, %struct.arc* %197, i64 0
  %199 = getelementptr inbounds %struct.arc, %struct.arc* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %13, align 8
  %202 = icmp sgt i64 %200, %201
  br i1 %202, label %203, label %210

; <label>:203:                                    ; preds = %196
  %204 = load %struct.network*, %struct.network** %3, align 8
  %205 = load %struct.arc*, %struct.arc** %17, align 8
  %206 = load %struct.node*, %struct.node** %20, align 8
  %207 = load %struct.node*, %struct.node** %21, align 8
  %208 = load i64, i64* %12, align 8
  %209 = load i64, i64* %13, align 8
  call void @replace_weaker_arc(%struct.network* %204, %struct.arc* %205, %struct.node* %206, %struct.node* %207, i64 %208, i64 %209)
  br label %210

; <label>:210:                                    ; preds = %203, %196
  br label %211

; <label>:211:                                    ; preds = %210, %187
  br label %212

; <label>:212:                                    ; preds = %211, %169
  %213 = load %struct.node*, %struct.node** %20, align 8
  %214 = getelementptr inbounds %struct.node, %struct.node* %213, i32 0, i32 9
  %215 = load %struct.arc*, %struct.arc** %214, align 8
  store %struct.arc* %215, %struct.arc** %16, align 8
  br label %148

; <label>:216:                                    ; preds = %148
  br label %217

; <label>:217:                                    ; preds = %216, %125
  %218 = load i64, i64* %4, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %4, align 8
  %220 = load %struct.arc*, %struct.arc** %15, align 8
  %221 = getelementptr inbounds %struct.arc, %struct.arc* %220, i64 3
  store %struct.arc* %221, %struct.arc** %15, align 8
  br label %98

; <label>:222:                                    ; preds = %98
  %223 = load i64, i64* %6, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %309

; <label>:225:                                    ; preds = %222
  %226 = load %struct.network*, %struct.network** %3, align 8
  %227 = getelementptr inbounds %struct.network, %struct.network* %226, i32 0, i32 24
  %228 = load %struct.arc*, %struct.arc** %227, align 8
  store %struct.arc* %228, %struct.arc** %17, align 8
  %229 = load i64, i64* %6, align 8
  %230 = load %struct.network*, %struct.network** %3, align 8
  %231 = getelementptr inbounds %struct.network, %struct.network* %230, i32 0, i32 24
  %232 = load %struct.arc*, %struct.arc** %231, align 8
  %233 = getelementptr inbounds %struct.arc, %struct.arc* %232, i64 %229
  store %struct.arc* %233, %struct.arc** %231, align 8
  %234 = load %struct.network*, %struct.network** %3, align 8
  %235 = getelementptr inbounds %struct.network, %struct.network* %234, i32 0, i32 24
  %236 = load %struct.arc*, %struct.arc** %235, align 8
  %237 = bitcast %struct.arc* %236 to i8*
  %238 = bitcast i8* %237 to %struct.arc*
  store %struct.arc* %238, %struct.arc** %18, align 8
  %239 = load i64, i64* %7, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %255

; <label>:241:                                    ; preds = %225
  br label %242

; <label>:242:                                    ; preds = %251, %241
  %243 = load %struct.arc*, %struct.arc** %17, align 8
  %244 = load %struct.arc*, %struct.arc** %18, align 8
  %245 = icmp ne %struct.arc* %243, %244
  br i1 %245, label %246, label %254

; <label>:246:                                    ; preds = %242
  %247 = load %struct.arc*, %struct.arc** %17, align 8
  %248 = getelementptr inbounds %struct.arc, %struct.arc* %247, i32 0, i32 6
  store i64 0, i64* %248, align 8
  %249 = load %struct.arc*, %struct.arc** %17, align 8
  %250 = getelementptr inbounds %struct.arc, %struct.arc* %249, i32 0, i32 3
  store i32 1, i32* %250, align 8
  br label %251

; <label>:251:                                    ; preds = %246
  %252 = load %struct.arc*, %struct.arc** %17, align 8
  %253 = getelementptr inbounds %struct.arc, %struct.arc* %252, i32 1
  store %struct.arc* %253, %struct.arc** %17, align 8
  br label %242

; <label>:254:                                    ; preds = %242
  br label %293

; <label>:255:                                    ; preds = %225
  br label %256

; <label>:256:                                    ; preds = %289, %255
  %257 = load %struct.arc*, %struct.arc** %17, align 8
  %258 = load %struct.arc*, %struct.arc** %18, align 8
  %259 = icmp ne %struct.arc* %257, %258
  br i1 %259, label %260, label %292

; <label>:260:                                    ; preds = %256
  %261 = load %struct.arc*, %struct.arc** %17, align 8
  %262 = getelementptr inbounds %struct.arc, %struct.arc* %261, i32 0, i32 6
  store i64 0, i64* %262, align 8
  %263 = load %struct.arc*, %struct.arc** %17, align 8
  %264 = getelementptr inbounds %struct.arc, %struct.arc* %263, i32 0, i32 3
  store i32 1, i32* %264, align 8
  %265 = load %struct.arc*, %struct.arc** %17, align 8
  %266 = getelementptr inbounds %struct.arc, %struct.arc* %265, i32 0, i32 1
  %267 = load %struct.node*, %struct.node** %266, align 8
  %268 = getelementptr inbounds %struct.node, %struct.node* %267, i32 0, i32 7
  %269 = load %struct.arc*, %struct.arc** %268, align 8
  %270 = load %struct.arc*, %struct.arc** %17, align 8
  %271 = getelementptr inbounds %struct.arc, %struct.arc* %270, i32 0, i32 4
  store %struct.arc* %269, %struct.arc** %271, align 8
  %272 = load %struct.arc*, %struct.arc** %17, align 8
  %273 = load %struct.arc*, %struct.arc** %17, align 8
  %274 = getelementptr inbounds %struct.arc, %struct.arc* %273, i32 0, i32 1
  %275 = load %struct.node*, %struct.node** %274, align 8
  %276 = getelementptr inbounds %struct.node, %struct.node* %275, i32 0, i32 7
  store %struct.arc* %272, %struct.arc** %276, align 8
  %277 = load %struct.arc*, %struct.arc** %17, align 8
  %278 = getelementptr inbounds %struct.arc, %struct.arc* %277, i32 0, i32 2
  %279 = load %struct.node*, %struct.node** %278, align 8
  %280 = getelementptr inbounds %struct.node, %struct.node* %279, i32 0, i32 8
  %281 = load %struct.arc*, %struct.arc** %280, align 8
  %282 = load %struct.arc*, %struct.arc** %17, align 8
  %283 = getelementptr inbounds %struct.arc, %struct.arc* %282, i32 0, i32 5
  store %struct.arc* %281, %struct.arc** %283, align 8
  %284 = load %struct.arc*, %struct.arc** %17, align 8
  %285 = load %struct.arc*, %struct.arc** %17, align 8
  %286 = getelementptr inbounds %struct.arc, %struct.arc* %285, i32 0, i32 2
  %287 = load %struct.node*, %struct.node** %286, align 8
  %288 = getelementptr inbounds %struct.node, %struct.node* %287, i32 0, i32 8
  store %struct.arc* %284, %struct.arc** %288, align 8
  br label %289

; <label>:289:                                    ; preds = %260
  %290 = load %struct.arc*, %struct.arc** %17, align 8
  %291 = getelementptr inbounds %struct.arc, %struct.arc* %290, i32 1
  store %struct.arc* %291, %struct.arc** %17, align 8
  br label %256

; <label>:292:                                    ; preds = %256
  br label %293

; <label>:293:                                    ; preds = %292, %254
  %294 = load i64, i64* %6, align 8
  %295 = load %struct.network*, %struct.network** %3, align 8
  %296 = getelementptr inbounds %struct.network, %struct.network* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, %294
  store i64 %298, i64* %296, align 8
  %299 = load i64, i64* %6, align 8
  %300 = load %struct.network*, %struct.network** %3, align 8
  %301 = getelementptr inbounds %struct.network, %struct.network* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %302, %299
  store i64 %303, i64* %301, align 8
  %304 = load i64, i64* %6, align 8
  %305 = load %struct.network*, %struct.network** %3, align 8
  %306 = getelementptr inbounds %struct.network, %struct.network* %305, i32 0, i32 8
  %307 = load i64, i64* %306, align 8
  %308 = sub nsw i64 %307, %304
  store i64 %308, i64* %306, align 8
  br label %309

; <label>:309:                                    ; preds = %293, %222
  %310 = load i64, i64* %6, align 8
  store i64 %310, i64* %2, align 8
  br label %311

; <label>:311:                                    ; preds = %309, %65
  %312 = load i64, i64* %2, align 8
  ret i64 %312
}

declare void @refresh_neighbour_lists(%struct.network*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i64 @suspend_impl(%struct.network*, i64, i64) #0 {
  %4 = alloca %struct.network*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.arc*, align 8
  %10 = alloca %struct.arc*, align 8
  %11 = alloca i8*, align 8
  store %struct.network* %0, %struct.network** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %3
  %15 = load %struct.network*, %struct.network** %4, align 8
  %16 = getelementptr inbounds %struct.network, %struct.network* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  br label %107

; <label>:18:                                     ; preds = %3
  %19 = load %struct.network*, %struct.network** %4, align 8
  %20 = getelementptr inbounds %struct.network, %struct.network* %19, i32 0, i32 24
  %21 = load %struct.arc*, %struct.arc** %20, align 8
  %22 = bitcast %struct.arc* %21 to i8*
  store i8* %22, i8** %11, align 8
  %23 = load %struct.network*, %struct.network** %4, align 8
  %24 = getelementptr inbounds %struct.network, %struct.network* %23, i32 0, i32 23
  %25 = load %struct.arc*, %struct.arc** %24, align 8
  %26 = load %struct.network*, %struct.network** %4, align 8
  %27 = getelementptr inbounds %struct.network, %struct.network* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.network*, %struct.network** %4, align 8
  %30 = getelementptr inbounds %struct.network, %struct.network* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = getelementptr inbounds %struct.arc, %struct.arc* %25, i64 %32
  store %struct.arc* %33, %struct.arc** %9, align 8
  store i64 0, i64* %7, align 8
  %34 = load %struct.arc*, %struct.arc** %9, align 8
  store %struct.arc* %34, %struct.arc** %10, align 8
  br label %35

; <label>:35:                                     ; preds = %103, %18
  %36 = load %struct.arc*, %struct.arc** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = bitcast i8* %37 to %struct.arc*
  %39 = icmp ult %struct.arc* %36, %38
  br i1 %39, label %40, label %106

; <label>:40:                                     ; preds = %35
  %41 = load %struct.arc*, %struct.arc** %10, align 8
  %42 = getelementptr inbounds %struct.arc, %struct.arc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %61

; <label>:45:                                     ; preds = %40
  %46 = load %struct.arc*, %struct.arc** %10, align 8
  %47 = getelementptr inbounds %struct.arc, %struct.arc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.arc*, %struct.arc** %10, align 8
  %50 = getelementptr inbounds %struct.arc, %struct.arc* %49, i32 0, i32 1
  %51 = load %struct.node*, %struct.node** %50, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %48, %53
  %55 = load %struct.arc*, %struct.arc** %10, align 8
  %56 = getelementptr inbounds %struct.arc, %struct.arc* %55, i32 0, i32 2
  %57 = load %struct.node*, %struct.node** %56, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %54, %59
  store i64 %60, i64* %8, align 8
  br label %88

; <label>:61:                                     ; preds = %40
  store i64 -2, i64* %8, align 8
  %62 = load %struct.arc*, %struct.arc** %10, align 8
  %63 = getelementptr inbounds %struct.arc, %struct.arc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %87

; <label>:66:                                     ; preds = %61
  %67 = load %struct.arc*, %struct.arc** %10, align 8
  %68 = getelementptr inbounds %struct.arc, %struct.arc* %67, i32 0, i32 1
  %69 = load %struct.node*, %struct.node** %68, align 8
  %70 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 6
  %71 = load %struct.arc*, %struct.arc** %70, align 8
  %72 = load %struct.arc*, %struct.arc** %10, align 8
  %73 = icmp eq %struct.arc* %71, %72
  br i1 %73, label %74, label %80

; <label>:74:                                     ; preds = %66
  %75 = load %struct.arc*, %struct.arc** %9, align 8
  %76 = load %struct.arc*, %struct.arc** %10, align 8
  %77 = getelementptr inbounds %struct.arc, %struct.arc* %76, i32 0, i32 1
  %78 = load %struct.node*, %struct.node** %77, align 8
  %79 = getelementptr inbounds %struct.node, %struct.node* %78, i32 0, i32 6
  store %struct.arc* %75, %struct.arc** %79, align 8
  br label %86

; <label>:80:                                     ; preds = %66
  %81 = load %struct.arc*, %struct.arc** %9, align 8
  %82 = load %struct.arc*, %struct.arc** %10, align 8
  %83 = getelementptr inbounds %struct.arc, %struct.arc* %82, i32 0, i32 2
  %84 = load %struct.node*, %struct.node** %83, align 8
  %85 = getelementptr inbounds %struct.node, %struct.node* %84, i32 0, i32 6
  store %struct.arc* %81, %struct.arc** %85, align 8
  br label %86

; <label>:86:                                     ; preds = %80, %74
  br label %87

; <label>:87:                                     ; preds = %86, %61
  br label %88

; <label>:88:                                     ; preds = %87, %45
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %88
  %93 = load i64, i64* %7, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %102

; <label>:95:                                     ; preds = %88
  %96 = load %struct.arc*, %struct.arc** %9, align 8
  %97 = load %struct.arc*, %struct.arc** %10, align 8
  %98 = bitcast %struct.arc* %96 to i8*
  %99 = bitcast %struct.arc* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 64, i32 8, i1 false)
  %100 = load %struct.arc*, %struct.arc** %9, align 8
  %101 = getelementptr inbounds %struct.arc, %struct.arc* %100, i32 1
  store %struct.arc* %101, %struct.arc** %9, align 8
  br label %102

; <label>:102:                                    ; preds = %95, %92
  br label %103

; <label>:103:                                    ; preds = %102
  %104 = load %struct.arc*, %struct.arc** %10, align 8
  %105 = getelementptr inbounds %struct.arc, %struct.arc* %104, i32 1
  store %struct.arc* %105, %struct.arc** %10, align 8
  br label %35

; <label>:106:                                    ; preds = %35
  br label %107

; <label>:107:                                    ; preds = %106, %14
  %108 = load i64, i64* %7, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %133

; <label>:110:                                    ; preds = %107
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.network*, %struct.network** %4, align 8
  %113 = getelementptr inbounds %struct.network, %struct.network* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.network*, %struct.network** %4, align 8
  %118 = getelementptr inbounds %struct.network, %struct.network* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.network*, %struct.network** %4, align 8
  %123 = getelementptr inbounds %struct.network, %struct.network* %122, i32 0, i32 24
  %124 = load %struct.arc*, %struct.arc** %123, align 8
  %125 = sub i64 0, %121
  %126 = getelementptr inbounds %struct.arc, %struct.arc* %124, i64 %125
  store %struct.arc* %126, %struct.arc** %123, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.network*, %struct.network** %4, align 8
  %129 = getelementptr inbounds %struct.network, %struct.network* %128, i32 0, i32 8
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load %struct.network*, %struct.network** %4, align 8
  call void @refresh_neighbour_lists(%struct.network* %132)
  br label %133

; <label>:133:                                    ; preds = %110, %107
  %134 = load i64, i64* %7, align 8
  ret i64 %134
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
