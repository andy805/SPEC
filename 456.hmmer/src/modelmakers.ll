; ModuleID = 'modelmakers.c'
source_filename = "modelmakers.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }

@.str = private unnamed_addr constant [55 x i8] c"Alignment must have RF annotation to hand-build an HMM\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"modelmakers.c\00", align 1
@Alphabet_size = external global i32, align 4
@.str.2 = private unnamed_addr constant [302 x i8] c"No conserved consensus columns found; aborting construction!\0AThis is an unusual situation. Reexamine your sequence alignment. It is\0Aprobably unusually full of gaps, or lots of sequence fragments. You may be\0Aable to force HMMER to model it; see the --fast (and --gapmax), or --hand\0Aoptions to hmmbuild.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"X-PRM\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"X-PRI\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"X-PRT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7Handmodelmaker(%struct.msa_struct*, i8**, %struct.plan7_s**, %struct.p7trace_s***) #0 {
  %5 = alloca %struct.msa_struct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.plan7_s**, align 8
  %8 = alloca %struct.p7trace_s***, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.plan7_s** %2, %struct.plan7_s*** %7, align 8
  store %struct.p7trace_s*** %3, %struct.p7trace_s**** %8, align 8
  %11 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 13
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0))
  br label %16

; <label>:16:                                     ; preds = %15, %4
  %17 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %18 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 111, i64 %22)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 0, i32* %26, align 4
  store i32 0, i32* %10, align 4
  br label %27

; <label>:27:                                     ; preds = %105, %16
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %30 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %108

; <label>:33:                                     ; preds = %27
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 0, i32* %38, align 4
  %39 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %40 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 13
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %96, label %48

; <label>:48:                                     ; preds = %33
  %49 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %50 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 13
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %96, label %58

; <label>:58:                                     ; preds = %48
  %59 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %60 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 13
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 95
  br i1 %67, label %96, label %68

; <label>:68:                                     ; preds = %58
  %69 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %70 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 13
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 45
  br i1 %77, label %96, label %78

; <label>:78:                                     ; preds = %68
  %79 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %80 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %79, i32 0, i32 13
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 126
  br i1 %87, label %96, label %88

; <label>:88:                                     ; preds = %78
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %104

; <label>:96:                                     ; preds = %78, %68, %58, %48, %33
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, 8
  store i32 %103, i32* %101, align 4
  br label %104

; <label>:104:                                    ; preds = %96, %88
  br label %105

; <label>:105:                                    ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %27

; <label>:108:                                    ; preds = %27
  %109 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %110 = load i8**, i8*** %6, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load %struct.plan7_s**, %struct.plan7_s*** %7, align 8
  %113 = load %struct.p7trace_s***, %struct.p7trace_s**** %8, align 8
  call void @matassign2hmm(%struct.msa_struct* %109, i8** %110, i32* %111, %struct.plan7_s** %112, %struct.p7trace_s*** %113)
  %114 = load i32*, i32** %9, align 8
  %115 = bitcast i32* %114 to i8*
  call void @free(i8* %115) #4
  ret void
}

declare void @Die(i8*, ...) #1

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matassign2hmm(%struct.msa_struct*, i8**, i32*, %struct.plan7_s**, %struct.p7trace_s***) #0 {
  %6 = alloca %struct.msa_struct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.plan7_s**, align 8
  %10 = alloca %struct.p7trace_s***, align 8
  %11 = alloca %struct.plan7_s*, align 8
  %12 = alloca %struct.p7trace_s**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.plan7_s** %3, %struct.plan7_s*** %9, align 8
  store %struct.p7trace_s*** %4, %struct.p7trace_s**** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %16

; <label>:16:                                     ; preds = %34, %5
  %17 = load i32, i32* %15, align 4
  %18 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %17, %20
  br i1 %21, label %22, label %37

; <label>:22:                                     ; preds = %16
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  br label %33

; <label>:33:                                     ; preds = %30, %22
  br label %34

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  br label %16

; <label>:37:                                     ; preds = %16
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([302 x i8], [302 x i8]* @.str.2, i32 0, i32 0))
  br label %41

; <label>:41:                                     ; preds = %40, %37
  store i32 1, i32* %15, align 4
  br label %42

; <label>:42:                                     ; preds = %65, %41
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

; <label>:50:                                     ; preds = %42
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp sle i32 %51, %54
  br label %56

; <label>:56:                                     ; preds = %50, %42
  %57 = phi i1 [ false, %42 ], [ %55, %50 ]
  br i1 %57, label %58, label %68

; <label>:58:                                     ; preds = %56
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 16
  store i32 %64, i32* %62, align 4
  br label %65

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %42

; <label>:68:                                     ; preds = %56
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %71 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp sle i32 %69, %72
  br i1 %73, label %74, label %81

; <label>:74:                                     ; preds = %68
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, 2
  store i32 %80, i32* %78, align 4
  br label %81

; <label>:81:                                     ; preds = %74, %68
  %82 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %83 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %15, align 4
  br label %85

; <label>:85:                                     ; preds = %105, %81
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

; <label>:93:                                     ; preds = %85
  %94 = load i32, i32* %15, align 4
  %95 = icmp sgt i32 %94, 0
  br label %96

; <label>:96:                                     ; preds = %93, %85
  %97 = phi i1 [ false, %85 ], [ %95, %93 ]
  br i1 %97, label %98, label %108

; <label>:98:                                     ; preds = %96
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, 32
  store i32 %104, i32* %102, align 4
  br label %105

; <label>:105:                                    ; preds = %98
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %15, align 4
  br label %85

; <label>:108:                                    ; preds = %96
  %109 = load i32, i32* %15, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %118

; <label>:111:                                    ; preds = %108
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, 4
  store i32 %117, i32* %115, align 4
  br label %118

; <label>:118:                                    ; preds = %111, %108
  %119 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %120 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %123 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %126 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %8, align 8
  call void @fake_tracebacks(i8** %121, i32 %124, i32 %127, i32* %128, %struct.p7trace_s*** %12)
  %129 = load i32, i32* %13, align 4
  %130 = call %struct.plan7_s* @AllocPlan7(i32 %129)
  store %struct.plan7_s* %130, %struct.plan7_s** %11, align 8
  %131 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  call void @ZeroPlan7(%struct.plan7_s* %131)
  store i32 0, i32* %14, align 4
  br label %132

; <label>:132:                                    ; preds = %157, %118
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %135 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %160

; <label>:138:                                    ; preds = %132
  %139 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %140 = load i8**, i8*** %7, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %146 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %145, i32 0, i32 2
  %147 = load float*, float** %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %147, i64 %149
  %151 = load float, float* %150, align 4
  %152 = load %struct.p7trace_s**, %struct.p7trace_s*** %12, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %152, i64 %154
  %156 = load %struct.p7trace_s*, %struct.p7trace_s** %155, align 8
  call void @P7TraceCount(%struct.plan7_s* %139, i8* %144, float %151, %struct.p7trace_s* %156)
  br label %157

; <label>:157:                                    ; preds = %138
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %132

; <label>:160:                                    ; preds = %132
  %161 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  call void @annotate_model(%struct.plan7_s* %161, i32* %162, %struct.msa_struct* %163)
  %164 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %165 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %164, i32 0, i32 13
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %172

; <label>:168:                                    ; preds = %160
  %169 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %170 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %169, i32 0, i32 13
  %171 = load i8*, i8** %170, align 8
  call void @free(i8* %171) #4
  br label %172

; <label>:172:                                    ; preds = %168, %160
  %173 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %174 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = mul i64 1, %177
  %179 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 564, i64 %178)
  %180 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %181 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %180, i32 0, i32 13
  store i8* %179, i8** %181, align 8
  store i32 0, i32* %15, align 4
  br label %182

; <label>:182:                                    ; preds = %206, %172
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %185 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %209

; <label>:188:                                    ; preds = %182
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 1
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 120, i32 46
  %199 = trunc i32 %198 to i8
  %200 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %201 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %200, i32 0, i32 13
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  store i8 %199, i8* %205, align 1
  br label %206

; <label>:206:                                    ; preds = %188
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  br label %182

; <label>:209:                                    ; preds = %182
  %210 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %211 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %210, i32 0, i32 13
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %214 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %212, i64 %216
  store i8 0, i8* %217, align 1
  %218 = load %struct.p7trace_s***, %struct.p7trace_s**** %10, align 8
  %219 = icmp ne %struct.p7trace_s*** %218, null
  br i1 %219, label %220, label %223

; <label>:220:                                    ; preds = %209
  %221 = load %struct.p7trace_s**, %struct.p7trace_s*** %12, align 8
  %222 = load %struct.p7trace_s***, %struct.p7trace_s**** %10, align 8
  store %struct.p7trace_s** %221, %struct.p7trace_s*** %222, align 8
  br label %242

; <label>:223:                                    ; preds = %209
  store i32 0, i32* %14, align 4
  br label %224

; <label>:224:                                    ; preds = %236, %223
  %225 = load i32, i32* %14, align 4
  %226 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %227 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %239

; <label>:230:                                    ; preds = %224
  %231 = load %struct.p7trace_s**, %struct.p7trace_s*** %12, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %231, i64 %233
  %235 = load %struct.p7trace_s*, %struct.p7trace_s** %234, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %235)
  br label %236

; <label>:236:                                    ; preds = %230
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %224

; <label>:239:                                    ; preds = %224
  %240 = load %struct.p7trace_s**, %struct.p7trace_s*** %12, align 8
  %241 = bitcast %struct.p7trace_s** %240 to i8*
  call void @free(i8* %241) #4
  br label %242

; <label>:242:                                    ; preds = %239, %220
  %243 = load %struct.plan7_s**, %struct.plan7_s*** %9, align 8
  %244 = icmp ne %struct.plan7_s** %243, null
  br i1 %244, label %245, label %248

; <label>:245:                                    ; preds = %242
  %246 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %247 = load %struct.plan7_s**, %struct.plan7_s*** %9, align 8
  store %struct.plan7_s* %246, %struct.plan7_s** %247, align 8
  br label %250

; <label>:248:                                    ; preds = %242
  %249 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  call void @FreePlan7(%struct.plan7_s* %249)
  br label %250

; <label>:250:                                    ; preds = %248, %245
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @P7Fastmodelmaker(%struct.msa_struct*, i8**, float, %struct.plan7_s**, %struct.p7trace_s***) #0 {
  %6 = alloca %struct.msa_struct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.plan7_s**, align 8
  %10 = alloca %struct.p7trace_s***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store float %2, float* %8, align 4
  store %struct.plan7_s** %3, %struct.plan7_s*** %9, align 8
  store %struct.p7trace_s*** %4, %struct.p7trace_s**** %10, align 8
  %15 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 172, i64 %20)
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %24, align 4
  store i32 0, i32* %13, align 4
  br label %25

; <label>:25:                                     ; preds = %147, %5
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %28 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %150

; <label>:31:                                     ; preds = %25
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 0, i32* %36, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %37

; <label>:37:                                     ; preds = %117, %31
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %40 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %120

; <label>:43:                                     ; preds = %37
  %44 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %113, label %57

; <label>:57:                                     ; preds = %43
  %58 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %59 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 46
  br i1 %70, label %113, label %71

; <label>:71:                                     ; preds = %57
  %72 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %73 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 95
  br i1 %84, label %113, label %85

; <label>:85:                                     ; preds = %71
  %86 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %87 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 45
  br i1 %98, label %113, label %99

; <label>:99:                                     ; preds = %85
  %100 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %101 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 126
  br i1 %112, label %113, label %116

; <label>:113:                                    ; preds = %99, %85, %71, %57, %43
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %116

; <label>:116:                                    ; preds = %113, %99
  br label %117

; <label>:117:                                    ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %37

; <label>:120:                                    ; preds = %37
  %121 = load i32, i32* %14, align 4
  %122 = sitofp i32 %121 to float
  %123 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %124 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = sitofp i32 %125 to float
  %127 = fdiv float %122, %126
  %128 = load float, float* %8, align 4
  %129 = fcmp ogt float %127, %128
  br i1 %129, label %130, label %138

; <label>:130:                                    ; preds = %120
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, 8
  store i32 %137, i32* %135, align 4
  br label %146

; <label>:138:                                    ; preds = %120
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

; <label>:146:                                    ; preds = %138, %130
  br label %147

; <label>:147:                                    ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %25

; <label>:150:                                    ; preds = %25
  %151 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %152 = load i8**, i8*** %7, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = load %struct.plan7_s**, %struct.plan7_s*** %9, align 8
  %155 = load %struct.p7trace_s***, %struct.p7trace_s**** %10, align 8
  call void @matassign2hmm(%struct.msa_struct* %151, i8** %152, i32* %153, %struct.plan7_s** %154, %struct.p7trace_s*** %155)
  %156 = load i32*, i32** %11, align 8
  %157 = bitcast i32* %156 to i8*
  call void @free(i8* %157) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P7Maxmodelmaker(%struct.msa_struct*, i8**, float, %struct.p7prior_s*, float*, float, float, %struct.plan7_s**, %struct.p7trace_s***) #0 {
  %10 = alloca %struct.msa_struct*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca float, align 4
  %13 = alloca %struct.p7prior_s*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.plan7_s**, align 8
  %18 = alloca %struct.p7trace_s***, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float**, align 8
  %24 = alloca [8 x float], align 16
  %25 = alloca [8 x float], align 16
  %26 = alloca [20 x float], align 16
  %27 = alloca [20 x float], align 16
  %28 = alloca [20 x float], align 16
  %29 = alloca float*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca i32, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca float, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %10, align 8
  store i8** %1, i8*** %11, align 8
  store float %2, float* %12, align 4
  store %struct.p7prior_s* %3, %struct.p7prior_s** %13, align 8
  store float* %4, float** %14, align 8
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store %struct.plan7_s** %7, %struct.plan7_s*** %17, align 8
  store %struct.p7trace_s*** %8, %struct.p7trace_s**** %18, align 8
  %44 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = mul i64 8, %48
  %50 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 255, i64 %49)
  %51 = bitcast i8* %50 to float**
  store float** %51, float*** %23, align 8
  %52 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 256, i64 %57)
  %59 = bitcast i8* %58 to float*
  store float* %59, float** %29, align 8
  %60 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %61 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 257, i64 %65)
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %30, align 8
  %68 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %69 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 258, i64 %73)
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** %31, align 8
  %76 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %77 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 259, i64 %80)
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %32, align 8
  store i32 0, i32* %20, align 4
  br label %83

; <label>:83:                                     ; preds = %107, %9
  %84 = load i32, i32* %20, align 4
  %85 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %86 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %110

; <label>:89:                                     ; preds = %83
  %90 = load i32, i32* @Alphabet_size, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 261, i64 %92)
  %94 = bitcast i8* %93 to float*
  %95 = load float**, float*** %23, align 8
  %96 = load i32, i32* %20, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float*, float** %95, i64 %98
  store float* %94, float** %99, align 8
  %100 = load float**, float*** %23, align 8
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float*, float** %100, i64 %103
  %105 = load float*, float** %104, align 8
  %106 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %105, i32 %106, float 0.000000e+00)
  br label %107

; <label>:107:                                    ; preds = %89
  %108 = load i32, i32* %20, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %20, align 4
  br label %83

; <label>:110:                                    ; preds = %83
  store i32 0, i32* %20, align 4
  br label %111

; <label>:111:                                    ; preds = %226, %110
  %112 = load i32, i32* %20, align 4
  %113 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %114 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %229

; <label>:117:                                    ; preds = %111
  store i32 0, i32* %19, align 4
  br label %118

; <label>:118:                                    ; preds = %222, %117
  %119 = load i32, i32* %19, align 4
  %120 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %121 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %225

; <label>:124:                                    ; preds = %118
  %125 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %126 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 32
  br i1 %137, label %221, label %138

; <label>:138:                                    ; preds = %124
  %139 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %140 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 46
  br i1 %151, label %221, label %152

; <label>:152:                                    ; preds = %138
  %153 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %154 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %153, i32 0, i32 0
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %20, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 95
  br i1 %165, label %221, label %166

; <label>:166:                                    ; preds = %152
  %167 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %168 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %167, i32 0, i32 0
  %169 = load i8**, i8*** %168, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %20, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 45
  br i1 %179, label %221, label %180

; <label>:180:                                    ; preds = %166
  %181 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %182 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %181, i32 0, i32 0
  %183 = load i8**, i8*** %182, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 126
  br i1 %193, label %221, label %194

; <label>:194:                                    ; preds = %180
  %195 = load float**, float*** %23, align 8
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float*, float** %195, i64 %198
  %200 = load float*, float** %199, align 8
  %201 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %202 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %201, i32 0, i32 0
  %203 = load i8**, i8*** %202, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = load i32, i32* %20, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = call i32 @SymbolIndex(i8 signext %211)
  %213 = trunc i32 %212 to i8
  %214 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %215 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %214, i32 0, i32 2
  %216 = load float*, float** %215, align 8
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %216, i64 %218
  %220 = load float, float* %219, align 4
  call void @P7CountSymbol(float* %200, i8 signext %213, float %220)
  br label %221

; <label>:221:                                    ; preds = %194, %180, %166, %152, %138, %124
  br label %222

; <label>:222:                                    ; preds = %221
  %223 = load i32, i32* %19, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %19, align 4
  br label %118

; <label>:225:                                    ; preds = %118
  br label %226

; <label>:226:                                    ; preds = %225
  %227 = load i32, i32* %20, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %20, align 4
  br label %111

; <label>:229:                                    ; preds = %111
  %230 = load float, float* %16, align 4
  %231 = fcmp ogt float %230, 0.000000e+00
  br i1 %231, label %232, label %237

; <label>:232:                                    ; preds = %229
  %233 = load float, float* %16, align 4
  %234 = fpext float %233 to double
  %235 = call double @log(double %234) #4
  %236 = fmul double %235, 0x3FF7154764EE6C2F
  br label %238

; <label>:237:                                    ; preds = %229
  br label %238

; <label>:238:                                    ; preds = %237, %232
  %239 = phi double [ %236, %232 ], [ -9.999000e+03, %237 ]
  %240 = fptrunc double %239 to float
  store float %240, float* %16, align 4
  %241 = getelementptr inbounds [20 x float], [20 x float]* %27, i32 0, i32 0
  %242 = load %struct.p7prior_s*, %struct.p7prior_s** %13, align 8
  %243 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %242, i32 0, i32 9
  %244 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %243, i64 0, i64 0
  %245 = getelementptr inbounds [20 x float], [20 x float]* %244, i32 0, i32 0
  %246 = load i32, i32* @Alphabet_size, align 4
  call void @FCopy(float* %241, float* %245, i32 %246)
  %247 = getelementptr inbounds [20 x float], [20 x float]* %27, i32 0, i32 0
  %248 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %247, i32 %248)
  %249 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %250 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %249, i32 0, i32 2
  %251 = load float*, float** %250, align 8
  %252 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %253 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = call float @FSum(float* %251, i32 %254)
  store float %255, float* %43, align 4
  store i32 0, i32* %22, align 4
  br label %256

; <label>:256:                                    ; preds = %293, %238
  %257 = load i32, i32* %22, align 4
  %258 = load i32, i32* @Alphabet_size, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %296

; <label>:260:                                    ; preds = %256
  %261 = load i32, i32* %22, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [20 x float], [20 x float]* %27, i64 0, i64 %262
  %264 = load float, float* %263, align 4
  %265 = load float*, float** %14, align 8
  %266 = load i32, i32* %22, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %265, i64 %267
  %269 = load float, float* %268, align 4
  %270 = fdiv float %264, %269
  %271 = fcmp ogt float %270, 0.000000e+00
  br i1 %271, label %272, label %286

; <label>:272:                                    ; preds = %260
  %273 = load i32, i32* %22, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [20 x float], [20 x float]* %27, i64 0, i64 %274
  %276 = load float, float* %275, align 4
  %277 = load float*, float** %14, align 8
  %278 = load i32, i32* %22, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %277, i64 %279
  %281 = load float, float* %280, align 4
  %282 = fdiv float %276, %281
  %283 = fpext float %282 to double
  %284 = call double @log(double %283) #4
  %285 = fmul double %284, 0x3FF7154764EE6C2F
  br label %287

; <label>:286:                                    ; preds = %260
  br label %287

; <label>:287:                                    ; preds = %286, %272
  %288 = phi double [ %285, %272 ], [ -9.999000e+03, %286 ]
  %289 = fptrunc double %288 to float
  %290 = load i32, i32* %22, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [20 x float], [20 x float]* %27, i64 0, i64 %291
  store float %289, float* %292, align 4
  br label %293

; <label>:293:                                    ; preds = %287
  %294 = load i32, i32* %22, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %22, align 4
  br label %256

; <label>:296:                                    ; preds = %256
  %297 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %298 = call i32 @estimate_model_length(%struct.msa_struct* %297)
  store i32 %298, i32* %37, align 4
  %299 = load i32, i32* %37, align 4
  %300 = sub nsw i32 %299, 1
  %301 = sitofp i32 %300 to float
  %302 = fpext float %301 to double
  %303 = fdiv double 5.000000e-01, %302
  %304 = fptrunc double %303 to float
  store float %304, float* %38, align 4
  store float 5.000000e-01, float* %35, align 4
  %305 = load i32, i32* %37, align 4
  %306 = sub nsw i32 %305, 1
  %307 = sitofp i32 %306 to float
  %308 = fpext float %307 to double
  %309 = fdiv double 5.000000e-01, %308
  %310 = fptrunc double %309 to float
  store float %310, float* %36, align 4
  %311 = load float, float* %35, align 4
  %312 = load float, float* %15, align 4
  %313 = fdiv float %311, %312
  %314 = fcmp ogt float %313, 0.000000e+00
  br i1 %314, label %315, label %322

; <label>:315:                                    ; preds = %296
  %316 = load float, float* %35, align 4
  %317 = load float, float* %15, align 4
  %318 = fdiv float %316, %317
  %319 = fpext float %318 to double
  %320 = call double @log(double %319) #4
  %321 = fmul double %320, 0x3FF7154764EE6C2F
  br label %323

; <label>:322:                                    ; preds = %296
  br label %323

; <label>:323:                                    ; preds = %322, %315
  %324 = phi double [ %321, %315 ], [ -9.999000e+03, %322 ]
  %325 = fptrunc double %324 to float
  store float %325, float* %35, align 4
  %326 = load float, float* %36, align 4
  %327 = load float, float* %15, align 4
  %328 = fdiv float %326, %327
  %329 = fcmp ogt float %328, 0.000000e+00
  br i1 %329, label %330, label %337

; <label>:330:                                    ; preds = %323
  %331 = load float, float* %36, align 4
  %332 = load float, float* %15, align 4
  %333 = fdiv float %331, %332
  %334 = fpext float %333 to double
  %335 = call double @log(double %334) #4
  %336 = fmul double %335, 0x3FF7154764EE6C2F
  br label %338

; <label>:337:                                    ; preds = %323
  br label %338

; <label>:338:                                    ; preds = %337, %330
  %339 = phi double [ %336, %330 ], [ -9.999000e+03, %337 ]
  %340 = fptrunc double %339 to float
  store float %340, float* %36, align 4
  store float 5.000000e-01, float* %12, align 4
  %341 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %342 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  store i32 %343, i32* %34, align 4
  br label %344

; <label>:344:                                    ; preds = %448, %338
  %345 = load i32, i32* %34, align 4
  %346 = icmp sge i32 %345, 1
  br i1 %346, label %347, label %451

; <label>:347:                                    ; preds = %344
  store i32 0, i32* %42, align 4
  store i32 0, i32* %19, align 4
  br label %348

; <label>:348:                                    ; preds = %433, %347
  %349 = load i32, i32* %19, align 4
  %350 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %351 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = icmp slt i32 %349, %352
  br i1 %353, label %354, label %436

; <label>:354:                                    ; preds = %348
  %355 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %356 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %355, i32 0, i32 0
  %357 = load i8**, i8*** %356, align 8
  %358 = load i32, i32* %19, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8*, i8** %357, i64 %359
  %361 = load i8*, i8** %360, align 8
  %362 = load i32, i32* %34, align 4
  %363 = sub nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %361, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp eq i32 %367, 32
  br i1 %368, label %429, label %369

; <label>:369:                                    ; preds = %354
  %370 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %371 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %370, i32 0, i32 0
  %372 = load i8**, i8*** %371, align 8
  %373 = load i32, i32* %19, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %372, i64 %374
  %376 = load i8*, i8** %375, align 8
  %377 = load i32, i32* %34, align 4
  %378 = sub nsw i32 %377, 1
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %376, i64 %379
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = icmp eq i32 %382, 46
  br i1 %383, label %429, label %384

; <label>:384:                                    ; preds = %369
  %385 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %386 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %385, i32 0, i32 0
  %387 = load i8**, i8*** %386, align 8
  %388 = load i32, i32* %19, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8*, i8** %387, i64 %389
  %391 = load i8*, i8** %390, align 8
  %392 = load i32, i32* %34, align 4
  %393 = sub nsw i32 %392, 1
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, i8* %391, i64 %394
  %396 = load i8, i8* %395, align 1
  %397 = sext i8 %396 to i32
  %398 = icmp eq i32 %397, 95
  br i1 %398, label %429, label %399

; <label>:399:                                    ; preds = %384
  %400 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %401 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %400, i32 0, i32 0
  %402 = load i8**, i8*** %401, align 8
  %403 = load i32, i32* %19, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8*, i8** %402, i64 %404
  %406 = load i8*, i8** %405, align 8
  %407 = load i32, i32* %34, align 4
  %408 = sub nsw i32 %407, 1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %406, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp eq i32 %412, 45
  br i1 %413, label %429, label %414

; <label>:414:                                    ; preds = %399
  %415 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %416 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %415, i32 0, i32 0
  %417 = load i8**, i8*** %416, align 8
  %418 = load i32, i32* %19, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8*, i8** %417, i64 %419
  %421 = load i8*, i8** %420, align 8
  %422 = load i32, i32* %34, align 4
  %423 = sub nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %421, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  %428 = icmp eq i32 %427, 126
  br i1 %428, label %429, label %432

; <label>:429:                                    ; preds = %414, %399, %384, %369, %354
  %430 = load i32, i32* %42, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %42, align 4
  br label %432

; <label>:432:                                    ; preds = %429, %414
  br label %433

; <label>:433:                                    ; preds = %432
  %434 = load i32, i32* %19, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %19, align 4
  br label %348

; <label>:436:                                    ; preds = %348
  %437 = load i32, i32* %42, align 4
  %438 = sitofp i32 %437 to float
  %439 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %440 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 4
  %442 = sitofp i32 %441 to float
  %443 = fdiv float %438, %442
  %444 = load float, float* %12, align 4
  %445 = fcmp ole float %443, %444
  br i1 %445, label %446, label %447

; <label>:446:                                    ; preds = %436
  br label %451

; <label>:447:                                    ; preds = %436
  br label %448

; <label>:448:                                    ; preds = %447
  %449 = load i32, i32* %34, align 4
  %450 = add nsw i32 %449, -1
  store i32 %450, i32* %34, align 4
  br label %344

; <label>:451:                                    ; preds = %446, %344
  %452 = load float*, float** %29, align 8
  %453 = load i32, i32* %34, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds float, float* %452, i64 %454
  store float 0.000000e+00, float* %455, align 4
  %456 = load i32*, i32** %30, align 8
  %457 = load i32, i32* %34, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  store i32 0, i32* %459, align 4
  store i32 0, i32* %19, align 4
  br label %460

; <label>:460:                                    ; preds = %566, %451
  %461 = load i32, i32* %19, align 4
  %462 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %463 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %462, i32 0, i32 4
  %464 = load i32, i32* %463, align 4
  %465 = icmp slt i32 %461, %464
  br i1 %465, label %466, label %569

; <label>:466:                                    ; preds = %460
  %467 = load i32, i32* %34, align 4
  store i32 %467, i32* %20, align 4
  br label %468

; <label>:468:                                    ; preds = %562, %466
  %469 = load i32, i32* %20, align 4
  %470 = icmp sgt i32 %469, 0
  br i1 %470, label %471, label %548

; <label>:471:                                    ; preds = %468
  %472 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %473 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %472, i32 0, i32 0
  %474 = load i8**, i8*** %473, align 8
  %475 = load i32, i32* %19, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8*, i8** %474, i64 %476
  %478 = load i8*, i8** %477, align 8
  %479 = load i32, i32* %20, align 4
  %480 = sub nsw i32 %479, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, i8* %478, i64 %481
  %483 = load i8, i8* %482, align 1
  %484 = sext i8 %483 to i32
  %485 = icmp eq i32 %484, 32
  br i1 %485, label %546, label %486

; <label>:486:                                    ; preds = %471
  %487 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %488 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %487, i32 0, i32 0
  %489 = load i8**, i8*** %488, align 8
  %490 = load i32, i32* %19, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i8*, i8** %489, i64 %491
  %493 = load i8*, i8** %492, align 8
  %494 = load i32, i32* %20, align 4
  %495 = sub nsw i32 %494, 1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, i8* %493, i64 %496
  %498 = load i8, i8* %497, align 1
  %499 = sext i8 %498 to i32
  %500 = icmp eq i32 %499, 46
  br i1 %500, label %546, label %501

; <label>:501:                                    ; preds = %486
  %502 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %503 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %502, i32 0, i32 0
  %504 = load i8**, i8*** %503, align 8
  %505 = load i32, i32* %19, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i8*, i8** %504, i64 %506
  %508 = load i8*, i8** %507, align 8
  %509 = load i32, i32* %20, align 4
  %510 = sub nsw i32 %509, 1
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8, i8* %508, i64 %511
  %513 = load i8, i8* %512, align 1
  %514 = sext i8 %513 to i32
  %515 = icmp eq i32 %514, 95
  br i1 %515, label %546, label %516

; <label>:516:                                    ; preds = %501
  %517 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %518 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %517, i32 0, i32 0
  %519 = load i8**, i8*** %518, align 8
  %520 = load i32, i32* %19, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i8*, i8** %519, i64 %521
  %523 = load i8*, i8** %522, align 8
  %524 = load i32, i32* %20, align 4
  %525 = sub nsw i32 %524, 1
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i8, i8* %523, i64 %526
  %528 = load i8, i8* %527, align 1
  %529 = sext i8 %528 to i32
  %530 = icmp eq i32 %529, 45
  br i1 %530, label %546, label %531

; <label>:531:                                    ; preds = %516
  %532 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %533 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %532, i32 0, i32 0
  %534 = load i8**, i8*** %533, align 8
  %535 = load i32, i32* %19, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i8*, i8** %534, i64 %536
  %538 = load i8*, i8** %537, align 8
  %539 = load i32, i32* %20, align 4
  %540 = sub nsw i32 %539, 1
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, i8* %538, i64 %541
  %543 = load i8, i8* %542, align 1
  %544 = sext i8 %543 to i32
  %545 = icmp eq i32 %544, 126
  br label %546

; <label>:546:                                    ; preds = %531, %516, %501, %486, %471
  %547 = phi i1 [ true, %516 ], [ true, %501 ], [ true, %486 ], [ true, %471 ], [ %545, %531 ]
  br label %548

; <label>:548:                                    ; preds = %546, %468
  %549 = phi i1 [ false, %468 ], [ %547, %546 ]
  br i1 %549, label %550, label %565

; <label>:550:                                    ; preds = %548
  %551 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %552 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %551, i32 0, i32 0
  %553 = load i8**, i8*** %552, align 8
  %554 = load i32, i32* %19, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8*, i8** %553, i64 %555
  %557 = load i8*, i8** %556, align 8
  %558 = load i32, i32* %20, align 4
  %559 = sub nsw i32 %558, 1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i8, i8* %557, i64 %560
  store i8 95, i8* %561, align 1
  br label %562

; <label>:562:                                    ; preds = %550
  %563 = load i32, i32* %20, align 4
  %564 = add nsw i32 %563, -1
  store i32 %564, i32* %20, align 4
  br label %468

; <label>:565:                                    ; preds = %548
  br label %566

; <label>:566:                                    ; preds = %565
  %567 = load i32, i32* %19, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %19, align 4
  br label %460

; <label>:569:                                    ; preds = %460
  %570 = load i32, i32* %34, align 4
  %571 = sub nsw i32 %570, 1
  store i32 %571, i32* %20, align 4
  br label %572

; <label>:572:                                    ; preds = %966, %569
  %573 = load i32, i32* %20, align 4
  %574 = icmp sgt i32 %573, 0
  br i1 %574, label %575, label %969

; <label>:575:                                    ; preds = %572
  %576 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 0, i32 0
  %577 = load float**, float*** %23, align 8
  %578 = load i32, i32* %20, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds float*, float** %577, i64 %579
  %581 = load float*, float** %580, align 8
  %582 = load i32, i32* @Alphabet_size, align 4
  call void @FCopy(float* %576, float* %581, i32 %582)
  %583 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 0, i32 0
  %584 = load %struct.p7prior_s*, %struct.p7prior_s** %13, align 8
  %585 = load %struct.p7prior_s*, %struct.p7prior_s** %13, align 8
  %586 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %585, i32 0, i32 4
  %587 = load i32, i32* %586, align 4
  %588 = load %struct.p7prior_s*, %struct.p7prior_s** %13, align 8
  %589 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %588, i32 0, i32 5
  %590 = getelementptr inbounds [200 x float], [200 x float]* %589, i32 0, i32 0
  %591 = load %struct.p7prior_s*, %struct.p7prior_s** %13, align 8
  %592 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %591, i32 0, i32 6
  %593 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %592, i32 0, i32 0
  call void @P7PriorifyEmissionVector(float* %583, %struct.p7prior_s* %584, i32 %587, float* %590, [20 x float]* %593, float* null)
  store i32 0, i32* %22, align 4
  br label %594

; <label>:594:                                    ; preds = %631, %575
  %595 = load i32, i32* %22, align 4
  %596 = load i32, i32* @Alphabet_size, align 4
  %597 = icmp slt i32 %595, %596
  br i1 %597, label %598, label %634

; <label>:598:                                    ; preds = %594
  %599 = load i32, i32* %22, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [20 x float], [20 x float]* %26, i64 0, i64 %600
  %602 = load float, float* %601, align 4
  %603 = load float*, float** %14, align 8
  %604 = load i32, i32* %22, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds float, float* %603, i64 %605
  %607 = load float, float* %606, align 4
  %608 = fdiv float %602, %607
  %609 = fcmp ogt float %608, 0.000000e+00
  br i1 %609, label %610, label %624

; <label>:610:                                    ; preds = %598
  %611 = load i32, i32* %22, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [20 x float], [20 x float]* %26, i64 0, i64 %612
  %614 = load float, float* %613, align 4
  %615 = load float*, float** %14, align 8
  %616 = load i32, i32* %22, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds float, float* %615, i64 %617
  %619 = load float, float* %618, align 4
  %620 = fdiv float %614, %619
  %621 = fpext float %620 to double
  %622 = call double @log(double %621) #4
  %623 = fmul double %622, 0x3FF7154764EE6C2F
  br label %625

; <label>:624:                                    ; preds = %598
  br label %625

; <label>:625:                                    ; preds = %624, %610
  %626 = phi double [ %623, %610 ], [ -9.999000e+03, %624 ]
  %627 = fptrunc double %626 to float
  %628 = load i32, i32* %22, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [20 x float], [20 x float]* %26, i64 0, i64 %629
  store float %627, float* %630, align 4
  br label %631

; <label>:631:                                    ; preds = %625
  %632 = load i32, i32* %22, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %22, align 4
  br label %594

; <label>:634:                                    ; preds = %594
  %635 = getelementptr inbounds [20 x float], [20 x float]* %28, i32 0, i32 0
  %636 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %635, i32 %636, float 0.000000e+00)
  store i32 0, i32* %19, align 4
  br label %637

; <label>:637:                                    ; preds = %648, %634
  %638 = load i32, i32* %19, align 4
  %639 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %640 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %639, i32 0, i32 4
  %641 = load i32, i32* %640, align 4
  %642 = icmp slt i32 %638, %641
  br i1 %642, label %643, label %651

; <label>:643:                                    ; preds = %637
  %644 = load i32*, i32** %32, align 8
  %645 = load i32, i32* %19, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i32, i32* %644, i64 %646
  store i32 0, i32* %647, align 4
  br label %648

; <label>:648:                                    ; preds = %643
  %649 = load i32, i32* %19, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %19, align 4
  br label %637

; <label>:651:                                    ; preds = %637
  %652 = load float*, float** %29, align 8
  %653 = load i32, i32* %20, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds float, float* %652, i64 %654
  store float 0xC7EFFFFFE0000000, float* %655, align 4
  %656 = load i32, i32* %20, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %21, align 4
  br label %658

; <label>:658:                                    ; preds = %944, %651
  %659 = load i32, i32* %21, align 4
  %660 = load i32, i32* %34, align 4
  %661 = icmp sle i32 %659, %660
  br i1 %661, label %662, label %947

; <label>:662:                                    ; preds = %658
  %663 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %664 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %663, i32 0, i32 0
  %665 = load i8**, i8*** %664, align 8
  %666 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %667 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %666, i32 0, i32 4
  %668 = load i32, i32* %667, align 4
  %669 = load i32*, i32** %32, align 8
  %670 = load i32, i32* %20, align 4
  %671 = load i32, i32* %21, align 4
  %672 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %673 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %672, i32 0, i32 2
  %674 = load float*, float** %673, align 8
  %675 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 0
  %676 = call i32 @build_cij(i8** %665, i32 %668, i32* %669, i32 %670, i32 %671, float* %674, float* %675)
  store i32 %676, i32* %41, align 4
  %677 = load i32, i32* %41, align 4
  %678 = icmp eq i32 %677, -1
  br i1 %678, label %679, label %680

; <label>:679:                                    ; preds = %662
  br label %947

; <label>:680:                                    ; preds = %662
  %681 = load i32, i32* %41, align 4
  %682 = icmp eq i32 %681, 1
  br i1 %682, label %683, label %843

; <label>:683:                                    ; preds = %680
  %684 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 0
  %685 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 0
  call void @FCopy(float* %684, float* %685, i32 7)
  %686 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 0
  %687 = load %struct.p7prior_s*, %struct.p7prior_s** %13, align 8
  %688 = load %struct.p7prior_s*, %struct.p7prior_s** %13, align 8
  %689 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %688, i32 0, i32 2
  %690 = getelementptr inbounds [200 x float], [200 x float]* %689, i32 0, i32 0
  call void @P7PriorifyTransitionVector(float* %686, %struct.p7prior_s* %687, float* %690)
  %691 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 0
  call void @FNorm(float* %691, i32 3)
  %692 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 0
  %693 = load float, float* %692, align 16
  %694 = load float, float* %15, align 4
  %695 = fdiv float %693, %694
  %696 = fcmp ogt float %695, 0.000000e+00
  br i1 %696, label %697, label %705

; <label>:697:                                    ; preds = %683
  %698 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 0
  %699 = load float, float* %698, align 16
  %700 = load float, float* %15, align 4
  %701 = fdiv float %699, %700
  %702 = fpext float %701 to double
  %703 = call double @log(double %702) #4
  %704 = fmul double %703, 0x3FF7154764EE6C2F
  br label %706

; <label>:705:                                    ; preds = %683
  br label %706

; <label>:706:                                    ; preds = %705, %697
  %707 = phi double [ %704, %697 ], [ -9.999000e+03, %705 ]
  %708 = fptrunc double %707 to float
  %709 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 0
  store float %708, float* %709, align 16
  %710 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 1
  %711 = load float, float* %710, align 4
  %712 = load float, float* %15, align 4
  %713 = fdiv float %711, %712
  %714 = fcmp ogt float %713, 0.000000e+00
  br i1 %714, label %715, label %723

; <label>:715:                                    ; preds = %706
  %716 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 1
  %717 = load float, float* %716, align 4
  %718 = load float, float* %15, align 4
  %719 = fdiv float %717, %718
  %720 = fpext float %719 to double
  %721 = call double @log(double %720) #4
  %722 = fmul double %721, 0x3FF7154764EE6C2F
  br label %724

; <label>:723:                                    ; preds = %706
  br label %724

; <label>:724:                                    ; preds = %723, %715
  %725 = phi double [ %722, %715 ], [ -9.999000e+03, %723 ]
  %726 = fptrunc double %725 to float
  %727 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 1
  store float %726, float* %727, align 4
  %728 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 2
  %729 = load float, float* %728, align 8
  %730 = fcmp ogt float %729, 0.000000e+00
  br i1 %730, label %731, label %737

; <label>:731:                                    ; preds = %724
  %732 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 2
  %733 = load float, float* %732, align 8
  %734 = fpext float %733 to double
  %735 = call double @log(double %734) #4
  %736 = fmul double %735, 0x3FF7154764EE6C2F
  br label %738

; <label>:737:                                    ; preds = %724
  br label %738

; <label>:738:                                    ; preds = %737, %731
  %739 = phi double [ %736, %731 ], [ -9.999000e+03, %737 ]
  %740 = fptrunc double %739 to float
  %741 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 2
  store float %740, float* %741, align 8
  %742 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 3
  %743 = load float, float* %742, align 4
  %744 = load float, float* %15, align 4
  %745 = fdiv float %743, %744
  %746 = fcmp ogt float %745, 0.000000e+00
  br i1 %746, label %747, label %755

; <label>:747:                                    ; preds = %738
  %748 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 3
  %749 = load float, float* %748, align 4
  %750 = load float, float* %15, align 4
  %751 = fdiv float %749, %750
  %752 = fpext float %751 to double
  %753 = call double @log(double %752) #4
  %754 = fmul double %753, 0x3FF7154764EE6C2F
  br label %756

; <label>:755:                                    ; preds = %738
  br label %756

; <label>:756:                                    ; preds = %755, %747
  %757 = phi double [ %754, %747 ], [ -9.999000e+03, %755 ]
  %758 = fptrunc double %757 to float
  %759 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 3
  store float %758, float* %759, align 4
  %760 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 4
  %761 = load float, float* %760, align 16
  %762 = load float, float* %15, align 4
  %763 = fdiv float %761, %762
  %764 = fcmp ogt float %763, 0.000000e+00
  br i1 %764, label %765, label %773

; <label>:765:                                    ; preds = %756
  %766 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 4
  %767 = load float, float* %766, align 16
  %768 = load float, float* %15, align 4
  %769 = fdiv float %767, %768
  %770 = fpext float %769 to double
  %771 = call double @log(double %770) #4
  %772 = fmul double %771, 0x3FF7154764EE6C2F
  br label %774

; <label>:773:                                    ; preds = %756
  br label %774

; <label>:774:                                    ; preds = %773, %765
  %775 = phi double [ %772, %765 ], [ -9.999000e+03, %773 ]
  %776 = fptrunc double %775 to float
  %777 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 4
  store float %776, float* %777, align 16
  %778 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 5
  %779 = load float, float* %778, align 4
  %780 = load float, float* %15, align 4
  %781 = fdiv float %779, %780
  %782 = fcmp ogt float %781, 0.000000e+00
  br i1 %782, label %783, label %791

; <label>:783:                                    ; preds = %774
  %784 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 5
  %785 = load float, float* %784, align 4
  %786 = load float, float* %15, align 4
  %787 = fdiv float %785, %786
  %788 = fpext float %787 to double
  %789 = call double @log(double %788) #4
  %790 = fmul double %789, 0x3FF7154764EE6C2F
  br label %792

; <label>:791:                                    ; preds = %774
  br label %792

; <label>:792:                                    ; preds = %791, %783
  %793 = phi double [ %790, %783 ], [ -9.999000e+03, %791 ]
  %794 = fptrunc double %793 to float
  %795 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 5
  store float %794, float* %795, align 4
  %796 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 6
  %797 = load float, float* %796, align 8
  %798 = fcmp ogt float %797, 0.000000e+00
  br i1 %798, label %799, label %805

; <label>:799:                                    ; preds = %792
  %800 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 6
  %801 = load float, float* %800, align 8
  %802 = fpext float %801 to double
  %803 = call double @log(double %802) #4
  %804 = fmul double %803, 0x3FF7154764EE6C2F
  br label %806

; <label>:805:                                    ; preds = %792
  br label %806

; <label>:806:                                    ; preds = %805, %799
  %807 = phi double [ %804, %799 ], [ -9.999000e+03, %805 ]
  %808 = fptrunc double %807 to float
  %809 = getelementptr inbounds [8 x float], [8 x float]* %25, i64 0, i64 6
  store float %808, float* %809, align 8
  %810 = load float*, float** %29, align 8
  %811 = load i32, i32* %21, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds float, float* %810, i64 %812
  %814 = load float, float* %813, align 4
  %815 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 0
  %816 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 0
  %817 = call float @FDot(float* %815, float* %816, i32 7)
  %818 = fadd float %814, %817
  %819 = getelementptr inbounds [20 x float], [20 x float]* %27, i32 0, i32 0
  %820 = getelementptr inbounds [20 x float], [20 x float]* %28, i32 0, i32 0
  %821 = load i32, i32* @Alphabet_size, align 4
  %822 = call float @FDot(float* %819, float* %820, i32 %821)
  %823 = fadd float %818, %822
  store float %823, float* %39, align 4
  %824 = load float, float* %39, align 4
  %825 = load float*, float** %29, align 8
  %826 = load i32, i32* %20, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds float, float* %825, i64 %827
  %829 = load float, float* %828, align 4
  %830 = fcmp ogt float %824, %829
  br i1 %830, label %831, label %842

; <label>:831:                                    ; preds = %806
  %832 = load float, float* %39, align 4
  %833 = load float*, float** %29, align 8
  %834 = load i32, i32* %20, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds float, float* %833, i64 %835
  store float %832, float* %836, align 4
  %837 = load i32, i32* %21, align 4
  %838 = load i32*, i32** %30, align 8
  %839 = load i32, i32* %20, align 4
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds i32, i32* %838, i64 %840
  store i32 %837, i32* %841, align 4
  br label %842

; <label>:842:                                    ; preds = %831, %806
  br label %843

; <label>:843:                                    ; preds = %842, %680
  %844 = getelementptr inbounds [20 x float], [20 x float]* %28, i32 0, i32 0
  %845 = load float**, float*** %23, align 8
  %846 = load i32, i32* %21, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds float*, float** %845, i64 %847
  %849 = load float*, float** %848, align 8
  %850 = load i32, i32* @Alphabet_size, align 4
  call void @FAdd(float* %844, float* %849, i32 %850)
  store i32 0, i32* %19, align 4
  br label %851

; <label>:851:                                    ; preds = %940, %843
  %852 = load i32, i32* %19, align 4
  %853 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %854 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %853, i32 0, i32 4
  %855 = load i32, i32* %854, align 4
  %856 = icmp slt i32 %852, %855
  br i1 %856, label %857, label %943

; <label>:857:                                    ; preds = %851
  %858 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %859 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %858, i32 0, i32 0
  %860 = load i8**, i8*** %859, align 8
  %861 = load i32, i32* %19, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds i8*, i8** %860, i64 %862
  %864 = load i8*, i8** %863, align 8
  %865 = load i32, i32* %21, align 4
  %866 = sub nsw i32 %865, 1
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds i8, i8* %864, i64 %867
  %869 = load i8, i8* %868, align 1
  %870 = sext i8 %869 to i32
  %871 = icmp eq i32 %870, 32
  br i1 %871, label %939, label %872

; <label>:872:                                    ; preds = %857
  %873 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %874 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %873, i32 0, i32 0
  %875 = load i8**, i8*** %874, align 8
  %876 = load i32, i32* %19, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds i8*, i8** %875, i64 %877
  %879 = load i8*, i8** %878, align 8
  %880 = load i32, i32* %21, align 4
  %881 = sub nsw i32 %880, 1
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds i8, i8* %879, i64 %882
  %884 = load i8, i8* %883, align 1
  %885 = sext i8 %884 to i32
  %886 = icmp eq i32 %885, 46
  br i1 %886, label %939, label %887

; <label>:887:                                    ; preds = %872
  %888 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %889 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %888, i32 0, i32 0
  %890 = load i8**, i8*** %889, align 8
  %891 = load i32, i32* %19, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds i8*, i8** %890, i64 %892
  %894 = load i8*, i8** %893, align 8
  %895 = load i32, i32* %21, align 4
  %896 = sub nsw i32 %895, 1
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds i8, i8* %894, i64 %897
  %899 = load i8, i8* %898, align 1
  %900 = sext i8 %899 to i32
  %901 = icmp eq i32 %900, 95
  br i1 %901, label %939, label %902

; <label>:902:                                    ; preds = %887
  %903 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %904 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %903, i32 0, i32 0
  %905 = load i8**, i8*** %904, align 8
  %906 = load i32, i32* %19, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds i8*, i8** %905, i64 %907
  %909 = load i8*, i8** %908, align 8
  %910 = load i32, i32* %21, align 4
  %911 = sub nsw i32 %910, 1
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds i8, i8* %909, i64 %912
  %914 = load i8, i8* %913, align 1
  %915 = sext i8 %914 to i32
  %916 = icmp eq i32 %915, 45
  br i1 %916, label %939, label %917

; <label>:917:                                    ; preds = %902
  %918 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %919 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %918, i32 0, i32 0
  %920 = load i8**, i8*** %919, align 8
  %921 = load i32, i32* %19, align 4
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds i8*, i8** %920, i64 %922
  %924 = load i8*, i8** %923, align 8
  %925 = load i32, i32* %21, align 4
  %926 = sub nsw i32 %925, 1
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds i8, i8* %924, i64 %927
  %929 = load i8, i8* %928, align 1
  %930 = sext i8 %929 to i32
  %931 = icmp eq i32 %930, 126
  br i1 %931, label %939, label %932

; <label>:932:                                    ; preds = %917
  %933 = load i32*, i32** %32, align 8
  %934 = load i32, i32* %19, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds i32, i32* %933, i64 %935
  %937 = load i32, i32* %936, align 4
  %938 = add nsw i32 %937, 1
  store i32 %938, i32* %936, align 4
  br label %939

; <label>:939:                                    ; preds = %932, %917, %902, %887, %872, %857
  br label %940

; <label>:940:                                    ; preds = %939
  %941 = load i32, i32* %19, align 4
  %942 = add nsw i32 %941, 1
  store i32 %942, i32* %19, align 4
  br label %851

; <label>:943:                                    ; preds = %851
  br label %944

; <label>:944:                                    ; preds = %943
  %945 = load i32, i32* %21, align 4
  %946 = add nsw i32 %945, 1
  store i32 %946, i32* %21, align 4
  br label %658

; <label>:947:                                    ; preds = %679, %658
  %948 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 0, i32 0
  %949 = load float**, float*** %23, align 8
  %950 = load i32, i32* %20, align 4
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds float*, float** %949, i64 %951
  %953 = load float*, float** %952, align 8
  %954 = load i32, i32* @Alphabet_size, align 4
  %955 = call float @FDot(float* %948, float* %953, i32 %954)
  %956 = load float, float* %16, align 4
  %957 = load float, float* %43, align 4
  %958 = fmul float %956, %957
  %959 = fadd float %955, %958
  %960 = load float*, float** %29, align 8
  %961 = load i32, i32* %20, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds float, float* %960, i64 %962
  %964 = load float, float* %963, align 4
  %965 = fadd float %964, %959
  store float %965, float* %963, align 4
  br label %966

; <label>:966:                                    ; preds = %947
  %967 = load i32, i32* %20, align 4
  %968 = add nsw i32 %967, -1
  store i32 %968, i32* %20, align 4
  br label %572

; <label>:969:                                    ; preds = %572
  store float 0xC7EFFFFFE0000000, float* %40, align 4
  store i32 0, i32* %33, align 4
  store i32 1, i32* %20, align 4
  br label %970

; <label>:970:                                    ; preds = %1081, %969
  %971 = load i32, i32* %20, align 4
  %972 = load i32, i32* %34, align 4
  %973 = icmp sle i32 %971, %972
  br i1 %973, label %974, label %1084

; <label>:974:                                    ; preds = %970
  %975 = load float*, float** %29, align 8
  %976 = load i32, i32* %20, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds float, float* %975, i64 %977
  %979 = load float, float* %978, align 4
  store float %979, float* %39, align 4
  store i32 0, i32* %19, align 4
  br label %980

; <label>:980:                                    ; preds = %1070, %974
  %981 = load i32, i32* %19, align 4
  %982 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %983 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %982, i32 0, i32 4
  %984 = load i32, i32* %983, align 4
  %985 = icmp slt i32 %981, %984
  br i1 %985, label %986, label %1073

; <label>:986:                                    ; preds = %980
  %987 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %988 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %987, i32 0, i32 0
  %989 = load i8**, i8*** %988, align 8
  %990 = load i32, i32* %19, align 4
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds i8*, i8** %989, i64 %991
  %993 = load i8*, i8** %992, align 8
  %994 = load i32, i32* %20, align 4
  %995 = sub nsw i32 %994, 1
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds i8, i8* %993, i64 %996
  %998 = load i8, i8* %997, align 1
  %999 = sext i8 %998 to i32
  %1000 = icmp eq i32 %999, 32
  br i1 %1000, label %1061, label %1001

; <label>:1001:                                   ; preds = %986
  %1002 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %1003 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1002, i32 0, i32 0
  %1004 = load i8**, i8*** %1003, align 8
  %1005 = load i32, i32* %19, align 4
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds i8*, i8** %1004, i64 %1006
  %1008 = load i8*, i8** %1007, align 8
  %1009 = load i32, i32* %20, align 4
  %1010 = sub nsw i32 %1009, 1
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds i8, i8* %1008, i64 %1011
  %1013 = load i8, i8* %1012, align 1
  %1014 = sext i8 %1013 to i32
  %1015 = icmp eq i32 %1014, 46
  br i1 %1015, label %1061, label %1016

; <label>:1016:                                   ; preds = %1001
  %1017 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %1018 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1017, i32 0, i32 0
  %1019 = load i8**, i8*** %1018, align 8
  %1020 = load i32, i32* %19, align 4
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds i8*, i8** %1019, i64 %1021
  %1023 = load i8*, i8** %1022, align 8
  %1024 = load i32, i32* %20, align 4
  %1025 = sub nsw i32 %1024, 1
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds i8, i8* %1023, i64 %1026
  %1028 = load i8, i8* %1027, align 1
  %1029 = sext i8 %1028 to i32
  %1030 = icmp eq i32 %1029, 95
  br i1 %1030, label %1061, label %1031

; <label>:1031:                                   ; preds = %1016
  %1032 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %1033 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1032, i32 0, i32 0
  %1034 = load i8**, i8*** %1033, align 8
  %1035 = load i32, i32* %19, align 4
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds i8*, i8** %1034, i64 %1036
  %1038 = load i8*, i8** %1037, align 8
  %1039 = load i32, i32* %20, align 4
  %1040 = sub nsw i32 %1039, 1
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds i8, i8* %1038, i64 %1041
  %1043 = load i8, i8* %1042, align 1
  %1044 = sext i8 %1043 to i32
  %1045 = icmp eq i32 %1044, 45
  br i1 %1045, label %1061, label %1046

; <label>:1046:                                   ; preds = %1031
  %1047 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %1048 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1047, i32 0, i32 0
  %1049 = load i8**, i8*** %1048, align 8
  %1050 = load i32, i32* %19, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds i8*, i8** %1049, i64 %1051
  %1053 = load i8*, i8** %1052, align 8
  %1054 = load i32, i32* %20, align 4
  %1055 = sub nsw i32 %1054, 1
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds i8, i8* %1053, i64 %1056
  %1058 = load i8, i8* %1057, align 1
  %1059 = sext i8 %1058 to i32
  %1060 = icmp eq i32 %1059, 126
  br i1 %1060, label %1061, label %1065

; <label>:1061:                                   ; preds = %1046, %1031, %1016, %1001, %986
  %1062 = load float, float* %36, align 4
  %1063 = load float, float* %39, align 4
  %1064 = fadd float %1063, %1062
  store float %1064, float* %39, align 4
  br label %1069

; <label>:1065:                                   ; preds = %1046
  %1066 = load float, float* %35, align 4
  %1067 = load float, float* %39, align 4
  %1068 = fadd float %1067, %1066
  store float %1068, float* %39, align 4
  br label %1069

; <label>:1069:                                   ; preds = %1065, %1061
  br label %1070

; <label>:1070:                                   ; preds = %1069
  %1071 = load i32, i32* %19, align 4
  %1072 = add nsw i32 %1071, 1
  store i32 %1072, i32* %19, align 4
  br label %980

; <label>:1073:                                   ; preds = %980
  %1074 = load float, float* %39, align 4
  %1075 = load float, float* %40, align 4
  %1076 = fcmp ogt float %1074, %1075
  br i1 %1076, label %1077, label %1080

; <label>:1077:                                   ; preds = %1073
  %1078 = load float, float* %39, align 4
  store float %1078, float* %40, align 4
  %1079 = load i32, i32* %20, align 4
  store i32 %1079, i32* %33, align 4
  br label %1080

; <label>:1080:                                   ; preds = %1077, %1073
  br label %1081

; <label>:1081:                                   ; preds = %1080
  %1082 = load i32, i32* %20, align 4
  %1083 = add nsw i32 %1082, 1
  store i32 %1083, i32* %20, align 4
  br label %970

; <label>:1084:                                   ; preds = %970
  %1085 = load i32*, i32** %31, align 8
  %1086 = getelementptr inbounds i32, i32* %1085, i64 0
  store i32 0, i32* %1086, align 4
  store i32 1, i32* %20, align 4
  br label %1087

; <label>:1087:                                   ; preds = %1098, %1084
  %1088 = load i32, i32* %20, align 4
  %1089 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %1090 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1089, i32 0, i32 3
  %1091 = load i32, i32* %1090, align 8
  %1092 = icmp sle i32 %1088, %1091
  br i1 %1092, label %1093, label %1101

; <label>:1093:                                   ; preds = %1087
  %1094 = load i32*, i32** %31, align 8
  %1095 = load i32, i32* %20, align 4
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds i32, i32* %1094, i64 %1096
  store i32 8, i32* %1097, align 4
  br label %1098

; <label>:1098:                                   ; preds = %1093
  %1099 = load i32, i32* %20, align 4
  %1100 = add nsw i32 %1099, 1
  store i32 %1100, i32* %20, align 4
  br label %1087

; <label>:1101:                                   ; preds = %1087
  %1102 = load i32, i32* %33, align 4
  store i32 %1102, i32* %20, align 4
  br label %1103

; <label>:1103:                                   ; preds = %1119, %1101
  %1104 = load i32, i32* %20, align 4
  %1105 = icmp ne i32 %1104, 0
  br i1 %1105, label %1106, label %1125

; <label>:1106:                                   ; preds = %1103
  %1107 = load i32*, i32** %31, align 8
  %1108 = load i32, i32* %20, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds i32, i32* %1107, i64 %1109
  %1111 = load i32, i32* %1110, align 4
  %1112 = and i32 %1111, -9
  store i32 %1112, i32* %1110, align 4
  %1113 = load i32*, i32** %31, align 8
  %1114 = load i32, i32* %20, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds i32, i32* %1113, i64 %1115
  %1117 = load i32, i32* %1116, align 4
  %1118 = or i32 %1117, 1
  store i32 %1118, i32* %1116, align 4
  br label %1119

; <label>:1119:                                   ; preds = %1106
  %1120 = load i32*, i32** %30, align 8
  %1121 = load i32, i32* %20, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds i32, i32* %1120, i64 %1122
  %1124 = load i32, i32* %1123, align 4
  store i32 %1124, i32* %20, align 4
  br label %1103

; <label>:1125:                                   ; preds = %1103
  %1126 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %1127 = load i8**, i8*** %11, align 8
  %1128 = load i32*, i32** %31, align 8
  %1129 = load %struct.plan7_s**, %struct.plan7_s*** %17, align 8
  %1130 = load %struct.p7trace_s***, %struct.p7trace_s**** %18, align 8
  call void @matassign2hmm(%struct.msa_struct* %1126, i8** %1127, i32* %1128, %struct.plan7_s** %1129, %struct.p7trace_s*** %1130)
  store i32 1, i32* %20, align 4
  br label %1131

; <label>:1131:                                   ; preds = %1144, %1125
  %1132 = load i32, i32* %20, align 4
  %1133 = load %struct.msa_struct*, %struct.msa_struct** %10, align 8
  %1134 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1133, i32 0, i32 3
  %1135 = load i32, i32* %1134, align 8
  %1136 = icmp sle i32 %1132, %1135
  br i1 %1136, label %1137, label %1147

; <label>:1137:                                   ; preds = %1131
  %1138 = load float**, float*** %23, align 8
  %1139 = load i32, i32* %20, align 4
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds float*, float** %1138, i64 %1140
  %1142 = load float*, float** %1141, align 8
  %1143 = bitcast float* %1142 to i8*
  call void @free(i8* %1143) #4
  br label %1144

; <label>:1144:                                   ; preds = %1137
  %1145 = load i32, i32* %20, align 4
  %1146 = add nsw i32 %1145, 1
  store i32 %1146, i32* %20, align 4
  br label %1131

; <label>:1147:                                   ; preds = %1131
  %1148 = load float**, float*** %23, align 8
  %1149 = bitcast float** %1148 to i8*
  call void @free(i8* %1149) #4
  %1150 = load float*, float** %29, align 8
  %1151 = bitcast float* %1150 to i8*
  call void @free(i8* %1151) #4
  %1152 = load i32*, i32** %30, align 8
  %1153 = bitcast i32* %1152 to i8*
  call void @free(i8* %1153) #4
  %1154 = load i32*, i32** %31, align 8
  %1155 = bitcast i32* %1154 to i8*
  call void @free(i8* %1155) #4
  %1156 = load i32*, i32** %32, align 8
  %1157 = bitcast i32* %1156 to i8*
  call void @free(i8* %1157) #4
  ret void
}

declare void @FSet(float*, i32, float) #1

declare void @P7CountSymbol(float*, i8 signext, float) #1

declare i32 @SymbolIndex(i8 signext) #1

; Function Attrs: nounwind
declare double @log(double) #2

declare void @FCopy(float*, float*, i32) #1

declare void @FNorm(float*, i32) #1

declare float @FSum(float*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_model_length(%struct.msa_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %2, align 8
  store float 0.000000e+00, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %41, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %44

; <label>:12:                                     ; preds = %6
  %13 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 2
  %15 = load float*, float** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %15, i64 %17
  %19 = load float, float* %18, align 4
  %20 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @DealignedLength(i8* %26)
  %28 = sitofp i32 %27 to float
  %29 = fmul float %19, %28
  %30 = load float, float* %4, align 4
  %31 = fadd float %30, %29
  store float %31, float* %4, align 4
  %32 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 2
  %34 = load float*, float** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  %39 = load float, float* %5, align 4
  %40 = fadd float %39, %38
  store float %40, float* %5, align 4
  br label %41

; <label>:41:                                     ; preds = %12
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %6

; <label>:44:                                     ; preds = %6
  %45 = load float, float* %4, align 4
  %46 = load float, float* %5, align 4
  %47 = fdiv float %45, %46
  %48 = fptosi float %47 to i32
  ret i32 %48
}

declare void @P7PriorifyEmissionVector(float*, %struct.p7prior_s*, i32, float*, [20 x float]*, float*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_cij(i8**, i32, i32*, i32, i32, float*, float*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  %17 = load i32, i32* %12, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %13, align 4
  %21 = load float*, float** %15, align 8
  call void @FSet(float* %21, i32 8, float 0.000000e+00)
  store i32 0, i32* %16, align 4
  br label %22

; <label>:22:                                     ; preds = %443, %7
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %446

; <label>:26:                                     ; preds = %22
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %191

; <label>:33:                                     ; preds = %26
  %34 = load i8**, i8*** %9, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %93, label %45

; <label>:45:                                     ; preds = %33
  %46 = load i8**, i8*** %9, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %93, label %57

; <label>:57:                                     ; preds = %45
  %58 = load i8**, i8*** %9, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 95
  br i1 %68, label %93, label %69

; <label>:69:                                     ; preds = %57
  %70 = load i8**, i8*** %9, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 45
  br i1 %80, label %93, label %81

; <label>:81:                                     ; preds = %69
  %82 = load i8**, i8*** %9, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 126
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %81, %69, %57, %45, %33
  store i32 -1, i32* %8, align 4
  br label %447

; <label>:94:                                     ; preds = %81
  %95 = load i8**, i8*** %9, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 32
  br i1 %105, label %154, label %106

; <label>:106:                                    ; preds = %94
  %107 = load i8**, i8*** %9, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %154, label %118

; <label>:118:                                    ; preds = %106
  %119 = load i8**, i8*** %9, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 95
  br i1 %129, label %154, label %130

; <label>:130:                                    ; preds = %118
  %131 = load i8**, i8*** %9, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 45
  br i1 %141, label %154, label %142

; <label>:142:                                    ; preds = %130
  %143 = load i8**, i8*** %9, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 126
  br i1 %153, label %154, label %155

; <label>:154:                                    ; preds = %142, %130, %118, %106, %94
  store i32 0, i32* %8, align 4
  br label %447

; <label>:155:                                    ; preds = %142
  %156 = load float*, float** %14, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  %160 = load float, float* %159, align 4
  %161 = load float*, float** %15, align 8
  %162 = getelementptr inbounds float, float* %161, i64 1
  %163 = load float, float* %162, align 4
  %164 = fadd float %163, %160
  store float %164, float* %162, align 4
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sitofp i32 %170 to float
  %172 = load float*, float** %14, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %172, i64 %174
  %176 = load float, float* %175, align 4
  %177 = fmul float %171, %176
  %178 = load float*, float** %15, align 8
  %179 = getelementptr inbounds float, float* %178, i64 4
  %180 = load float, float* %179, align 4
  %181 = fadd float %180, %177
  store float %181, float* %179, align 4
  %182 = load float*, float** %14, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  %187 = load float*, float** %15, align 8
  %188 = getelementptr inbounds float, float* %187, i64 3
  %189 = load float, float* %188, align 4
  %190 = fadd float %189, %186
  store float %190, float* %188, align 4
  br label %442

; <label>:191:                                    ; preds = %26
  %192 = load i8**, i8*** %9, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 32
  br i1 %202, label %346, label %203

; <label>:203:                                    ; preds = %191
  %204 = load i8**, i8*** %9, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 46
  br i1 %214, label %346, label %215

; <label>:215:                                    ; preds = %203
  %216 = load i8**, i8*** %9, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 95
  br i1 %226, label %346, label %227

; <label>:227:                                    ; preds = %215
  %228 = load i8**, i8*** %9, align 8
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 45
  br i1 %238, label %346, label %239

; <label>:239:                                    ; preds = %227
  %240 = load i8**, i8*** %9, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 126
  br i1 %250, label %346, label %251

; <label>:251:                                    ; preds = %239
  %252 = load i8**, i8*** %9, align 8
  %253 = load i32, i32* %16, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 95
  br i1 %262, label %263, label %264

; <label>:263:                                    ; preds = %251
  br label %345

; <label>:264:                                    ; preds = %251
  %265 = load i8**, i8*** %9, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 32
  br i1 %275, label %324, label %276

; <label>:276:                                    ; preds = %264
  %277 = load i8**, i8*** %9, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  %281 = load i8*, i8** %280, align 8
  %282 = load i32, i32* %13, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %286, 46
  br i1 %287, label %324, label %288

; <label>:288:                                    ; preds = %276
  %289 = load i8**, i8*** %9, align 8
  %290 = load i32, i32* %16, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 95
  br i1 %299, label %324, label %300

; <label>:300:                                    ; preds = %288
  %301 = load i8**, i8*** %9, align 8
  %302 = load i32, i32* %16, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8*, i8** %301, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %305, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %310, 45
  br i1 %311, label %324, label %312

; <label>:312:                                    ; preds = %300
  %313 = load i8**, i8*** %9, align 8
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8*, i8** %313, i64 %315
  %317 = load i8*, i8** %316, align 8
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %322, 126
  br i1 %323, label %324, label %334

; <label>:324:                                    ; preds = %312, %300, %288, %276, %264
  %325 = load float*, float** %14, align 8
  %326 = load i32, i32* %16, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %325, i64 %327
  %329 = load float, float* %328, align 4
  %330 = load float*, float** %15, align 8
  %331 = getelementptr inbounds float, float* %330, i64 2
  %332 = load float, float* %331, align 4
  %333 = fadd float %332, %329
  store float %333, float* %331, align 4
  br label %344

; <label>:334:                                    ; preds = %312
  %335 = load float*, float** %14, align 8
  %336 = load i32, i32* %16, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds float, float* %335, i64 %337
  %339 = load float, float* %338, align 4
  %340 = load float*, float** %15, align 8
  %341 = getelementptr inbounds float, float* %340, i64 0
  %342 = load float, float* %341, align 4
  %343 = fadd float %342, %339
  store float %343, float* %341, align 4
  br label %344

; <label>:344:                                    ; preds = %334, %324
  br label %345

; <label>:345:                                    ; preds = %344, %263
  br label %441

; <label>:346:                                    ; preds = %239, %227, %215, %203, %191
  %347 = load i8**, i8*** %9, align 8
  %348 = load i32, i32* %16, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  %351 = load i8*, i8** %350, align 8
  %352 = load i32, i32* %13, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %351, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 95
  br i1 %357, label %358, label %359

; <label>:358:                                    ; preds = %346
  br label %443

; <label>:359:                                    ; preds = %346
  %360 = load i8**, i8*** %9, align 8
  %361 = load i32, i32* %16, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8*, i8** %360, i64 %362
  %364 = load i8*, i8** %363, align 8
  %365 = load i32, i32* %13, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %364, i64 %366
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = icmp eq i32 %369, 32
  br i1 %370, label %419, label %371

; <label>:371:                                    ; preds = %359
  %372 = load i8**, i8*** %9, align 8
  %373 = load i32, i32* %16, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %372, i64 %374
  %376 = load i8*, i8** %375, align 8
  %377 = load i32, i32* %13, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %376, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  %382 = icmp eq i32 %381, 46
  br i1 %382, label %419, label %383

; <label>:383:                                    ; preds = %371
  %384 = load i8**, i8*** %9, align 8
  %385 = load i32, i32* %16, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8*, i8** %384, i64 %386
  %388 = load i8*, i8** %387, align 8
  %389 = load i32, i32* %13, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, i8* %388, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %393, 95
  br i1 %394, label %419, label %395

; <label>:395:                                    ; preds = %383
  %396 = load i8**, i8*** %9, align 8
  %397 = load i32, i32* %16, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8*, i8** %396, i64 %398
  %400 = load i8*, i8** %399, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %400, i64 %402
  %404 = load i8, i8* %403, align 1
  %405 = sext i8 %404 to i32
  %406 = icmp eq i32 %405, 45
  br i1 %406, label %419, label %407

; <label>:407:                                    ; preds = %395
  %408 = load i8**, i8*** %9, align 8
  %409 = load i32, i32* %16, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8*, i8** %408, i64 %410
  %412 = load i8*, i8** %411, align 8
  %413 = load i32, i32* %13, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  %416 = load i8, i8* %415, align 1
  %417 = sext i8 %416 to i32
  %418 = icmp eq i32 %417, 126
  br i1 %418, label %419, label %429

; <label>:419:                                    ; preds = %407, %395, %383, %371, %359
  %420 = load float*, float** %14, align 8
  %421 = load i32, i32* %16, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds float, float* %420, i64 %422
  %424 = load float, float* %423, align 4
  %425 = load float*, float** %15, align 8
  %426 = getelementptr inbounds float, float* %425, i64 6
  %427 = load float, float* %426, align 4
  %428 = fadd float %427, %424
  store float %428, float* %426, align 4
  br label %439

; <label>:429:                                    ; preds = %407
  %430 = load float*, float** %14, align 8
  %431 = load i32, i32* %16, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float* %430, i64 %432
  %434 = load float, float* %433, align 4
  %435 = load float*, float** %15, align 8
  %436 = getelementptr inbounds float, float* %435, i64 5
  %437 = load float, float* %436, align 4
  %438 = fadd float %437, %434
  store float %438, float* %436, align 4
  br label %439

; <label>:439:                                    ; preds = %429, %419
  br label %440

; <label>:440:                                    ; preds = %439
  br label %441

; <label>:441:                                    ; preds = %440, %345
  br label %442

; <label>:442:                                    ; preds = %441, %155
  br label %443

; <label>:443:                                    ; preds = %442, %358
  %444 = load i32, i32* %16, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %16, align 4
  br label %22

; <label>:446:                                    ; preds = %22
  store i32 1, i32* %8, align 4
  br label %447

; <label>:447:                                    ; preds = %446, %154, %93
  %448 = load i32, i32* %8, align 4
  ret i32 %448
}

declare void @P7PriorifyTransitionVector(float*, %struct.p7prior_s*, float*) #1

declare float @FDot(float*, float*, i32) #1

declare void @FAdd(float*, float*, i32) #1

declare i32 @DealignedLength(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fake_tracebacks(i8**, i32, i32, i32*, %struct.p7trace_s***) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.p7trace_s***, align 8
  %11 = alloca %struct.p7trace_s**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.p7trace_s*** %4, %struct.p7trace_s**** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 607, i64 %19)
  %21 = bitcast i8* %20 to %struct.p7trace_s**
  store %struct.p7trace_s** %21, %struct.p7trace_s*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %22

; <label>:22:                                     ; preds = %759, %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %762

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 6
  %29 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %29, i64 %31
  call void @P7AllocTrace(i32 %28, %struct.p7trace_s** %32)
  %33 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %33, i64 %35
  %37 = load %struct.p7trace_s*, %struct.p7trace_s** %36, align 8
  %38 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 4, i8* %40, align 1
  %41 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %41, i64 %43
  %45 = load %struct.p7trace_s*, %struct.p7trace_s** %44, align 8
  %46 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %49, i64 %51
  %53 = load %struct.p7trace_s*, %struct.p7trace_s** %52, align 8
  %54 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %57, i64 %59
  %61 = load %struct.p7trace_s*, %struct.p7trace_s** %60, align 8
  %62 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8 5, i8* %64, align 1
  %65 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %65, i64 %67
  %69 = load %struct.p7trace_s*, %struct.p7trace_s** %68, align 8
  %70 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %73, i64 %75
  %77 = load %struct.p7trace_s*, %struct.p7trace_s** %76, align 8
  %78 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 0, i32* %80, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 2, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %81

; <label>:81:                                     ; preds = %711, %26
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %714

; <label>:85:                                     ; preds = %81
  %86 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %86, i64 %88
  %90 = load %struct.p7trace_s*, %struct.p7trace_s** %89, align 8
  %91 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 2
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %137

; <label>:104:                                    ; preds = %85
  %105 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %105, i64 %107
  %109 = load %struct.p7trace_s*, %struct.p7trace_s** %108, align 8
  %110 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8 6, i8* %114, align 1
  %115 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %115, i64 %117
  %119 = load %struct.p7trace_s*, %struct.p7trace_s** %118, align 8
  %120 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 0, i32* %124, align 4
  %125 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %125, i64 %127
  %129 = load %struct.p7trace_s*, %struct.p7trace_s** %128, align 8
  %130 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 0, i32* %134, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %16, align 4
  br label %137

; <label>:137:                                    ; preds = %104, %85
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %245

; <label>:146:                                    ; preds = %137
  %147 = load i8**, i8*** %6, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 32
  br i1 %157, label %245, label %158

; <label>:158:                                    ; preds = %146
  %159 = load i8**, i8*** %6, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 46
  br i1 %169, label %245, label %170

; <label>:170:                                    ; preds = %158
  %171 = load i8**, i8*** %6, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 95
  br i1 %181, label %245, label %182

; <label>:182:                                    ; preds = %170
  %183 = load i8**, i8*** %6, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 45
  br i1 %193, label %245, label %194

; <label>:194:                                    ; preds = %182
  %195 = load i8**, i8*** %6, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 126
  br i1 %205, label %245, label %206

; <label>:206:                                    ; preds = %194
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  %209 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %209, i64 %211
  %213 = load %struct.p7trace_s*, %struct.p7trace_s** %212, align 8
  %214 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  store i8 1, i8* %218, align 1
  %219 = load i32, i32* %14, align 4
  %220 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %220, i64 %222
  %224 = load %struct.p7trace_s*, %struct.p7trace_s** %223, align 8
  %225 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  store i32 %219, i32* %229, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %231, i64 %233
  %235 = load %struct.p7trace_s*, %struct.p7trace_s** %234, align 8
  %236 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %230, i32* %240, align 4
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %16, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %16, align 4
  br label %617

; <label>:245:                                    ; preds = %194, %182, %170, %158, %146, %137
  %246 = load i32*, i32** %9, align 8
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 1
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %306

; <label>:254:                                    ; preds = %245
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %14, align 4
  %257 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %257, i64 %259
  %261 = load %struct.p7trace_s*, %struct.p7trace_s** %260, align 8
  %262 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %269, 6
  br i1 %270, label %271, label %305

; <label>:271:                                    ; preds = %254
  %272 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %272, i64 %274
  %276 = load %struct.p7trace_s*, %struct.p7trace_s** %275, align 8
  %277 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = load i32, i32* %16, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  store i8 2, i8* %281, align 1
  %282 = load i32, i32* %14, align 4
  %283 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %283, i64 %285
  %287 = load %struct.p7trace_s*, %struct.p7trace_s** %286, align 8
  %288 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %287, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %16, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %282, i32* %292, align 4
  %293 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %293, i64 %295
  %297 = load %struct.p7trace_s*, %struct.p7trace_s** %296, align 8
  %298 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %297, i32 0, i32 3
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %16, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  store i32 0, i32* %302, align 4
  %303 = load i32, i32* %16, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %16, align 4
  br label %305

; <label>:305:                                    ; preds = %271, %254
  br label %616

; <label>:306:                                    ; preds = %245
  %307 = load i32*, i32** %9, align 8
  %308 = load i32, i32* %15, align 4
  %309 = add nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, 16
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %411

; <label>:315:                                    ; preds = %306
  %316 = load i8**, i8*** %6, align 8
  %317 = load i32, i32* %12, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8*, i8** %316, i64 %318
  %320 = load i8*, i8** %319, align 8
  %321 = load i32, i32* %15, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %320, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 32
  br i1 %326, label %411, label %327

; <label>:327:                                    ; preds = %315
  %328 = load i8**, i8*** %6, align 8
  %329 = load i32, i32* %12, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8*, i8** %328, i64 %330
  %332 = load i8*, i8** %331, align 8
  %333 = load i32, i32* %15, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %332, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp eq i32 %337, 46
  br i1 %338, label %411, label %339

; <label>:339:                                    ; preds = %327
  %340 = load i8**, i8*** %6, align 8
  %341 = load i32, i32* %12, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %340, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = load i32, i32* %15, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %344, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 95
  br i1 %350, label %411, label %351

; <label>:351:                                    ; preds = %339
  %352 = load i8**, i8*** %6, align 8
  %353 = load i32, i32* %12, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8*, i8** %352, i64 %354
  %356 = load i8*, i8** %355, align 8
  %357 = load i32, i32* %15, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, i8* %356, i64 %358
  %360 = load i8, i8* %359, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp eq i32 %361, 45
  br i1 %362, label %411, label %363

; <label>:363:                                    ; preds = %351
  %364 = load i8**, i8*** %6, align 8
  %365 = load i32, i32* %12, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8*, i8** %364, i64 %366
  %368 = load i8*, i8** %367, align 8
  %369 = load i32, i32* %15, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %368, i64 %370
  %372 = load i8, i8* %371, align 1
  %373 = sext i8 %372 to i32
  %374 = icmp eq i32 %373, 126
  br i1 %374, label %411, label %375

; <label>:375:                                    ; preds = %363
  %376 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %377 = load i32, i32* %12, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %376, i64 %378
  %380 = load %struct.p7trace_s*, %struct.p7trace_s** %379, align 8
  %381 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %380, i32 0, i32 1
  %382 = load i8*, i8** %381, align 8
  %383 = load i32, i32* %16, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %382, i64 %384
  store i8 5, i8* %385, align 1
  %386 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %387 = load i32, i32* %12, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %386, i64 %388
  %390 = load %struct.p7trace_s*, %struct.p7trace_s** %389, align 8
  %391 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %390, i32 0, i32 2
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %16, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  store i32 0, i32* %395, align 4
  %396 = load i32, i32* %13, align 4
  %397 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %398 = load i32, i32* %12, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %397, i64 %399
  %401 = load %struct.p7trace_s*, %struct.p7trace_s** %400, align 8
  %402 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %401, i32 0, i32 3
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %16, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  store i32 %396, i32* %406, align 4
  %407 = load i32, i32* %13, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %13, align 4
  %409 = load i32, i32* %16, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %16, align 4
  br label %615

; <label>:411:                                    ; preds = %363, %351, %339, %327, %315, %306
  %412 = load i32*, i32** %9, align 8
  %413 = load i32, i32* %15, align 4
  %414 = add nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %412, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = and i32 %417, 32
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %516

; <label>:420:                                    ; preds = %411
  %421 = load i8**, i8*** %6, align 8
  %422 = load i32, i32* %12, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8*, i8** %421, i64 %423
  %425 = load i8*, i8** %424, align 8
  %426 = load i32, i32* %15, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %425, i64 %427
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp eq i32 %430, 32
  br i1 %431, label %516, label %432

; <label>:432:                                    ; preds = %420
  %433 = load i8**, i8*** %6, align 8
  %434 = load i32, i32* %12, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8*, i8** %433, i64 %435
  %437 = load i8*, i8** %436, align 8
  %438 = load i32, i32* %15, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %437, i64 %439
  %441 = load i8, i8* %440, align 1
  %442 = sext i8 %441 to i32
  %443 = icmp eq i32 %442, 46
  br i1 %443, label %516, label %444

; <label>:444:                                    ; preds = %432
  %445 = load i8**, i8*** %6, align 8
  %446 = load i32, i32* %12, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8*, i8** %445, i64 %447
  %449 = load i8*, i8** %448, align 8
  %450 = load i32, i32* %15, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, i8* %449, i64 %451
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp eq i32 %454, 95
  br i1 %455, label %516, label %456

; <label>:456:                                    ; preds = %444
  %457 = load i8**, i8*** %6, align 8
  %458 = load i32, i32* %12, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i8*, i8** %457, i64 %459
  %461 = load i8*, i8** %460, align 8
  %462 = load i32, i32* %15, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, i8* %461, i64 %463
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = icmp eq i32 %466, 45
  br i1 %467, label %516, label %468

; <label>:468:                                    ; preds = %456
  %469 = load i8**, i8*** %6, align 8
  %470 = load i32, i32* %12, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8*, i8** %469, i64 %471
  %473 = load i8*, i8** %472, align 8
  %474 = load i32, i32* %15, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8, i8* %473, i64 %475
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = icmp eq i32 %478, 126
  br i1 %479, label %516, label %480

; <label>:480:                                    ; preds = %468
  %481 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %482 = load i32, i32* %12, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %481, i64 %483
  %485 = load %struct.p7trace_s*, %struct.p7trace_s** %484, align 8
  %486 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %485, i32 0, i32 1
  %487 = load i8*, i8** %486, align 8
  %488 = load i32, i32* %16, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %487, i64 %489
  store i8 8, i8* %490, align 1
  %491 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %492 = load i32, i32* %12, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %491, i64 %493
  %495 = load %struct.p7trace_s*, %struct.p7trace_s** %494, align 8
  %496 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %495, i32 0, i32 2
  %497 = load i32*, i32** %496, align 8
  %498 = load i32, i32* %16, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %497, i64 %499
  store i32 0, i32* %500, align 4
  %501 = load i32, i32* %13, align 4
  %502 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %503 = load i32, i32* %12, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %502, i64 %504
  %506 = load %struct.p7trace_s*, %struct.p7trace_s** %505, align 8
  %507 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %506, i32 0, i32 3
  %508 = load i32*, i32** %507, align 8
  %509 = load i32, i32* %16, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %508, i64 %510
  store i32 %501, i32* %511, align 4
  %512 = load i32, i32* %13, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %13, align 4
  %514 = load i32, i32* %16, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %16, align 4
  br label %614

; <label>:516:                                    ; preds = %468, %456, %444, %432, %420, %411
  %517 = load i8**, i8*** %6, align 8
  %518 = load i32, i32* %12, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i8*, i8** %517, i64 %519
  %521 = load i8*, i8** %520, align 8
  %522 = load i32, i32* %15, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, i8* %521, i64 %523
  %525 = load i8, i8* %524, align 1
  %526 = sext i8 %525 to i32
  %527 = icmp eq i32 %526, 32
  br i1 %527, label %613, label %528

; <label>:528:                                    ; preds = %516
  %529 = load i8**, i8*** %6, align 8
  %530 = load i32, i32* %12, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8*, i8** %529, i64 %531
  %533 = load i8*, i8** %532, align 8
  %534 = load i32, i32* %15, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i8, i8* %533, i64 %535
  %537 = load i8, i8* %536, align 1
  %538 = sext i8 %537 to i32
  %539 = icmp eq i32 %538, 46
  br i1 %539, label %613, label %540

; <label>:540:                                    ; preds = %528
  %541 = load i8**, i8*** %6, align 8
  %542 = load i32, i32* %12, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8*, i8** %541, i64 %543
  %545 = load i8*, i8** %544, align 8
  %546 = load i32, i32* %15, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i8, i8* %545, i64 %547
  %549 = load i8, i8* %548, align 1
  %550 = sext i8 %549 to i32
  %551 = icmp eq i32 %550, 95
  br i1 %551, label %613, label %552

; <label>:552:                                    ; preds = %540
  %553 = load i8**, i8*** %6, align 8
  %554 = load i32, i32* %12, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8*, i8** %553, i64 %555
  %557 = load i8*, i8** %556, align 8
  %558 = load i32, i32* %15, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8, i8* %557, i64 %559
  %561 = load i8, i8* %560, align 1
  %562 = sext i8 %561 to i32
  %563 = icmp eq i32 %562, 45
  br i1 %563, label %613, label %564

; <label>:564:                                    ; preds = %552
  %565 = load i8**, i8*** %6, align 8
  %566 = load i32, i32* %12, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i8*, i8** %565, i64 %567
  %569 = load i8*, i8** %568, align 8
  %570 = load i32, i32* %15, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i8, i8* %569, i64 %571
  %573 = load i8, i8* %572, align 1
  %574 = sext i8 %573 to i32
  %575 = icmp eq i32 %574, 126
  br i1 %575, label %613, label %576

; <label>:576:                                    ; preds = %564
  %577 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %578 = load i32, i32* %12, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %577, i64 %579
  %581 = load %struct.p7trace_s*, %struct.p7trace_s** %580, align 8
  %582 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %581, i32 0, i32 1
  %583 = load i8*, i8** %582, align 8
  %584 = load i32, i32* %16, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i8, i8* %583, i64 %585
  store i8 3, i8* %586, align 1
  %587 = load i32, i32* %14, align 4
  %588 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %589 = load i32, i32* %12, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %588, i64 %590
  %592 = load %struct.p7trace_s*, %struct.p7trace_s** %591, align 8
  %593 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %592, i32 0, i32 2
  %594 = load i32*, i32** %593, align 8
  %595 = load i32, i32* %16, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  store i32 %587, i32* %597, align 4
  %598 = load i32, i32* %13, align 4
  %599 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %600 = load i32, i32* %12, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %599, i64 %601
  %603 = load %struct.p7trace_s*, %struct.p7trace_s** %602, align 8
  %604 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %603, i32 0, i32 3
  %605 = load i32*, i32** %604, align 8
  %606 = load i32, i32* %16, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %605, i64 %607
  store i32 %598, i32* %608, align 4
  %609 = load i32, i32* %13, align 4
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %13, align 4
  %611 = load i32, i32* %16, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %16, align 4
  br label %613

; <label>:613:                                    ; preds = %576, %564, %552, %540, %528, %516
  br label %614

; <label>:614:                                    ; preds = %613, %480
  br label %615

; <label>:615:                                    ; preds = %614, %375
  br label %616

; <label>:616:                                    ; preds = %615, %305
  br label %617

; <label>:617:                                    ; preds = %616, %206
  %618 = load i32*, i32** %9, align 8
  %619 = load i32, i32* %15, align 4
  %620 = add nsw i32 %619, 1
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32, i32* %618, i64 %621
  %623 = load i32, i32* %622, align 4
  %624 = and i32 %623, 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %710

; <label>:626:                                    ; preds = %617
  br label %627

; <label>:627:                                    ; preds = %642, %626
  %628 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %629 = load i32, i32* %12, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %628, i64 %630
  %632 = load %struct.p7trace_s*, %struct.p7trace_s** %631, align 8
  %633 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %632, i32 0, i32 1
  %634 = load i8*, i8** %633, align 8
  %635 = load i32, i32* %16, align 4
  %636 = sub nsw i32 %635, 1
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i8, i8* %634, i64 %637
  %639 = load i8, i8* %638, align 1
  %640 = sext i8 %639 to i32
  %641 = icmp eq i32 %640, 2
  br i1 %641, label %642, label %645

; <label>:642:                                    ; preds = %627
  %643 = load i32, i32* %16, align 4
  %644 = add nsw i32 %643, -1
  store i32 %644, i32* %16, align 4
  br label %627

; <label>:645:                                    ; preds = %627
  %646 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %647 = load i32, i32* %12, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %646, i64 %648
  %650 = load %struct.p7trace_s*, %struct.p7trace_s** %649, align 8
  %651 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %650, i32 0, i32 1
  %652 = load i8*, i8** %651, align 8
  %653 = load i32, i32* %16, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i8, i8* %652, i64 %654
  store i8 7, i8* %655, align 1
  %656 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %657 = load i32, i32* %12, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %656, i64 %658
  %660 = load %struct.p7trace_s*, %struct.p7trace_s** %659, align 8
  %661 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %660, i32 0, i32 2
  %662 = load i32*, i32** %661, align 8
  %663 = load i32, i32* %16, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i32, i32* %662, i64 %664
  store i32 0, i32* %665, align 4
  %666 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %667 = load i32, i32* %12, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %666, i64 %668
  %670 = load %struct.p7trace_s*, %struct.p7trace_s** %669, align 8
  %671 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %670, i32 0, i32 3
  %672 = load i32*, i32** %671, align 8
  %673 = load i32, i32* %16, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %672, i64 %674
  store i32 0, i32* %675, align 4
  %676 = load i32, i32* %16, align 4
  %677 = add nsw i32 %676, 1
  store i32 %677, i32* %16, align 4
  %678 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %679 = load i32, i32* %12, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %678, i64 %680
  %682 = load %struct.p7trace_s*, %struct.p7trace_s** %681, align 8
  %683 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %682, i32 0, i32 1
  %684 = load i8*, i8** %683, align 8
  %685 = load i32, i32* %16, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i8, i8* %684, i64 %686
  store i8 8, i8* %687, align 1
  %688 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %689 = load i32, i32* %12, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %688, i64 %690
  %692 = load %struct.p7trace_s*, %struct.p7trace_s** %691, align 8
  %693 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %692, i32 0, i32 2
  %694 = load i32*, i32** %693, align 8
  %695 = load i32, i32* %16, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i32, i32* %694, i64 %696
  store i32 0, i32* %697, align 4
  %698 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %699 = load i32, i32* %12, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %698, i64 %700
  %702 = load %struct.p7trace_s*, %struct.p7trace_s** %701, align 8
  %703 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %702, i32 0, i32 3
  %704 = load i32*, i32** %703, align 8
  %705 = load i32, i32* %16, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32, i32* %704, i64 %706
  store i32 0, i32* %707, align 4
  %708 = load i32, i32* %16, align 4
  %709 = add nsw i32 %708, 1
  store i32 %709, i32* %16, align 4
  br label %710

; <label>:710:                                    ; preds = %645, %617
  br label %711

; <label>:711:                                    ; preds = %710
  %712 = load i32, i32* %15, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %15, align 4
  br label %81

; <label>:714:                                    ; preds = %81
  %715 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %716 = load i32, i32* %12, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %715, i64 %717
  %719 = load %struct.p7trace_s*, %struct.p7trace_s** %718, align 8
  %720 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %719, i32 0, i32 1
  %721 = load i8*, i8** %720, align 8
  %722 = load i32, i32* %16, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i8, i8* %721, i64 %723
  store i8 9, i8* %724, align 1
  %725 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %726 = load i32, i32* %12, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %725, i64 %727
  %729 = load %struct.p7trace_s*, %struct.p7trace_s** %728, align 8
  %730 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %729, i32 0, i32 2
  %731 = load i32*, i32** %730, align 8
  %732 = load i32, i32* %16, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds i32, i32* %731, i64 %733
  store i32 0, i32* %734, align 4
  %735 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %736 = load i32, i32* %12, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %735, i64 %737
  %739 = load %struct.p7trace_s*, %struct.p7trace_s** %738, align 8
  %740 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %739, i32 0, i32 3
  %741 = load i32*, i32** %740, align 8
  %742 = load i32, i32* %16, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds i32, i32* %741, i64 %743
  store i32 0, i32* %744, align 4
  %745 = load i32, i32* %16, align 4
  %746 = add nsw i32 %745, 1
  store i32 %746, i32* %16, align 4
  %747 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %748 = load i32, i32* %12, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %747, i64 %749
  %751 = load %struct.p7trace_s*, %struct.p7trace_s** %750, align 8
  %752 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %751, i32 0, i32 0
  store i32 %746, i32* %752, align 8
  %753 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %754 = load i32, i32* %12, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %753, i64 %755
  %757 = load %struct.p7trace_s*, %struct.p7trace_s** %756, align 8
  %758 = load i32, i32* %14, align 4
  call void @trace_doctor(%struct.p7trace_s* %757, i32 %758, i32* null, i32* null)
  br label %759

; <label>:759:                                    ; preds = %714
  %760 = load i32, i32* %12, align 4
  %761 = add nsw i32 %760, 1
  store i32 %761, i32* %12, align 4
  br label %22

; <label>:762:                                    ; preds = %22
  %763 = load %struct.p7trace_s**, %struct.p7trace_s*** %11, align 8
  %764 = load %struct.p7trace_s***, %struct.p7trace_s**** %10, align 8
  store %struct.p7trace_s** %763, %struct.p7trace_s*** %764, align 8
  ret void
}

declare %struct.plan7_s* @AllocPlan7(i32) #1

declare void @ZeroPlan7(%struct.plan7_s*) #1

declare void @P7TraceCount(%struct.plan7_s*, i8*, float, %struct.p7trace_s*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @annotate_model(%struct.plan7_s*, i32*, %struct.msa_struct*) #0 {
  %4 = alloca %struct.plan7_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.msa_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.msa_struct* %2, %struct.msa_struct** %6, align 8
  %10 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %11 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 13
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %80

; <label>:14:                                     ; preds = %3
  %15 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %16 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 32, i8* %18, align 1
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %19

; <label>:19:                                     ; preds = %66, %14
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %69

; <label>:25:                                     ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %65

; <label>:33:                                     ; preds = %25
  %34 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %35 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %34, i32 0, i32 13
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %33
  br label %55

; <label>:45:                                     ; preds = %33
  %46 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 13
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  br label %55

; <label>:55:                                     ; preds = %45, %44
  %56 = phi i32 [ 46, %44 ], [ %54, %45 ]
  %57 = trunc i32 %56 to i8
  %58 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 %57, i8* %64, align 1
  br label %65

; <label>:65:                                     ; preds = %55, %25
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %19

; <label>:69:                                     ; preds = %19
  %70 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %71 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %77 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 47
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, 4
  store i32 %79, i32* %77, align 8
  br label %80

; <label>:80:                                     ; preds = %69, %3
  %81 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %82 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 11
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %151

; <label>:85:                                     ; preds = %80
  %86 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %87 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 32, i8* %89, align 1
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %90

; <label>:90:                                     ; preds = %137, %85
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %93 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = icmp sle i32 %91, %94
  br i1 %95, label %96, label %140

; <label>:96:                                     ; preds = %90
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %136

; <label>:104:                                    ; preds = %96
  %105 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %106 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %105, i32 0, i32 11
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 32
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %104
  br label %126

; <label>:116:                                    ; preds = %104
  %117 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %118 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %117, i32 0, i32 11
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  br label %126

; <label>:126:                                    ; preds = %116, %115
  %127 = phi i32 [ 46, %115 ], [ %125, %116 ]
  %128 = trunc i32 %127 to i8
  %129 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %130 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  store i8 %128, i8* %135, align 1
  br label %136

; <label>:136:                                    ; preds = %126, %96
  br label %137

; <label>:137:                                    ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %90

; <label>:140:                                    ; preds = %90
  %141 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %142 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %141, i32 0, i32 4
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 0, i8* %146, align 1
  %147 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %148 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %147, i32 0, i32 47
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, 8
  store i32 %150, i32* %148, align 8
  br label %151

; <label>:151:                                    ; preds = %140, %80
  %152 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %153 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %152, i32 0, i32 12
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %222

; <label>:156:                                    ; preds = %151
  %157 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %158 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %157, i32 0, i32 5
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 0
  store i8 32, i8* %160, align 1
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %161

; <label>:161:                                    ; preds = %208, %156
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp sle i32 %162, %165
  br i1 %166, label %167, label %211

; <label>:167:                                    ; preds = %161
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 1
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %207

; <label>:175:                                    ; preds = %167
  %176 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %177 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %176, i32 0, i32 12
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 32
  br i1 %185, label %186, label %187

; <label>:186:                                    ; preds = %175
  br label %197

; <label>:187:                                    ; preds = %175
  %188 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %189 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %188, i32 0, i32 12
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  br label %197

; <label>:197:                                    ; preds = %187, %186
  %198 = phi i32 [ 46, %186 ], [ %196, %187 ]
  %199 = trunc i32 %198 to i8
  %200 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %201 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %200, i32 0, i32 5
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  store i8 %199, i8* %206, align 1
  br label %207

; <label>:207:                                    ; preds = %197, %167
  br label %208

; <label>:208:                                    ; preds = %207
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %161

; <label>:211:                                    ; preds = %161
  %212 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %213 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %212, i32 0, i32 5
  %214 = load i8*, i8** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8 0, i8* %217, align 1
  %218 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %219 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %218, i32 0, i32 47
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, 8192
  store i32 %221, i32* %219, align 8
  br label %222

; <label>:222:                                    ; preds = %211, %151
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %223

; <label>:223:                                    ; preds = %247, %222
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %226 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = icmp sle i32 %224, %227
  br i1 %228, label %229, label %250

; <label>:229:                                    ; preds = %223
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 1
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %246

; <label>:237:                                    ; preds = %229
  %238 = load i32, i32* %7, align 4
  %239 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %240 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %239, i32 0, i32 9
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  store i32 %238, i32* %245, align 4
  br label %246

; <label>:246:                                    ; preds = %237, %229
  br label %247

; <label>:247:                                    ; preds = %246
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  br label %223

; <label>:250:                                    ; preds = %223
  %251 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %252 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %251, i32 0, i32 47
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, 256
  store i32 %254, i32* %252, align 8
  %255 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %256 = call i8* @MSAGetGC(%struct.msa_struct* %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store i8* %256, i8** %9, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %395

; <label>:258:                                    ; preds = %250
  %259 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %260 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %259, i32 0, i32 20
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = mul i64 4, %263
  %265 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 896, i64 %264)
  %266 = bitcast i8* %265 to i32*
  %267 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %268 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %267, i32 0, i32 12
  store i32* %266, i32** %268, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %269

; <label>:269:                                    ; preds = %391, %258
  %270 = load i32, i32* %7, align 4
  %271 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %272 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = icmp sle i32 %270, %273
  br i1 %274, label %275, label %394

; <label>:275:                                    ; preds = %269
  %276 = load i32*, i32** %5, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 1
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %390

; <label>:283:                                    ; preds = %275
  %284 = call i16** @__ctype_b_loc() #5
  %285 = load i16*, i16** %284, align 8
  %286 = load i8*, i8** %9, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %286, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i16, i16* %285, i64 %293
  %295 = load i16, i16* %294, align 2
  %296 = zext i16 %295 to i32
  %297 = and i32 %296, 2048
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %314

; <label>:299:                                    ; preds = %283
  %300 = load i8*, i8** %9, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sub nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %300, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = sub nsw i32 %306, 48
  %308 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %309 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %308, i32 0, i32 12
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 %307, i32* %313, align 4
  br label %387

; <label>:314:                                    ; preds = %283
  %315 = call i16** @__ctype_b_loc() #5
  %316 = load i16*, i16** %315, align 8
  %317 = load i8*, i8** %9, align 8
  %318 = load i32, i32* %7, align 4
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %317, i64 %320
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i16, i16* %316, i64 %324
  %326 = load i16, i16* %325, align 2
  %327 = zext i16 %326 to i32
  %328 = and i32 %327, 512
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %346

; <label>:330:                                    ; preds = %314
  %331 = load i8*, i8** %9, align 8
  %332 = load i32, i32* %7, align 4
  %333 = sub nsw i32 %332, 1
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %331, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = sub nsw i32 %337, 97
  %339 = add nsw i32 %338, 10
  %340 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %341 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %340, i32 0, i32 12
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %8, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  store i32 %339, i32* %345, align 4
  br label %386

; <label>:346:                                    ; preds = %314
  %347 = call i16** @__ctype_b_loc() #5
  %348 = load i16*, i16** %347, align 8
  %349 = load i8*, i8** %9, align 8
  %350 = load i32, i32* %7, align 4
  %351 = sub nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %349, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i16, i16* %348, i64 %356
  %358 = load i16, i16* %357, align 2
  %359 = zext i16 %358 to i32
  %360 = and i32 %359, 256
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %378

; <label>:362:                                    ; preds = %346
  %363 = load i8*, i8** %9, align 8
  %364 = load i32, i32* %7, align 4
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %363, i64 %366
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = sub nsw i32 %369, 65
  %371 = add nsw i32 %370, 10
  %372 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %373 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %372, i32 0, i32 12
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  store i32 %371, i32* %377, align 4
  br label %385

; <label>:378:                                    ; preds = %346
  %379 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %380 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %379, i32 0, i32 12
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %8, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 -1, i32* %384, align 4
  br label %385

; <label>:385:                                    ; preds = %378, %362
  br label %386

; <label>:386:                                    ; preds = %385, %330
  br label %387

; <label>:387:                                    ; preds = %386, %299
  %388 = load i32, i32* %8, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %8, align 4
  br label %390

; <label>:390:                                    ; preds = %387, %275
  br label %391

; <label>:391:                                    ; preds = %390
  %392 = load i32, i32* %7, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %7, align 4
  br label %269

; <label>:394:                                    ; preds = %269
  br label %395

; <label>:395:                                    ; preds = %394, %250
  %396 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %397 = call i8* @MSAGetGC(%struct.msa_struct* %396, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  store i8* %397, i8** %9, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %536

; <label>:399:                                    ; preds = %395
  %400 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %401 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %400, i32 0, i32 20
  %402 = load i32, i32* %401, align 8
  %403 = add nsw i32 %402, 1
  %404 = sext i32 %403 to i64
  %405 = mul i64 4, %404
  %406 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 911, i64 %405)
  %407 = bitcast i8* %406 to i32*
  %408 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %409 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %408, i32 0, i32 13
  store i32* %407, i32** %409, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %410

; <label>:410:                                    ; preds = %532, %399
  %411 = load i32, i32* %7, align 4
  %412 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %413 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 8
  %415 = icmp sle i32 %411, %414
  br i1 %415, label %416, label %535

; <label>:416:                                    ; preds = %410
  %417 = load i32*, i32** %5, align 8
  %418 = load i32, i32* %7, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = and i32 %421, 1
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %531

; <label>:424:                                    ; preds = %416
  %425 = call i16** @__ctype_b_loc() #5
  %426 = load i16*, i16** %425, align 8
  %427 = load i8*, i8** %9, align 8
  %428 = load i32, i32* %7, align 4
  %429 = sub nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, i8* %427, i64 %430
  %432 = load i8, i8* %431, align 1
  %433 = sext i8 %432 to i32
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i16, i16* %426, i64 %434
  %436 = load i16, i16* %435, align 2
  %437 = zext i16 %436 to i32
  %438 = and i32 %437, 2048
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %455

; <label>:440:                                    ; preds = %424
  %441 = load i8*, i8** %9, align 8
  %442 = load i32, i32* %7, align 4
  %443 = sub nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8, i8* %441, i64 %444
  %446 = load i8, i8* %445, align 1
  %447 = sext i8 %446 to i32
  %448 = sub nsw i32 %447, 48
  %449 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %450 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %449, i32 0, i32 13
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %8, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  store i32 %448, i32* %454, align 4
  br label %528

; <label>:455:                                    ; preds = %424
  %456 = call i16** @__ctype_b_loc() #5
  %457 = load i16*, i16** %456, align 8
  %458 = load i8*, i8** %9, align 8
  %459 = load i32, i32* %7, align 4
  %460 = sub nsw i32 %459, 1
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, i8* %458, i64 %461
  %463 = load i8, i8* %462, align 1
  %464 = sext i8 %463 to i32
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i16, i16* %457, i64 %465
  %467 = load i16, i16* %466, align 2
  %468 = zext i16 %467 to i32
  %469 = and i32 %468, 512
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %487

; <label>:471:                                    ; preds = %455
  %472 = load i8*, i8** %9, align 8
  %473 = load i32, i32* %7, align 4
  %474 = sub nsw i32 %473, 1
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8, i8* %472, i64 %475
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = sub nsw i32 %478, 97
  %480 = add nsw i32 %479, 10
  %481 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %482 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %481, i32 0, i32 13
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %8, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  store i32 %480, i32* %486, align 4
  br label %527

; <label>:487:                                    ; preds = %455
  %488 = call i16** @__ctype_b_loc() #5
  %489 = load i16*, i16** %488, align 8
  %490 = load i8*, i8** %9, align 8
  %491 = load i32, i32* %7, align 4
  %492 = sub nsw i32 %491, 1
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8, i8* %490, i64 %493
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i16, i16* %489, i64 %497
  %499 = load i16, i16* %498, align 2
  %500 = zext i16 %499 to i32
  %501 = and i32 %500, 256
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %519

; <label>:503:                                    ; preds = %487
  %504 = load i8*, i8** %9, align 8
  %505 = load i32, i32* %7, align 4
  %506 = sub nsw i32 %505, 1
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8, i8* %504, i64 %507
  %509 = load i8, i8* %508, align 1
  %510 = sext i8 %509 to i32
  %511 = sub nsw i32 %510, 65
  %512 = add nsw i32 %511, 10
  %513 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %514 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %513, i32 0, i32 13
  %515 = load i32*, i32** %514, align 8
  %516 = load i32, i32* %8, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %515, i64 %517
  store i32 %512, i32* %518, align 4
  br label %526

; <label>:519:                                    ; preds = %487
  %520 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %521 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %520, i32 0, i32 13
  %522 = load i32*, i32** %521, align 8
  %523 = load i32, i32* %8, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  store i32 -1, i32* %525, align 4
  br label %526

; <label>:526:                                    ; preds = %519, %503
  br label %527

; <label>:527:                                    ; preds = %526, %471
  br label %528

; <label>:528:                                    ; preds = %527, %440
  %529 = load i32, i32* %8, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %8, align 4
  br label %531

; <label>:531:                                    ; preds = %528, %416
  br label %532

; <label>:532:                                    ; preds = %531
  %533 = load i32, i32* %7, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %7, align 4
  br label %410

; <label>:535:                                    ; preds = %410
  br label %536

; <label>:536:                                    ; preds = %535, %395
  %537 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %538 = call i8* @MSAGetGC(%struct.msa_struct* %537, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  store i8* %538, i8** %9, align 8
  %539 = icmp ne i8* %538, null
  br i1 %539, label %540, label %677

; <label>:540:                                    ; preds = %536
  %541 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %542 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %541, i32 0, i32 20
  %543 = load i32, i32* %542, align 8
  %544 = add nsw i32 %543, 1
  %545 = sext i32 %544 to i64
  %546 = mul i64 4, %545
  %547 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 926, i64 %546)
  %548 = bitcast i8* %547 to i32*
  %549 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %550 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %549, i32 0, i32 11
  store i32* %548, i32** %550, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %551

; <label>:551:                                    ; preds = %673, %540
  %552 = load i32, i32* %7, align 4
  %553 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  %554 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %553, i32 0, i32 3
  %555 = load i32, i32* %554, align 8
  %556 = icmp sle i32 %552, %555
  br i1 %556, label %557, label %676

; <label>:557:                                    ; preds = %551
  %558 = load i32*, i32** %5, align 8
  %559 = load i32, i32* %7, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = and i32 %562, 1
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %672

; <label>:565:                                    ; preds = %557
  %566 = call i16** @__ctype_b_loc() #5
  %567 = load i16*, i16** %566, align 8
  %568 = load i8*, i8** %9, align 8
  %569 = load i32, i32* %7, align 4
  %570 = sub nsw i32 %569, 1
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i8, i8* %568, i64 %571
  %573 = load i8, i8* %572, align 1
  %574 = sext i8 %573 to i32
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i16, i16* %567, i64 %575
  %577 = load i16, i16* %576, align 2
  %578 = zext i16 %577 to i32
  %579 = and i32 %578, 2048
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %596

; <label>:581:                                    ; preds = %565
  %582 = load i8*, i8** %9, align 8
  %583 = load i32, i32* %7, align 4
  %584 = sub nsw i32 %583, 1
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i8, i8* %582, i64 %585
  %587 = load i8, i8* %586, align 1
  %588 = sext i8 %587 to i32
  %589 = sub nsw i32 %588, 48
  %590 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %591 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %590, i32 0, i32 11
  %592 = load i32*, i32** %591, align 8
  %593 = load i32, i32* %8, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, i32* %592, i64 %594
  store i32 %589, i32* %595, align 4
  br label %669

; <label>:596:                                    ; preds = %565
  %597 = call i16** @__ctype_b_loc() #5
  %598 = load i16*, i16** %597, align 8
  %599 = load i8*, i8** %9, align 8
  %600 = load i32, i32* %7, align 4
  %601 = sub nsw i32 %600, 1
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i8, i8* %599, i64 %602
  %604 = load i8, i8* %603, align 1
  %605 = sext i8 %604 to i32
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i16, i16* %598, i64 %606
  %608 = load i16, i16* %607, align 2
  %609 = zext i16 %608 to i32
  %610 = and i32 %609, 512
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %628

; <label>:612:                                    ; preds = %596
  %613 = load i8*, i8** %9, align 8
  %614 = load i32, i32* %7, align 4
  %615 = sub nsw i32 %614, 1
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i8, i8* %613, i64 %616
  %618 = load i8, i8* %617, align 1
  %619 = sext i8 %618 to i32
  %620 = sub nsw i32 %619, 97
  %621 = add nsw i32 %620, 10
  %622 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %623 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %622, i32 0, i32 11
  %624 = load i32*, i32** %623, align 8
  %625 = load i32, i32* %8, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32, i32* %624, i64 %626
  store i32 %621, i32* %627, align 4
  br label %668

; <label>:628:                                    ; preds = %596
  %629 = call i16** @__ctype_b_loc() #5
  %630 = load i16*, i16** %629, align 8
  %631 = load i8*, i8** %9, align 8
  %632 = load i32, i32* %7, align 4
  %633 = sub nsw i32 %632, 1
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds i8, i8* %631, i64 %634
  %636 = load i8, i8* %635, align 1
  %637 = sext i8 %636 to i32
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i16, i16* %630, i64 %638
  %640 = load i16, i16* %639, align 2
  %641 = zext i16 %640 to i32
  %642 = and i32 %641, 256
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %660

; <label>:644:                                    ; preds = %628
  %645 = load i8*, i8** %9, align 8
  %646 = load i32, i32* %7, align 4
  %647 = sub nsw i32 %646, 1
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8, i8* %645, i64 %648
  %650 = load i8, i8* %649, align 1
  %651 = sext i8 %650 to i32
  %652 = sub nsw i32 %651, 65
  %653 = add nsw i32 %652, 10
  %654 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %655 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %654, i32 0, i32 11
  %656 = load i32*, i32** %655, align 8
  %657 = load i32, i32* %8, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i32, i32* %656, i64 %658
  store i32 %653, i32* %659, align 4
  br label %667

; <label>:660:                                    ; preds = %628
  %661 = load %struct.plan7_s*, %struct.plan7_s** %4, align 8
  %662 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %661, i32 0, i32 11
  %663 = load i32*, i32** %662, align 8
  %664 = load i32, i32* %8, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i32, i32* %663, i64 %665
  store i32 -1, i32* %666, align 4
  br label %667

; <label>:667:                                    ; preds = %660, %644
  br label %668

; <label>:668:                                    ; preds = %667, %612
  br label %669

; <label>:669:                                    ; preds = %668, %581
  %670 = load i32, i32* %8, align 4
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %8, align 4
  br label %672

; <label>:672:                                    ; preds = %669, %557
  br label %673

; <label>:673:                                    ; preds = %672
  %674 = load i32, i32* %7, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %7, align 4
  br label %551

; <label>:676:                                    ; preds = %551
  br label %677

; <label>:677:                                    ; preds = %676, %536
  ret void
}

declare void @P7FreeTrace(%struct.p7trace_s*) #1

declare void @FreePlan7(%struct.plan7_s*) #1

declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_doctor(%struct.p7trace_s*, i32, i32*, i32*) #0 {
  %5 = alloca %struct.p7trace_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.p7trace_s* %0, %struct.p7trace_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

; <label>:13:                                     ; preds = %518, %4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %16 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %519

; <label>:19:                                     ; preds = %13
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %21 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %80

; <label>:29:                                     ; preds = %19
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %31 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %80

; <label>:40:                                     ; preds = %29
  %41 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %42 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 1, i8* %46, align 1
  %47 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %48 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %55 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %61 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %69 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %518

; <label>:80:                                     ; preds = %29, %19
  %81 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %82 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %141

; <label>:90:                                     ; preds = %80
  %91 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %92 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %141

; <label>:101:                                    ; preds = %90
  %102 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %103 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 1, i8* %107, align 1
  %108 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %109 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %117 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  %122 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %123 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %130 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %517

; <label>:141:                                    ; preds = %90, %80
  %142 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %143 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %151, label %199

; <label>:151:                                    ; preds = %141
  %152 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %153 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 6
  br i1 %161, label %162, label %199

; <label>:162:                                    ; preds = %151
  %163 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %164 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 1, i8* %168, align 1
  %169 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %170 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %177 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %175, i32* %181, align 4
  %182 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %183 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %190 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %516

; <label>:199:                                    ; preds = %151, %141
  %200 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %201 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 3
  br i1 %208, label %209, label %258

; <label>:209:                                    ; preds = %199
  %210 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %211 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 7
  br i1 %219, label %220, label %258

; <label>:220:                                    ; preds = %209
  %221 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %222 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  store i8 1, i8* %226, align 1
  %227 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %228 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  %235 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %236 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %234, i32* %240, align 4
  %241 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %242 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %249 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %247, i32* %253, align 4
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  br label %515

; <label>:258:                                    ; preds = %209, %199
  %259 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %260 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 6
  br i1 %267, label %268, label %352

; <label>:268:                                    ; preds = %258
  %269 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %270 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %269, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %271, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 7
  br i1 %278, label %279, label %352

; <label>:279:                                    ; preds = %268
  %280 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %281 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %280, i32 0, i32 1
  %282 = load i8*, i8** %281, align 8
  %283 = load i32, i32* %9, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 5
  br i1 %289, label %290, label %352

; <label>:290:                                    ; preds = %279
  %291 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %292 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %352

; <label>:300:                                    ; preds = %290
  %301 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %302 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %301, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  store i8 1, i8* %306, align 1
  %307 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %308 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %307, i32 0, i32 2
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %10, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  store i32 1, i32* %312, align 4
  %313 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %314 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sub nsw i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %322 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %10, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %320, i32* %326, align 4
  %327 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %328 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %327, i32 0, i32 1
  %329 = load i8*, i8** %328, align 8
  %330 = load i32, i32* %10, align 4
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %329, i64 %332
  store i8 6, i8* %333, align 1
  %334 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %335 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %334, i32 0, i32 2
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %10, align 4
  %338 = sub nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %336, i64 %339
  store i32 0, i32* %340, align 4
  %341 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %342 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %341, i32 0, i32 3
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %10, align 4
  %345 = sub nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  store i32 0, i32* %347, align 4
  %348 = load i32, i32* %9, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %9, align 4
  %350 = load i32, i32* %10, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %10, align 4
  br label %514

; <label>:352:                                    ; preds = %290, %279, %268, %258
  %353 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %354 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %353, i32 0, i32 1
  %355 = load i8*, i8** %354, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %355, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = icmp eq i32 %360, 7
  br i1 %361, label %362, label %469

; <label>:362:                                    ; preds = %352
  %363 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %364 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %363, i32 0, i32 1
  %365 = load i8*, i8** %364, align 8
  %366 = load i32, i32* %9, align 4
  %367 = sub nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %365, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp eq i32 %371, 6
  br i1 %372, label %373, label %469

; <label>:373:                                    ; preds = %362
  %374 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %375 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %374, i32 0, i32 1
  %376 = load i8*, i8** %375, align 8
  %377 = load i32, i32* %9, align 4
  %378 = add nsw i32 %377, 1
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %376, i64 %379
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = icmp eq i32 %382, 8
  br i1 %383, label %384, label %469

; <label>:384:                                    ; preds = %373
  %385 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %386 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %385, i32 0, i32 1
  %387 = load i8*, i8** %386, align 8
  %388 = load i32, i32* %9, align 4
  %389 = add nsw i32 %388, 2
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, i8* %387, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %393, 8
  br i1 %394, label %395, label %469

; <label>:395:                                    ; preds = %384
  %396 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %397 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %396, i32 0, i32 1
  %398 = load i8*, i8** %397, align 8
  %399 = load i32, i32* %10, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, i8* %398, i64 %400
  store i8 1, i8* %401, align 1
  %402 = load i32, i32* %6, align 4
  %403 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %404 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %403, i32 0, i32 2
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %10, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 %402, i32* %408, align 4
  %409 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %410 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %409, i32 0, i32 3
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %9, align 4
  %413 = add nsw i32 %412, 2
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %411, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %418 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %417, i32 0, i32 3
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %10, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  store i32 %416, i32* %422, align 4
  %423 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %424 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %423, i32 0, i32 1
  %425 = load i8*, i8** %424, align 8
  %426 = load i32, i32* %10, align 4
  %427 = add nsw i32 %426, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %425, i64 %428
  store i8 7, i8* %429, align 1
  %430 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %431 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %430, i32 0, i32 2
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %10, align 4
  %434 = add nsw i32 %433, 1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %432, i64 %435
  store i32 0, i32* %436, align 4
  %437 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %438 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %437, i32 0, i32 3
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %10, align 4
  %441 = add nsw i32 %440, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %439, i64 %442
  store i32 0, i32* %443, align 4
  %444 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %445 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %444, i32 0, i32 1
  %446 = load i8*, i8** %445, align 8
  %447 = load i32, i32* %10, align 4
  %448 = add nsw i32 %447, 2
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %446, i64 %449
  store i8 8, i8* %450, align 1
  %451 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %452 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %451, i32 0, i32 2
  %453 = load i32*, i32** %452, align 8
  %454 = load i32, i32* %10, align 4
  %455 = add nsw i32 %454, 2
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %453, i64 %456
  store i32 0, i32* %457, align 4
  %458 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %459 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %458, i32 0, i32 3
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %10, align 4
  %462 = add nsw i32 %461, 2
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %460, i64 %463
  store i32 0, i32* %464, align 4
  %465 = load i32, i32* %9, align 4
  %466 = add nsw i32 %465, 3
  store i32 %466, i32* %9, align 4
  %467 = load i32, i32* %10, align 4
  %468 = add nsw i32 %467, 3
  store i32 %468, i32* %10, align 4
  br label %513

; <label>:469:                                    ; preds = %384, %373, %362, %352
  %470 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %471 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %470, i32 0, i32 1
  %472 = load i8*, i8** %471, align 8
  %473 = load i32, i32* %9, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, i8* %472, i64 %474
  %476 = load i8, i8* %475, align 1
  %477 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %478 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %477, i32 0, i32 1
  %479 = load i8*, i8** %478, align 8
  %480 = load i32, i32* %10, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, i8* %479, i64 %481
  store i8 %476, i8* %482, align 1
  %483 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %484 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %483, i32 0, i32 2
  %485 = load i32*, i32** %484, align 8
  %486 = load i32, i32* %9, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %491 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %490, i32 0, i32 2
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %10, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  store i32 %489, i32* %495, align 4
  %496 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %497 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %496, i32 0, i32 3
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %9, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %504 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %503, i32 0, i32 3
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %10, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  store i32 %502, i32* %508, align 4
  %509 = load i32, i32* %9, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %9, align 4
  %511 = load i32, i32* %10, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %10, align 4
  br label %513

; <label>:513:                                    ; preds = %469, %395
  br label %514

; <label>:514:                                    ; preds = %513, %300
  br label %515

; <label>:515:                                    ; preds = %514, %220
  br label %516

; <label>:516:                                    ; preds = %515, %162
  br label %517

; <label>:517:                                    ; preds = %516, %101
  br label %518

; <label>:518:                                    ; preds = %517, %40
  br label %13

; <label>:519:                                    ; preds = %13
  %520 = load i32, i32* %10, align 4
  %521 = load %struct.p7trace_s*, %struct.p7trace_s** %5, align 8
  %522 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %521, i32 0, i32 0
  store i32 %520, i32* %522, align 8
  %523 = load i32*, i32** %7, align 8
  %524 = icmp ne i32* %523, null
  br i1 %524, label %525, label %528

; <label>:525:                                    ; preds = %519
  %526 = load i32, i32* %11, align 4
  %527 = load i32*, i32** %7, align 8
  store i32 %526, i32* %527, align 4
  br label %528

; <label>:528:                                    ; preds = %525, %519
  %529 = load i32*, i32** %8, align 8
  %530 = icmp ne i32* %529, null
  br i1 %530, label %531, label %534

; <label>:531:                                    ; preds = %528
  %532 = load i32, i32* %12, align 4
  %533 = load i32*, i32** %8, align 8
  store i32 %532, i32* %533, align 4
  br label %534

; <label>:534:                                    ; preds = %531, %528
  ret void
}

declare i8* @MSAGetGC(%struct.msa_struct*, i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
