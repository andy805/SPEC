; ModuleID = 'output.c'
source_filename = "output.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @write_circulations(i8*, %struct.network*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.network*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.arc*, align 8
  %8 = alloca %struct.arc*, align 8
  %9 = alloca %struct.arc*, align 8
  %10 = alloca %struct.arc*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.network* %1, %struct.network** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8
  %11 = load %struct.network*, %struct.network** %5, align 8
  %12 = getelementptr inbounds %struct.network, %struct.network* %11, i32 0, i32 24
  %13 = load %struct.arc*, %struct.arc** %12, align 8
  %14 = load %struct.network*, %struct.network** %5, align 8
  %15 = getelementptr inbounds %struct.network, %struct.network* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 0, %16
  %18 = getelementptr inbounds %struct.arc, %struct.arc* %13, i64 %17
  store %struct.arc* %18, %struct.arc** %10, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** %6, align 8
  %21 = icmp eq %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %114

; <label>:23:                                     ; preds = %2
  %24 = load %struct.network*, %struct.network** %5, align 8
  call void @refresh_neighbour_lists(%struct.network* %24)
  %25 = load %struct.network*, %struct.network** %5, align 8
  %26 = getelementptr inbounds %struct.network, %struct.network* %25, i32 0, i32 21
  %27 = load %struct.node*, %struct.node** %26, align 8
  %28 = load %struct.network*, %struct.network** %5, align 8
  %29 = getelementptr inbounds %struct.network, %struct.network* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %27, i64 %30
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 7
  %33 = load %struct.arc*, %struct.arc** %32, align 8
  store %struct.arc* %33, %struct.arc** %7, align 8
  br label %34

; <label>:34:                                     ; preds = %107, %23
  %35 = load %struct.arc*, %struct.arc** %7, align 8
  %36 = icmp ne %struct.arc* %35, null
  br i1 %36, label %37, label %111

; <label>:37:                                     ; preds = %34
  %38 = load %struct.arc*, %struct.arc** %7, align 8
  %39 = getelementptr inbounds %struct.arc, %struct.arc* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %106

; <label>:42:                                     ; preds = %37
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %45 = load %struct.arc*, %struct.arc** %7, align 8
  store %struct.arc* %45, %struct.arc** %8, align 8
  br label %46

; <label>:46:                                     ; preds = %104, %42
  %47 = load %struct.arc*, %struct.arc** %8, align 8
  %48 = icmp ne %struct.arc* %47, null
  br i1 %48, label %49, label %105

; <label>:49:                                     ; preds = %46
  %50 = load %struct.arc*, %struct.arc** %8, align 8
  %51 = load %struct.arc*, %struct.arc** %10, align 8
  %52 = icmp uge %struct.arc* %50, %51
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %49
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  br label %56

; <label>:56:                                     ; preds = %53, %49
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %58 = load %struct.arc*, %struct.arc** %8, align 8
  %59 = getelementptr inbounds %struct.arc, %struct.arc* %58, i32 0, i32 2
  %60 = load %struct.node*, %struct.node** %59, align 8
  %61 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 0, %62
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %63)
  %65 = load %struct.arc*, %struct.arc** %8, align 8
  %66 = getelementptr inbounds %struct.arc, %struct.arc* %65, i32 0, i32 2
  %67 = load %struct.node*, %struct.node** %66, align 8
  %68 = load %struct.network*, %struct.network** %5, align 8
  %69 = getelementptr inbounds %struct.network, %struct.network* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %67, i64 %70
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 7
  %73 = load %struct.arc*, %struct.arc** %72, align 8
  store %struct.arc* %73, %struct.arc** %9, align 8
  br label %74

; <label>:74:                                     ; preds = %84, %56
  %75 = load %struct.arc*, %struct.arc** %9, align 8
  %76 = icmp ne %struct.arc* %75, null
  br i1 %76, label %77, label %88

; <label>:77:                                     ; preds = %74
  %78 = load %struct.arc*, %struct.arc** %9, align 8
  %79 = getelementptr inbounds %struct.arc, %struct.arc* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %77
  br label %88

; <label>:83:                                     ; preds = %77
  br label %84

; <label>:84:                                     ; preds = %83
  %85 = load %struct.arc*, %struct.arc** %9, align 8
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %85, i32 0, i32 4
  %87 = load %struct.arc*, %struct.arc** %86, align 8
  store %struct.arc* %87, %struct.arc** %9, align 8
  br label %74

; <label>:88:                                     ; preds = %82, %74
  %89 = load %struct.arc*, %struct.arc** %9, align 8
  %90 = icmp ne %struct.arc* %89, null
  br i1 %90, label %94, label %91

; <label>:91:                                     ; preds = %88
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %93 = call i32 @fclose(%struct._IO_FILE* %92)
  store i64 -1, i64* %3, align 8
  br label %114

; <label>:94:                                     ; preds = %88
  %95 = load %struct.arc*, %struct.arc** %9, align 8
  %96 = getelementptr inbounds %struct.arc, %struct.arc* %95, i32 0, i32 2
  %97 = load %struct.node*, %struct.node** %96, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

; <label>:101:                                    ; preds = %94
  %102 = load %struct.arc*, %struct.arc** %9, align 8
  store %struct.arc* %102, %struct.arc** %8, align 8
  br label %104

; <label>:103:                                    ; preds = %94
  store %struct.arc* null, %struct.arc** %8, align 8
  br label %104

; <label>:104:                                    ; preds = %103, %101
  br label %46

; <label>:105:                                    ; preds = %46
  br label %106

; <label>:106:                                    ; preds = %105, %37
  br label %107

; <label>:107:                                    ; preds = %106
  %108 = load %struct.arc*, %struct.arc** %7, align 8
  %109 = getelementptr inbounds %struct.arc, %struct.arc* %108, i32 0, i32 4
  %110 = load %struct.arc*, %struct.arc** %109, align 8
  store %struct.arc* %110, %struct.arc** %7, align 8
  br label %34

; <label>:111:                                    ; preds = %34
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %113 = call i32 @fclose(%struct._IO_FILE* %112)
  store i64 0, i64* %3, align 8
  br label %114

; <label>:114:                                    ; preds = %111, %91, %22
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @refresh_neighbour_lists(%struct.network*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
