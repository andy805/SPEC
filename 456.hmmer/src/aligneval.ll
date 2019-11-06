; ModuleID = 'aligneval.c'
source_filename = "aligneval.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"aligneval.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define float @ComparePairAlignments(i8*, i8*, i8*, i8*) #0 {
  %5 = alloca float, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @make_alilist(i8* %17, i8* %18, i32** %12, i32* %14)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %4
  store float -1.000000e+00, float* %5, align 4
  br label %60

; <label>:22:                                     ; preds = %4
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @make_alilist(i8* %23, i8* %24, i32** %13, i32* %15)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

; <label>:27:                                     ; preds = %22
  store float -1.000000e+00, float* %5, align 4
  br label %60

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @make_alilist(i8* %29, i8* %30, i32** %10, i32* %14)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

; <label>:33:                                     ; preds = %28
  store float -1.000000e+00, float* %5, align 4
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @make_alilist(i8* %35, i8* %36, i32** %11, i32* %15)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

; <label>:39:                                     ; preds = %34
  store float -1.000000e+00, float* %5, align 4
  br label %60

; <label>:40:                                     ; preds = %34
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @compare_lists(i32* %41, i32* %42, i32* %43, i32* %44, i32 %45, i32 %46, float* %16)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

; <label>:49:                                     ; preds = %40
  store float -1.000000e+00, float* %5, align 4
  br label %60

; <label>:50:                                     ; preds = %40
  %51 = load i32*, i32** %10, align 8
  %52 = bitcast i32* %51 to i8*
  call void @free(i8* %52) #5
  %53 = load i32*, i32** %11, align 8
  %54 = bitcast i32* %53 to i8*
  call void @free(i8* %54) #5
  %55 = load i32*, i32** %12, align 8
  %56 = bitcast i32* %55 to i8*
  call void @free(i8* %56) #5
  %57 = load i32*, i32** %13, align 8
  %58 = bitcast i32* %57 to i8*
  call void @free(i8* %58) #5
  %59 = load float, float* %16, align 4
  store float %59, float* %5, align 4
  br label %60

; <label>:60:                                     ; preds = %50, %49, %39, %33, %27, %21
  %61 = load float, float* %5, align 4
  ret float %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_alilist(i8*, i8*, i32**, i32*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* %13) #6
  %15 = mul i64 4, %14
  %16 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 179, i64 %15)
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %18

; <label>:18:                                     ; preds = %161, %4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %164

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %117, label %34

; <label>:34:                                     ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %117, label %42

; <label>:42:                                     ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 95
  br i1 %49, label %117, label %50

; <label>:50:                                     ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  br i1 %57, label %117, label %58

; <label>:58:                                     ; preds = %50
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 126
  br i1 %65, label %117, label %66

; <label>:66:                                     ; preds = %58
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %106, label %74

; <label>:74:                                     ; preds = %66
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %106, label %82

; <label>:82:                                     ; preds = %74
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 95
  br i1 %89, label %106, label %90

; <label>:90:                                     ; preds = %82
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 45
  br i1 %97, label %106, label %98

; <label>:98:                                     ; preds = %90
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 126
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %98, %90, %82, %74, %66
  br label %109

; <label>:107:                                    ; preds = %98
  %108 = load i32, i32* %12, align 4
  br label %109

; <label>:109:                                    ; preds = %107, %106
  %110 = phi i32 [ -1, %106 ], [ %108, %107 ]
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %117

; <label>:117:                                    ; preds = %109, %58, %50, %42, %34, %26
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 32
  br i1 %124, label %160, label %125

; <label>:125:                                    ; preds = %117
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 46
  br i1 %132, label %160, label %133

; <label>:133:                                    ; preds = %125
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 95
  br i1 %140, label %160, label %141

; <label>:141:                                    ; preds = %133
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 45
  br i1 %148, label %160, label %149

; <label>:149:                                    ; preds = %141
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 126
  br i1 %156, label %160, label %157

; <label>:157:                                    ; preds = %149
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %160

; <label>:160:                                    ; preds = %157, %149, %141, %133, %125, %117
  br label %161

; <label>:161:                                    ; preds = %160
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %18

; <label>:164:                                    ; preds = %18
  %165 = load i32, i32* %11, align 4
  %166 = load i32*, i32** %8, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = load i32**, i32*** %7, align 8
  store i32* %167, i32** %168, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_lists(i32*, i32*, i32*, i32*, i32, i32, float*) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store float* %6, float** %14, align 8
  store float 0.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %15, align 4
  store i32 0, i32* %17, align 4
  br label %18

; <label>:18:                                     ; preds = %44, %7
  %19 = load i32, i32* %17, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

; <label>:22:                                     ; preds = %18
  %23 = load float, float* %16, align 4
  %24 = fpext float %23 to double
  %25 = fadd double %24, 1.000000e+00
  %26 = fptrunc double %25 to float
  store float %26, float* %16, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %17, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %43

; <label>:38:                                     ; preds = %22
  %39 = load float, float* %15, align 4
  %40 = fpext float %39 to double
  %41 = fadd double %40, 1.000000e+00
  %42 = fptrunc double %41 to float
  store float %42, float* %15, align 4
  br label %43

; <label>:43:                                     ; preds = %38, %22
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %17, align 4
  br label %18

; <label>:47:                                     ; preds = %18
  store i32 0, i32* %17, align 4
  br label %48

; <label>:48:                                     ; preds = %74, %47
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %77

; <label>:52:                                     ; preds = %48
  %53 = load float, float* %16, align 4
  %54 = fpext float %53 to double
  %55 = fadd double %54, 1.000000e+00
  %56 = fptrunc double %55 to float
  store float %56, float* %16, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %61, %66
  br i1 %67, label %68, label %73

; <label>:68:                                     ; preds = %52
  %69 = load float, float* %15, align 4
  %70 = fpext float %69 to double
  %71 = fadd double %70, 1.000000e+00
  %72 = fptrunc double %71 to float
  store float %72, float* %15, align 4
  br label %73

; <label>:73:                                     ; preds = %68, %52
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %48

; <label>:77:                                     ; preds = %48
  %78 = load float, float* %15, align 4
  %79 = load float, float* %16, align 4
  %80 = fdiv float %78, %79
  %81 = load float*, float** %14, align 8
  store float %80, float* %81, align 4
  ret i32 1
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define float @CompareRefPairAlignments(i32*, i8*, i8*, i8*, i8*) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @make_ref_alilist(i32* %19, i8* %20, i8* %21, i8* %22, i8* %23, i32** %14, i32* %16)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %5
  store float -1.000000e+00, float* %6, align 4
  br label %74

; <label>:27:                                     ; preds = %5
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @make_ref_alilist(i32* %28, i8* %29, i8* %30, i8* %31, i8* %32, i32** %15, i32* %17)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

; <label>:35:                                     ; preds = %27
  store float -1.000000e+00, float* %6, align 4
  br label %74

; <label>:36:                                     ; preds = %27
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @make_ref_alilist(i32* %37, i8* %38, i8* %39, i8* %40, i8* %41, i32** %12, i32* %16)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

; <label>:44:                                     ; preds = %36
  store float -1.000000e+00, float* %6, align 4
  br label %74

; <label>:45:                                     ; preds = %36
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @make_ref_alilist(i32* %46, i8* %47, i8* %48, i8* %49, i8* %50, i32** %13, i32* %17)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %45
  store float -1.000000e+00, float* %6, align 4
  br label %74

; <label>:54:                                     ; preds = %45
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @compare_lists(i32* %55, i32* %56, i32* %57, i32* %58, i32 %59, i32 %60, float* %18)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

; <label>:63:                                     ; preds = %54
  store float -1.000000e+00, float* %6, align 4
  br label %74

; <label>:64:                                     ; preds = %54
  %65 = load i32*, i32** %12, align 8
  %66 = bitcast i32* %65 to i8*
  call void @free(i8* %66) #5
  %67 = load i32*, i32** %13, align 8
  %68 = bitcast i32* %67 to i8*
  call void @free(i8* %68) #5
  %69 = load i32*, i32** %14, align 8
  %70 = bitcast i32* %69 to i8*
  call void @free(i8* %70) #5
  %71 = load i32*, i32** %15, align 8
  %72 = bitcast i32* %71 to i8*
  call void @free(i8* %72) #5
  %73 = load float, float* %18, align 4
  store float %73, float* %6, align 4
  br label %74

; <label>:74:                                     ; preds = %64, %63, %53, %44, %35, %26
  %75 = load float, float* %6, align 4
  ret float %75
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_ref_alilist(i32*, i8*, i8*, i8*, i8*, i32**, i32*) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i64 @strlen(i8* %21) #6
  %23 = mul i64 4, %22
  %24 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 236, i64 %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %15, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i64 @strlen(i8* %26) #6
  %28 = mul i64 4, %27
  %29 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 237, i64 %28)
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %19, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %31

; <label>:31:                                     ; preds = %95, %7
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %98

; <label>:39:                                     ; preds = %31
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %94, label %47

; <label>:47:                                     ; preds = %39
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 46
  br i1 %54, label %94, label %55

; <label>:55:                                     ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 95
  br i1 %62, label %94, label %63

; <label>:63:                                     ; preds = %55
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 45
  br i1 %70, label %94, label %71

; <label>:71:                                     ; preds = %63
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 126
  br i1 %78, label %94, label %79

; <label>:79:                                     ; preds = %71
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = load i32*, i32** %19, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  br label %94

; <label>:94:                                     ; preds = %79, %71, %63, %55, %47, %39
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %31

; <label>:98:                                     ; preds = %31
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %99

; <label>:99:                                     ; preds = %292, %98
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %295

; <label>:107:                                    ; preds = %99
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 32
  br i1 %114, label %205, label %115

; <label>:115:                                    ; preds = %107
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 46
  br i1 %122, label %205, label %123

; <label>:123:                                    ; preds = %115
  %124 = load i8*, i8** %11, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 95
  br i1 %130, label %205, label %131

; <label>:131:                                    ; preds = %123
  %132 = load i8*, i8** %11, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 45
  br i1 %138, label %205, label %139

; <label>:139:                                    ; preds = %131
  %140 = load i8*, i8** %11, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 126
  br i1 %146, label %205, label %147

; <label>:147:                                    ; preds = %139
  %148 = load i32*, i32** %19, align 8
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %205

; <label>:154:                                    ; preds = %147
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 32
  br i1 %161, label %194, label %162

; <label>:162:                                    ; preds = %154
  %163 = load i8*, i8** %12, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 46
  br i1 %169, label %194, label %170

; <label>:170:                                    ; preds = %162
  %171 = load i8*, i8** %12, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 95
  br i1 %177, label %194, label %178

; <label>:178:                                    ; preds = %170
  %179 = load i8*, i8** %12, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 45
  br i1 %185, label %194, label %186

; <label>:186:                                    ; preds = %178
  %187 = load i8*, i8** %12, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 126
  br i1 %193, label %194, label %195

; <label>:194:                                    ; preds = %186, %178, %170, %162, %154
  br label %197

; <label>:195:                                    ; preds = %186
  %196 = load i32, i32* %18, align 4
  br label %197

; <label>:197:                                    ; preds = %195, %194
  %198 = phi i32 [ -1, %194 ], [ %196, %195 ]
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* %20, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %198, i32* %202, align 4
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %20, align 4
  br label %205

; <label>:205:                                    ; preds = %197, %147, %139, %131, %123, %115, %107
  %206 = load i8*, i8** %11, align 8
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 32
  br i1 %212, label %248, label %213

; <label>:213:                                    ; preds = %205
  %214 = load i8*, i8** %11, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 46
  br i1 %220, label %248, label %221

; <label>:221:                                    ; preds = %213
  %222 = load i8*, i8** %11, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 95
  br i1 %228, label %248, label %229

; <label>:229:                                    ; preds = %221
  %230 = load i8*, i8** %11, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 45
  br i1 %236, label %248, label %237

; <label>:237:                                    ; preds = %229
  %238 = load i8*, i8** %11, align 8
  %239 = load i32, i32* %16, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 126
  br i1 %244, label %248, label %245

; <label>:245:                                    ; preds = %237
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %17, align 4
  br label %248

; <label>:248:                                    ; preds = %245, %237, %229, %221, %213, %205
  %249 = load i8*, i8** %12, align 8
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 32
  br i1 %255, label %291, label %256

; <label>:256:                                    ; preds = %248
  %257 = load i8*, i8** %12, align 8
  %258 = load i32, i32* %16, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 46
  br i1 %263, label %291, label %264

; <label>:264:                                    ; preds = %256
  %265 = load i8*, i8** %12, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 95
  br i1 %271, label %291, label %272

; <label>:272:                                    ; preds = %264
  %273 = load i8*, i8** %12, align 8
  %274 = load i32, i32* %16, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 45
  br i1 %279, label %291, label %280

; <label>:280:                                    ; preds = %272
  %281 = load i8*, i8** %12, align 8
  %282 = load i32, i32* %16, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %286, 126
  br i1 %287, label %291, label %288

; <label>:288:                                    ; preds = %280
  %289 = load i32, i32* %18, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %18, align 4
  br label %291

; <label>:291:                                    ; preds = %288, %280, %272, %264, %256, %248
  br label %292

; <label>:292:                                    ; preds = %291
  %293 = load i32, i32* %16, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %16, align 4
  br label %99

; <label>:295:                                    ; preds = %99
  %296 = load i32*, i32** %19, align 8
  %297 = bitcast i32* %296 to i8*
  call void @free(i8* %297) #5
  %298 = load i32, i32* %20, align 4
  %299 = load i32*, i32** %14, align 8
  store i32 %298, i32* %299, align 4
  %300 = load i32*, i32** %15, align 8
  %301 = load i32**, i32*** %13, align 8
  store i32* %300, i32** %301, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define float @CompareMultAlignments(i8**, i8**, i32) #0 {
  %4 = alloca float, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %8, align 4
  br label %12

; <label>:12:                                     ; preds = %57, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %60

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  br label %19

; <label>:19:                                     ; preds = %53, %16
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %56

; <label>:23:                                     ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call float @ComparePairAlignments(i8* %28, i8* %33, i8* %38, i8* %43)
  store float %44, float* %10, align 4
  %45 = load float, float* %10, align 4
  %46 = fpext float %45 to double
  %47 = fcmp olt double %46, 0.000000e+00
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %23
  store float -1.000000e+00, float* %4, align 4
  br label %74

; <label>:49:                                     ; preds = %23
  %50 = load float, float* %10, align 4
  %51 = load float, float* %11, align 4
  %52 = fadd float %51, %50
  store float %52, float* %11, align 4
  br label %53

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %19

; <label>:56:                                     ; preds = %19
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %12

; <label>:60:                                     ; preds = %12
  %61 = load float, float* %11, align 4
  %62 = fpext float %61 to double
  %63 = fmul double %62, 2.000000e+00
  %64 = load i32, i32* %7, align 4
  %65 = sitofp i32 %64 to float
  %66 = fpext float %65 to double
  %67 = load i32, i32* %7, align 4
  %68 = sitofp i32 %67 to float
  %69 = fpext float %68 to double
  %70 = fsub double %69, 1.000000e+00
  %71 = fmul double %66, %70
  %72 = fdiv double %63, %71
  %73 = fptrunc double %72 to float
  store float %73, float* %4, align 4
  br label %74

; <label>:74:                                     ; preds = %60, %48
  %75 = load float, float* %4, align 4
  ret float %75
}

; Function Attrs: noinline nounwind optnone uwtable
define float @CompareRefMultAlignments(i32*, i8**, i8**, i32) #0 {
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %10, align 4
  br label %14

; <label>:14:                                     ; preds = %60, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %63

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  br label %21

; <label>:21:                                     ; preds = %56, %18
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %59

; <label>:25:                                     ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call float @CompareRefPairAlignments(i32* %26, i8* %31, i8* %36, i8* %41, i8* %46)
  store float %47, float* %12, align 4
  %48 = load float, float* %12, align 4
  %49 = fpext float %48 to double
  %50 = fcmp olt double %49, 0.000000e+00
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %25
  store float -1.000000e+00, float* %5, align 4
  br label %77

; <label>:52:                                     ; preds = %25
  %53 = load float, float* %12, align 4
  %54 = load float, float* %13, align 4
  %55 = fadd float %54, %53
  store float %55, float* %13, align 4
  br label %56

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %21

; <label>:59:                                     ; preds = %21
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %14

; <label>:63:                                     ; preds = %14
  %64 = load float, float* %13, align 4
  %65 = fpext float %64 to double
  %66 = fmul double %65, 2.000000e+00
  %67 = load i32, i32* %9, align 4
  %68 = sitofp i32 %67 to float
  %69 = fpext float %68 to double
  %70 = load i32, i32* %9, align 4
  %71 = sitofp i32 %70 to float
  %72 = fpext float %71 to double
  %73 = fsub double %72, 1.000000e+00
  %74 = fmul double %69, %73
  %75 = fdiv double %66, %74
  %76 = fptrunc double %75 to float
  store float %76, float* %5, align 4
  br label %77

; <label>:77:                                     ; preds = %63, %51
  %78 = load float, float* %5, align 4
  ret float %78
}

; Function Attrs: noinline nounwind optnone uwtable
define float @PairwiseIdentity(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %131, %2
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %9
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

; <label>:25:                                     ; preds = %17, %9
  %26 = phi i1 [ false, %9 ], [ %24, %17 ]
  br i1 %26, label %27, label %134

; <label>:27:                                     ; preds = %25
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %87, label %35

; <label>:35:                                     ; preds = %27
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %87, label %43

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 95
  br i1 %50, label %87, label %51

; <label>:51:                                     ; preds = %43
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %87, label %59

; <label>:59:                                     ; preds = %51
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 126
  br i1 %66, label %87, label %67

; <label>:67:                                     ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %75, %81
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %67
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %86

; <label>:86:                                     ; preds = %83, %67
  br label %87

; <label>:87:                                     ; preds = %86, %59, %51, %43, %35, %27
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %130, label %95

; <label>:95:                                     ; preds = %87
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 46
  br i1 %102, label %130, label %103

; <label>:103:                                    ; preds = %95
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 95
  br i1 %110, label %130, label %111

; <label>:111:                                    ; preds = %103
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 45
  br i1 %118, label %130, label %119

; <label>:119:                                    ; preds = %111
  %120 = load i8*, i8** %4, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 126
  br i1 %126, label %130, label %127

; <label>:127:                                    ; preds = %119
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %130

; <label>:130:                                    ; preds = %127, %119, %111, %103, %95, %87
  br label %131

; <label>:131:                                    ; preds = %130
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %9

; <label>:134:                                    ; preds = %25
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %140

; <label>:138:                                    ; preds = %134
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %6, align 4
  br label %140

; <label>:140:                                    ; preds = %138, %134
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

; <label>:143:                                    ; preds = %140
  br label %151

; <label>:144:                                    ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = sitofp i32 %145 to float
  %147 = load i32, i32* %6, align 4
  %148 = sitofp i32 %147 to float
  %149 = fdiv float %146, %148
  %150 = fpext float %149 to double
  br label %151

; <label>:151:                                    ; preds = %144, %143
  %152 = phi double [ 0.000000e+00, %143 ], [ %150, %144 ]
  %153 = fptrunc double %152 to float
  ret float %153
}

; Function Attrs: noinline nounwind optnone uwtable
define float @AlignmentIdentityBySampling(i8**, i32, i32, i32) #0 {
  %5 = alloca float, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %4
  store float 1.000000e+00, float* %5, align 4
  br label %60

; <label>:17:                                     ; preds = %4
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %10, align 4
  br label %18

; <label>:18:                                     ; preds = %52, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %55

; <label>:22:                                     ; preds = %18
  %23 = call double @sre_random()
  %24 = load i32, i32* %8, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double %23, %25
  %27 = fptosi double %26 to i32
  store i32 %27, i32* %11, align 4
  br label %28

; <label>:28:                                     ; preds = %34, %22
  %29 = call double @sre_random()
  %30 = load i32, i32* %8, align 4
  %31 = sitofp i32 %30 to double
  %32 = fmul double %29, %31
  %33 = fptosi double %32 to i32
  store i32 %33, i32* %12, align 4
  br label %34

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %28, label %38

; <label>:38:                                     ; preds = %34
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call float @PairwiseIdentity(i8* %43, i8* %48)
  %50 = load float, float* %13, align 4
  %51 = fadd float %50, %49
  store float %51, float* %13, align 4
  br label %52

; <label>:52:                                     ; preds = %38
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %18

; <label>:55:                                     ; preds = %18
  %56 = load float, float* %13, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %56, %58
  store float %59, float* %5, align 4
  br label %60

; <label>:60:                                     ; preds = %55, %16
  %61 = load float, float* %5, align 4
  ret float %61
}

declare double @sre_random() #2

; Function Attrs: noinline nounwind optnone uwtable
define i8* @MajorityRuleConsensus(i8**, i32, i32) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [27 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 1, %18
  %20 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 485, i64 %19)
  store i8* %20, i8** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %21

; <label>:21:                                     ; preds = %126, %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %129

; <label>:25:                                     ; preds = %21
  store i32 0, i32* %12, align 4
  br label %26

; <label>:26:                                     ; preds = %33, %25
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 27
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 %31
  store i32 0, i32* %32, align 4
  br label %33

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %26

; <label>:36:                                     ; preds = %26
  store i32 0, i32* %9, align 4
  br label %37

; <label>:37:                                     ; preds = %83, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %86

; <label>:41:                                     ; preds = %37
  %42 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %42, align 8
  %44 = load i8**, i8*** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %43, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 1024
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

; <label>:60:                                     ; preds = %41
  %61 = load i8**, i8*** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 @toupper(i32 %70) #6
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %72, 65
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %82

; <label>:78:                                     ; preds = %41
  %79 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 26
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

; <label>:82:                                     ; preds = %78, %60
  br label %83

; <label>:83:                                     ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %37

; <label>:86:                                     ; preds = %37
  %87 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 26
  %88 = load i32, i32* %87, align 8
  %89 = sitofp i32 %88 to float
  %90 = load i32, i32* %5, align 4
  %91 = sitofp i32 %90 to float
  %92 = fdiv float %89, %91
  %93 = fpext float %92 to double
  %94 = fcmp ole double %93, 5.000000e-01
  br i1 %94, label %95, label %125

; <label>:95:                                     ; preds = %86
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %96

; <label>:96:                                     ; preds = %113, %95
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 26
  br i1 %98, label %99, label %116

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %112

; <label>:106:                                    ; preds = %99
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %15, align 4
  br label %112

; <label>:112:                                    ; preds = %106, %99
  br label %113

; <label>:113:                                    ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %96

; <label>:116:                                    ; preds = %96
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 65, %117
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8 %119, i8* %124, align 1
  br label %125

; <label>:125:                                    ; preds = %116, %86
  br label %126

; <label>:126:                                    ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %21

; <label>:129:                                    ; preds = %21
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8 0, i8* %133, align 1
  %134 = load i8*, i8** %7, align 8
  ret i8* %134
}

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
