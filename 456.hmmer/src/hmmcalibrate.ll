; ModuleID = 'hmmcalibrate.c'
source_filename = "hmmcalibrate.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opt_s = type { i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hmmfile_s = type { %struct._IO_FILE*, %struct.ssifile_s*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32, i32, i32, i32, %struct.ssioffset_s }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.histogram_s = type { i32*, i32, i32, i32, i32, i32, i32, float*, i32, [3 x float], float, float }
%struct.stopwatch_s = type { i64, i64, double, double, double }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@OPTIONS = internal global [9 x %struct.opt_s] [%struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 4 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 1 }], align 16
@usage = internal global [130 x i8] c"Usage: hmmcalibrate [-options] <hmmfile>\0AAvailable options are:\0A  -h             : print short usage and version info, then exit\0A\00", align 16
@.str = private unnamed_addr constant [6 x i8] c"--cpu\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--fixed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--histfile\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--mean\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"--num\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"--pvm\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"--sd\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"--seed\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@banner = internal global [48 x i8] c"hmmcalibrate -- calibrate HMM search statistics\00", align 16
@experts = internal global [456 x i8] c"  --cpu <n>      : run <n> threads in parallel (if threaded)\0A  --fixed <n>    : fix random sequence length at <n>\0A  --histfile <f> : save histogram(s) to file <f>\0A  --mean <x>     : set random seq length mean at <x> [350]\0A  --num <n>      : set number of sampled seqs to <n> [5000]\0A  --pvm          : run on a Parallel Virtual Machine (PVM)\0A  --sd <x>       : set random seq length std. dev to <x> [350]\0A  --seed <n>     : set random seed to <n> [time()]\0A\00", align 16
@.str.9 = private unnamed_addr constant [35 x i8] c"Incorrect number of arguments.\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"PVM support is not compiled into HMMER; --pvm doesn't work.\00", align 1
@.str.11 = private unnamed_addr constant [80 x i8] c"Posix threads support is not compiled into HMMER; --cpu doesn't have any effect\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"failed to open HMM file %s for reading.\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Failed to open histogram save file %s for writing\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"hmmcalibrate.c\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c".new\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"HMM file:                 %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Length fixed to:          %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Length distribution mean: %.0f\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Length distribution s.d.: %.0f\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Number of samples:        %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"random seed:              %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"histogram(s) saved to:    %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"[not saved]\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"PVM:                      ACTIVE\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"POSIX threads:            %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"HMM file may be corrupt or in incorrect format; parse failed\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"wait. that can't happen. I didn't do anything.\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"fit failed; --num may be set too small?\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"HMM    : %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"mu     : %12f\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"lambda : %12f\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"max    : %12f\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"HMM: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"Ouch. Temporary file %s appeared during the run.\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"Ouch. Temporary file %s couldn't be opened for writing.\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Ran out of HMMs too early in pass 2\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"HMM file %s was corrupted? Parse failed in pass 2\00", align 1
@Alphabet = external global [25 x i8], align 16
@Alphabet_size = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @hmmcalibrate(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hmmfile_s*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.plan7_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.histogram_s*, align 8
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct._IO_FILE*, align 8
  %17 = alloca %struct.stopwatch_s, align 8
  %18 = alloca %struct.stopwatch_s, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 5000, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store float 3.250000e+02, float* %25, align 4
  store float 2.000000e+02, float* %26, align 4
  %34 = call i64 @time(i64* null) #5
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %23, align 4
  store i8* null, i8** %15, align 8
  store i32 0, i32* %27, align 4
  store i32 20, i32* %28, align 4
  store i32 100, i32* %21, align 4
  store i32 0, i32* %33, align 4
  br label %36

; <label>:36:                                     ; preds = %112, %2
  %37 = load i32, i32* %3, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = call i32 @Getopt(i32 %37, i8** %38, %struct.opt_s* getelementptr inbounds ([9 x %struct.opt_s], [9 x %struct.opt_s]* @OPTIONS, i32 0, i32 0), i32 9, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @usage, i32 0, i32 0), i32* %32, i8** %30, i8** %31)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %113

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %30, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %31, align 8
  %47 = call i32 @atoi(i8* %46) #6
  store i32 %47, i32* %33, align 4
  br label %112

; <label>:48:                                     ; preds = %41
  %49 = load i8*, i8** %30, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %31, align 8
  %54 = call i32 @atoi(i8* %53) #6
  store i32 %54, i32* %24, align 4
  br label %111

; <label>:55:                                     ; preds = %48
  %56 = load i8*, i8** %30, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %55
  %60 = load i8*, i8** %31, align 8
  store i8* %60, i8** %15, align 8
  br label %110

; <label>:61:                                     ; preds = %55
  %62 = load i8*, i8** %30, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

; <label>:65:                                     ; preds = %61
  %66 = load i8*, i8** %31, align 8
  %67 = call double @atof(i8* %66) #6
  %68 = fptrunc double %67 to float
  store float %68, float* %25, align 4
  br label %109

; <label>:69:                                     ; preds = %61
  %70 = load i8*, i8** %30, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %31, align 8
  %75 = call i32 @atoi(i8* %74) #6
  store i32 %75, i32* %22, align 4
  br label %108

; <label>:76:                                     ; preds = %69
  %77 = load i8*, i8** %30, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %76
  store i32 1, i32* %27, align 4
  br label %107

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** %30, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %81
  %86 = load i8*, i8** %31, align 8
  %87 = call double @atof(i8* %86) #6
  %88 = fptrunc double %87 to float
  store float %88, float* %26, align 4
  br label %106

; <label>:89:                                     ; preds = %81
  %90 = load i8*, i8** %30, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

; <label>:93:                                     ; preds = %89
  %94 = load i8*, i8** %31, align 8
  %95 = call i32 @atoi(i8* %94) #6
  store i32 %95, i32* %23, align 4
  br label %105

; <label>:96:                                     ; preds = %89
  %97 = load i8*, i8** %30, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #6
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

; <label>:100:                                    ; preds = %96
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @HMMERBanner(%struct._IO_FILE* %101, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @banner, i32 0, i32 0))
  %102 = call i32 @puts(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @usage, i32 0, i32 0))
  %103 = call i32 @puts(i8* getelementptr inbounds ([456 x i8], [456 x i8]* @experts, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:104:                                    ; preds = %96
  br label %105

; <label>:105:                                    ; preds = %104, %93
  br label %106

; <label>:106:                                    ; preds = %105, %85
  br label %107

; <label>:107:                                    ; preds = %106, %80
  br label %108

; <label>:108:                                    ; preds = %107, %73
  br label %109

; <label>:109:                                    ; preds = %108, %65
  br label %110

; <label>:110:                                    ; preds = %109, %59
  br label %111

; <label>:111:                                    ; preds = %110, %52
  br label %112

; <label>:112:                                    ; preds = %111, %45
  br label %36

; <label>:113:                                    ; preds = %36
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %32, align 4
  %116 = sub nsw i32 %114, %115
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %113
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([130 x i8], [130 x i8]* @usage, i32 0, i32 0))
  br label %119

; <label>:119:                                    ; preds = %118, %113
  %120 = load i8**, i8*** %4, align 8
  %121 = load i32, i32* %32, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %32, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8*, i8** %120, i64 %123
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %5, align 8
  %126 = load i32, i32* %27, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

; <label>:128:                                    ; preds = %119
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i32 0, i32 0))
  br label %129

; <label>:129:                                    ; preds = %128, %119
  %130 = load i32, i32* %33, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

; <label>:132:                                    ; preds = %129
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i32 0, i32 0))
  br label %133

; <label>:133:                                    ; preds = %132, %129
  %134 = load i8*, i8** %5, align 8
  %135 = call %struct.hmmfile_s* @HMMFileOpen(i8* %134, i8* null)
  store %struct.hmmfile_s* %135, %struct.hmmfile_s** %7, align 8
  %136 = icmp eq %struct.hmmfile_s* %135, null
  br i1 %136, label %137, label %139

; <label>:137:                                    ; preds = %133
  %138 = load i8*, i8** %5, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i8* %138)
  br label %139

; <label>:139:                                    ; preds = %137, %133
  store %struct._IO_FILE* null, %struct._IO_FILE** %16, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %149

; <label>:142:                                    ; preds = %139
  %143 = load i8*, i8** %15, align 8
  %144 = call %struct._IO_FILE* @fopen(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %144, %struct._IO_FILE** %16, align 8
  %145 = icmp eq %struct._IO_FILE* %144, null
  br i1 %145, label %146, label %148

; <label>:146:                                    ; preds = %142
  %147 = load i8*, i8** %15, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0), i8* %147)
  br label %148

; <label>:148:                                    ; preds = %146, %142
  br label %149

; <label>:149:                                    ; preds = %148, %139
  %150 = load i8*, i8** %5, align 8
  %151 = call i64 @strlen(i8* %150) #6
  %152 = add i64 %151, 5
  %153 = call i8* @sre_malloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 265, i64 %152)
  store i8* %153, i8** %6, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = call i8* @strcpy(i8* %154, i8* %155) #5
  %157 = load i8*, i8** %6, align 8
  %158 = call i8* @strcat(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #5
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @FileExists(i8* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

; <label>:162:                                    ; preds = %149
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 @remove(i8* %163) #5
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

; <label>:166:                                    ; preds = %162
  call void @Panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 270)
  br label %167

; <label>:167:                                    ; preds = %166, %162
  br label %168

; <label>:168:                                    ; preds = %167, %149
  %169 = load %struct.hmmfile_s*, %struct.hmmfile_s** %7, align 8
  %170 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

; <label>:173:                                    ; preds = %168
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8** %9, align 8
  br label %175

; <label>:174:                                    ; preds = %168
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8** %9, align 8
  br label %175

; <label>:175:                                    ; preds = %174, %173
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @HMMERBanner(%struct._IO_FILE* %176, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @banner, i32 0, i32 0))
  %177 = load i8*, i8** %5, align 8
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* %177)
  %179 = load i32, i32* %24, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

; <label>:181:                                    ; preds = %175
  %182 = load i32, i32* %24, align 4
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i32 %182)
  br label %191

; <label>:184:                                    ; preds = %175
  %185 = load float, float* %25, align 4
  %186 = fpext float %185 to double
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), double %186)
  %188 = load float, float* %26, align 4
  %189 = fpext float %188 to double
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0), double %189)
  br label %191

; <label>:191:                                    ; preds = %184, %181
  %192 = load i32, i32* %22, align 4
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0), i32 %192)
  %194 = load i32, i32* %23, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i32 %194)
  %196 = load i8*, i8** %15, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %200

; <label>:198:                                    ; preds = %191
  %199 = load i8*, i8** %15, align 8
  br label %201

; <label>:200:                                    ; preds = %191
  br label %201

; <label>:201:                                    ; preds = %200, %198
  %202 = phi i8* [ %199, %198 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), %200 ]
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i8* %202)
  %204 = load i32, i32* %27, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

; <label>:206:                                    ; preds = %201
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0))
  br label %215

; <label>:208:                                    ; preds = %201
  %209 = load i32, i32* %33, align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %214

; <label>:211:                                    ; preds = %208
  %212 = load i32, i32* %33, align 4
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0), i32 %212)
  br label %214

; <label>:214:                                    ; preds = %211, %208
  br label %215

; <label>:215:                                    ; preds = %214, %206
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %12, align 4
  %217 = load i32, i32* %21, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 4, %218
  %220 = call i8* @sre_malloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 308, i64 %219)
  %221 = bitcast i8* %220 to float*
  store float* %221, float** %19, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 4, %223
  %225 = call i8* @sre_malloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 309, i64 %224)
  %226 = bitcast i8* %225 to float*
  store float* %226, float** %20, align 8
  br label %227

; <label>:227:                                    ; preds = %328, %215
  %228 = load %struct.hmmfile_s*, %struct.hmmfile_s** %7, align 8
  %229 = call i32 @HMMFileRead(%struct.hmmfile_s* %228, %struct.plan7_s** %10)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %331

; <label>:231:                                    ; preds = %227
  %232 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  %233 = icmp eq %struct.plan7_s* %232, null
  br i1 %233, label %234, label %235

; <label>:234:                                    ; preds = %231
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.29, i32 0, i32 0))
  br label %235

; <label>:235:                                    ; preds = %234, %231
  %236 = load i32, i32* %27, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %248, label %238

; <label>:238:                                    ; preds = %235
  %239 = load i32, i32* %33, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248

; <label>:241:                                    ; preds = %238
  %242 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  %243 = load i32, i32* %23, align 4
  %244 = load i32, i32* %22, align 4
  %245 = load float, float* %25, align 4
  %246 = load float, float* %26, align 4
  %247 = load i32, i32* %24, align 4
  call void @main_loop_serial(%struct.plan7_s* %242, i32 %243, i32 %244, float %245, float %246, i32 %247, %struct.histogram_s** %13, float* %14)
  br label %249

; <label>:248:                                    ; preds = %238, %235
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i32 0, i32 0))
  br label %249

; <label>:249:                                    ; preds = %248, %241
  %250 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %251 = call i32 @ExtremeValueFitHistogram(%struct.histogram_s* %250, i32 1, float 9.999000e+03)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

; <label>:253:                                    ; preds = %249
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0))
  br label %254

; <label>:254:                                    ; preds = %253, %249
  %255 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %256 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %255, i32 0, i32 9
  %257 = getelementptr inbounds [3 x float], [3 x float]* %256, i64 0, i64 0
  %258 = load float, float* %257, align 4
  %259 = load float*, float** %19, align 8
  %260 = load i32, i32* %12, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %259, i64 %261
  store float %258, float* %262, align 4
  %263 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %264 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %263, i32 0, i32 9
  %265 = getelementptr inbounds [3 x float], [3 x float]* %264, i64 0, i64 1
  %266 = load float, float* %265, align 4
  %267 = load float*, float** %20, align 8
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %267, i64 %269
  store float %266, float* %270, align 4
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %12, align 4
  %273 = load i32, i32* %12, align 4
  %274 = srem i32 %273, 100
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %295

; <label>:276:                                    ; preds = %254
  %277 = load float*, float** %19, align 8
  %278 = bitcast float* %277 to i8*
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* %21, align 4
  %281 = add nsw i32 %279, %280
  %282 = sext i32 %281 to i64
  %283 = mul i64 4, %282
  %284 = call i8* @sre_realloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 348, i8* %278, i64 %283)
  %285 = bitcast i8* %284 to float*
  store float* %285, float** %19, align 8
  %286 = load float*, float** %20, align 8
  %287 = bitcast float* %286 to i8*
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* %21, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = mul i64 4, %291
  %293 = call i8* @sre_realloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 349, i8* %287, i64 %292)
  %294 = bitcast i8* %293 to float*
  store float* %294, float** %20, align 8
  br label %295

; <label>:295:                                    ; preds = %276, %254
  %296 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  %297 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* %298)
  %300 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %301 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %300, i32 0, i32 9
  %302 = getelementptr inbounds [3 x float], [3 x float]* %301, i64 0, i64 0
  %303 = load float, float* %302, align 4
  %304 = fpext float %303 to double
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), double %304)
  %306 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %307 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %306, i32 0, i32 9
  %308 = getelementptr inbounds [3 x float], [3 x float]* %307, i64 0, i64 1
  %309 = load float, float* %308, align 4
  %310 = fpext float %309 to double
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), double %310)
  %312 = load float, float* %14, align 4
  %313 = fpext float %312 to double
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), double %313)
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0))
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %317 = icmp ne %struct._IO_FILE* %316, null
  br i1 %317, label %318, label %328

; <label>:318:                                    ; preds = %295
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %320 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  %321 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* %322)
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %325 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  call void @PrintASCIIHistogram(%struct._IO_FILE* %324, %struct.histogram_s* %325)
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %326, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0))
  br label %328

; <label>:328:                                    ; preds = %318, %295
  %329 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  call void @FreeHistogram(%struct.histogram_s* %329)
  %330 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  call void @FreePlan7(%struct.plan7_s* %330)
  br label %227

; <label>:331:                                    ; preds = %227
  %332 = load %struct.hmmfile_s*, %struct.hmmfile_s** %7, align 8
  call void @HMMFileRewind(%struct.hmmfile_s* %332)
  %333 = load i8*, i8** %6, align 8
  %334 = call i32 @FileExists(i8* %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

; <label>:336:                                    ; preds = %331
  %337 = load i8*, i8** %6, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i32 0, i32 0), i8* %337)
  br label %338

; <label>:338:                                    ; preds = %336, %331
  %339 = load i8*, i8** %6, align 8
  %340 = load i8*, i8** %9, align 8
  %341 = call %struct._IO_FILE* @fopen(i8* %339, i8* %340)
  store %struct._IO_FILE* %341, %struct._IO_FILE** %8, align 8
  %342 = icmp eq %struct._IO_FILE* %341, null
  br i1 %342, label %343, label %345

; <label>:343:                                    ; preds = %338
  %344 = load i8*, i8** %6, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i32 0, i32 0), i8* %344)
  br label %345

; <label>:345:                                    ; preds = %343, %338
  store i32 0, i32* %11, align 4
  br label %346

; <label>:346:                                    ; preds = %394, %345
  %347 = load i32, i32* %11, align 4
  %348 = load i32, i32* %12, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %397

; <label>:350:                                    ; preds = %346
  %351 = load %struct.hmmfile_s*, %struct.hmmfile_s** %7, align 8
  %352 = call i32 @HMMFileRead(%struct.hmmfile_s* %351, %struct.plan7_s** %10)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %355, label %354

; <label>:354:                                    ; preds = %350
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0))
  br label %355

; <label>:355:                                    ; preds = %354, %350
  %356 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  %357 = icmp eq %struct.plan7_s* %356, null
  br i1 %357, label %358, label %360

; <label>:358:                                    ; preds = %355
  %359 = load i8*, i8** %5, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0), i8* %359)
  br label %360

; <label>:360:                                    ; preds = %358, %355
  %361 = load float*, float** %19, align 8
  %362 = load i32, i32* %11, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %361, i64 %363
  %365 = load float, float* %364, align 4
  %366 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  %367 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %366, i32 0, i32 45
  store float %365, float* %367, align 8
  %368 = load float*, float** %20, align 8
  %369 = load i32, i32* %11, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %368, i64 %370
  %372 = load float, float* %371, align 4
  %373 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  %374 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %373, i32 0, i32 46
  store float %372, float* %374, align 4
  %375 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  %376 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %375, i32 0, i32 47
  %377 = load i32, i32* %376, align 8
  %378 = or i32 %377, 128
  store i32 %378, i32* %376, align 8
  %379 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  %380 = load i32, i32* %3, align 4
  %381 = load i8**, i8*** %4, align 8
  call void @Plan7ComlogAppend(%struct.plan7_s* %379, i32 %380, i8** %381)
  %382 = load %struct.hmmfile_s*, %struct.hmmfile_s** %7, align 8
  %383 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

; <label>:386:                                    ; preds = %360
  %387 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %388 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  call void @WriteBinHMM(%struct._IO_FILE* %387, %struct.plan7_s* %388)
  br label %392

; <label>:389:                                    ; preds = %360
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %391 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  call void @WriteAscHMM(%struct._IO_FILE* %390, %struct.plan7_s* %391)
  br label %392

; <label>:392:                                    ; preds = %389, %386
  %393 = load %struct.plan7_s*, %struct.plan7_s** %10, align 8
  call void @FreePlan7(%struct.plan7_s* %393)
  br label %394

; <label>:394:                                    ; preds = %392
  %395 = load i32, i32* %11, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %11, align 4
  br label %346

; <label>:397:                                    ; preds = %346
  %398 = load %struct.hmmfile_s*, %struct.hmmfile_s** %7, align 8
  call void @HMMFileClose(%struct.hmmfile_s* %398)
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %400 = call i32 @fclose(%struct._IO_FILE* %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

; <label>:402:                                    ; preds = %397
  call void @Panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 415)
  br label %403

; <label>:403:                                    ; preds = %402, %397
  %404 = load i8*, i8** %6, align 8
  call void @free(i8* %404) #5
  %405 = load float*, float** %19, align 8
  %406 = bitcast float* %405 to i8*
  call void @free(i8* %406) #5
  %407 = load float*, float** %20, align 8
  %408 = bitcast float* %407 to i8*
  call void @free(i8* %408) #5
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %410 = icmp ne %struct._IO_FILE* %409, null
  br i1 %410, label %411, label %414

; <label>:411:                                    ; preds = %403
  %412 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %413 = call i32 @fclose(%struct._IO_FILE* %412)
  br label %414

; <label>:414:                                    ; preds = %411, %403
  call void @SqdClean()
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

declare i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

declare void @HMMERBanner(%struct._IO_FILE*, i8*) #2

declare i32 @puts(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @Die(i8*, ...) #2

declare %struct.hmmfile_s* @HMMFileOpen(i8*, i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

declare i32 @FileExists(i8*) #2

; Function Attrs: nounwind
declare i32 @remove(i8*) #1

declare void @Panic(i8*, i32) #2

declare i32 @printf(i8*, ...) #2

declare i32 @HMMFileRead(%struct.hmmfile_s*, %struct.plan7_s**) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_loop_serial(%struct.plan7_s*, i32, i32, float, float, i32, %struct.histogram_s**, float*) #0 {
  %9 = alloca %struct.plan7_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.histogram_s**, align 8
  %16 = alloca float*, align 8
  %17 = alloca %struct.histogram_s*, align 8
  %18 = alloca %struct.dpmatrix_s*, align 8
  %19 = alloca [20 x float], align 16
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.histogram_s** %6, %struct.histogram_s*** %15, align 8
  store float* %7, float** %16, align 8
  %27 = load i32, i32* %10, align 4
  call void @sre_srandom(i32 %27)
  %28 = load %struct.plan7_s*, %struct.plan7_s** %9, align 8
  call void @P7Logoddsify(%struct.plan7_s* %28, i32 1)
  %29 = getelementptr inbounds [20 x float], [20 x float]* %19, i32 0, i32 0
  call void @P7DefaultNullModel(float* %29, float* %20)
  %30 = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100)
  store %struct.histogram_s* %30, %struct.histogram_s** %17, align 8
  %31 = load %struct.plan7_s*, %struct.plan7_s** %9, align 8
  %32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %31, i32 0, i32 20
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %33, i32 25, i32 0)
  store %struct.dpmatrix_s* %34, %struct.dpmatrix_s** %18, align 8
  store float 0xC7EFFFFFE0000000, float* %21, align 4
  store i32 0, i32* %26, align 4
  br label %35

; <label>:35:                                     ; preds = %93, %8
  %36 = load i32, i32* %26, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %96

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %25, align 4
  br label %56

; <label>:44:                                     ; preds = %39
  br label %45

; <label>:45:                                     ; preds = %52, %44
  %46 = load float, float* %12, align 4
  %47 = fpext float %46 to double
  %48 = load float, float* %13, align 4
  %49 = fpext float %48 to double
  %50 = call double @Gaussrandom(double %47, double %49)
  %51 = fptosi double %50 to i32
  store i32 %51, i32* %25, align 4
  br label %52

; <label>:52:                                     ; preds = %45
  %53 = load i32, i32* %25, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %45, label %55

; <label>:55:                                     ; preds = %52
  br label %56

; <label>:56:                                     ; preds = %55, %42
  %57 = getelementptr inbounds [20 x float], [20 x float]* %19, i32 0, i32 0
  %58 = load i32, i32* @Alphabet_size, align 4
  %59 = load i32, i32* %25, align 4
  %60 = call i8* @RandomSequence(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), float* %57, i32 %58, i32 %59)
  store i8* %60, i8** %22, align 8
  %61 = load i8*, i8** %22, align 8
  %62 = load i32, i32* %25, align 4
  %63 = call i8* @DigitizeSequence(i8* %61, i32 %62)
  store i8* %63, i8** %23, align 8
  %64 = load i32, i32* %25, align 4
  %65 = load %struct.plan7_s*, %struct.plan7_s** %9, align 8
  %66 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %65, i32 0, i32 20
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @P7ViterbiSize(i32 %64, i32 %67)
  %69 = icmp sle i32 %68, 1000
  br i1 %69, label %70, label %76

; <label>:70:                                     ; preds = %56
  %71 = load i8*, i8** %23, align 8
  %72 = load i32, i32* %25, align 4
  %73 = load %struct.plan7_s*, %struct.plan7_s** %9, align 8
  %74 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %18, align 8
  %75 = call float @P7Viterbi(i8* %71, i32 %72, %struct.plan7_s* %73, %struct.dpmatrix_s* %74, %struct.p7trace_s** null)
  store float %75, float* %24, align 4
  br label %82

; <label>:76:                                     ; preds = %56
  %77 = load i8*, i8** %23, align 8
  %78 = load i32, i32* %25, align 4
  %79 = load %struct.plan7_s*, %struct.plan7_s** %9, align 8
  %80 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %18, align 8
  %81 = call float @P7SmallViterbi(i8* %77, i32 %78, %struct.plan7_s* %79, %struct.dpmatrix_s* %80, %struct.p7trace_s** null)
  store float %81, float* %24, align 4
  br label %82

; <label>:82:                                     ; preds = %76, %70
  %83 = load %struct.histogram_s*, %struct.histogram_s** %17, align 8
  %84 = load float, float* %24, align 4
  call void @AddToHistogram(%struct.histogram_s* %83, float %84)
  %85 = load float, float* %24, align 4
  %86 = load float, float* %21, align 4
  %87 = fcmp ogt float %85, %86
  br i1 %87, label %88, label %90

; <label>:88:                                     ; preds = %82
  %89 = load float, float* %24, align 4
  store float %89, float* %21, align 4
  br label %90

; <label>:90:                                     ; preds = %88, %82
  %91 = load i8*, i8** %23, align 8
  call void @free(i8* %91) #5
  %92 = load i8*, i8** %22, align 8
  call void @free(i8* %92) #5
  br label %93

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %26, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %26, align 4
  br label %35

; <label>:96:                                     ; preds = %35
  %97 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %18, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %97)
  %98 = load %struct.histogram_s*, %struct.histogram_s** %17, align 8
  %99 = load %struct.histogram_s**, %struct.histogram_s*** %15, align 8
  store %struct.histogram_s* %98, %struct.histogram_s** %99, align 8
  %100 = load float, float* %21, align 4
  %101 = load float*, float** %16, align 8
  store float %100, float* %101, align 4
  ret void
}

declare i32 @ExtremeValueFitHistogram(%struct.histogram_s*, i32, float) #2

declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @PrintASCIIHistogram(%struct._IO_FILE*, %struct.histogram_s*) #2

declare void @FreeHistogram(%struct.histogram_s*) #2

declare void @FreePlan7(%struct.plan7_s*) #2

declare void @HMMFileRewind(%struct.hmmfile_s*) #2

declare void @Plan7ComlogAppend(%struct.plan7_s*, i32, i8**) #2

declare void @WriteBinHMM(%struct._IO_FILE*, %struct.plan7_s*) #2

declare void @WriteAscHMM(%struct._IO_FILE*, %struct.plan7_s*) #2

declare void @HMMFileClose(%struct.hmmfile_s*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @SqdClean() #2

declare void @sre_srandom(i32) #2

declare void @P7Logoddsify(%struct.plan7_s*, i32) #2

declare void @P7DefaultNullModel(float*, float*) #2

declare %struct.histogram_s* @AllocHistogram(i32, i32, i32) #2

declare %struct.dpmatrix_s* @CreatePlan7Matrix(i32, i32, i32, i32) #2

declare double @Gaussrandom(double, double) #2

declare i8* @RandomSequence(i8*, float*, i32, i32) #2

declare i8* @DigitizeSequence(i8*, i32) #2

declare i32 @P7ViterbiSize(i32, i32) #2

declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #2

declare float @P7SmallViterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #2

declare void @AddToHistogram(%struct.histogram_s*, float) #2

declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
