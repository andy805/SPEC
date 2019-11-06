; ModuleID = 'masks.c'
source_filename = "masks.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"masks.c\00", align 1
@xpam120 = internal global [23 x [23 x i32]] [[23 x i32] [i32 3, i32 -3, i32 0, i32 0, i32 -4, i32 1, i32 -3, i32 -1, i32 -2, i32 -3, i32 -2, i32 -1, i32 1, i32 -1, i32 -3, i32 1, i32 1, i32 0, i32 -7, i32 -4, i32 1, i32 0, i32 0], [23 x i32] [i32 -3, i32 9, i32 -7, i32 -7, i32 -6, i32 -4, i32 -4, i32 -3, i32 -7, i32 -7, i32 -6, i32 -5, i32 -4, i32 -7, i32 -4, i32 0, i32 -3, i32 -3, i32 -8, i32 -1, i32 -4, i32 -6, i32 0], [23 x i32] [i32 0, i32 -7, i32 5, i32 3, i32 -7, i32 0, i32 0, i32 -3, i32 -1, i32 -5, i32 -4, i32 2, i32 -3, i32 1, i32 -3, i32 0, i32 -1, i32 -3, i32 -8, i32 -5, i32 5, i32 3, i32 0], [23 x i32] [i32 0, i32 -7, i32 3, i32 5, i32 -7, i32 -1, i32 -1, i32 -3, i32 -1, i32 -4, i32 -3, i32 1, i32 -2, i32 2, i32 -3, i32 -1, i32 -2, i32 -3, i32 -8, i32 -5, i32 3, i32 5, i32 0], [23 x i32] [i32 -4, i32 -6, i32 -7, i32 -7, i32 8, i32 -5, i32 -3, i32 0, i32 -7, i32 0, i32 -1, i32 -4, i32 -5, i32 -6, i32 -5, i32 -3, i32 -4, i32 -3, i32 -1, i32 4, i32 -4, i32 -5, i32 0], [23 x i32] [i32 1, i32 -4, i32 0, i32 -1, i32 -5, i32 5, i32 -4, i32 -4, i32 -3, i32 -5, i32 -4, i32 0, i32 -2, i32 -3, i32 -4, i32 1, i32 -1, i32 -2, i32 -8, i32 -6, i32 1, i32 -1, i32 0], [23 x i32] [i32 -3, i32 -4, i32 0, i32 -1, i32 -3, i32 -4, i32 7, i32 -4, i32 -2, i32 -3, i32 -4, i32 2, i32 -1, i32 3, i32 1, i32 -2, i32 -3, i32 -3, i32 -3, i32 -1, i32 2, i32 2, i32 0], [23 x i32] [i32 -1, i32 -3, i32 -3, i32 -3, i32 0, i32 -4, i32 -4, i32 6, i32 -3, i32 1, i32 1, i32 -2, i32 -3, i32 -3, i32 -2, i32 -2, i32 0, i32 3, i32 -6, i32 -2, i32 -2, i32 -2, i32 0], [23 x i32] [i32 -2, i32 -7, i32 -1, i32 -1, i32 -7, i32 -3, i32 -2, i32 -3, i32 5, i32 -4, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 -1, i32 -4, i32 -5, i32 -5, i32 1, i32 0, i32 0], [23 x i32] [i32 -3, i32 -7, i32 -5, i32 -4, i32 0, i32 -5, i32 -3, i32 1, i32 -4, i32 5, i32 3, i32 -4, i32 -3, i32 -2, i32 -4, i32 -4, i32 -3, i32 1, i32 -3, i32 -2, i32 -3, i32 -2, i32 0], [23 x i32] [i32 -2, i32 -6, i32 -4, i32 -3, i32 -1, i32 -4, i32 -4, i32 1, i32 0, i32 3, i32 8, i32 -3, i32 -3, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 -6, i32 -4, i32 -3, i32 -1, i32 0], [23 x i32] [i32 -1, i32 -5, i32 2, i32 1, i32 -4, i32 0, i32 2, i32 -2, i32 1, i32 -4, i32 -3, i32 4, i32 -2, i32 0, i32 -1, i32 1, i32 0, i32 -3, i32 -4, i32 -2, i32 4, i32 1, i32 0], [23 x i32] [i32 1, i32 -4, i32 -3, i32 -2, i32 -5, i32 -2, i32 -1, i32 -3, i32 -2, i32 -3, i32 -3, i32 -2, i32 6, i32 0, i32 -1, i32 1, i32 -1, i32 -2, i32 -7, i32 -6, i32 -1, i32 0, i32 0], [23 x i32] [i32 -1, i32 -7, i32 1, i32 2, i32 -6, i32 -3, i32 3, i32 -3, i32 0, i32 -2, i32 -1, i32 0, i32 0, i32 6, i32 1, i32 -2, i32 -2, i32 -3, i32 -6, i32 -5, i32 1, i32 5, i32 0], [23 x i32] [i32 -3, i32 -4, i32 -3, i32 -3, i32 -5, i32 -4, i32 1, i32 -2, i32 2, i32 -4, i32 -1, i32 -1, i32 -1, i32 1, i32 6, i32 -1, i32 -2, i32 -3, i32 1, i32 -5, i32 -1, i32 0, i32 0], [23 x i32] [i32 1, i32 0, i32 0, i32 -1, i32 -3, i32 1, i32 -2, i32 -2, i32 -1, i32 -4, i32 -2, i32 1, i32 1, i32 -2, i32 -1, i32 3, i32 2, i32 -2, i32 -2, i32 -3, i32 1, i32 0, i32 0], [23 x i32] [i32 1, i32 -3, i32 -1, i32 -2, i32 -4, i32 -1, i32 -3, i32 0, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -2, i32 -2, i32 2, i32 4, i32 0, i32 -6, i32 -3, i32 1, i32 -1, i32 0], [23 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 -3, i32 -2, i32 -3, i32 3, i32 -4, i32 1, i32 1, i32 -3, i32 -2, i32 -3, i32 -3, i32 -2, i32 0, i32 5, i32 -8, i32 -3, i32 -2, i32 -2, i32 0], [23 x i32] [i32 -7, i32 -8, i32 -8, i32 -8, i32 -1, i32 -8, i32 -3, i32 -6, i32 -5, i32 -3, i32 -6, i32 -4, i32 -7, i32 -6, i32 1, i32 -2, i32 -6, i32 -8, i32 12, i32 -2, i32 -5, i32 -6, i32 0], [23 x i32] [i32 -4, i32 -1, i32 -5, i32 -5, i32 4, i32 -6, i32 -1, i32 -2, i32 -5, i32 -2, i32 -4, i32 -2, i32 -6, i32 -5, i32 -5, i32 -3, i32 -3, i32 -3, i32 -2, i32 8, i32 -2, i32 -4, i32 0], [23 x i32] [i32 1, i32 -4, i32 5, i32 3, i32 -4, i32 1, i32 2, i32 -2, i32 1, i32 -3, i32 -3, i32 4, i32 -1, i32 1, i32 -1, i32 1, i32 1, i32 -2, i32 -5, i32 -2, i32 6, i32 4, i32 0], [23 x i32] [i32 0, i32 -6, i32 3, i32 5, i32 -5, i32 -1, i32 2, i32 -2, i32 0, i32 -2, i32 -1, i32 1, i32 0, i32 5, i32 0, i32 0, i32 -1, i32 -2, i32 -6, i32 -4, i32 4, i32 6, i32 0], [23 x i32] zeroinitializer], align 16
@Alphabet_iupac = external global i32, align 4
@Alphabet_size = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @XNU(i8*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i32*, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 4, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store double 1.000000e-02, double* %18, align 8
  store double 3.465740e-01, double* %20, align 8
  store double 2.000000e-01, double* %21, align 8
  store double 6.640000e-01, double* %22, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %234

; <label>:27:                                     ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 100, i64 %31)
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %19, align 8
  store i32 1, i32* %6, align 4
  br label %34

; <label>:34:                                     ; preds = %43, %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %46

; <label>:38:                                     ; preds = %34
  %39 = load i32*, i32** %19, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 0, i32* %42, align 4
  br label %43

; <label>:43:                                     ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %34

; <label>:46:                                     ; preds = %34
  %47 = load double, double* %18, align 8
  %48 = load double, double* %22, align 8
  %49 = fmul double %47, %48
  %50 = load i32, i32* %16, align 4
  %51 = sitofp i32 %50 to double
  %52 = load double, double* %21, align 8
  %53 = fmul double %51, %52
  %54 = fdiv double %49, %53
  %55 = call double @log(double %54) #4
  %56 = fsub double -0.000000e+00, %55
  %57 = load double, double* %20, align 8
  %58 = fdiv double %56, %57
  store double %58, double* %15, align 8
  %59 = load double, double* %15, align 8
  %60 = fcmp ogt double %59, 0.000000e+00
  br i1 %60, label %61, label %71

; <label>:61:                                     ; preds = %46
  %62 = load double, double* %15, align 8
  %63 = load double, double* %15, align 8
  %64 = call double @log(double %63) #4
  %65 = load double, double* %20, align 8
  %66 = fdiv double %64, %65
  %67 = fadd double %62, %66
  %68 = fadd double %67, 5.000000e-01
  %69 = call double @llvm.floor.f64(double %68)
  %70 = fptosi double %69 to i32
  store i32 %70, i32* %13, align 4
  br label %72

; <label>:71:                                     ; preds = %46
  store i32 0, i32* %13, align 4
  br label %72

; <label>:72:                                     ; preds = %71, %61
  %73 = load double, double* %21, align 8
  %74 = fdiv double %73, 1.000000e-03
  %75 = call double @log(double %74) #4
  %76 = fptosi double %75 to i32
  %77 = sitofp i32 %76 to double
  %78 = load double, double* %20, align 8
  %79 = fdiv double %77, %78
  %80 = fptosi double %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %8, align 4
  br label %82

; <label>:82:                                     ; preds = %201, %72
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %204

; <label>:86:                                     ; preds = %82
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %90

; <label>:90:                                     ; preds = %172, %86
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %175

; <label>:94:                                     ; preds = %90
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [23 x [23 x i32]], [23 x [23 x i32]]* @xpam120, i64 0, i64 %101
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [23 x i32], [23 x i32]* %102, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %122

; <label>:119:                                    ; preds = %94
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %11, align 4
  br label %122

; <label>:122:                                    ; preds = %119, %94
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %155

; <label>:126:                                    ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %155

; <label>:132:                                    ; preds = %126
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %7, align 4
  br label %134

; <label>:134:                                    ; preds = %149, %132
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %152

; <label>:138:                                    ; preds = %134
  %139 = load i32*, i32** %19, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  store i32 1, i32* %144, align 4
  %145 = load i32*, i32** %19, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 1, i32* %148, align 4
  br label %149

; <label>:149:                                    ; preds = %138
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %134

; <label>:152:                                    ; preds = %134
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  store i32 %154, i32* %10, align 4
  br label %165

; <label>:155:                                    ; preds = %126, %122
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i32, i32* %14, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %164

; <label>:161:                                    ; preds = %155
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  store i32 %163, i32* %10, align 4
  br label %164

; <label>:164:                                    ; preds = %161, %155
  br label %165

; <label>:165:                                    ; preds = %164, %152
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

; <label>:168:                                    ; preds = %165
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  store i32 %170, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %171

; <label>:171:                                    ; preds = %168, %165
  br label %172

; <label>:172:                                    ; preds = %171
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %90

; <label>:175:                                    ; preds = %90
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %200

; <label>:179:                                    ; preds = %175
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %7, align 4
  br label %181

; <label>:181:                                    ; preds = %196, %179
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %199

; <label>:185:                                    ; preds = %181
  %186 = load i32*, i32** %19, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %8, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  store i32 1, i32* %191, align 4
  %192 = load i32*, i32** %19, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 1, i32* %195, align 4
  br label %196

; <label>:196:                                    ; preds = %185
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %181

; <label>:199:                                    ; preds = %181
  br label %200

; <label>:200:                                    ; preds = %199, %175
  br label %201

; <label>:201:                                    ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %82

; <label>:204:                                    ; preds = %82
  store i32 1, i32* %6, align 4
  br label %205

; <label>:205:                                    ; preds = %227, %204
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %5, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %230

; <label>:209:                                    ; preds = %205
  %210 = load i32*, i32** %19, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

; <label>:216:                                    ; preds = %209
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* @Alphabet_iupac, align 4
  %220 = sub nsw i32 %219, 1
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %4, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  store i8 %221, i8* %225, align 1
  br label %226

; <label>:226:                                    ; preds = %216, %209
  br label %227

; <label>:227:                                    ; preds = %226
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %6, align 4
  br label %205

; <label>:230:                                    ; preds = %205
  %231 = load i32*, i32** %19, align 8
  %232 = bitcast i32* %231 to i8*
  call void @free(i8* %232) #4
  %233 = load i32, i32* %23, align 4
  store i32 %233, i32* %3, align 4
  br label %234

; <label>:234:                                    ; preds = %230, %26
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define float @TraceScoreCorrection(%struct.plan7_s*, %struct.p7trace_s*, i8*) #0 {
  %4 = alloca float, align 4
  %5 = alloca %struct.plan7_s*, align 8
  %6 = alloca %struct.p7trace_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [20 x float], align 16
  %9 = alloca [24 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %5, align 8
  store %struct.p7trace_s* %1, %struct.p7trace_s** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %14 = icmp eq %struct.p7trace_s* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %3
  store float 0.000000e+00, float* %4, align 4
  br label %183

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds [20 x float], [20 x float]* %8, i32 0, i32 0
  %18 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %17, i32 %18, float 0.000000e+00)
  store i32 0, i32* %11, align 4
  br label %19

; <label>:19:                                     ; preds = %79, %16
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %22 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %82

; <label>:25:                                     ; preds = %19
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %27 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %51

; <label>:35:                                     ; preds = %25
  %36 = getelementptr inbounds [20 x float], [20 x float]* %8, i32 0, i32 0
  %37 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %38 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 22
  %39 = load float**, float*** %38, align 8
  %40 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %41 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float*, float** %39, i64 %47
  %49 = load float*, float** %48, align 8
  %50 = load i32, i32* @Alphabet_size, align 4
  call void @FAdd(float* %36, float* %49, i32 %50)
  br label %78

; <label>:51:                                     ; preds = %25
  %52 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %53 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %77

; <label>:61:                                     ; preds = %51
  %62 = getelementptr inbounds [20 x float], [20 x float]* %8, i32 0, i32 0
  %63 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %64 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %63, i32 0, i32 23
  %65 = load float**, float*** %64, align 8
  %66 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %67 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float*, float** %65, i64 %73
  %75 = load float*, float** %74, align 8
  %76 = load i32, i32* @Alphabet_size, align 4
  call void @FAdd(float* %62, float* %75, i32 %76)
  br label %77

; <label>:77:                                     ; preds = %61, %51
  br label %78

; <label>:78:                                     ; preds = %77, %35
  br label %79

; <label>:79:                                     ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %19

; <label>:82:                                     ; preds = %19
  %83 = getelementptr inbounds [20 x float], [20 x float]* %8, i32 0, i32 0
  %84 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %83, i32 %84)
  store i32 0, i32* %10, align 4
  br label %85

; <label>:85:                                     ; preds = %104, %82
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @Alphabet_size, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %107

; <label>:89:                                     ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %95 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %94, i32 0, i32 28
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [20 x float], [20 x float]* %95, i64 0, i64 %97
  %99 = load float, float* %98, align 4
  %100 = call i32 @Prob2Score(float %93, float %99)
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 %102
  store i32 %100, i32* %103, align 4
  br label %104

; <label>:104:                                    ; preds = %89
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %85

; <label>:107:                                    ; preds = %85
  %108 = load i32, i32* @Alphabet_size, align 4
  store i32 %108, i32* %10, align 4
  br label %109

; <label>:109:                                    ; preds = %123, %107
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @Alphabet_iupac, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %126

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds [20 x float], [20 x float]* %8, i32 0, i32 0
  %115 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %116 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 28
  %117 = getelementptr inbounds [20 x float], [20 x float]* %116, i32 0, i32 0
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @DegenerateSymbolScore(float* %114, float* %117, i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 %121
  store i32 %119, i32* %122, align 4
  br label %123

; <label>:123:                                    ; preds = %113
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %109

; <label>:126:                                    ; preds = %109
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %127

; <label>:127:                                    ; preds = %172, %126
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %130 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %175

; <label>:133:                                    ; preds = %127
  %134 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %135 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %153, label %143

; <label>:143:                                    ; preds = %133
  %144 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %145 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 3
  br i1 %152, label %153, label %171

; <label>:153:                                    ; preds = %143, %133
  %154 = load i8*, i8** %7, align 8
  %155 = load %struct.p7trace_s*, %struct.p7trace_s** %6, align 8
  %156 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %154, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %12, align 4
  br label %171

; <label>:171:                                    ; preds = %153, %143
  br label %172

; <label>:172:                                    ; preds = %171
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %127

; <label>:175:                                    ; preds = %127
  %176 = load i32, i32* %12, align 4
  %177 = sitofp i32 %176 to double
  %178 = fsub double %177, 8.000000e+03
  %179 = fptosi double %178 to i32
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @ILogsum(i32 0, i32 %180)
  %182 = call float @Scorify(i32 %181)
  store float %182, float* %4, align 4
  br label %183

; <label>:183:                                    ; preds = %175, %15
  %184 = load float, float* %4, align 4
  ret float %184
}

declare void @FSet(float*, i32, float) #1

declare void @FAdd(float*, float*, i32) #1

declare void @FNorm(float*, i32) #1

declare i32 @Prob2Score(float, float) #1

declare i32 @DegenerateSymbolScore(float*, float*, i32) #1

declare float @Scorify(i32) #1

declare i32 @ILogsum(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define float @SantaCruzCorrection(%struct.plan7_s*, %struct.p7trace_s*, i8*) #0 {
  %4 = alloca %struct.plan7_s*, align 8
  %5 = alloca %struct.p7trace_s*, align 8
  %6 = alloca i8*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %4, align 8
  store %struct.p7trace_s* %1, %struct.p7trace_s** %5, align 8
  store i8* %2, i8** %6, align 8
  ret float 0.000000e+00
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
