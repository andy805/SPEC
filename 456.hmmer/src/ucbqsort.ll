; ModuleID = 'ucbqsort.c'
source_filename = "ucbqsort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@qsz = internal global i32 0, align 4
@qcmp = internal global i32 (...)* null, align 8
@thresh = internal global i32 0, align 4
@mthresh = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define void @specqsort(i8*, i32, i32, i32 (...)*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (...)*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 (...)* %3, i32 (...)** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %4
  br label %149

; <label>:19:                                     ; preds = %4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* @qsz, align 4
  %21 = load i32 (...)*, i32 (...)** %8, align 8
  store i32 (...)* %21, i32 (...)** @qcmp, align 8
  %22 = load i32, i32* @qsz, align 4
  %23 = mul nsw i32 %22, 4
  store i32 %23, i32* @thresh, align 4
  %24 = load i32, i32* @qsz, align 4
  %25 = mul nsw i32 %24, 6
  store i32 %25, i32* @mthresh, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @qsz, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  store i8* %31, i8** %15, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 4
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %19
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %15, align 8
  call void @qst(i8* %35, i8* %36)
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @thresh, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %13, align 8
  br label %43

; <label>:41:                                     ; preds = %19
  %42 = load i8*, i8** %15, align 8
  store i8* %42, i8** %13, align 8
  br label %43

; <label>:43:                                     ; preds = %41, %34
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %12, align 8
  store i8* %44, i8** %11, align 8
  br label %45

; <label>:45:                                     ; preds = %61, %43
  %46 = load i32, i32* @qsz, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %52, label %62

; <label>:52:                                     ; preds = %45
  %53 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = bitcast i32 (...)* %53 to i32 (i8*, i8*, ...)*
  %57 = call i32 (i8*, i8*, ...) %56(i8* %54, i8* %55)
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %52
  %60 = load i8*, i8** %12, align 8
  store i8* %60, i8** %11, align 8
  br label %61

; <label>:61:                                     ; preds = %59, %52
  br label %45

; <label>:62:                                     ; preds = %45
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %87

; <label>:66:                                     ; preds = %62
  %67 = load i8*, i8** %5, align 8
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @qsz, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %13, align 8
  br label %72

; <label>:72:                                     ; preds = %76, %66
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = icmp ult i8* %73, %74
  br i1 %75, label %76, label %86

; <label>:76:                                     ; preds = %72
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %9, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %11, align 8
  store i8 %80, i8* %81, align 1
  %83 = load i8, i8* %9, align 1
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %10, align 8
  store i8 %83, i8* %84, align 1
  br label %72

; <label>:86:                                     ; preds = %72
  br label %87

; <label>:87:                                     ; preds = %86, %62
  %88 = load i8*, i8** %5, align 8
  store i8* %88, i8** %14, align 8
  br label %89

; <label>:89:                                     ; preds = %148, %87
  %90 = load i32, i32* @qsz, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %14, align 8
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ult i8* %93, %94
  br i1 %95, label %96, label %149

; <label>:96:                                     ; preds = %89
  br label %97

; <label>:97:                                     ; preds = %108, %96
  %98 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %99 = load i32, i32* @qsz, align 4
  %100 = load i8*, i8** %13, align 8
  %101 = sext i32 %99 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8* %103, i8** %13, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = bitcast i32 (...)* %98 to i32 (i8*, i8*, ...)*
  %106 = call i32 (i8*, i8*, ...) %105(i8* %103, i8* %104)
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %109

; <label>:108:                                    ; preds = %97
  br label %97

; <label>:109:                                    ; preds = %97
  %110 = load i32, i32* @qsz, align 4
  %111 = load i8*, i8** %13, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %13, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = icmp ne i8* %113, %114
  br i1 %115, label %116, label %148

; <label>:116:                                    ; preds = %109
  %117 = load i8*, i8** %14, align 8
  %118 = load i32, i32* @qsz, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8* %120, i8** %12, align 8
  br label %121

; <label>:121:                                    ; preds = %144, %116
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 -1
  store i8* %123, i8** %12, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = icmp uge i8* %123, %124
  br i1 %125, label %126, label %147

; <label>:126:                                    ; preds = %121
  %127 = load i8*, i8** %12, align 8
  %128 = load i8, i8* %127, align 1
  store i8 %128, i8* %9, align 1
  %129 = load i8*, i8** %12, align 8
  store i8* %129, i8** %11, align 8
  store i8* %129, i8** %10, align 8
  br label %130

; <label>:130:                                    ; preds = %142, %126
  %131 = load i32, i32* @qsz, align 4
  %132 = load i8*, i8** %11, align 8
  %133 = sext i32 %131 to i64
  %134 = sub i64 0, %133
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  store i8* %135, i8** %11, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = icmp uge i8* %135, %136
  br i1 %137, label %138, label %144

; <label>:138:                                    ; preds = %130
  %139 = load i8*, i8** %11, align 8
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %10, align 8
  store i8 %140, i8* %141, align 1
  br label %142

; <label>:142:                                    ; preds = %138
  %143 = load i8*, i8** %11, align 8
  store i8* %143, i8** %10, align 8
  br label %130

; <label>:144:                                    ; preds = %130
  %145 = load i8, i8* %9, align 1
  %146 = load i8*, i8** %10, align 8
  store i8 %145, i8* %146, align 1
  br label %121

; <label>:147:                                    ; preds = %121
  br label %148

; <label>:148:                                    ; preds = %147, %109
  br label %89

; <label>:149:                                    ; preds = %18, %89
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qst(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %12, align 4
  br label %20

; <label>:20:                                     ; preds = %229, %2
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @qsz, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @qsz, align 4
  %25 = sdiv i32 %23, %24
  %26 = ashr i32 %25, 1
  %27 = mul nsw i32 %22, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %21, i64 %28
  store i8* %29, i8** %6, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @mthresh, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %97

; <label>:33:                                     ; preds = %20
  %34 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %35 = load i8*, i8** %3, align 8
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i32 (...)* %34 to i32 (i8*, i8*, ...)*
  %38 = call i32 (i8*, i8*, ...) %37(i8* %35, i8* %36)
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %33
  %41 = load i8*, i8** %8, align 8
  br label %44

; <label>:42:                                     ; preds = %33
  %43 = load i8*, i8** %6, align 8
  br label %44

; <label>:44:                                     ; preds = %42, %40
  %45 = phi i8* [ %41, %40 ], [ %43, %42 ]
  store i8* %45, i8** %7, align 8
  %46 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @qsz, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8* %52, i8** %11, align 8
  %53 = bitcast i32 (...)* %46 to i32 (i8*, i8*, ...)*
  %54 = call i32 (i8*, i8*, ...) %53(i8* %47, i8* %52)
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %75

; <label>:56:                                     ; preds = %44
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %56
  %61 = load i8*, i8** %6, align 8
  br label %64

; <label>:62:                                     ; preds = %56
  %63 = load i8*, i8** %8, align 8
  br label %64

; <label>:64:                                     ; preds = %62, %60
  %65 = phi i8* [ %61, %60 ], [ %63, %62 ]
  store i8* %65, i8** %7, align 8
  %66 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = bitcast i32 (...)* %66 to i32 (i8*, i8*, ...)*
  %70 = call i32 (i8*, i8*, ...) %69(i8* %67, i8* %68)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %64
  %73 = load i8*, i8** %11, align 8
  store i8* %73, i8** %7, align 8
  br label %74

; <label>:74:                                     ; preds = %72, %64
  br label %75

; <label>:75:                                     ; preds = %74, %44
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %96

; <label>:79:                                     ; preds = %75
  %80 = load i32, i32* @qsz, align 4
  store i32 %80, i32* %9, align 4
  br label %81

; <label>:81:                                     ; preds = %91, %79
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  store i8 %83, i8* %5, align 1
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8, i8* %5, align 1
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %7, align 8
  store i8 %88, i8* %89, align 1
  br label %91

; <label>:91:                                     ; preds = %81
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %81, label %95

; <label>:95:                                     ; preds = %91
  br label %96

; <label>:96:                                     ; preds = %95, %75
  br label %97

; <label>:97:                                     ; preds = %96, %20
  %98 = load i8*, i8** %3, align 8
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* @qsz, align 4
  %101 = sext i32 %100 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8* %103, i8** %7, align 8
  br label %104

; <label>:104:                                    ; preds = %189, %97
  br label %105

; <label>:105:                                    ; preds = %118, %104
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %116

; <label>:109:                                    ; preds = %105
  %110 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = bitcast i32 (...)* %110 to i32 (i8*, i8*, ...)*
  %114 = call i32 (i8*, i8*, ...) %113(i8* %111, i8* %112)
  %115 = icmp sle i32 %114, 0
  br label %116

; <label>:116:                                    ; preds = %109, %105
  %117 = phi i1 [ false, %105 ], [ %115, %109 ]
  br i1 %117, label %118, label %123

; <label>:118:                                    ; preds = %116
  %119 = load i32, i32* @qsz, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %6, align 8
  br label %105

; <label>:123:                                    ; preds = %116
  br label %124

; <label>:124:                                    ; preds = %135, %123
  %125 = load i8*, i8** %7, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ugt i8* %125, %126
  br i1 %127, label %128, label %159

; <label>:128:                                    ; preds = %124
  %129 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = bitcast i32 (...)* %129 to i32 (i8*, i8*, ...)*
  %133 = call i32 (i8*, i8*, ...) %132(i8* %130, i8* %131)
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %141

; <label>:135:                                    ; preds = %128
  %136 = load i32, i32* @qsz, align 4
  %137 = load i8*, i8** %7, align 8
  %138 = sext i32 %136 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8* %140, i8** %7, align 8
  br label %124

; <label>:141:                                    ; preds = %128
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* @qsz, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8* %145, i8** %11, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %151

; <label>:149:                                    ; preds = %141
  %150 = load i8*, i8** %7, align 8
  store i8* %150, i8** %8, align 8
  store i8* %150, i8** %10, align 8
  br label %158

; <label>:151:                                    ; preds = %141
  %152 = load i8*, i8** %7, align 8
  store i8* %152, i8** %8, align 8
  %153 = load i32, i32* @qsz, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = sext i32 %153 to i64
  %156 = sub i64 0, %155
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8* %157, i8** %7, align 8
  br label %158

; <label>:158:                                    ; preds = %151, %149
  br label %173

; <label>:159:                                    ; preds = %124
  %160 = load i8*, i8** %6, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %159
  br label %191

; <label>:164:                                    ; preds = %159
  %165 = load i8*, i8** %10, align 8
  store i8* %165, i8** %8, align 8
  %166 = load i8*, i8** %6, align 8
  store i8* %166, i8** %10, align 8
  store i8* %166, i8** %11, align 8
  %167 = load i32, i32* @qsz, align 4
  %168 = load i8*, i8** %7, align 8
  %169 = sext i32 %167 to i64
  %170 = sub i64 0, %169
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8* %171, i8** %7, align 8
  br label %172

; <label>:172:                                    ; preds = %164
  br label %173

; <label>:173:                                    ; preds = %172, %158
  %174 = load i32, i32* @qsz, align 4
  store i32 %174, i32* %9, align 4
  br label %175

; <label>:175:                                    ; preds = %185, %173
  %176 = load i8*, i8** %6, align 8
  %177 = load i8, i8* %176, align 1
  store i8 %177, i8* %5, align 1
  %178 = load i8*, i8** %8, align 8
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %6, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %6, align 8
  store i8 %179, i8* %180, align 1
  %182 = load i8, i8* %5, align 1
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %8, align 8
  store i8 %182, i8* %183, align 1
  br label %185

; <label>:185:                                    ; preds = %175
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %175, label %189

; <label>:189:                                    ; preds = %185
  %190 = load i8*, i8** %11, align 8
  store i8* %190, i8** %6, align 8
  br label %104

; <label>:191:                                    ; preds = %163
  %192 = load i8*, i8** %10, align 8
  store i8* %192, i8** %7, align 8
  %193 = load i32, i32* @qsz, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  store i8* %195, i8** %6, align 8
  %196 = load i8*, i8** %7, align 8
  %197 = load i8*, i8** %3, align 8
  %198 = ptrtoint i8* %196 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %12, align 4
  %202 = load i8*, i8** %4, align 8
  %203 = load i8*, i8** %6, align 8
  %204 = ptrtoint i8* %202 to i64
  %205 = ptrtoint i8* %203 to i64
  %206 = sub i64 %204, %205
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %13, align 4
  %208 = icmp sle i32 %201, %207
  br i1 %208, label %209, label %219

; <label>:209:                                    ; preds = %191
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @thresh, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %216

; <label>:213:                                    ; preds = %209
  %214 = load i8*, i8** %3, align 8
  %215 = load i8*, i8** %7, align 8
  call void @qst(i8* %214, i8* %215)
  br label %216

; <label>:216:                                    ; preds = %213, %209
  %217 = load i8*, i8** %6, align 8
  store i8* %217, i8** %3, align 8
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %12, align 4
  br label %228

; <label>:219:                                    ; preds = %191
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* @thresh, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %226

; <label>:223:                                    ; preds = %219
  %224 = load i8*, i8** %6, align 8
  %225 = load i8*, i8** %4, align 8
  call void @qst(i8* %224, i8* %225)
  br label %226

; <label>:226:                                    ; preds = %223, %219
  %227 = load i8*, i8** %7, align 8
  store i8* %227, i8** %4, align 8
  br label %228

; <label>:228:                                    ; preds = %226, %216
  br label %229

; <label>:229:                                    ; preds = %228
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @thresh, align 4
  %232 = icmp sge i32 %230, %231
  br i1 %232, label %20, label %233

; <label>:233:                                    ; preds = %229
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
