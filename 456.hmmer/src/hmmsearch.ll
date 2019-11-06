; ModuleID = 'hmmsearch.c'
source_filename = "hmmsearch.c"
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
%struct.ReadSeqVars = type { %struct._IO_FILE*, i8*, i32, i8*, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i32, i32, i32, i32, i32, i32, i8*, %struct.seqinfo_s*, i8*, i32, i32, i32, i32, i32, %struct.msa_struct*, %struct.msafile_struct* }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.histogram_s = type { i32*, i32, i32, i32, i32, i32, i32, float*, i32, [3 x float], float, float }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.tophit_s = type { %struct.hit_s**, %struct.hit_s*, i32, i32, i32 }
%struct.hit_s = type { double, float, double, float, double, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s* }
%struct.threshold_s = type { float, double, float, double, i32, i32 }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@OPTIONS = internal global [17 x %struct.opt_s] [%struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 1, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 4 }, %struct.opt_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0 }], align 16
@usage = internal global [382 x i8] c"Usage: hmmsearch [-options] <hmmfile> <sequence file or database>\0A  Available options are:\0A   -h        : help; print brief help on version and usage\0A   -A <n>    : sets alignment output limit to <n> best domain alignments\0A   -E <x>    : sets E value cutoff (globE) to <= x\0A   -T <x>    : sets T bit threshold (globT) to >= x\0A   -Z <n>    : sets Z (# seqs) for E-value calculation\0A\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-Z\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"--compat\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"--cpu\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"--cut_ga\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"--cut_nc\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"--cut_tc\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"--domE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--domT\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--forward\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"--null2\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"--pvm\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"--xnu\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"--informat\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"unrecognized sequence file format \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@banner = internal global [58 x i8] c"hmmsearch - search a sequence database with a profile HMM\00", align 16
@experts = internal global [759 x i8] c"   --compat       : make best effort to use last version's output style\0A   --cpu <n>      : run <n> threads in parallel (if threaded)\0A   --cut_ga       : use Pfam GA gathering threshold cutoffs\0A   --cut_nc       : use Pfam NC noise threshold cutoffs\0A   --cut_tc       : use Pfam TC trusted threshold cutoffs\0A   --domE <x>     : sets domain Eval cutoff (2nd threshold) to <= x\0A   --domT <x>     : sets domain T bit thresh (2nd threshold) to >= x\0A   --forward      : use the full Forward() algorithm instead of Viterbi\0A   --informat <s> : sequence file is in format <s>\0A   --null2        : turn OFF the post hoc second null model\0A   --pvm          : run on a Parallel Virtual Machine (PVM)\0A   --xnu          : turn ON XNU filtering of target protein sequences\0A\00", align 16
@.str.18 = private unnamed_addr constant [35 x i8] c"Incorrect number of arguments.\0A%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"PVM support is not compiled into your HMMER software; --pvm doesn't work.\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"POSIX threads support is not compiled into HMMER; --cpu doesn't have any effect\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"^.*\5C.gz$\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"BLASTDB\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Failed to open sequence database file %s\0A%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"HMMERDB\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Failed to open HMM file %s\0A%s\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Failed to read any HMMs from %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"HMM file %s corrupt or in incorrect format? Parse failed\00", align 1
@Alphabet_type = common global i32 0, align 4
@.str.29 = private unnamed_addr constant [71 x i8] c"The HMM is a DNA model, and you can't use the --xnu filter on DNA data\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"HMM %s did not contain the GA, TC, or NC cutoffs you needed\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"HMM file:                   %s [%s]\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Sequence database:          %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"PVM:                        ACTIVE\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"per-sequence score cutoff:  \00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"[none]\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c">= %.1f\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c" [GA1]\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c" [NC1]\0A\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c" [TC1]\0A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"per-domain score cutoff:    \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c" [GA2]\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c" [NC2]\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c" [TC2]\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"per-sequence Eval cutoff:   \00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"<= %-10.2g\0A\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"per-domain Eval cutoff:     \00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"<= %10.2g\0A\00", align 1
@.str.49 = private unnamed_addr constant [65 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"\0AQuery HMM: %s|%s|%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"\0AQuery HMM:   %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Accession:   %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Description: %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [63 x i8] c"  [HMM has been calibrated; E-values are empirical estimates]\0A\00", align 1
@.str.57 = private unnamed_addr constant [55 x i8] c"  [No calibration for HMM; E-values are upper bounds]\0A\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"\0AAlignments of top-scoring domains:\0A\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"%s: domain %d of %d, from %d to %d: score %.1f, E = %.2g\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"\09[no hits above thresholds]\0A\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"\09[output cut off at A = %d top alignments]\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"\0ATotal sequences searched: %d\0A\00", align 1
@Alphabet = common global [25 x i8] zeroinitializer, align 16
@Alphabet_size = common global i32 0, align 4
@Alphabet_iupac = common global i32 0, align 4
@Degenerate = common global [24 x [20 x i8]] zeroinitializer, align 16
@DegenCount = common global [24 x i32] zeroinitializer, align 16
@.str.63 = private unnamed_addr constant [15 x i8] c"No PVM support\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"No threads support\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hmmfile_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ReadSeqVars*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.plan7_s*, align 8
  %13 = alloca %struct.histogram_s*, align 8
  %14 = alloca %struct.fancyali_s*, align 8
  %15 = alloca %struct.tophit_s*, align 8
  %16 = alloca %struct.tophit_s*, align 8
  %17 = alloca float, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.threshold_s, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %55

; <label>:51:                                     ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = call i32 @hmmcalibrate(i32 %52, i8** %53)
  store i32 %54, i32* %3, align 4
  br label %659

; <label>:55:                                     ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %42, align 4
  store i32 1, i32* %41, align 4
  store i32 0, i32* %43, align 4
  store i32 0, i32* %44, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %45, align 4
  store i32 0, i32* %48, align 4
  store i32 0, i32* %47, align 4
  store i32 0, i32* %46, align 4
  store i32 2147483647, i32* %36, align 4
  %56 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 1
  store double 1.000000e+01, double* %56, align 8
  %57 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %57, align 8
  %58 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %58, align 8
  %59 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 3
  store double 0x47EFFFFFE0000000, double* %59, align 8
  %60 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 5
  store i32 0, i32* %61, align 4
  br label %62

; <label>:62:                                     ; preds = %202, %55
  %63 = load i32, i32* %4, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = call i32 @Getopt(i32 %63, i8** %64, %struct.opt_s* getelementptr inbounds ([17 x %struct.opt_s], [17 x %struct.opt_s]* @OPTIONS, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0), i32* %40, i8** %38, i8** %39)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %203

; <label>:67:                                     ; preds = %62
  %68 = load i8*, i8** %38, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

; <label>:71:                                     ; preds = %67
  %72 = load i8*, i8** %39, align 8
  %73 = call i32 @atoi(i8* %72) #5
  store i32 %73, i32* %36, align 4
  br label %202

; <label>:74:                                     ; preds = %67
  %75 = load i8*, i8** %38, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

; <label>:78:                                     ; preds = %74
  %79 = load i8*, i8** %39, align 8
  %80 = call double @atof(i8* %79) #5
  %81 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 1
  store double %80, double* %81, align 8
  br label %201

; <label>:82:                                     ; preds = %74
  %83 = load i8*, i8** %38, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

; <label>:86:                                     ; preds = %82
  %87 = load i8*, i8** %39, align 8
  %88 = call double @atof(i8* %87) #5
  %89 = fptrunc double %88 to float
  %90 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 0
  store float %89, float* %90, align 8
  br label %200

; <label>:91:                                     ; preds = %82
  %92 = load i8*, i8** %38, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #5
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

; <label>:95:                                     ; preds = %91
  %96 = load i8*, i8** %39, align 8
  %97 = call i32 @atoi(i8* %96) #5
  %98 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 5
  store i32 %97, i32* %98, align 4
  br label %199

; <label>:99:                                     ; preds = %91
  %100 = load i8*, i8** %38, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %99
  store i32 1, i32* %45, align 4
  br label %198

; <label>:104:                                    ; preds = %99
  %105 = load i8*, i8** %38, align 8
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #5
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

; <label>:108:                                    ; preds = %104
  %109 = load i8*, i8** %39, align 8
  %110 = call i32 @atoi(i8* %109) #5
  store i32 %110, i32* %46, align 4
  br label %197

; <label>:111:                                    ; preds = %104
  %112 = load i8*, i8** %38, align 8
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #5
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

; <label>:115:                                    ; preds = %111
  %116 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  store i32 1, i32* %116, align 8
  br label %196

; <label>:117:                                    ; preds = %111
  %118 = load i8*, i8** %38, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #5
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

; <label>:121:                                    ; preds = %117
  %122 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  store i32 2, i32* %122, align 8
  br label %195

; <label>:123:                                    ; preds = %117
  %124 = load i8*, i8** %38, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #5
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

; <label>:127:                                    ; preds = %123
  %128 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  store i32 3, i32* %128, align 8
  br label %194

; <label>:129:                                    ; preds = %123
  %130 = load i8*, i8** %38, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #5
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

; <label>:133:                                    ; preds = %129
  %134 = load i8*, i8** %39, align 8
  %135 = call double @atof(i8* %134) #5
  %136 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 3
  store double %135, double* %136, align 8
  br label %193

; <label>:137:                                    ; preds = %129
  %138 = load i8*, i8** %38, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #5
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

; <label>:141:                                    ; preds = %137
  %142 = load i8*, i8** %39, align 8
  %143 = call double @atof(i8* %142) #5
  %144 = fptrunc double %143 to float
  %145 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 2
  store float %144, float* %145, align 8
  br label %192

; <label>:146:                                    ; preds = %137
  %147 = load i8*, i8** %38, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #5
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

; <label>:150:                                    ; preds = %146
  store i32 1, i32* %42, align 4
  br label %191

; <label>:151:                                    ; preds = %146
  %152 = load i8*, i8** %38, align 8
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #5
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %151
  store i32 0, i32* %41, align 4
  br label %190

; <label>:156:                                    ; preds = %151
  %157 = load i8*, i8** %38, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #5
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

; <label>:160:                                    ; preds = %156
  store i32 1, i32* %44, align 4
  br label %189

; <label>:161:                                    ; preds = %156
  %162 = load i8*, i8** %38, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #5
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

; <label>:165:                                    ; preds = %161
  store i32 1, i32* %43, align 4
  br label %188

; <label>:166:                                    ; preds = %161
  %167 = load i8*, i8** %38, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #5
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %178

; <label>:170:                                    ; preds = %166
  %171 = load i8*, i8** %39, align 8
  %172 = call i32 @String2SeqfileFormat(i8* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

; <label>:175:                                    ; preds = %170
  %176 = load i8*, i8** %39, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i8* %176)
  br label %177

; <label>:177:                                    ; preds = %175, %170
  br label %187

; <label>:178:                                    ; preds = %166
  %179 = load i8*, i8** %38, align 8
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)) #5
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

; <label>:182:                                    ; preds = %178
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @HMMERBanner(%struct._IO_FILE* %183, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @banner, i32 0, i32 0))
  %184 = call i32 @puts(i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0))
  %185 = call i32 @puts(i8* getelementptr inbounds ([759 x i8], [759 x i8]* @experts, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

; <label>:186:                                    ; preds = %178
  br label %187

; <label>:187:                                    ; preds = %186, %177
  br label %188

; <label>:188:                                    ; preds = %187, %165
  br label %189

; <label>:189:                                    ; preds = %188, %160
  br label %190

; <label>:190:                                    ; preds = %189, %155
  br label %191

; <label>:191:                                    ; preds = %190, %150
  br label %192

; <label>:192:                                    ; preds = %191, %141
  br label %193

; <label>:193:                                    ; preds = %192, %133
  br label %194

; <label>:194:                                    ; preds = %193, %127
  br label %195

; <label>:195:                                    ; preds = %194, %121
  br label %196

; <label>:196:                                    ; preds = %195, %115
  br label %197

; <label>:197:                                    ; preds = %196, %108
  br label %198

; <label>:198:                                    ; preds = %197, %103
  br label %199

; <label>:199:                                    ; preds = %198, %95
  br label %200

; <label>:200:                                    ; preds = %199, %86
  br label %201

; <label>:201:                                    ; preds = %200, %78
  br label %202

; <label>:202:                                    ; preds = %201, %71
  br label %62

; <label>:203:                                    ; preds = %62
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* %40, align 4
  %206 = sub nsw i32 %204, %205
  %207 = icmp ne i32 %206, 2
  br i1 %207, label %208, label %209

; <label>:208:                                    ; preds = %203
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0))
  br label %209

; <label>:209:                                    ; preds = %208, %203
  %210 = load i8**, i8*** %5, align 8
  %211 = load i32, i32* %40, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %40, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8*, i8** %210, i64 %213
  %215 = load i8*, i8** %214, align 8
  store i8* %215, i8** %6, align 8
  %216 = load i8**, i8*** %5, align 8
  %217 = load i32, i32* %40, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %40, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8*, i8** %216, i64 %219
  %221 = load i8*, i8** %220, align 8
  store i8* %221, i8** %8, align 8
  %222 = load i32, i32* %44, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

; <label>:224:                                    ; preds = %209
  %225 = load i32, i32* %48, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

; <label>:227:                                    ; preds = %224
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i32 0, i32 0))
  br label %228

; <label>:228:                                    ; preds = %227, %224, %209
  %229 = load i32, i32* %46, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

; <label>:231:                                    ; preds = %228
  %232 = load i32, i32* %47, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

; <label>:234:                                    ; preds = %231
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i32 0, i32 0))
  br label %235

; <label>:235:                                    ; preds = %234, %231, %228
  %236 = load i32, i32* %10, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %247

; <label>:238:                                    ; preds = %235
  %239 = load i8*, i8** %8, align 8
  %240 = call i32 @Strparse(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* %239, i32 0)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %246, label %242

; <label>:242:                                    ; preds = %238
  %243 = load i8*, i8** %8, align 8
  %244 = call i32 @strcmp(i8* %243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #5
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

; <label>:246:                                    ; preds = %242, %238
  store i32 7, i32* %10, align 4
  br label %247

; <label>:247:                                    ; preds = %246, %242, %235
  %248 = load i8*, i8** %8, align 8
  %249 = load i32, i32* %10, align 4
  %250 = call %struct.ReadSeqVars* @SeqfileOpen(i8* %248, i32 %249, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0))
  store %struct.ReadSeqVars* %250, %struct.ReadSeqVars** %9, align 8
  %251 = icmp eq %struct.ReadSeqVars* %250, null
  br i1 %251, label %252, label %254

; <label>:252:                                    ; preds = %247
  %253 = load i8*, i8** %8, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i32 0, i32 0), i8* %253, i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0))
  br label %254

; <label>:254:                                    ; preds = %252, %247
  %255 = load i8*, i8** %6, align 8
  %256 = call %struct.hmmfile_s* @HMMFileOpen(i8* %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0))
  store %struct.hmmfile_s* %256, %struct.hmmfile_s** %7, align 8
  %257 = icmp eq %struct.hmmfile_s* %256, null
  br i1 %257, label %258, label %260

; <label>:258:                                    ; preds = %254
  %259 = load i8*, i8** %6, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %259, i8* getelementptr inbounds ([382 x i8], [382 x i8]* @usage, i32 0, i32 0))
  br label %260

; <label>:260:                                    ; preds = %258, %254
  %261 = load %struct.hmmfile_s*, %struct.hmmfile_s** %7, align 8
  %262 = call i32 @HMMFileRead(%struct.hmmfile_s* %261, %struct.plan7_s** %12)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %266, label %264

; <label>:264:                                    ; preds = %260
  %265 = load i8*, i8** %6, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i8* %265)
  br label %266

; <label>:266:                                    ; preds = %264, %260
  %267 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %268 = icmp eq %struct.plan7_s* %267, null
  br i1 %268, label %269, label %271

; <label>:269:                                    ; preds = %266
  %270 = load i8*, i8** %6, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0), i8* %270)
  br label %271

; <label>:271:                                    ; preds = %269, %266
  %272 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %273 = load i32, i32* %42, align 4
  %274 = icmp ne i32 %273, 0
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  call void @P7Logoddsify(%struct.plan7_s* %272, i32 %276)
  %277 = load i32, i32* %43, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

; <label>:279:                                    ; preds = %271
  %280 = load i32, i32* @Alphabet_type, align 4
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %282, label %283

; <label>:282:                                    ; preds = %279
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i32 0, i32 0))
  br label %283

; <label>:283:                                    ; preds = %282, %279, %271
  %284 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %285 = call i32 @SetAutocuts(%struct.threshold_s* %37, %struct.plan7_s* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

; <label>:287:                                    ; preds = %283
  %288 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %289 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0), i8* %290)
  br label %291

; <label>:291:                                    ; preds = %287, %283
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @HMMERBanner(%struct._IO_FILE* %292, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @banner, i32 0, i32 0))
  %293 = load i8*, i8** %6, align 8
  %294 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %295 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i8* %293, i8* %296)
  %298 = load i8*, i8** %8, align 8
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* %298)
  %300 = load i32, i32* %44, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

; <label>:302:                                    ; preds = %291
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0))
  br label %304

; <label>:304:                                    ; preds = %302, %291
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0))
  %306 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 0
  %307 = load float, float* %306, align 8
  %308 = fcmp oeq float %307, 0xC7EFFFFFE0000000
  br i1 %308, label %309, label %311

; <label>:309:                                    ; preds = %304
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %338

; <label>:311:                                    ; preds = %304
  %312 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 0
  %313 = load float, float* %312, align 8
  %314 = fpext float %313 to double
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), double %314)
  %316 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %319, label %321

; <label>:319:                                    ; preds = %311
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0))
  br label %337

; <label>:321:                                    ; preds = %311
  %322 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %325, label %327

; <label>:325:                                    ; preds = %321
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0))
  br label %336

; <label>:327:                                    ; preds = %321
  %328 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = icmp eq i32 %329, 3
  br i1 %330, label %331, label %333

; <label>:331:                                    ; preds = %327
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0))
  br label %335

; <label>:333:                                    ; preds = %327
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  br label %335

; <label>:335:                                    ; preds = %333, %331
  br label %336

; <label>:336:                                    ; preds = %335, %325
  br label %337

; <label>:337:                                    ; preds = %336, %319
  br label %338

; <label>:338:                                    ; preds = %337, %309
  %339 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0))
  %340 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 2
  %341 = load float, float* %340, align 8
  %342 = fcmp oeq float %341, 0xC7EFFFFFE0000000
  br i1 %342, label %343, label %345

; <label>:343:                                    ; preds = %338
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %372

; <label>:345:                                    ; preds = %338
  %346 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 2
  %347 = load float, float* %346, align 8
  %348 = fpext float %347 to double
  %349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), double %348)
  %350 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %355

; <label>:353:                                    ; preds = %345
  %354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0))
  br label %371

; <label>:355:                                    ; preds = %345
  %356 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  %357 = load i32, i32* %356, align 8
  %358 = icmp eq i32 %357, 2
  br i1 %358, label %359, label %361

; <label>:359:                                    ; preds = %355
  %360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0))
  br label %370

; <label>:361:                                    ; preds = %355
  %362 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = icmp eq i32 %363, 3
  br i1 %364, label %365, label %367

; <label>:365:                                    ; preds = %361
  %366 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  br label %369

; <label>:367:                                    ; preds = %361
  %368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  br label %369

; <label>:369:                                    ; preds = %367, %365
  br label %370

; <label>:370:                                    ; preds = %369, %359
  br label %371

; <label>:371:                                    ; preds = %370, %353
  br label %372

; <label>:372:                                    ; preds = %371, %343
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i32 0, i32 0))
  %374 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 1
  %375 = load double, double* %374, align 8
  %376 = fcmp oeq double %375, 0x47EFFFFFE0000000
  br i1 %376, label %377, label %379

; <label>:377:                                    ; preds = %372
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %383

; <label>:379:                                    ; preds = %372
  %380 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 1
  %381 = load double, double* %380, align 8
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), double %381)
  br label %383

; <label>:383:                                    ; preds = %379, %377
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0))
  %385 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 3
  %386 = load double, double* %385, align 8
  %387 = fcmp oeq double %386, 0x47EFFFFFE0000000
  br i1 %387, label %388, label %390

; <label>:388:                                    ; preds = %383
  %389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %394

; <label>:390:                                    ; preds = %383
  %391 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 3
  %392 = load double, double* %391, align 8
  %393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), double %392)
  br label %394

; <label>:394:                                    ; preds = %390, %388
  %395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.49, i32 0, i32 0))
  %396 = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100)
  store %struct.histogram_s* %396, %struct.histogram_s** %13, align 8
  %397 = call %struct.tophit_s* @AllocTophits(i32 200)
  store %struct.tophit_s* %397, %struct.tophit_s** %15, align 8
  %398 = call %struct.tophit_s* @AllocTophits(i32 200)
  store %struct.tophit_s* %398, %struct.tophit_s** %16, align 8
  %399 = load i32, i32* %48, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %413

; <label>:401:                                    ; preds = %394
  %402 = load i32, i32* %44, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %413

; <label>:404:                                    ; preds = %401
  %405 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %406 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %9, align 8
  %407 = load i32, i32* %42, align 4
  %408 = load i32, i32* %41, align 4
  %409 = load i32, i32* %43, align 4
  %410 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %411 = load %struct.tophit_s*, %struct.tophit_s** %15, align 8
  %412 = load %struct.tophit_s*, %struct.tophit_s** %16, align 8
  call void @main_loop_pvm(%struct.plan7_s* %405, %struct.ReadSeqVars* %406, %struct.threshold_s* %37, i32 %407, i32 %408, i32 %409, %struct.histogram_s* %410, %struct.tophit_s* %411, %struct.tophit_s* %412, i32* %29)
  br label %439

; <label>:413:                                    ; preds = %401, %394
  %414 = load i32, i32* %47, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %429

; <label>:416:                                    ; preds = %413
  %417 = load i32, i32* %46, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %429

; <label>:419:                                    ; preds = %416
  %420 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %421 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %9, align 8
  %422 = load i32, i32* %42, align 4
  %423 = load i32, i32* %41, align 4
  %424 = load i32, i32* %43, align 4
  %425 = load i32, i32* %46, align 4
  %426 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %427 = load %struct.tophit_s*, %struct.tophit_s** %15, align 8
  %428 = load %struct.tophit_s*, %struct.tophit_s** %16, align 8
  call void @main_loop_threaded(%struct.plan7_s* %420, %struct.ReadSeqVars* %421, %struct.threshold_s* %37, i32 %422, i32 %423, i32 %424, i32 %425, %struct.histogram_s* %426, %struct.tophit_s* %427, %struct.tophit_s* %428, i32* %29)
  br label %438

; <label>:429:                                    ; preds = %416, %413
  %430 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %431 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %9, align 8
  %432 = load i32, i32* %42, align 4
  %433 = load i32, i32* %41, align 4
  %434 = load i32, i32* %43, align 4
  %435 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %436 = load %struct.tophit_s*, %struct.tophit_s** %15, align 8
  %437 = load %struct.tophit_s*, %struct.tophit_s** %16, align 8
  call void @main_loop_serial(%struct.plan7_s* %430, %struct.ReadSeqVars* %431, %struct.threshold_s* %37, i32 %432, i32 %433, i32 %434, %struct.histogram_s* %435, %struct.tophit_s* %436, %struct.tophit_s* %437, i32* %29)
  br label %438

; <label>:438:                                    ; preds = %429, %419
  br label %439

; <label>:439:                                    ; preds = %438, %404
  %440 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %441 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %440, i32 0, i32 47
  %442 = load i32, i32* %441, align 8
  %443 = and i32 %442, 128
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %461

; <label>:445:                                    ; preds = %439
  %446 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %447 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %448 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %447, i32 0, i32 45
  %449 = load float, float* %448, align 8
  %450 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %451 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %450, i32 0, i32 46
  %452 = load float, float* %451, align 4
  %453 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %454 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %453, i32 0, i32 4
  %455 = load i32, i32* %454, align 4
  %456 = sitofp i32 %455 to float
  %457 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  %458 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 8
  %460 = sitofp i32 %459 to float
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %446, float %449, float %452, float %456, float %460, i32 0)
  br label %461

; <label>:461:                                    ; preds = %445, %439
  %462 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 5
  %463 = load i32, i32* %462, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %468, label %465

; <label>:465:                                    ; preds = %461
  %466 = load i32, i32* %29, align 4
  %467 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 5
  store i32 %466, i32* %467, align 4
  br label %468

; <label>:468:                                    ; preds = %465, %461
  %469 = load i32, i32* %45, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %500

; <label>:471:                                    ; preds = %468
  %472 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %473 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %472, i32 0, i32 0
  %474 = load i8*, i8** %473, align 8
  %475 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %476 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %475, i32 0, i32 47
  %477 = load i32, i32* %476, align 8
  %478 = and i32 %477, 512
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %484

; <label>:480:                                    ; preds = %471
  %481 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %482 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %481, i32 0, i32 1
  %483 = load i8*, i8** %482, align 8
  br label %485

; <label>:484:                                    ; preds = %471
  br label %485

; <label>:485:                                    ; preds = %484, %480
  %486 = phi i8* [ %483, %480 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), %484 ]
  %487 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %488 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %487, i32 0, i32 47
  %489 = load i32, i32* %488, align 8
  %490 = and i32 %489, 2
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %496

; <label>:492:                                    ; preds = %485
  %493 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %494 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %493, i32 0, i32 2
  %495 = load i8*, i8** %494, align 8
  br label %497

; <label>:496:                                    ; preds = %485
  br label %497

; <label>:497:                                    ; preds = %496, %492
  %498 = phi i8* [ %495, %492 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), %496 ]
  %499 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0), i8* %474, i8* %486, i8* %498)
  br label %531

; <label>:500:                                    ; preds = %468
  %501 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %502 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %501, i32 0, i32 0
  %503 = load i8*, i8** %502, align 8
  %504 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* %503)
  %505 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %506 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %505, i32 0, i32 47
  %507 = load i32, i32* %506, align 8
  %508 = and i32 %507, 512
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %514

; <label>:510:                                    ; preds = %500
  %511 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %512 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %511, i32 0, i32 1
  %513 = load i8*, i8** %512, align 8
  br label %515

; <label>:514:                                    ; preds = %500
  br label %515

; <label>:515:                                    ; preds = %514, %510
  %516 = phi i8* [ %513, %510 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), %514 ]
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* %516)
  %518 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %519 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %518, i32 0, i32 47
  %520 = load i32, i32* %519, align 8
  %521 = and i32 %520, 2
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %527

; <label>:523:                                    ; preds = %515
  %524 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %525 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %524, i32 0, i32 2
  %526 = load i8*, i8** %525, align 8
  br label %528

; <label>:527:                                    ; preds = %515
  br label %528

; <label>:528:                                    ; preds = %527, %523
  %529 = phi i8* [ %526, %523 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), %527 ]
  %530 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i8* %529)
  br label %531

; <label>:531:                                    ; preds = %528, %497
  %532 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  %533 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %532, i32 0, i32 47
  %534 = load i32, i32* %533, align 8
  %535 = and i32 %534, 128
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %539

; <label>:537:                                    ; preds = %531
  %538 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.56, i32 0, i32 0))
  br label %541

; <label>:539:                                    ; preds = %531
  %540 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.57, i32 0, i32 0))
  br label %541

; <label>:541:                                    ; preds = %539, %537
  %542 = load %struct.tophit_s*, %struct.tophit_s** %15, align 8
  call void @FullSortTophits(%struct.tophit_s* %542)
  %543 = load %struct.tophit_s*, %struct.tophit_s** %15, align 8
  %544 = call i32 @TophitsMaxName(%struct.tophit_s* %543)
  %545 = icmp sgt i32 8, %544
  br i1 %545, label %546, label %547

; <label>:546:                                    ; preds = %541
  br label %550

; <label>:547:                                    ; preds = %541
  %548 = load %struct.tophit_s*, %struct.tophit_s** %15, align 8
  %549 = call i32 @TophitsMaxName(%struct.tophit_s* %548)
  br label %550

; <label>:550:                                    ; preds = %547, %546
  %551 = phi i32 [ 8, %546 ], [ %549, %547 ]
  store i32 %551, i32* %33, align 4
  %552 = load i32, i32* %33, align 4
  %553 = sub nsw i32 52, %552
  %554 = icmp sgt i32 %553, 11
  br i1 %554, label %555, label %558

; <label>:555:                                    ; preds = %550
  %556 = load i32, i32* %33, align 4
  %557 = sub nsw i32 52, %556
  br label %559

; <label>:558:                                    ; preds = %550
  br label %559

; <label>:559:                                    ; preds = %558, %555
  %560 = phi i32 [ %557, %555 ], [ 11, %558 ]
  store i32 %560, i32* %34, align 4
  %561 = load %struct.tophit_s*, %struct.tophit_s** %16, align 8
  call void @FullSortTophits(%struct.tophit_s* %561)
  %562 = load %struct.tophit_s*, %struct.tophit_s** %16, align 8
  %563 = call i32 @TophitsMaxName(%struct.tophit_s* %562)
  %564 = icmp sgt i32 8, %563
  br i1 %564, label %565, label %566

; <label>:565:                                    ; preds = %559
  br label %569

; <label>:566:                                    ; preds = %559
  %567 = load %struct.tophit_s*, %struct.tophit_s** %16, align 8
  %568 = call i32 @TophitsMaxName(%struct.tophit_s* %567)
  br label %569

; <label>:569:                                    ; preds = %566, %565
  %570 = phi i32 [ 8, %565 ], [ %568, %566 ]
  store i32 %570, i32* %33, align 4
  %571 = load i32, i32* %36, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %650

; <label>:573:                                    ; preds = %569
  %574 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0))
  store i32 0, i32* %11, align 4
  store i32 0, i32* %35, align 4
  br label %575

; <label>:575:                                    ; preds = %634, %573
  %576 = load i32, i32* %11, align 4
  %577 = load %struct.tophit_s*, %struct.tophit_s** %16, align 8
  %578 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %577, i32 0, i32 3
  %579 = load i32, i32* %578, align 4
  %580 = icmp slt i32 %576, %579
  br i1 %580, label %581, label %637

; <label>:581:                                    ; preds = %575
  %582 = load i32, i32* %35, align 4
  %583 = load i32, i32* %36, align 4
  %584 = icmp eq i32 %582, %583
  br i1 %584, label %585, label %586

; <label>:585:                                    ; preds = %581
  br label %637

; <label>:586:                                    ; preds = %581
  %587 = load %struct.tophit_s*, %struct.tophit_s** %16, align 8
  %588 = load i32, i32* %11, align 4
  call void @GetRankedHit(%struct.tophit_s* %587, i32 %588, double* %18, float* %17, double* %20, float* %21, i8** %26, i8** null, i8** null, i32* %22, i32* %23, i32* %28, i32* %24, i32* %25, i32* null, i32* %31, i32* %32, %struct.fancyali_s** %14)
  %589 = load double, double* %18, align 8
  %590 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 5
  %591 = load i32, i32* %590, align 4
  %592 = sitofp i32 %591 to double
  %593 = fmul double %589, %592
  store double %593, double* %19, align 8
  %594 = load double, double* %20, align 8
  %595 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 5
  %596 = load i32, i32* %595, align 4
  %597 = sitofp i32 %596 to double
  %598 = fmul double %594, %597
  %599 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 1
  %600 = load double, double* %599, align 8
  %601 = fcmp ogt double %598, %600
  br i1 %601, label %607, label %602

; <label>:602:                                    ; preds = %586
  %603 = load float, float* %21, align 4
  %604 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 0
  %605 = load float, float* %604, align 8
  %606 = fcmp olt float %603, %605
  br i1 %606, label %607, label %608

; <label>:607:                                    ; preds = %602, %586
  br label %634

; <label>:608:                                    ; preds = %602
  %609 = load double, double* %19, align 8
  %610 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 3
  %611 = load double, double* %610, align 8
  %612 = fcmp ole double %609, %611
  br i1 %612, label %613, label %632

; <label>:613:                                    ; preds = %608
  %614 = load float, float* %17, align 4
  %615 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %37, i32 0, i32 2
  %616 = load float, float* %615, align 8
  %617 = fcmp oge float %614, %616
  br i1 %617, label %618, label %632

; <label>:618:                                    ; preds = %613
  %619 = load i8*, i8** %26, align 8
  %620 = load i32, i32* %31, align 4
  %621 = load i32, i32* %32, align 4
  %622 = load i32, i32* %22, align 4
  %623 = load i32, i32* %23, align 4
  %624 = load float, float* %17, align 4
  %625 = fpext float %624 to double
  %626 = load double, double* %19, align 8
  %627 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.59, i32 0, i32 0), i8* %619, i32 %620, i32 %621, i32 %622, i32 %623, double %625, double %626)
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %629 = load %struct.fancyali_s*, %struct.fancyali_s** %14, align 8
  call void @PrintFancyAli(%struct._IO_FILE* %628, %struct.fancyali_s* %629)
  %630 = load i32, i32* %35, align 4
  %631 = add nsw i32 %630, 1
  store i32 %631, i32* %35, align 4
  br label %632

; <label>:632:                                    ; preds = %618, %613, %608
  br label %633

; <label>:633:                                    ; preds = %632
  br label %634

; <label>:634:                                    ; preds = %633, %607
  %635 = load i32, i32* %11, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %11, align 4
  br label %575

; <label>:637:                                    ; preds = %585, %575
  %638 = load i32, i32* %35, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %642

; <label>:640:                                    ; preds = %637
  %641 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i32 0, i32 0))
  br label %642

; <label>:642:                                    ; preds = %640, %637
  %643 = load i32, i32* %35, align 4
  %644 = load i32, i32* %36, align 4
  %645 = icmp eq i32 %643, %644
  br i1 %645, label %646, label %649

; <label>:646:                                    ; preds = %642
  %647 = load i32, i32* %36, align 4
  %648 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0), i32 %647)
  br label %649

; <label>:649:                                    ; preds = %646, %642
  br label %650

; <label>:650:                                    ; preds = %649, %569
  %651 = load i32, i32* %29, align 4
  %652 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0), i32 %651)
  %653 = load %struct.histogram_s*, %struct.histogram_s** %13, align 8
  call void @FreeHistogram(%struct.histogram_s* %653)
  %654 = load %struct.hmmfile_s*, %struct.hmmfile_s** %7, align 8
  call void @HMMFileClose(%struct.hmmfile_s* %654)
  %655 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %9, align 8
  call void @SeqfileClose(%struct.ReadSeqVars* %655)
  %656 = load %struct.tophit_s*, %struct.tophit_s** %15, align 8
  call void @FreeTophits(%struct.tophit_s* %656)
  %657 = load %struct.tophit_s*, %struct.tophit_s** %16, align 8
  call void @FreeTophits(%struct.tophit_s* %657)
  %658 = load %struct.plan7_s*, %struct.plan7_s** %12, align 8
  call void @FreePlan7(%struct.plan7_s* %658)
  call void @SqdClean()
  store i32 0, i32* %3, align 4
  br label %659

; <label>:659:                                    ; preds = %650, %51
  %660 = load i32, i32* %3, align 4
  ret i32 %660
}

declare i32 @hmmcalibrate(i32, i8**) #1

declare i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

declare i32 @String2SeqfileFormat(i8*) #1

declare void @Die(i8*, ...) #1

declare void @HMMERBanner(%struct._IO_FILE*, i8*) #1

declare i32 @puts(i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @Strparse(i8*, i8*, i32) #1

declare %struct.ReadSeqVars* @SeqfileOpen(i8*, i32, i8*) #1

declare %struct.hmmfile_s* @HMMFileOpen(i8*, i8*) #1

declare i32 @HMMFileRead(%struct.hmmfile_s*, %struct.plan7_s**) #1

declare void @P7Logoddsify(%struct.plan7_s*, i32) #1

declare i32 @SetAutocuts(%struct.threshold_s*, %struct.plan7_s*) #1

declare i32 @printf(i8*, ...) #1

declare %struct.histogram_s* @AllocHistogram(i32, i32, i32) #1

declare %struct.tophit_s* @AllocTophits(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_loop_pvm(%struct.plan7_s*, %struct.ReadSeqVars*, %struct.threshold_s*, i32, i32, i32, %struct.histogram_s*, %struct.tophit_s*, %struct.tophit_s*, i32*) #0 {
  %11 = alloca %struct.plan7_s*, align 8
  %12 = alloca %struct.ReadSeqVars*, align 8
  %13 = alloca %struct.threshold_s*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.histogram_s*, align 8
  %18 = alloca %struct.tophit_s*, align 8
  %19 = alloca %struct.tophit_s*, align 8
  %20 = alloca i32*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %11, align 8
  store %struct.ReadSeqVars* %1, %struct.ReadSeqVars** %12, align 8
  store %struct.threshold_s* %2, %struct.threshold_s** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.histogram_s* %6, %struct.histogram_s** %17, align 8
  store %struct.tophit_s* %7, %struct.tophit_s** %18, align 8
  store %struct.tophit_s* %8, %struct.tophit_s** %19, align 8
  store i32* %9, i32** %20, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_loop_threaded(%struct.plan7_s*, %struct.ReadSeqVars*, %struct.threshold_s*, i32, i32, i32, i32, %struct.histogram_s*, %struct.tophit_s*, %struct.tophit_s*, i32*) #0 {
  %12 = alloca %struct.plan7_s*, align 8
  %13 = alloca %struct.ReadSeqVars*, align 8
  %14 = alloca %struct.threshold_s*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.histogram_s*, align 8
  %20 = alloca %struct.tophit_s*, align 8
  %21 = alloca %struct.tophit_s*, align 8
  %22 = alloca i32*, align 8
  store %struct.plan7_s* %0, %struct.plan7_s** %12, align 8
  store %struct.ReadSeqVars* %1, %struct.ReadSeqVars** %13, align 8
  store %struct.threshold_s* %2, %struct.threshold_s** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store %struct.histogram_s* %7, %struct.histogram_s** %19, align 8
  store %struct.tophit_s* %8, %struct.tophit_s** %20, align 8
  store %struct.tophit_s* %9, %struct.tophit_s** %21, align 8
  store i32* %10, i32** %22, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_loop_serial(%struct.plan7_s*, %struct.ReadSeqVars*, %struct.threshold_s*, i32, i32, i32, %struct.histogram_s*, %struct.tophit_s*, %struct.tophit_s*, i32*) #0 {
  %11 = alloca %struct.plan7_s*, align 8
  %12 = alloca %struct.ReadSeqVars*, align 8
  %13 = alloca %struct.threshold_s*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.histogram_s*, align 8
  %18 = alloca %struct.tophit_s*, align 8
  %19 = alloca %struct.tophit_s*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.dpmatrix_s*, align 8
  %22 = alloca %struct.p7trace_s*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.seqinfo_s, align 8
  %26 = alloca float, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  store %struct.plan7_s* %0, %struct.plan7_s** %11, align 8
  store %struct.ReadSeqVars* %1, %struct.ReadSeqVars** %12, align 8
  store %struct.threshold_s* %2, %struct.threshold_s** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.histogram_s* %6, %struct.histogram_s** %17, align 8
  store %struct.tophit_s* %7, %struct.tophit_s** %18, align 8
  store %struct.tophit_s* %8, %struct.tophit_s** %19, align 8
  store i32* %9, i32** %20, align 8
  %30 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %31 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 20
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %32, i32 25, i32 0)
  store %struct.dpmatrix_s* %33, %struct.dpmatrix_s** %21, align 8
  store i32 0, i32* %29, align 4
  br label %34

; <label>:34:                                     ; preds = %172, %45, %10
  %35 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %12, align 8
  %36 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %12, align 8
  %37 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %36, i32 0, i32 20
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ReadSeq(%struct.ReadSeqVars* %35, i32 %38, i8** %23, %struct.seqinfo_s* %25)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %178

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %41
  br label %34

; <label>:46:                                     ; preds = %41
  %47 = load i32, i32* %29, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %29, align 4
  %49 = load i8*, i8** %23, align 8
  %50 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @DigitizeSequence(i8* %49, i32 %51)
  store i8* %52, i8** %24, align 8
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* @Alphabet_type, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %63

; <label>:58:                                     ; preds = %55
  %59 = load i8*, i8** %24, align 8
  %60 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @XNU(i8* %59, i32 %61)
  br label %63

; <label>:63:                                     ; preds = %58, %55, %46
  %64 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %67 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 20
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @P7ViterbiSize(i32 %65, i32 %68)
  %70 = icmp sle i32 %69, 1000
  br i1 %70, label %71, label %78

; <label>:71:                                     ; preds = %63
  %72 = load i8*, i8** %24, align 8
  %73 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %76 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %21, align 8
  %77 = call float @P7Viterbi(i8* %72, i32 %74, %struct.plan7_s* %75, %struct.dpmatrix_s* %76, %struct.p7trace_s** %22)
  store float %77, float* %26, align 4
  br label %85

; <label>:78:                                     ; preds = %63
  %79 = load i8*, i8** %24, align 8
  %80 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %83 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %21, align 8
  %84 = call float @P7SmallViterbi(i8* %79, i32 %81, %struct.plan7_s* %82, %struct.dpmatrix_s* %83, %struct.p7trace_s** %22)
  store float %84, float* %26, align 4
  br label %85

; <label>:85:                                     ; preds = %78, %71
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

; <label>:88:                                     ; preds = %85
  %89 = load i8*, i8** %24, align 8
  %90 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %93 = call float @P7Forward(i8* %89, i32 %91, %struct.plan7_s* %92, %struct.dpmatrix_s** null)
  store float %93, float* %26, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

; <label>:96:                                     ; preds = %88
  %97 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %98 = load %struct.p7trace_s*, %struct.p7trace_s** %22, align 8
  %99 = load i8*, i8** %24, align 8
  %100 = call float @TraceScoreCorrection(%struct.plan7_s* %97, %struct.p7trace_s* %98, i8* %99)
  %101 = load float, float* %26, align 4
  %102 = fsub float %101, %100
  store float %102, float* %26, align 4
  br label %103

; <label>:103:                                    ; preds = %96, %88
  br label %104

; <label>:104:                                    ; preds = %103, %85
  %105 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %106 = load float, float* %26, align 4
  %107 = call double @PValue(%struct.plan7_s* %105, float %106)
  store double %107, double* %27, align 8
  %108 = load %struct.threshold_s*, %struct.threshold_s** %13, align 8
  %109 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

; <label>:112:                                    ; preds = %104
  %113 = load %struct.threshold_s*, %struct.threshold_s** %13, align 8
  %114 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = sitofp i32 %115 to double
  %117 = load double, double* %27, align 8
  %118 = fmul double %116, %117
  br label %124

; <label>:119:                                    ; preds = %104
  %120 = load i32, i32* %29, align 4
  %121 = sitofp i32 %120 to double
  %122 = load double, double* %27, align 8
  %123 = fmul double %121, %122
  br label %124

; <label>:124:                                    ; preds = %119, %112
  %125 = phi double [ %118, %112 ], [ %123, %119 ]
  store double %125, double* %28, align 8
  %126 = load float, float* %26, align 4
  %127 = load %struct.threshold_s*, %struct.threshold_s** %13, align 8
  %128 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %127, i32 0, i32 0
  %129 = load float, float* %128, align 8
  %130 = fcmp oge float %126, %129
  br i1 %130, label %131, label %172

; <label>:131:                                    ; preds = %124
  %132 = load double, double* %28, align 8
  %133 = load %struct.threshold_s*, %struct.threshold_s** %13, align 8
  %134 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %133, i32 0, i32 1
  %135 = load double, double* %134, align 8
  %136 = fcmp ole double %132, %135
  br i1 %136, label %137, label %172

; <label>:137:                                    ; preds = %131
  %138 = load %struct.tophit_s*, %struct.tophit_s** %18, align 8
  %139 = load %struct.tophit_s*, %struct.tophit_s** %19, align 8
  %140 = load %struct.p7trace_s*, %struct.p7trace_s** %22, align 8
  %141 = load %struct.plan7_s*, %struct.plan7_s** %11, align 8
  %142 = load i8*, i8** %24, align 8
  %143 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 1
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

; <label>:151:                                    ; preds = %137
  %152 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 3
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %152, i32 0, i32 0
  br label %155

; <label>:154:                                    ; preds = %137
  br label %155

; <label>:155:                                    ; preds = %154, %151
  %156 = phi i8* [ %153, %151 ], [ null, %154 ]
  %157 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %25, i32 0, i32 4
  %163 = getelementptr inbounds [128 x i8], [128 x i8]* %162, i32 0, i32 0
  br label %165

; <label>:164:                                    ; preds = %155
  br label %165

; <label>:165:                                    ; preds = %164, %161
  %166 = phi i8* [ %163, %161 ], [ null, %164 ]
  %167 = load i32, i32* %14, align 4
  %168 = load float, float* %26, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.threshold_s*, %struct.threshold_s** %13, align 8
  %171 = call float @PostprocessSignificantHit(%struct.tophit_s* %138, %struct.tophit_s* %139, %struct.p7trace_s* %140, %struct.plan7_s* %141, i8* %142, i32 %144, i8* %146, i8* %156, i8* %166, i32 %167, float %168, i32 %169, %struct.threshold_s* %170, i32 0)
  store float %171, float* %26, align 4
  br label %172

; <label>:172:                                    ; preds = %165, %131, %124
  %173 = load %struct.histogram_s*, %struct.histogram_s** %17, align 8
  %174 = load float, float* %26, align 4
  call void @AddToHistogram(%struct.histogram_s* %173, float %174)
  %175 = load i8*, i8** %23, align 8
  call void @FreeSequence(i8* %175, %struct.seqinfo_s* %25)
  %176 = load %struct.p7trace_s*, %struct.p7trace_s** %22, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %176)
  %177 = load i8*, i8** %24, align 8
  call void @free(i8* %177) #7
  br label %34

; <label>:178:                                    ; preds = %34
  %179 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %21, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %179)
  %180 = load i32, i32* %29, align 4
  %181 = load i32*, i32** %20, align 8
  store i32 %180, i32* %181, align 4
  ret void
}

declare void @ExtremeValueSetHistogram(%struct.histogram_s*, float, float, float, float, i32) #1

declare void @FullSortTophits(%struct.tophit_s*) #1

declare i32 @TophitsMaxName(%struct.tophit_s*) #1

declare void @GetRankedHit(%struct.tophit_s*, i32, double*, float*, double*, float*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.fancyali_s**) #1

declare void @PrintFancyAli(%struct._IO_FILE*, %struct.fancyali_s*) #1

declare void @FreeHistogram(%struct.histogram_s*) #1

declare void @HMMFileClose(%struct.hmmfile_s*) #1

declare void @SeqfileClose(%struct.ReadSeqVars*) #1

declare void @FreeTophits(%struct.tophit_s*) #1

declare void @FreePlan7(%struct.plan7_s*) #1

declare void @SqdClean() #1

declare %struct.dpmatrix_s* @CreatePlan7Matrix(i32, i32, i32, i32) #1

declare i32 @ReadSeq(%struct.ReadSeqVars*, i32, i8**, %struct.seqinfo_s*) #1

declare i8* @DigitizeSequence(i8*, i32) #1

declare i32 @XNU(i8*, i32) #1

declare i32 @P7ViterbiSize(i32, i32) #1

declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #1

declare float @P7SmallViterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #1

declare float @P7Forward(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**) #1

declare float @TraceScoreCorrection(%struct.plan7_s*, %struct.p7trace_s*, i8*) #1

declare double @PValue(%struct.plan7_s*, float) #1

declare float @PostprocessSignificantHit(%struct.tophit_s*, %struct.tophit_s*, %struct.p7trace_s*, %struct.plan7_s*, i8*, i32, i8*, i8*, i8*, i32, float, i32, %struct.threshold_s*, i32) #1

declare void @AddToHistogram(%struct.histogram_s*, float) #1

declare void @FreeSequence(i8*, %struct.seqinfo_s*) #1

declare void @P7FreeTrace(%struct.p7trace_s*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
