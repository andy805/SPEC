; ModuleID = 'mcfutil.c'
source_filename = "mcfutil.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"PRIMAL NETWORK SIMPLEX: \00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"artificial arc with nonzero flow, node %d (%ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"basis primal infeasible (%ld)\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"DUAL NETWORK SIMPLEX: \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"basis dual infeasible\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @refresh_neighbour_lists(%struct.network*) #0 {
  %2 = alloca %struct.network*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.arc*, align 8
  %5 = alloca i8*, align 8
  store %struct.network* %0, %struct.network** %2, align 8
  %6 = load %struct.network*, %struct.network** %2, align 8
  %7 = getelementptr inbounds %struct.network, %struct.network* %6, i32 0, i32 21
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %3, align 8
  %9 = load %struct.network*, %struct.network** %2, align 8
  %10 = getelementptr inbounds %struct.network, %struct.network* %9, i32 0, i32 22
  %11 = load %struct.node*, %struct.node** %10, align 8
  %12 = bitcast %struct.node* %11 to i8*
  store i8* %12, i8** %5, align 8
  br label %13

; <label>:13:                                     ; preds = %23, %1
  %14 = load %struct.node*, %struct.node** %3, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.node*
  %17 = icmp ult %struct.node* %14, %16
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %13
  %19 = load %struct.node*, %struct.node** %3, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 8
  store %struct.arc* null, %struct.arc** %20, align 8
  %21 = load %struct.node*, %struct.node** %3, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 7
  store %struct.arc* null, %struct.arc** %22, align 8
  br label %23

; <label>:23:                                     ; preds = %18
  %24 = load %struct.node*, %struct.node** %3, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 1
  store %struct.node* %25, %struct.node** %3, align 8
  br label %13

; <label>:26:                                     ; preds = %13
  %27 = load %struct.network*, %struct.network** %2, align 8
  %28 = getelementptr inbounds %struct.network, %struct.network* %27, i32 0, i32 23
  %29 = load %struct.arc*, %struct.arc** %28, align 8
  store %struct.arc* %29, %struct.arc** %4, align 8
  %30 = load %struct.network*, %struct.network** %2, align 8
  %31 = getelementptr inbounds %struct.network, %struct.network* %30, i32 0, i32 24
  %32 = load %struct.arc*, %struct.arc** %31, align 8
  %33 = bitcast %struct.arc* %32 to i8*
  store i8* %33, i8** %5, align 8
  br label %34

; <label>:34:                                     ; preds = %64, %26
  %35 = load %struct.arc*, %struct.arc** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to %struct.arc*
  %38 = icmp ult %struct.arc* %35, %37
  br i1 %38, label %39, label %67

; <label>:39:                                     ; preds = %34
  %40 = load %struct.arc*, %struct.arc** %4, align 8
  %41 = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 1
  %42 = load %struct.node*, %struct.node** %41, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 7
  %44 = load %struct.arc*, %struct.arc** %43, align 8
  %45 = load %struct.arc*, %struct.arc** %4, align 8
  %46 = getelementptr inbounds %struct.arc, %struct.arc* %45, i32 0, i32 4
  store %struct.arc* %44, %struct.arc** %46, align 8
  %47 = load %struct.arc*, %struct.arc** %4, align 8
  %48 = load %struct.arc*, %struct.arc** %4, align 8
  %49 = getelementptr inbounds %struct.arc, %struct.arc* %48, i32 0, i32 1
  %50 = load %struct.node*, %struct.node** %49, align 8
  %51 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 7
  store %struct.arc* %47, %struct.arc** %51, align 8
  %52 = load %struct.arc*, %struct.arc** %4, align 8
  %53 = getelementptr inbounds %struct.arc, %struct.arc* %52, i32 0, i32 2
  %54 = load %struct.node*, %struct.node** %53, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 8
  %56 = load %struct.arc*, %struct.arc** %55, align 8
  %57 = load %struct.arc*, %struct.arc** %4, align 8
  %58 = getelementptr inbounds %struct.arc, %struct.arc* %57, i32 0, i32 5
  store %struct.arc* %56, %struct.arc** %58, align 8
  %59 = load %struct.arc*, %struct.arc** %4, align 8
  %60 = load %struct.arc*, %struct.arc** %4, align 8
  %61 = getelementptr inbounds %struct.arc, %struct.arc* %60, i32 0, i32 2
  %62 = load %struct.node*, %struct.node** %61, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 8
  store %struct.arc* %59, %struct.arc** %63, align 8
  br label %64

; <label>:64:                                     ; preds = %39
  %65 = load %struct.arc*, %struct.arc** %4, align 8
  %66 = getelementptr inbounds %struct.arc, %struct.arc* %65, i32 1
  store %struct.arc* %66, %struct.arc** %4, align 8
  br label %34

; <label>:67:                                     ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @refresh_potential(%struct.network*) #0 {
  %2 = alloca %struct.network*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i64, align 8
  store %struct.network* %0, %struct.network** %2, align 8
  %7 = load %struct.network*, %struct.network** %2, align 8
  %8 = getelementptr inbounds %struct.network, %struct.network* %7, i32 0, i32 21
  %9 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %9, %struct.node** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.node*, %struct.node** %5, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  store i64 -100000000, i64* %11, align 8
  %12 = load %struct.node*, %struct.node** %5, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 2
  %14 = load %struct.node*, %struct.node** %13, align 8
  store %struct.node* %14, %struct.node** %3, align 8
  store %struct.node* %14, %struct.node** %4, align 8
  br label %15

; <label>:15:                                     ; preds = %83, %1
  %16 = load %struct.node*, %struct.node** %3, align 8
  %17 = load %struct.node*, %struct.node** %5, align 8
  %18 = icmp ne %struct.node* %16, %17
  br i1 %18, label %19, label %84

; <label>:19:                                     ; preds = %15
  br label %20

; <label>:20:                                     ; preds = %58, %19
  %21 = load %struct.node*, %struct.node** %3, align 8
  %22 = icmp ne %struct.node* %21, null
  br i1 %22, label %23, label %63

; <label>:23:                                     ; preds = %20
  %24 = load %struct.node*, %struct.node** %3, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %42

; <label>:28:                                     ; preds = %23
  %29 = load %struct.node*, %struct.node** %3, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 6
  %31 = load %struct.arc*, %struct.arc** %30, align 8
  %32 = getelementptr inbounds %struct.arc, %struct.arc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.node*, %struct.node** %3, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 3
  %36 = load %struct.node*, %struct.node** %35, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %33, %38
  %40 = load %struct.node*, %struct.node** %3, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %58

; <label>:42:                                     ; preds = %23
  %43 = load %struct.node*, %struct.node** %3, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %45 = load %struct.node*, %struct.node** %44, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.node*, %struct.node** %3, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 6
  %50 = load %struct.arc*, %struct.arc** %49, align 8
  %51 = getelementptr inbounds %struct.arc, %struct.arc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %47, %52
  %54 = load %struct.node*, %struct.node** %3, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %58

; <label>:58:                                     ; preds = %42, %28
  %59 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %59, %struct.node** %4, align 8
  %60 = load %struct.node*, %struct.node** %3, align 8
  %61 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 2
  %62 = load %struct.node*, %struct.node** %61, align 8
  store %struct.node* %62, %struct.node** %3, align 8
  br label %20

; <label>:63:                                     ; preds = %20
  %64 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %64, %struct.node** %3, align 8
  br label %65

; <label>:65:                                     ; preds = %82, %63
  %66 = load %struct.node*, %struct.node** %3, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 3
  %68 = load %struct.node*, %struct.node** %67, align 8
  %69 = icmp ne %struct.node* %68, null
  br i1 %69, label %70, label %83

; <label>:70:                                     ; preds = %65
  %71 = load %struct.node*, %struct.node** %3, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 4
  %73 = load %struct.node*, %struct.node** %72, align 8
  store %struct.node* %73, %struct.node** %4, align 8
  %74 = load %struct.node*, %struct.node** %4, align 8
  %75 = icmp ne %struct.node* %74, null
  br i1 %75, label %76, label %78

; <label>:76:                                     ; preds = %70
  %77 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %77, %struct.node** %3, align 8
  br label %83

; <label>:78:                                     ; preds = %70
  %79 = load %struct.node*, %struct.node** %3, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 3
  %81 = load %struct.node*, %struct.node** %80, align 8
  store %struct.node* %81, %struct.node** %3, align 8
  br label %82

; <label>:82:                                     ; preds = %78
  br label %65

; <label>:83:                                     ; preds = %76, %65
  br label %15

; <label>:84:                                     ; preds = %15
  %85 = load i64, i64* %6, align 8
  ret i64 %85
}

; Function Attrs: noinline nounwind optnone uwtable
define double @flow_cost(%struct.network*) #0 {
  %2 = alloca %struct.network*, align 8
  %3 = alloca %struct.arc*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.network* %0, %struct.network** %2, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.network*, %struct.network** %2, align 8
  %9 = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 24
  %10 = load %struct.arc*, %struct.arc** %9, align 8
  %11 = bitcast %struct.arc* %10 to i8*
  store i8* %11, i8** %5, align 8
  %12 = load %struct.network*, %struct.network** %2, align 8
  %13 = getelementptr inbounds %struct.network, %struct.network* %12, i32 0, i32 23
  %14 = load %struct.arc*, %struct.arc** %13, align 8
  store %struct.arc* %14, %struct.arc** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %32, %1
  %16 = load %struct.arc*, %struct.arc** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.arc*
  %19 = icmp ne %struct.arc* %16, %18
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %15
  %21 = load %struct.arc*, %struct.arc** %3, align 8
  %22 = getelementptr inbounds %struct.arc, %struct.arc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %20
  %26 = load %struct.arc*, %struct.arc** %3, align 8
  %27 = getelementptr inbounds %struct.arc, %struct.arc* %26, i32 0, i32 6
  store i64 1, i64* %27, align 8
  br label %31

; <label>:28:                                     ; preds = %20
  %29 = load %struct.arc*, %struct.arc** %3, align 8
  %30 = getelementptr inbounds %struct.arc, %struct.arc* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  br label %31

; <label>:31:                                     ; preds = %28, %25
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load %struct.arc*, %struct.arc** %3, align 8
  %34 = getelementptr inbounds %struct.arc, %struct.arc* %33, i32 1
  store %struct.arc* %34, %struct.arc** %3, align 8
  br label %15

; <label>:35:                                     ; preds = %15
  %36 = load %struct.network*, %struct.network** %2, align 8
  %37 = getelementptr inbounds %struct.network, %struct.network* %36, i32 0, i32 22
  %38 = load %struct.node*, %struct.node** %37, align 8
  %39 = bitcast %struct.node* %38 to i8*
  store i8* %39, i8** %5, align 8
  %40 = load %struct.network*, %struct.network** %2, align 8
  %41 = getelementptr inbounds %struct.network, %struct.network* %40, i32 0, i32 21
  %42 = load %struct.node*, %struct.node** %41, align 8
  store %struct.node* %42, %struct.node** %4, align 8
  %43 = load %struct.node*, %struct.node** %4, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 1
  store %struct.node* %44, %struct.node** %4, align 8
  br label %45

; <label>:45:                                     ; preds = %58, %35
  %46 = load %struct.node*, %struct.node** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = bitcast i8* %47 to %struct.node*
  %49 = icmp ne %struct.node* %46, %48
  br i1 %49, label %50, label %61

; <label>:50:                                     ; preds = %45
  %51 = load %struct.node*, %struct.node** %4, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 10
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.node*, %struct.node** %4, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 6
  %56 = load %struct.arc*, %struct.arc** %55, align 8
  %57 = getelementptr inbounds %struct.arc, %struct.arc* %56, i32 0, i32 6
  store i64 %53, i64* %57, align 8
  br label %58

; <label>:58:                                     ; preds = %50
  %59 = load %struct.node*, %struct.node** %4, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 1
  store %struct.node* %60, %struct.node** %4, align 8
  br label %45

; <label>:61:                                     ; preds = %45
  %62 = load %struct.network*, %struct.network** %2, align 8
  %63 = getelementptr inbounds %struct.network, %struct.network* %62, i32 0, i32 24
  %64 = load %struct.arc*, %struct.arc** %63, align 8
  %65 = bitcast %struct.arc* %64 to i8*
  store i8* %65, i8** %5, align 8
  %66 = load %struct.network*, %struct.network** %2, align 8
  %67 = getelementptr inbounds %struct.network, %struct.network* %66, i32 0, i32 23
  %68 = load %struct.arc*, %struct.arc** %67, align 8
  store %struct.arc* %68, %struct.arc** %3, align 8
  br label %69

; <label>:69:                                     ; preds = %121, %61
  %70 = load %struct.arc*, %struct.arc** %3, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = bitcast i8* %71 to %struct.arc*
  %73 = icmp ne %struct.arc* %70, %72
  br i1 %73, label %74, label %124

; <label>:74:                                     ; preds = %69
  %75 = load %struct.arc*, %struct.arc** %3, align 8
  %76 = getelementptr inbounds %struct.arc, %struct.arc* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %120

; <label>:79:                                     ; preds = %74
  %80 = load %struct.arc*, %struct.arc** %3, align 8
  %81 = getelementptr inbounds %struct.arc, %struct.arc* %80, i32 0, i32 1
  %82 = load %struct.node*, %struct.node** %81, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

; <label>:86:                                     ; preds = %79
  %87 = load %struct.arc*, %struct.arc** %3, align 8
  %88 = getelementptr inbounds %struct.arc, %struct.arc* %87, i32 0, i32 2
  %89 = load %struct.node*, %struct.node** %88, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %119, label %93

; <label>:93:                                     ; preds = %86, %79
  %94 = load %struct.arc*, %struct.arc** %3, align 8
  %95 = getelementptr inbounds %struct.arc, %struct.arc* %94, i32 0, i32 1
  %96 = load %struct.node*, %struct.node** %95, align 8
  %97 = getelementptr inbounds %struct.node, %struct.node* %96, i32 0, i32 12
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

; <label>:100:                                    ; preds = %93
  %101 = load %struct.arc*, %struct.arc** %3, align 8
  %102 = getelementptr inbounds %struct.arc, %struct.arc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.network*, %struct.network** %2, align 8
  %105 = getelementptr inbounds %struct.network, %struct.network* %104, i32 0, i32 18
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load i64, i64* %7, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %6, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %118

; <label>:112:                                    ; preds = %93
  %113 = load %struct.arc*, %struct.arc** %3, align 8
  %114 = getelementptr inbounds %struct.arc, %struct.arc* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %7, align 8
  br label %118

; <label>:118:                                    ; preds = %112, %100
  br label %119

; <label>:119:                                    ; preds = %118, %86
  br label %120

; <label>:120:                                    ; preds = %119, %74
  br label %121

; <label>:121:                                    ; preds = %120
  %122 = load %struct.arc*, %struct.arc** %3, align 8
  %123 = getelementptr inbounds %struct.arc, %struct.arc* %122, i32 1
  store %struct.arc* %123, %struct.arc** %3, align 8
  br label %69

; <label>:124:                                    ; preds = %69
  %125 = load i64, i64* %6, align 8
  %126 = sitofp i64 %125 to double
  %127 = load %struct.network*, %struct.network** %2, align 8
  %128 = getelementptr inbounds %struct.network, %struct.network* %127, i32 0, i32 18
  %129 = load i64, i64* %128, align 8
  %130 = sitofp i64 %129 to double
  %131 = fmul double %126, %130
  %132 = load i64, i64* %7, align 8
  %133 = sitofp i64 %132 to double
  %134 = fadd double %131, %133
  ret double %134
}

; Function Attrs: noinline nounwind optnone uwtable
define double @flow_org_cost(%struct.network*) #0 {
  %2 = alloca %struct.network*, align 8
  %3 = alloca %struct.arc*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.network* %0, %struct.network** %2, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.network*, %struct.network** %2, align 8
  %9 = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 24
  %10 = load %struct.arc*, %struct.arc** %9, align 8
  %11 = bitcast %struct.arc* %10 to i8*
  store i8* %11, i8** %5, align 8
  %12 = load %struct.network*, %struct.network** %2, align 8
  %13 = getelementptr inbounds %struct.network, %struct.network* %12, i32 0, i32 23
  %14 = load %struct.arc*, %struct.arc** %13, align 8
  store %struct.arc* %14, %struct.arc** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %32, %1
  %16 = load %struct.arc*, %struct.arc** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.arc*
  %19 = icmp ne %struct.arc* %16, %18
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %15
  %21 = load %struct.arc*, %struct.arc** %3, align 8
  %22 = getelementptr inbounds %struct.arc, %struct.arc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %20
  %26 = load %struct.arc*, %struct.arc** %3, align 8
  %27 = getelementptr inbounds %struct.arc, %struct.arc* %26, i32 0, i32 6
  store i64 1, i64* %27, align 8
  br label %31

; <label>:28:                                     ; preds = %20
  %29 = load %struct.arc*, %struct.arc** %3, align 8
  %30 = getelementptr inbounds %struct.arc, %struct.arc* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  br label %31

; <label>:31:                                     ; preds = %28, %25
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load %struct.arc*, %struct.arc** %3, align 8
  %34 = getelementptr inbounds %struct.arc, %struct.arc* %33, i32 1
  store %struct.arc* %34, %struct.arc** %3, align 8
  br label %15

; <label>:35:                                     ; preds = %15
  %36 = load %struct.network*, %struct.network** %2, align 8
  %37 = getelementptr inbounds %struct.network, %struct.network* %36, i32 0, i32 22
  %38 = load %struct.node*, %struct.node** %37, align 8
  %39 = bitcast %struct.node* %38 to i8*
  store i8* %39, i8** %5, align 8
  %40 = load %struct.network*, %struct.network** %2, align 8
  %41 = getelementptr inbounds %struct.network, %struct.network* %40, i32 0, i32 21
  %42 = load %struct.node*, %struct.node** %41, align 8
  store %struct.node* %42, %struct.node** %4, align 8
  %43 = load %struct.node*, %struct.node** %4, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 1
  store %struct.node* %44, %struct.node** %4, align 8
  br label %45

; <label>:45:                                     ; preds = %58, %35
  %46 = load %struct.node*, %struct.node** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = bitcast i8* %47 to %struct.node*
  %49 = icmp ne %struct.node* %46, %48
  br i1 %49, label %50, label %61

; <label>:50:                                     ; preds = %45
  %51 = load %struct.node*, %struct.node** %4, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 10
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.node*, %struct.node** %4, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 6
  %56 = load %struct.arc*, %struct.arc** %55, align 8
  %57 = getelementptr inbounds %struct.arc, %struct.arc* %56, i32 0, i32 6
  store i64 %53, i64* %57, align 8
  br label %58

; <label>:58:                                     ; preds = %50
  %59 = load %struct.node*, %struct.node** %4, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 1
  store %struct.node* %60, %struct.node** %4, align 8
  br label %45

; <label>:61:                                     ; preds = %45
  %62 = load %struct.network*, %struct.network** %2, align 8
  %63 = getelementptr inbounds %struct.network, %struct.network* %62, i32 0, i32 24
  %64 = load %struct.arc*, %struct.arc** %63, align 8
  %65 = bitcast %struct.arc* %64 to i8*
  store i8* %65, i8** %5, align 8
  %66 = load %struct.network*, %struct.network** %2, align 8
  %67 = getelementptr inbounds %struct.network, %struct.network* %66, i32 0, i32 23
  %68 = load %struct.arc*, %struct.arc** %67, align 8
  store %struct.arc* %68, %struct.arc** %3, align 8
  br label %69

; <label>:69:                                     ; preds = %121, %61
  %70 = load %struct.arc*, %struct.arc** %3, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = bitcast i8* %71 to %struct.arc*
  %73 = icmp ne %struct.arc* %70, %72
  br i1 %73, label %74, label %124

; <label>:74:                                     ; preds = %69
  %75 = load %struct.arc*, %struct.arc** %3, align 8
  %76 = getelementptr inbounds %struct.arc, %struct.arc* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %120

; <label>:79:                                     ; preds = %74
  %80 = load %struct.arc*, %struct.arc** %3, align 8
  %81 = getelementptr inbounds %struct.arc, %struct.arc* %80, i32 0, i32 1
  %82 = load %struct.node*, %struct.node** %81, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

; <label>:86:                                     ; preds = %79
  %87 = load %struct.arc*, %struct.arc** %3, align 8
  %88 = getelementptr inbounds %struct.arc, %struct.arc* %87, i32 0, i32 2
  %89 = load %struct.node*, %struct.node** %88, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %119, label %93

; <label>:93:                                     ; preds = %86, %79
  %94 = load %struct.arc*, %struct.arc** %3, align 8
  %95 = getelementptr inbounds %struct.arc, %struct.arc* %94, i32 0, i32 1
  %96 = load %struct.node*, %struct.node** %95, align 8
  %97 = getelementptr inbounds %struct.node, %struct.node* %96, i32 0, i32 12
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

; <label>:100:                                    ; preds = %93
  %101 = load %struct.arc*, %struct.arc** %3, align 8
  %102 = getelementptr inbounds %struct.arc, %struct.arc* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.network*, %struct.network** %2, align 8
  %105 = getelementptr inbounds %struct.network, %struct.network* %104, i32 0, i32 18
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load i64, i64* %7, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %6, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %118

; <label>:112:                                    ; preds = %93
  %113 = load %struct.arc*, %struct.arc** %3, align 8
  %114 = getelementptr inbounds %struct.arc, %struct.arc* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %7, align 8
  br label %118

; <label>:118:                                    ; preds = %112, %100
  br label %119

; <label>:119:                                    ; preds = %118, %86
  br label %120

; <label>:120:                                    ; preds = %119, %74
  br label %121

; <label>:121:                                    ; preds = %120
  %122 = load %struct.arc*, %struct.arc** %3, align 8
  %123 = getelementptr inbounds %struct.arc, %struct.arc* %122, i32 1
  store %struct.arc* %123, %struct.arc** %3, align 8
  br label %69

; <label>:124:                                    ; preds = %69
  %125 = load i64, i64* %6, align 8
  %126 = sitofp i64 %125 to double
  %127 = load %struct.network*, %struct.network** %2, align 8
  %128 = getelementptr inbounds %struct.network, %struct.network* %127, i32 0, i32 18
  %129 = load i64, i64* %128, align 8
  %130 = sitofp i64 %129 to double
  %131 = fmul double %126, %130
  %132 = load i64, i64* %7, align 8
  %133 = sitofp i64 %132 to double
  %134 = fadd double %131, %133
  ret double %134
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @primal_feasible(%struct.network*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.network*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.arc*, align 8
  %7 = alloca %struct.arc*, align 8
  %8 = alloca %struct.arc*, align 8
  %9 = alloca i64, align 8
  store %struct.network* %0, %struct.network** %3, align 8
  %10 = load %struct.network*, %struct.network** %3, align 8
  %11 = getelementptr inbounds %struct.network, %struct.network* %10, i32 0, i32 25
  %12 = load %struct.arc*, %struct.arc** %11, align 8
  store %struct.arc* %12, %struct.arc** %6, align 8
  %13 = load %struct.network*, %struct.network** %3, align 8
  %14 = getelementptr inbounds %struct.network, %struct.network* %13, i32 0, i32 26
  %15 = load %struct.arc*, %struct.arc** %14, align 8
  store %struct.arc* %15, %struct.arc** %7, align 8
  %16 = load %struct.network*, %struct.network** %3, align 8
  %17 = getelementptr inbounds %struct.network, %struct.network* %16, i32 0, i32 21
  %18 = load %struct.node*, %struct.node** %17, align 8
  store %struct.node* %18, %struct.node** %5, align 8
  %19 = load %struct.network*, %struct.network** %3, align 8
  %20 = getelementptr inbounds %struct.network, %struct.network* %19, i32 0, i32 22
  %21 = load %struct.node*, %struct.node** %20, align 8
  %22 = bitcast %struct.node* %21 to i8*
  store i8* %22, i8** %4, align 8
  %23 = load %struct.node*, %struct.node** %5, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 1
  store %struct.node* %24, %struct.node** %5, align 8
  br label %25

; <label>:25:                                     ; preds = %88, %1
  %26 = load %struct.node*, %struct.node** %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = bitcast i8* %27 to %struct.node*
  %29 = icmp ult %struct.node* %26, %28
  br i1 %29, label %30, label %91

; <label>:30:                                     ; preds = %25
  %31 = load %struct.node*, %struct.node** %5, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 6
  %33 = load %struct.arc*, %struct.arc** %32, align 8
  store %struct.arc* %33, %struct.arc** %8, align 8
  %34 = load %struct.node*, %struct.node** %5, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 10
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.arc*, %struct.arc** %8, align 8
  %38 = load %struct.arc*, %struct.arc** %6, align 8
  %39 = icmp uge %struct.arc* %37, %38
  br i1 %39, label %40, label %66

; <label>:40:                                     ; preds = %30
  %41 = load %struct.arc*, %struct.arc** %8, align 8
  %42 = load %struct.arc*, %struct.arc** %7, align 8
  %43 = icmp ult %struct.arc* %41, %42
  br i1 %43, label %44, label %66

; <label>:44:                                     ; preds = %40
  %45 = load i64, i64* %9, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %44
  %48 = load i64, i64* %9, align 8
  br label %52

; <label>:49:                                     ; preds = %44
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 0, %50
  br label %52

; <label>:52:                                     ; preds = %49, %47
  %53 = phi i64 [ %48, %47 ], [ %51, %49 ]
  %54 = load %struct.network*, %struct.network** %3, align 8
  %55 = getelementptr inbounds %struct.network, %struct.network* %54, i32 0, i32 16
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %65

; <label>:58:                                     ; preds = %52
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %60 = load %struct.node*, %struct.node** %5, align 8
  %61 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 %62, i64 %63)
  br label %65

; <label>:65:                                     ; preds = %58, %52
  br label %87

; <label>:66:                                     ; preds = %40, %30
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.network*, %struct.network** %3, align 8
  %69 = getelementptr inbounds %struct.network, %struct.network* %68, i32 0, i32 16
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 0, %70
  %72 = icmp slt i64 %67, %71
  br i1 %72, label %80, label %73

; <label>:73:                                     ; preds = %66
  %74 = load i64, i64* %9, align 8
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.network*, %struct.network** %3, align 8
  %77 = getelementptr inbounds %struct.network, %struct.network* %76, i32 0, i32 16
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %86

; <label>:80:                                     ; preds = %73, %66
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %82 = load i64, i64* %9, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i64 %82)
  %84 = load %struct.network*, %struct.network** %3, align 8
  %85 = getelementptr inbounds %struct.network, %struct.network* %84, i32 0, i32 13
  store i64 0, i64* %85, align 8
  store i64 1, i64* %2, align 8
  br label %94

; <label>:86:                                     ; preds = %73
  br label %87

; <label>:87:                                     ; preds = %86, %65
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load %struct.node*, %struct.node** %5, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 1
  store %struct.node* %90, %struct.node** %5, align 8
  br label %25

; <label>:91:                                     ; preds = %25
  %92 = load %struct.network*, %struct.network** %3, align 8
  %93 = getelementptr inbounds %struct.network, %struct.network* %92, i32 0, i32 13
  store i64 1, i64* %93, align 8
  store i64 0, i64* %2, align 8
  br label %94

; <label>:94:                                     ; preds = %91, %80
  %95 = load i64, i64* %2, align 8
  ret i64 %95
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @dual_feasible(%struct.network*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.network*, align 8
  %4 = alloca %struct.arc*, align 8
  %5 = alloca %struct.arc*, align 8
  %6 = alloca i64, align 8
  store %struct.network* %0, %struct.network** %3, align 8
  %7 = load %struct.network*, %struct.network** %3, align 8
  %8 = getelementptr inbounds %struct.network, %struct.network* %7, i32 0, i32 24
  %9 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %9, %struct.arc** %5, align 8
  %10 = load %struct.network*, %struct.network** %3, align 8
  %11 = getelementptr inbounds %struct.network, %struct.network* %10, i32 0, i32 23
  %12 = load %struct.arc*, %struct.arc** %11, align 8
  store %struct.arc* %12, %struct.arc** %4, align 8
  br label %13

; <label>:13:                                     ; preds = %56, %1
  %14 = load %struct.arc*, %struct.arc** %4, align 8
  %15 = load %struct.arc*, %struct.arc** %5, align 8
  %16 = icmp ult %struct.arc* %14, %15
  br i1 %16, label %17, label %59

; <label>:17:                                     ; preds = %13
  %18 = load %struct.arc*, %struct.arc** %4, align 8
  %19 = getelementptr inbounds %struct.arc, %struct.arc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.arc*, %struct.arc** %4, align 8
  %22 = getelementptr inbounds %struct.arc, %struct.arc* %21, i32 0, i32 1
  %23 = load %struct.node*, %struct.node** %22, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %20, %25
  %27 = load %struct.arc*, %struct.arc** %4, align 8
  %28 = getelementptr inbounds %struct.arc, %struct.arc* %27, i32 0, i32 2
  %29 = load %struct.node*, %struct.node** %28, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  store i64 %32, i64* %6, align 8
  %33 = load %struct.arc*, %struct.arc** %4, align 8
  %34 = getelementptr inbounds %struct.arc, %struct.arc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %54 [
    i32 0, label %36
    i32 1, label %36
    i32 2, label %45
    i32 -1, label %53
  ]

; <label>:36:                                     ; preds = %17, %17
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.network*, %struct.network** %3, align 8
  %39 = getelementptr inbounds %struct.network, %struct.network* %38, i32 0, i32 16
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 0, %40
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %36
  br label %60

; <label>:44:                                     ; preds = %36
  br label %55

; <label>:45:                                     ; preds = %17
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.network*, %struct.network** %3, align 8
  %48 = getelementptr inbounds %struct.network, %struct.network* %47, i32 0, i32 16
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %45
  br label %60

; <label>:52:                                     ; preds = %45
  br label %55

; <label>:53:                                     ; preds = %17
  br label %54

; <label>:54:                                     ; preds = %17, %53
  br label %55

; <label>:55:                                     ; preds = %54, %52, %44
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load %struct.arc*, %struct.arc** %4, align 8
  %58 = getelementptr inbounds %struct.arc, %struct.arc* %57, i32 1
  store %struct.arc* %58, %struct.arc** %4, align 8
  br label %13

; <label>:59:                                     ; preds = %13
  store i64 0, i64* %2, align 8
  br label %65

; <label>:60:                                     ; preds = %51, %43
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store i64 1, i64* %2, align 8
  br label %65

; <label>:65:                                     ; preds = %60, %59
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @getfree(%struct.network*) #0 {
  %2 = alloca %struct.network*, align 8
  store %struct.network* %0, %struct.network** %2, align 8
  %3 = load %struct.network*, %struct.network** %2, align 8
  %4 = getelementptr inbounds %struct.network, %struct.network* %3, i32 0, i32 21
  %5 = load %struct.node*, %struct.node** %4, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %1
  %8 = load %struct.network*, %struct.network** %2, align 8
  %9 = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 21
  %10 = load %struct.node*, %struct.node** %9, align 8
  %11 = bitcast %struct.node* %10 to i8*
  call void @free(i8* %11) #3
  br label %12

; <label>:12:                                     ; preds = %7, %1
  %13 = load %struct.network*, %struct.network** %2, align 8
  %14 = getelementptr inbounds %struct.network, %struct.network* %13, i32 0, i32 23
  %15 = load %struct.arc*, %struct.arc** %14, align 8
  %16 = icmp ne %struct.arc* %15, null
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %12
  %18 = load %struct.network*, %struct.network** %2, align 8
  %19 = getelementptr inbounds %struct.network, %struct.network* %18, i32 0, i32 23
  %20 = load %struct.arc*, %struct.arc** %19, align 8
  %21 = bitcast %struct.arc* %20 to i8*
  call void @free(i8* %21) #3
  br label %22

; <label>:22:                                     ; preds = %17, %12
  %23 = load %struct.network*, %struct.network** %2, align 8
  %24 = getelementptr inbounds %struct.network, %struct.network* %23, i32 0, i32 25
  %25 = load %struct.arc*, %struct.arc** %24, align 8
  %26 = icmp ne %struct.arc* %25, null
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %22
  %28 = load %struct.network*, %struct.network** %2, align 8
  %29 = getelementptr inbounds %struct.network, %struct.network* %28, i32 0, i32 25
  %30 = load %struct.arc*, %struct.arc** %29, align 8
  %31 = bitcast %struct.arc* %30 to i8*
  call void @free(i8* %31) #3
  br label %32

; <label>:32:                                     ; preds = %27, %22
  %33 = load %struct.network*, %struct.network** %2, align 8
  %34 = getelementptr inbounds %struct.network, %struct.network* %33, i32 0, i32 22
  store %struct.node* null, %struct.node** %34, align 8
  %35 = load %struct.network*, %struct.network** %2, align 8
  %36 = getelementptr inbounds %struct.network, %struct.network* %35, i32 0, i32 21
  store %struct.node* null, %struct.node** %36, align 8
  %37 = load %struct.network*, %struct.network** %2, align 8
  %38 = getelementptr inbounds %struct.network, %struct.network* %37, i32 0, i32 24
  store %struct.arc* null, %struct.arc** %38, align 8
  %39 = load %struct.network*, %struct.network** %2, align 8
  %40 = getelementptr inbounds %struct.network, %struct.network* %39, i32 0, i32 23
  store %struct.arc* null, %struct.arc** %40, align 8
  %41 = load %struct.network*, %struct.network** %2, align 8
  %42 = getelementptr inbounds %struct.network, %struct.network* %41, i32 0, i32 26
  store %struct.arc* null, %struct.arc** %42, align 8
  %43 = load %struct.network*, %struct.network** %2, align 8
  %44 = getelementptr inbounds %struct.network, %struct.network* %43, i32 0, i32 25
  store %struct.arc* null, %struct.arc** %44, align 8
  ret i64 0
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
