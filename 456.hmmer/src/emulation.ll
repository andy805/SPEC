; ModuleID = 'emulation.c'
source_filename = "emulation.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [81 x i8] c"Profile %s will have more than 1000 positions. GCG won't read it; Compugen will.\00", align 1
@Alphabet_type = external global i32, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"!!AA_PROFILE 1.0\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"!!NA_PROFILE 1.0\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"No support for profiles with non-biological alphabets\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"(Peptide) \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"(Nucleotide) \00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"HMMCONVERT v%s Length: %d %s|%s|%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"   Profile converted from a profile HMM using HMMER v%s emulation.\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"   Compugen XSW extended profile format.\0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"   Use -model=xsw.model -nonor -noave -gapop=10 -gapext=1 -qgapop=10 -qgapext=1\0A\00", align 1
@.str.12 = private unnamed_addr constant [89 x i8] c"      with om on the Compugen BIC to get the closest approximation to HMMER bit scores.\0A\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"   WARNING: There is a loss of information in this conversion.\0A\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"      Neither the scores nor even the rank order of hits will be precisely\0A\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"      preserved in a comparison of HMMER hmmsearch to GCG profilesearch.\0A\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"      The profile score is an approximation of the (single-hit) HMMER score.\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"   Use -nonor -noave -gap=10 -len=1 with profilesearch and friends\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"      to get the closest approximation to HMMER bit scores.\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Cons\00", align 1
@Alphabet_iupac = external global i32, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"    %c \00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.21 = private unnamed_addr constant [28 x i8] c"  Gap   Len  QGap  Qlen ..\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"  Gap   Len ..\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"! %d\0A\00", align 1
@Alphabet_size = external global i32, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c" %c  \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"%5d %5d %5d %5d\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%5d %5d\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" *  \00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @WriteProfile(%struct._IO_FILE*, %struct.plan7_s*, i32) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.plan7_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.plan7_s* %1, %struct.plan7_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  call void @P7Logoddsify(%struct.plan7_s* %15, i32 1)
  %16 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 20
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1000
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %20
  %24 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i8* %26)
  br label %27

; <label>:27:                                     ; preds = %23, %20, %3
  %28 = load i32, i32* @Alphabet_type, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %41

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* @Alphabet_type, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %40

; <label>:39:                                     ; preds = %33
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0))
  br label %40

; <label>:40:                                     ; preds = %39, %36
  br label %41

; <label>:41:                                     ; preds = %40, %30
  %42 = load i32, i32* @Alphabet_type, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %54

; <label>:47:                                     ; preds = %41
  %48 = load i32, i32* @Alphabet_type, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %47
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %53

; <label>:53:                                     ; preds = %50, %47
  br label %54

; <label>:54:                                     ; preds = %53, %44
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %56 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %57 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %56, i32 0, i32 20
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %60 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %63 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 47
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 512
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %54
  %68 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %69 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  br label %72

; <label>:71:                                     ; preds = %54
  br label %72

; <label>:72:                                     ; preds = %71, %67
  %73 = phi i8* [ %70, %67 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %71 ]
  %74 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 47
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 2
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

; <label>:79:                                     ; preds = %72
  %80 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %81 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  br label %84

; <label>:83:                                     ; preds = %72
  br label %84

; <label>:84:                                     ; preds = %83, %79
  %85 = phi i8* [ %82, %79 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %83 ]
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 %58, i8* %61, i8* %73, i8* %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

; <label>:89:                                     ; preds = %84
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0))
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i32 0, i32 0))
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.12, i32 0, i32 0))
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i32 0, i32 0))
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0))
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i32 0, i32 0))
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.16, i32 0, i32 0))
  br label %121

; <label>:106:                                    ; preds = %84
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i32 0, i32 0))
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0))
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i32 0, i32 0))
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0))
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i32 0, i32 0))
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.16, i32 0, i32 0))
  br label %121

; <label>:121:                                    ; preds = %106, %89
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %124

; <label>:124:                                    ; preds = %136, %121
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @Alphabet_iupac, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %139

; <label>:128:                                    ; preds = %124
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 %134)
  br label %136

; <label>:136:                                    ; preds = %128
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %124

; <label>:139:                                    ; preds = %124
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

; <label>:142:                                    ; preds = %139
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0))
  br label %148

; <label>:145:                                    ; preds = %139
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0))
  br label %148

; <label>:148:                                    ; preds = %145, %142
  store i32 1, i32* %7, align 4
  br label %149

; <label>:149:                                    ; preds = %395, %148
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %152 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %151, i32 0, i32 20
  %153 = load i32, i32* %152, align 8
  %154 = icmp sle i32 %150, %153
  br i1 %154, label %155, label %398

; <label>:155:                                    ; preds = %149
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %156, 1
  %158 = srem i32 %157, 10
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %167

; <label>:160:                                    ; preds = %155
  %161 = load i32, i32* %7, align 4
  %162 = icmp sgt i32 %161, 10
  br i1 %162, label %163, label %167

; <label>:163:                                    ; preds = %160
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %165)
  br label %167

; <label>:167:                                    ; preds = %163, %160, %155
  %168 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %169 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %168, i32 0, i32 22
  %170 = load float**, float*** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float*, float** %170, i64 %172
  %174 = load float*, float** %173, align 8
  %175 = load i32, i32* @Alphabet_size, align 4
  %176 = call i32 @FArgMax(float* %174, i32 %175)
  store i32 %176, i32* %8, align 4
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %182)
  store i32 0, i32* %8, align 4
  br label %184

; <label>:184:                                    ; preds = %226, %167
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @Alphabet_iupac, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %229

; <label>:188:                                    ; preds = %184
  %189 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %190 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %189, i32 0, i32 31
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %202 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %201, i32 0, i32 20
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %217

; <label>:205:                                    ; preds = %188
  %206 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %207 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %206, i32 0, i32 30
  %208 = load i32**, i32*** %207, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %9, align 4
  br label %217

; <label>:217:                                    ; preds = %205, %188
  %218 = load i32, i32* %9, align 4
  %219 = mul nsw i32 %218, 100
  %220 = sitofp i32 %219 to double
  %221 = fdiv double %220, 1.000000e+03
  %222 = fptosi double %221 to i32
  store i32 %222, i32* %9, align 4
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %224)
  br label %226

; <label>:226:                                    ; preds = %217
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %184

; <label>:229:                                    ; preds = %184
  %230 = load i32, i32* %7, align 4
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %282

; <label>:232:                                    ; preds = %229
  %233 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %234 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %233, i32 0, i32 30
  %235 = load i32**, i32*** %234, align 8
  %236 = getelementptr inbounds i32*, i32** %235, i64 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %244 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %243, i32 0, i32 30
  %245 = load i32**, i32*** %244, align 8
  %246 = getelementptr inbounds i32*, i32** %245, i64 3
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %242, %252
  %254 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %255 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %254, i32 0, i32 30
  %256 = load i32**, i32*** %255, align 8
  %257 = getelementptr inbounds i32*, i32** %256, i64 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %253, %263
  %265 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %266 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %265, i32 0, i32 30
  %267 = load i32**, i32*** %266, align 8
  %268 = getelementptr inbounds i32*, i32** %267, i64 4
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sub nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %264, %274
  %276 = mul nsw i32 -1, %275
  store i32 %276, i32* %11, align 4
  %277 = load i32, i32* %11, align 4
  %278 = mul nsw i32 %277, 100
  %279 = sitofp i32 %278 to double
  %280 = fdiv double %279, 1.000000e+04
  %281 = fptosi double %280 to i32
  store i32 %281, i32* %11, align 4
  br label %283

; <label>:282:                                    ; preds = %229
  store i32 100, i32* %11, align 4
  br label %283

; <label>:283:                                    ; preds = %282, %232
  %284 = load i32, i32* %7, align 4
  %285 = icmp sgt i32 %284, 1
  br i1 %285, label %286, label %303

; <label>:286:                                    ; preds = %283
  %287 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %288 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %287, i32 0, i32 30
  %289 = load i32**, i32*** %288, align 8
  %290 = getelementptr inbounds i32*, i32** %289, i64 4
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %7, align 4
  %293 = sub nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %291, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = mul nsw i32 -1, %296
  store i32 %297, i32* %12, align 4
  %298 = load i32, i32* %12, align 4
  %299 = mul nsw i32 %298, 100
  %300 = sitofp i32 %299 to double
  %301 = fdiv double %300, 1.000000e+03
  %302 = fptosi double %301 to i32
  store i32 %302, i32* %12, align 4
  br label %304

; <label>:303:                                    ; preds = %283
  store i32 100, i32* %12, align 4
  br label %304

; <label>:304:                                    ; preds = %303, %286
  %305 = load i32, i32* %7, align 4
  %306 = icmp sgt i32 %305, 1
  br i1 %306, label %307, label %357

; <label>:307:                                    ; preds = %304
  %308 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %309 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %308, i32 0, i32 30
  %310 = load i32**, i32*** %309, align 8
  %311 = getelementptr inbounds i32*, i32** %310, i64 5
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %7, align 4
  %314 = sub nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %319 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %318, i32 0, i32 30
  %320 = load i32**, i32*** %319, align 8
  %321 = getelementptr inbounds i32*, i32** %320, i64 2
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %7, align 4
  %324 = sub nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %317, %327
  %329 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %330 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %329, i32 0, i32 30
  %331 = load i32**, i32*** %330, align 8
  %332 = getelementptr inbounds i32*, i32** %331, i64 0
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %7, align 4
  %335 = sub nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = sub nsw i32 %328, %338
  %340 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %341 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %340, i32 0, i32 30
  %342 = load i32**, i32*** %341, align 8
  %343 = getelementptr inbounds i32*, i32** %342, i64 6
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %7, align 4
  %346 = sub nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %344, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = sub nsw i32 %339, %349
  %351 = mul nsw i32 -1, %350
  store i32 %351, i32* %13, align 4
  %352 = load i32, i32* %13, align 4
  %353 = mul nsw i32 %352, 100
  %354 = sitofp i32 %353 to double
  %355 = fdiv double %354, 1.000000e+04
  %356 = fptosi double %355 to i32
  store i32 %356, i32* %13, align 4
  br label %358

; <label>:357:                                    ; preds = %304
  store i32 100, i32* %13, align 4
  br label %358

; <label>:358:                                    ; preds = %357, %307
  %359 = load i32, i32* %7, align 4
  %360 = icmp sgt i32 %359, 1
  br i1 %360, label %361, label %378

; <label>:361:                                    ; preds = %358
  %362 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %363 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %362, i32 0, i32 30
  %364 = load i32**, i32*** %363, align 8
  %365 = getelementptr inbounds i32*, i32** %364, i64 6
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %7, align 4
  %368 = sub nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %366, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = mul nsw i32 -1, %371
  store i32 %372, i32* %14, align 4
  %373 = load i32, i32* %14, align 4
  %374 = mul nsw i32 %373, 100
  %375 = sitofp i32 %374 to double
  %376 = fdiv double %375, 1.000000e+03
  %377 = fptosi double %376 to i32
  store i32 %377, i32* %14, align 4
  br label %379

; <label>:378:                                    ; preds = %358
  store i32 100, i32* %14, align 4
  br label %379

; <label>:379:                                    ; preds = %378, %361
  %380 = load i32, i32* %6, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %389

; <label>:382:                                    ; preds = %379
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %384 = load i32, i32* %11, align 4
  %385 = load i32, i32* %12, align 4
  %386 = load i32, i32* %13, align 4
  %387 = load i32, i32* %14, align 4
  %388 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %383, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i32 %384, i32 %385, i32 %386, i32 %387)
  br label %394

; <label>:389:                                    ; preds = %379
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %391 = load i32, i32* %11, align 4
  %392 = load i32, i32* %12, align 4
  %393 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %390, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %391, i32 %392)
  br label %394

; <label>:394:                                    ; preds = %389, %382
  br label %395

; <label>:395:                                    ; preds = %394
  %396 = load i32, i32* %7, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %7, align 4
  br label %149

; <label>:398:                                    ; preds = %149
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %400 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %399, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %401

; <label>:401:                                    ; preds = %440, %398
  %402 = load i32, i32* %8, align 4
  %403 = load i32, i32* @Alphabet_size, align 4
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %405, label %443

; <label>:405:                                    ; preds = %401
  store float 0.000000e+00, float* %10, align 4
  store i32 1, i32* %7, align 4
  br label %406

; <label>:406:                                    ; preds = %426, %405
  %407 = load i32, i32* %7, align 4
  %408 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %409 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %408, i32 0, i32 20
  %410 = load i32, i32* %409, align 8
  %411 = icmp sle i32 %407, %410
  br i1 %411, label %412, label %429

; <label>:412:                                    ; preds = %406
  %413 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %414 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %413, i32 0, i32 22
  %415 = load float**, float*** %414, align 8
  %416 = load i32, i32* %7, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds float*, float** %415, i64 %417
  %419 = load float*, float** %418, align 8
  %420 = load i32, i32* %8, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds float, float* %419, i64 %421
  %423 = load float, float* %422, align 4
  %424 = load float, float* %10, align 4
  %425 = fadd float %424, %423
  store float %425, float* %10, align 4
  br label %426

; <label>:426:                                    ; preds = %412
  %427 = load i32, i32* %7, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %7, align 4
  br label %406

; <label>:429:                                    ; preds = %406
  %430 = load %struct.plan7_s*, %struct.plan7_s** %5, align 8
  %431 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %430, i32 0, i32 7
  %432 = load i32, i32* %431, align 8
  %433 = sitofp i32 %432 to float
  %434 = load float, float* %10, align 4
  %435 = fmul float %434, %433
  store float %435, float* %10, align 4
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %437 = load float, float* %10, align 4
  %438 = fptosi float %437 to i32
  %439 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %436, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %438)
  br label %440

; <label>:440:                                    ; preds = %429
  %441 = load i32, i32* %8, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %8, align 4
  br label %401

; <label>:443:                                    ; preds = %401
  br label %444

; <label>:444:                                    ; preds = %451, %443
  %445 = load i32, i32* %8, align 4
  %446 = load i32, i32* @Alphabet_iupac, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %454

; <label>:448:                                    ; preds = %444
  %449 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %450 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %449, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0)
  br label %451

; <label>:451:                                    ; preds = %448
  %452 = load i32, i32* %8, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %8, align 4
  br label %444

; <label>:454:                                    ; preds = %444
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %456 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %455, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

declare void @P7Logoddsify(%struct.plan7_s*, i32) #1

declare void @Warn(i8*, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @Die(i8*, ...) #1

declare i32 @FArgMax(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
