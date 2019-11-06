; ModuleID = 'gki.c'
source_filename = "gki.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [6 x i8] c"gki.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Total keys:        %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Hash table size:   %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Average occupancy: %.1f\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Unoccupied slots:  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Most in one slot:  %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Least in one slot: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"bad primelevel in gki_alloc()\00", align 1
@gki_primes = internal global [4 x i32] [i32 101, i32 1009, i32 10007, i32 100003], align 16

; Function Attrs: noinline nounwind optnone uwtable
define %struct.GKI* @GKIInit() #0 {
  %1 = alloca %struct.GKI*, align 8
  %2 = call %struct.GKI* @gki_alloc(i32 0)
  store %struct.GKI* %2, %struct.GKI** %1, align 8
  %3 = load %struct.GKI*, %struct.GKI** %1, align 8
  ret %struct.GKI* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GKI* @gki_alloc(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.GKI*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sge i32 %8, 4
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7, %1
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  br label %11

; <label>:11:                                     ; preds = %10, %7
  %12 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 294, i64 24)
  %13 = bitcast i8* %12 to %struct.GKI*
  store %struct.GKI* %13, %struct.GKI** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.GKI*, %struct.GKI** %3, align 8
  %16 = getelementptr inbounds %struct.GKI, %struct.GKI* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.GKI*, %struct.GKI** %3, align 8
  %18 = getelementptr inbounds %struct.GKI, %struct.GKI* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* @gki_primes, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.GKI*, %struct.GKI** %3, align 8
  %24 = getelementptr inbounds %struct.GKI, %struct.GKI* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.GKI*, %struct.GKI** %3, align 8
  %26 = getelementptr inbounds %struct.GKI, %struct.GKI* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 24, %28
  %30 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 298, i64 %29)
  %31 = bitcast i8* %30 to %struct.gki_elem**
  %32 = load %struct.GKI*, %struct.GKI** %3, align 8
  %33 = getelementptr inbounds %struct.GKI, %struct.GKI* %32, i32 0, i32 0
  store %struct.gki_elem** %31, %struct.gki_elem*** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

; <label>:34:                                     ; preds = %47, %11
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.GKI*, %struct.GKI** %3, align 8
  %37 = getelementptr inbounds %struct.GKI, %struct.GKI* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %50

; <label>:40:                                     ; preds = %34
  %41 = load %struct.GKI*, %struct.GKI** %3, align 8
  %42 = getelementptr inbounds %struct.GKI, %struct.GKI* %41, i32 0, i32 0
  %43 = load %struct.gki_elem**, %struct.gki_elem*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %43, i64 %45
  store %struct.gki_elem* null, %struct.gki_elem** %46, align 8
  br label %47

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %34

; <label>:50:                                     ; preds = %34
  %51 = load %struct.GKI*, %struct.GKI** %3, align 8
  %52 = getelementptr inbounds %struct.GKI, %struct.GKI* %51, i32 0, i32 3
  store i32 0, i32* %52, align 8
  %53 = load %struct.GKI*, %struct.GKI** %3, align 8
  ret %struct.GKI* %53
}

; Function Attrs: noinline nounwind optnone uwtable
define void @GKIFree(%struct.GKI*) #0 {
  %2 = alloca %struct.GKI*, align 8
  %3 = alloca %struct.gki_elem*, align 8
  %4 = alloca i32, align 4
  store %struct.GKI* %0, %struct.GKI** %2, align 8
  %5 = load %struct.GKI*, %struct.GKI** %2, align 8
  %6 = icmp eq %struct.GKI* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  br label %82

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

; <label>:9:                                      ; preds = %72, %8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.GKI*, %struct.GKI** %2, align 8
  %12 = getelementptr inbounds %struct.GKI, %struct.GKI* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %75

; <label>:15:                                     ; preds = %9
  br label %16

; <label>:16:                                     ; preds = %55, %15
  %17 = load %struct.GKI*, %struct.GKI** %2, align 8
  %18 = getelementptr inbounds %struct.GKI, %struct.GKI* %17, i32 0, i32 0
  %19 = load %struct.gki_elem**, %struct.gki_elem*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %19, i64 %21
  %23 = load %struct.gki_elem*, %struct.gki_elem** %22, align 8
  %24 = icmp ne %struct.gki_elem* %23, null
  br i1 %24, label %25, label %71

; <label>:25:                                     ; preds = %16
  %26 = load %struct.GKI*, %struct.GKI** %2, align 8
  %27 = getelementptr inbounds %struct.GKI, %struct.GKI* %26, i32 0, i32 0
  %28 = load %struct.gki_elem**, %struct.gki_elem*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %28, i64 %30
  %32 = load %struct.gki_elem*, %struct.gki_elem** %31, align 8
  %33 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %32, i32 0, i32 2
  %34 = load %struct.gki_elem*, %struct.gki_elem** %33, align 8
  store %struct.gki_elem* %34, %struct.gki_elem** %3, align 8
  %35 = load %struct.GKI*, %struct.GKI** %2, align 8
  %36 = getelementptr inbounds %struct.GKI, %struct.GKI* %35, i32 0, i32 0
  %37 = load %struct.gki_elem**, %struct.gki_elem*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %37, i64 %39
  %41 = load %struct.gki_elem*, %struct.gki_elem** %40, align 8
  %42 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

; <label>:45:                                     ; preds = %25
  %46 = load %struct.GKI*, %struct.GKI** %2, align 8
  %47 = getelementptr inbounds %struct.GKI, %struct.GKI* %46, i32 0, i32 0
  %48 = load %struct.gki_elem**, %struct.gki_elem*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %48, i64 %50
  %52 = load %struct.gki_elem*, %struct.gki_elem** %51, align 8
  %53 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  call void @free(i8* %54) #4
  br label %55

; <label>:55:                                     ; preds = %45, %25
  %56 = load %struct.GKI*, %struct.GKI** %2, align 8
  %57 = getelementptr inbounds %struct.GKI, %struct.GKI* %56, i32 0, i32 0
  %58 = load %struct.gki_elem**, %struct.gki_elem*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %58, i64 %60
  %62 = load %struct.gki_elem*, %struct.gki_elem** %61, align 8
  %63 = bitcast %struct.gki_elem* %62 to i8*
  call void @free(i8* %63) #4
  %64 = load %struct.gki_elem*, %struct.gki_elem** %3, align 8
  %65 = load %struct.GKI*, %struct.GKI** %2, align 8
  %66 = getelementptr inbounds %struct.GKI, %struct.GKI* %65, i32 0, i32 0
  %67 = load %struct.gki_elem**, %struct.gki_elem*** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %67, i64 %69
  store %struct.gki_elem* %64, %struct.gki_elem** %70, align 8
  br label %16

; <label>:71:                                     ; preds = %16
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %9

; <label>:75:                                     ; preds = %9
  %76 = load %struct.GKI*, %struct.GKI** %2, align 8
  %77 = getelementptr inbounds %struct.GKI, %struct.GKI* %76, i32 0, i32 0
  %78 = load %struct.gki_elem**, %struct.gki_elem*** %77, align 8
  %79 = bitcast %struct.gki_elem** %78 to i8*
  call void @free(i8* %79) #4
  %80 = load %struct.GKI*, %struct.GKI** %2, align 8
  %81 = bitcast %struct.GKI* %80 to i8*
  call void @free(i8* %81) #4
  br label %82

; <label>:82:                                     ; preds = %75, %7
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @GKIStoreKey(%struct.GKI*, i8*) #0 {
  %3 = alloca %struct.GKI*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gki_elem*, align 8
  store %struct.GKI* %0, %struct.GKI** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.GKI*, %struct.GKI** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @gki_hashvalue(%struct.GKI* %7, i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.GKI*, %struct.GKI** %3, align 8
  %11 = getelementptr inbounds %struct.GKI, %struct.GKI* %10, i32 0, i32 0
  %12 = load %struct.gki_elem**, %struct.gki_elem*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %12, i64 %14
  %16 = load %struct.gki_elem*, %struct.gki_elem** %15, align 8
  store %struct.gki_elem* %16, %struct.gki_elem** %6, align 8
  %17 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 189, i64 24)
  %18 = bitcast i8* %17 to %struct.gki_elem*
  %19 = load %struct.GKI*, %struct.GKI** %3, align 8
  %20 = getelementptr inbounds %struct.GKI, %struct.GKI* %19, i32 0, i32 0
  %21 = load %struct.gki_elem**, %struct.gki_elem*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %21, i64 %23
  store %struct.gki_elem* %18, %struct.gki_elem** %24, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strlen(i8* %25) #5
  %27 = add i64 %26, 1
  %28 = mul i64 1, %27
  %29 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 190, i64 %28)
  %30 = load %struct.GKI*, %struct.GKI** %3, align 8
  %31 = getelementptr inbounds %struct.GKI, %struct.GKI* %30, i32 0, i32 0
  %32 = load %struct.gki_elem**, %struct.gki_elem*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %32, i64 %34
  %36 = load %struct.gki_elem*, %struct.gki_elem** %35, align 8
  %37 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %36, i32 0, i32 0
  store i8* %29, i8** %37, align 8
  %38 = load %struct.GKI*, %struct.GKI** %3, align 8
  %39 = getelementptr inbounds %struct.GKI, %struct.GKI* %38, i32 0, i32 0
  %40 = load %struct.gki_elem**, %struct.gki_elem*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %40, i64 %42
  %44 = load %struct.gki_elem*, %struct.gki_elem** %43, align 8
  %45 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @strcpy(i8* %46, i8* %47) #4
  %49 = load %struct.GKI*, %struct.GKI** %3, align 8
  %50 = getelementptr inbounds %struct.GKI, %struct.GKI* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.GKI*, %struct.GKI** %3, align 8
  %53 = getelementptr inbounds %struct.GKI, %struct.GKI* %52, i32 0, i32 0
  %54 = load %struct.gki_elem**, %struct.gki_elem*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %54, i64 %56
  %58 = load %struct.gki_elem*, %struct.gki_elem** %57, align 8
  %59 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %58, i32 0, i32 1
  store i32 %51, i32* %59, align 8
  %60 = load %struct.gki_elem*, %struct.gki_elem** %6, align 8
  %61 = load %struct.GKI*, %struct.GKI** %3, align 8
  %62 = getelementptr inbounds %struct.GKI, %struct.GKI* %61, i32 0, i32 0
  %63 = load %struct.gki_elem**, %struct.gki_elem*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %63, i64 %65
  %67 = load %struct.gki_elem*, %struct.gki_elem** %66, align 8
  %68 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %67, i32 0, i32 2
  store %struct.gki_elem* %60, %struct.gki_elem** %68, align 8
  %69 = load %struct.GKI*, %struct.GKI** %3, align 8
  %70 = getelementptr inbounds %struct.GKI, %struct.GKI* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.GKI*, %struct.GKI** %3, align 8
  %74 = getelementptr inbounds %struct.GKI, %struct.GKI* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.GKI*, %struct.GKI** %3, align 8
  %77 = getelementptr inbounds %struct.GKI, %struct.GKI* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 3, %78
  %80 = icmp sgt i32 %75, %79
  br i1 %80, label %81, label %89

; <label>:81:                                     ; preds = %2
  %82 = load %struct.GKI*, %struct.GKI** %3, align 8
  %83 = getelementptr inbounds %struct.GKI, %struct.GKI* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %81
  %87 = load %struct.GKI*, %struct.GKI** %3, align 8
  %88 = call i32 @gki_upsize(%struct.GKI* %87)
  br label %89

; <label>:89:                                     ; preds = %86, %81, %2
  %90 = load %struct.GKI*, %struct.GKI** %3, align 8
  %91 = getelementptr inbounds %struct.GKI, %struct.GKI* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  ret i32 %93
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gki_hashvalue(%struct.GKI*, i8*) #0 {
  %3 = alloca %struct.GKI*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.GKI* %0, %struct.GKI** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %40, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %43

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 128, %12
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

; <label>:23:                                     ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.GKI*, %struct.GKI** %3, align 8
  %26 = getelementptr inbounds %struct.GKI, %struct.GKI* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = srem i32 %24, %27
  store i32 %28, i32* %5, align 4
  br label %43

; <label>:29:                                     ; preds = %11
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 128, %30
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %31, %34
  %36 = load %struct.GKI*, %struct.GKI** %3, align 8
  %37 = getelementptr inbounds %struct.GKI, %struct.GKI* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %35, %38
  store i32 %39, i32* %5, align 4
  br label %40

; <label>:40:                                     ; preds = %29
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  br label %6

; <label>:43:                                     ; preds = %23, %6
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gki_upsize(%struct.GKI*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.GKI*, align 8
  %4 = alloca %struct.GKI*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gki_elem*, align 8
  %7 = alloca %struct.gki_elem*, align 8
  %8 = alloca i32, align 4
  store %struct.GKI* %0, %struct.GKI** %3, align 8
  %9 = load %struct.GKI*, %struct.GKI** %3, align 8
  %10 = getelementptr inbounds %struct.GKI, %struct.GKI* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %11, 3
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

; <label>:14:                                     ; preds = %1
  %15 = load %struct.GKI*, %struct.GKI** %3, align 8
  %16 = getelementptr inbounds %struct.GKI, %struct.GKI* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = call %struct.GKI* @gki_alloc(i32 %18)
  store %struct.GKI* %19, %struct.GKI** %4, align 8
  store i32 0, i32* %5, align 4
  br label %20

; <label>:20:                                     ; preds = %70, %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.GKI*, %struct.GKI** %3, align 8
  %23 = getelementptr inbounds %struct.GKI, %struct.GKI* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %73

; <label>:26:                                     ; preds = %20
  %27 = load %struct.GKI*, %struct.GKI** %3, align 8
  %28 = getelementptr inbounds %struct.GKI, %struct.GKI* %27, i32 0, i32 0
  %29 = load %struct.gki_elem**, %struct.gki_elem*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %29, i64 %31
  %33 = load %struct.gki_elem*, %struct.gki_elem** %32, align 8
  store %struct.gki_elem* %33, %struct.gki_elem** %6, align 8
  br label %34

; <label>:34:                                     ; preds = %37, %26
  %35 = load %struct.gki_elem*, %struct.gki_elem** %6, align 8
  %36 = icmp ne %struct.gki_elem* %35, null
  br i1 %36, label %37, label %69

; <label>:37:                                     ; preds = %34
  %38 = load %struct.GKI*, %struct.GKI** %4, align 8
  %39 = load %struct.gki_elem*, %struct.gki_elem** %6, align 8
  %40 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @gki_hashvalue(%struct.GKI* %38, i8* %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.GKI*, %struct.GKI** %4, align 8
  %44 = getelementptr inbounds %struct.GKI, %struct.GKI* %43, i32 0, i32 0
  %45 = load %struct.gki_elem**, %struct.gki_elem*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %45, i64 %47
  %49 = load %struct.gki_elem*, %struct.gki_elem** %48, align 8
  store %struct.gki_elem* %49, %struct.gki_elem** %7, align 8
  %50 = load %struct.gki_elem*, %struct.gki_elem** %6, align 8
  %51 = load %struct.GKI*, %struct.GKI** %4, align 8
  %52 = getelementptr inbounds %struct.GKI, %struct.GKI* %51, i32 0, i32 0
  %53 = load %struct.gki_elem**, %struct.gki_elem*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %53, i64 %55
  store %struct.gki_elem* %50, %struct.gki_elem** %56, align 8
  %57 = load %struct.gki_elem*, %struct.gki_elem** %6, align 8
  %58 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %57, i32 0, i32 2
  %59 = load %struct.gki_elem*, %struct.gki_elem** %58, align 8
  store %struct.gki_elem* %59, %struct.gki_elem** %6, align 8
  %60 = load %struct.gki_elem*, %struct.gki_elem** %7, align 8
  %61 = load %struct.GKI*, %struct.GKI** %4, align 8
  %62 = getelementptr inbounds %struct.GKI, %struct.GKI* %61, i32 0, i32 0
  %63 = load %struct.gki_elem**, %struct.gki_elem*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %63, i64 %65
  %67 = load %struct.gki_elem*, %struct.gki_elem** %66, align 8
  %68 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %67, i32 0, i32 2
  store %struct.gki_elem* %60, %struct.gki_elem** %68, align 8
  br label %34

; <label>:69:                                     ; preds = %34
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %20

; <label>:73:                                     ; preds = %20
  %74 = load %struct.GKI*, %struct.GKI** %3, align 8
  %75 = getelementptr inbounds %struct.GKI, %struct.GKI* %74, i32 0, i32 0
  %76 = load %struct.gki_elem**, %struct.gki_elem*** %75, align 8
  %77 = bitcast %struct.gki_elem** %76 to i8*
  call void @free(i8* %77) #4
  %78 = load %struct.GKI*, %struct.GKI** %4, align 8
  %79 = getelementptr inbounds %struct.GKI, %struct.GKI* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.GKI*, %struct.GKI** %3, align 8
  %82 = getelementptr inbounds %struct.GKI, %struct.GKI* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.GKI*, %struct.GKI** %4, align 8
  %84 = getelementptr inbounds %struct.GKI, %struct.GKI* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.GKI*, %struct.GKI** %3, align 8
  %87 = getelementptr inbounds %struct.GKI, %struct.GKI* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.GKI*, %struct.GKI** %4, align 8
  %89 = getelementptr inbounds %struct.GKI, %struct.GKI* %88, i32 0, i32 0
  %90 = load %struct.gki_elem**, %struct.gki_elem*** %89, align 8
  %91 = load %struct.GKI*, %struct.GKI** %3, align 8
  %92 = getelementptr inbounds %struct.GKI, %struct.GKI* %91, i32 0, i32 0
  store %struct.gki_elem** %90, %struct.gki_elem*** %92, align 8
  %93 = load %struct.GKI*, %struct.GKI** %4, align 8
  %94 = bitcast %struct.GKI* %93 to i8*
  call void @free(i8* %94) #4
  store i32 1, i32* %2, align 4
  br label %95

; <label>:95:                                     ; preds = %73, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @GKIKeyIndex(%struct.GKI*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.GKI*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gki_elem*, align 8
  %7 = alloca i32, align 4
  store %struct.GKI* %0, %struct.GKI** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.GKI*, %struct.GKI** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @gki_hashvalue(%struct.GKI* %8, i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.GKI*, %struct.GKI** %4, align 8
  %12 = getelementptr inbounds %struct.GKI, %struct.GKI* %11, i32 0, i32 0
  %13 = load %struct.gki_elem**, %struct.gki_elem*** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %13, i64 %15
  %17 = load %struct.gki_elem*, %struct.gki_elem** %16, align 8
  store %struct.gki_elem* %17, %struct.gki_elem** %6, align 8
  br label %18

; <label>:18:                                     ; preds = %33, %2
  %19 = load %struct.gki_elem*, %struct.gki_elem** %6, align 8
  %20 = icmp ne %struct.gki_elem* %19, null
  br i1 %20, label %21, label %37

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.gki_elem*, %struct.gki_elem** %6, align 8
  %24 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %22, i8* %25) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %21
  %29 = load %struct.gki_elem*, %struct.gki_elem** %6, align 8
  %30 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %3, align 4
  br label %38

; <label>:32:                                     ; preds = %21
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load %struct.gki_elem*, %struct.gki_elem** %6, align 8
  %35 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %34, i32 0, i32 2
  %36 = load %struct.gki_elem*, %struct.gki_elem** %35, align 8
  store %struct.gki_elem* %36, %struct.gki_elem** %6, align 8
  br label %18

; <label>:37:                                     ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %28
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @GKIStatus(%struct.GKI*) #0 {
  %2 = alloca %struct.GKI*, align 8
  %3 = alloca %struct.gki_elem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.GKI* %0, %struct.GKI** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 2147483647, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %9

; <label>:9:                                      ; preds = %52, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.GKI*, %struct.GKI** %2, align 8
  %12 = getelementptr inbounds %struct.GKI, %struct.GKI* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %55

; <label>:15:                                     ; preds = %9
  store i32 0, i32* %5, align 4
  %16 = load %struct.GKI*, %struct.GKI** %2, align 8
  %17 = getelementptr inbounds %struct.GKI, %struct.GKI* %16, i32 0, i32 0
  %18 = load %struct.gki_elem**, %struct.gki_elem*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %18, i64 %20
  %22 = load %struct.gki_elem*, %struct.gki_elem** %21, align 8
  store %struct.gki_elem* %22, %struct.gki_elem** %3, align 8
  br label %23

; <label>:23:                                     ; preds = %29, %15
  %24 = load %struct.gki_elem*, %struct.gki_elem** %3, align 8
  %25 = icmp ne %struct.gki_elem* %24, null
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %29

; <label>:29:                                     ; preds = %26
  %30 = load %struct.gki_elem*, %struct.gki_elem** %3, align 8
  %31 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %30, i32 0, i32 2
  %32 = load %struct.gki_elem*, %struct.gki_elem** %31, align 8
  store %struct.gki_elem* %32, %struct.gki_elem** %3, align 8
  br label %23

; <label>:33:                                     ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

; <label>:39:                                     ; preds = %36, %33
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %7, align 4
  br label %45

; <label>:45:                                     ; preds = %43, %39
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %45
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %8, align 4
  br label %51

; <label>:51:                                     ; preds = %49, %45
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %9

; <label>:55:                                     ; preds = %9
  %56 = load %struct.GKI*, %struct.GKI** %2, align 8
  %57 = getelementptr inbounds %struct.GKI, %struct.GKI* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 %58)
  %60 = load %struct.GKI*, %struct.GKI** %2, align 8
  %61 = getelementptr inbounds %struct.GKI, %struct.GKI* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %62)
  %64 = load %struct.GKI*, %struct.GKI** %2, align 8
  %65 = getelementptr inbounds %struct.GKI, %struct.GKI* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = sitofp i32 %66 to float
  %68 = load %struct.GKI*, %struct.GKI** %2, align 8
  %69 = getelementptr inbounds %struct.GKI, %struct.GKI* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %67, %71
  %73 = fpext float %72 to double
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), double %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 %79)
  ret void
}

declare i32 @printf(i8*, ...) #2

declare void @Die(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
