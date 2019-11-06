; ModuleID = 'prior.c'
source_filename = "prior.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [8 x i8] c"prior.c\00", align 1
@Alphabet_size = external global i32, align 4
@Alphabet_type = external global i32, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Can't set prior; alphabet type not set yet\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to open HMMER prior file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DIRICHLET\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"No such prior strategy %s; failed to parse file %s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"AMINO\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"HMM and/or sequences are DNA/RNA; can't use protein prior %s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"NUCLEIC\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"HMM and/or sequences are protein; can't use DNA/RNA prior %s\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Alphabet \22%s\22 in prior file %s isn't valid.\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"%d is bad; need at least one state transition mixture component\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"%d is bad, too many transition components (MAXDCHLET = %d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"%d is bad; need at least one match emission mixture component\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"%d is bad; too many match components (MAXDCHLET = %d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"%d is bad; need at least one insert emission mixture component\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"%d is bad; too many insert components (MAXDCHLET = %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"PAM prior is only valid for protein sequences\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"PAM prior may only be applied over an existing Dirichlet prior\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"PAM prior requires that the insert emissions be a single Dirichlet\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"BLASTMAT\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Failed to open PAM scoring matrix file %s\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Failed to parse PAM scoring matrix file %s\00", align 1
@Alphabet = external global [25 x i8], align 16
@aafq = external global [0 x float], align 4
@.str.24 = private unnamed_addr constant [35 x i8] c"Failed to open null model file %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"Alphabet type conflict; null model in %s is inappropriate\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"%s is not in HMMER null model file format\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"X-PRT annotation out of range\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"X-PRM annotation out of range\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"X-PRI annotation out of range\00", align 1
@default_amino_prior.defmq = internal global [9 x float] [float 0x3FC6CBAFA0000000, float 0x3FACF97EE0000000, float 0x3FB894B520000000, float 0x3FB3FFE380000000, float 0x3FB5601B00000000, float 0x3FB72542A0000000, float 0x3FBD4DC660000000, float 0x3FB1766BA0000000, float 0x3FCE06E1A0000000], align 16
@default_amino_prior.defm = internal global [9 x [20 x float]] [[20 x float] [float 0x3FD152AC80000000, float 0x3FA466F500000000, float 0x3F91FF7160000000, float 0x3F90CF1800000000, float 0x3F8D388A80000000, float 0x3FC0E29FA0000000, float 0x3F896073E0000000, float 0x3F97243140000000, float 0x3F94D8BA40000000, float 0x3F9F76E620000000, float 0x3F8F5D7880000000, float 0x3FA8BA8400000000, float 0x3FAB8C1120000000, float 0x3F95286B60000000, float 0x3F982DBE80000000, float 0x3FCBAAB480000000, float 0x3FC2D84D40000000, float 0x3FB0C08B80000000, float 0x3F6EC918E0000000, float 0x3F83B42CC0000000], [20 x float] [float 0x3F95FAEBC0000000, float 0x3F85182AA0000000, float 0x3F880BAA60000000, float 0x3F8649D380000000, float 0x3FD8AE8180000000, float 0x3F90CF5B20000000, float 0x3FB38194C0000000, float 0x3FA216A480000000, float 0x3F8C829D00000000, float 0x3FB7F0BAE0000000, float 0x3F969014C0000000, float 0x3F9D477BC0000000, float 0x3F8ACCD540000000, float 0x3F97903220000000, float 0x3F93519BE0000000, float 0x3F9DDB1200000000, float 0x3F9296B340000000, float 0x3FA27BB300000000, float 0x3FB25F84C0000000, float 0x3FDADB65E0000000], [20 x float] [float 0x3FE1F778E0000000, float 0x3FA744F5E0000000, float 0x3FDC0E3040000000, float 0x3FE8740E60000000, float 0x3FB65D7CC0000000, float 0x3FD09552E0000000, float 0x3FCB832760000000, float 0x3FC2ADC4C0000000, float 0x3FE863F9A0000000, float 0x3FCFA82E80000000, float 0x3FBE60A200000000, float 0x3FDC4295A0000000, float 0x3FC6609140000000, float 0x3FE0FCA420000000, float 0x3FDDCB3A20000000, float 0x3FE2AB3AA0000000, float 0x3FDC847B20000000, float 0x3FCD0FF980000000, float 0x3F9E37DEA0000000, float 0x3FBEFFC120000000], [20 x float] [float 0x3FB1F4E440000000, float 0x3F86D09180000000, float 0x3F93F24D80000000, float 0x3FB83B70E0000000, float 0x3F8AF4ADC0000000, float 0x3FA8986FC0000000, float 0x3FB3B645A0000000, float 0x3FA0DD6160000000, float 0x3FE273D3A0000000, float 0x3FB281CB40000000, float 0x3F9CEAF260000000, float 0x3FB4934260000000, float 0x3FA3484D80000000, float 0x3FC7AF4AE0000000, float 0x3FE0379100000000, float 0x3FB2E019C0000000, float 0x3FB2538680000000, float 0x3FA5C6C120000000, float 0x3F870C5640000000, float 0x3F9D698FE0000000], [20 x float] [float 0x3FA50B73E0000000, float 0x3F8E4C5120000000, float 0x3F76FA82E0000000, float 0x3F84EC2040000000, float 0x3FC3A93B00000000, float 0x3F7FEFBF40000000, float 0x3F7D638860000000, float 0x3FD32D3840000000, float 0x3F86380020000000, float 0x3FEFFB7620000000, float 0x3FCAE77920000000, float 0x3F7918A000000000, float 0x3F8AAAC100000000, float 0x3F9445ED40000000, float 0x3F8DB6E500000000, float 0x3F88AD2560000000, float 0x3FA2543F20000000, float 0x3FC70D0680000000, float 0x3F8A1986C0000000, float 0x3F9B19E740000000], [20 x float] [float 0x3FBD986BA0000000, float 0x3FA3239A40000000, float 0x3F896C82E0000000, float 0x3F929D8400000000, float 0x3FAA82A560000000, float 0x3F91AB4B80000000, float 0x3F741D8E80000000, float 0x3FE9800EA0000000, float 0x3F917BD8C0000000, float 0x3FD24B7F60000000, float 0x3FB3685980000000, float 0x3F8DCB5780000000, float 0x3F8EE88E00000000, float 0x3F874F7220000000, float 0x3F8A005C40000000, float 0x3F9C3222A0000000, float 0x3FB69CFDE0000000, float 0x3FEE380880000000, float 0x3F71E96C40000000, float 0x3F91248D80000000], [20 x float] [float 0x3FB7ED0F60000000, float 0x3F73671AC0000000, float 0x3FD8C8BCA0000000, float 0x3FD64306E0000000, float 0x3F8629D840000000, float 0x3FBB1AC140000000, float 0x3FA97C3D60000000, float 0x3F8EA4EBE0000000, float 0x3FB82278E0000000, float 0x3F9C6D6120000000, float 0x3F848FDA00000000, float 0x3FC80C1760000000, float 0x3FA99BF5A0000000, float 0x3FBC2B8420000000, float 0x3FA3CC4AC0000000, float 0x3FBE95A6C0000000, float 0x3FB0D86660000000, float 0x3F9A0A5260000000, float 0x3F6A565800000000, float 0x3F93311A60000000], [20 x float] [float 0x3FDCF05EA0000000, float 0x3FBD574700000000, float 0x3FAFFAC1E0000000, float 0x3FBD9EA580000000, float 0x3FD2311620000000, float 0x3FC1F23460000000, float 0x3FB9B10FE0000000, float 0x3FE19B7C00000000, float 0x3FC26E6DA0000000, float 0x3FE66BB780000000, float 0x3FD1B37CA0000000, float 0x3FBE5A89C0000000, float 0x3FB8F3CB40000000, float 0x3FC036D220000000, float 0x3FC2629960000000, float 0x3FD1DADB80000000, float 0x3FD6F15E80000000, float 0x3FE52D0E60000000, float 0x3FAF8140E0000000, float 0x3FC9850E00000000], [20 x float] [float 0x3F75454160000000, float 0x3F708B32C0000000, float 0x3F7B888720000000, float 0x3F79125560000000, float 0x3F6C68EC60000000, float 0x3F91565C20000000, float 0x3F6DE05040000000, float 0x3F61E42E20000000, float 0x3F748ECD80000000, float 0x3F7888F860000000, float 0x3F582235C0000000, float 0x3F7107FAA0000000, float 0x3F828B6D80000000, float 0x3F6DBCA960000000, float 0x3F7AF6C6A0000000, float 0x3F69FC2A80000000, float 0x3F6E3A7DA0000000, float 0x3F684E4000000000, float 0x3F66B54E20000000, float 0x3F6600F340000000]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define %struct.p7prior_s* @P7AllocPrior() #0 {
  %1 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 37, i64 40016)
  %2 = bitcast i8* %1 to %struct.p7prior_s*
  ret %struct.p7prior_s* %2
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7FreePrior(%struct.p7prior_s*) #0 {
  %2 = alloca %struct.p7prior_s*, align 8
  store %struct.p7prior_s* %0, %struct.p7prior_s** %2, align 8
  %3 = load %struct.p7prior_s*, %struct.p7prior_s** %2, align 8
  %4 = bitcast %struct.p7prior_s* %3 to i8*
  call void @free(i8* %4) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define %struct.p7prior_s* @P7LaplacePrior() #0 {
  %1 = alloca %struct.p7prior_s*, align 8
  %2 = call %struct.p7prior_s* @P7AllocPrior()
  store %struct.p7prior_s* %2, %struct.p7prior_s** %1, align 8
  %3 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %4 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %6 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %5, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %8 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %7, i32 0, i32 2
  %9 = getelementptr inbounds [200 x float], [200 x float]* %8, i64 0, i64 0
  store float 1.000000e+00, float* %9, align 4
  %10 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %11 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %10, i32 0, i32 3
  %12 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %11, i64 0, i64 0
  %13 = getelementptr inbounds [7 x float], [7 x float]* %12, i32 0, i32 0
  call void @FSet(float* %13, i32 8, float 1.000000e+00)
  %14 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %15 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %14, i32 0, i32 4
  store i32 1, i32* %15, align 4
  %16 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %17 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %16, i32 0, i32 5
  %18 = getelementptr inbounds [200 x float], [200 x float]* %17, i64 0, i64 0
  store float 1.000000e+00, float* %18, align 4
  %19 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %20 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %19, i32 0, i32 6
  %21 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %20, i64 0, i64 0
  %22 = getelementptr inbounds [20 x float], [20 x float]* %21, i32 0, i32 0
  %23 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %22, i32 %23, float 1.000000e+00)
  %24 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %25 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %24, i32 0, i32 7
  store i32 1, i32* %25, align 4
  %26 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %27 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %26, i32 0, i32 8
  %28 = getelementptr inbounds [200 x float], [200 x float]* %27, i64 0, i64 0
  store float 1.000000e+00, float* %28, align 4
  %29 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %30 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %29, i32 0, i32 9
  %31 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %30, i64 0, i64 0
  %32 = getelementptr inbounds [20 x float], [20 x float]* %31, i32 0, i32 0
  %33 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %32, i32 %33, float 1.000000e+00)
  %34 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  ret %struct.p7prior_s* %34
}

declare void @FSet(float*, i32, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.p7prior_s* @P7DefaultPrior() #0 {
  %1 = alloca %struct.p7prior_s*, align 8
  %2 = load i32, i32* @Alphabet_type, align 4
  switch i32 %2, label %8 [
    i32 3, label %3
    i32 2, label %5
    i32 0, label %7
  ]

; <label>:3:                                      ; preds = %0
  %4 = call %struct.p7prior_s* @default_amino_prior()
  store %struct.p7prior_s* %4, %struct.p7prior_s** %1, align 8
  br label %9

; <label>:5:                                      ; preds = %0
  %6 = call %struct.p7prior_s* @default_nucleic_prior()
  store %struct.p7prior_s* %6, %struct.p7prior_s** %1, align 8
  br label %9

; <label>:7:                                      ; preds = %0
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  br label %8

; <label>:8:                                      ; preds = %7, %0
  store %struct.p7prior_s* null, %struct.p7prior_s** %1, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %5, %3
  %10 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  ret %struct.p7prior_s* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p7prior_s* @default_amino_prior() #0 {
  %1 = alloca %struct.p7prior_s*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.p7prior_s* @P7AllocPrior()
  store %struct.p7prior_s* %4, %struct.p7prior_s** %1, align 8
  %5 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %6 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %8 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %7, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %10 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %9, i32 0, i32 2
  %11 = getelementptr inbounds [200 x float], [200 x float]* %10, i64 0, i64 0
  store float 1.000000e+00, float* %11, align 4
  %12 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %13 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %12, i32 0, i32 3
  %14 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %13, i64 0, i64 0
  %15 = getelementptr inbounds [7 x float], [7 x float]* %14, i64 0, i64 0
  store float 0x3FE967A100000000, float* %15, align 4
  %16 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %17 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %16, i32 0, i32 3
  %18 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %17, i64 0, i64 0
  %19 = getelementptr inbounds [7 x float], [7 x float]* %18, i64 0, i64 1
  store float 0x3F9C779A60000000, float* %19, align 4
  %20 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %21 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %20, i32 0, i32 3
  %22 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %21, i64 0, i64 0
  %23 = getelementptr inbounds [7 x float], [7 x float]* %22, i64 0, i64 2
  store float 0x3F8BA5E360000000, float* %23, align 4
  %24 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %25 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %24, i32 0, i32 3
  %26 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %25, i64 0, i64 0
  %27 = getelementptr inbounds [7 x float], [7 x float]* %26, i64 0, i64 3
  store float 0x3FC3DA5120000000, float* %27, align 4
  %28 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %29 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %28, i32 0, i32 3
  %30 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %29, i64 0, i64 0
  %31 = getelementptr inbounds [7 x float], [7 x float]* %30, i64 0, i64 4
  store float 0x3FC1096BC0000000, float* %31, align 4
  %32 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %33 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %32, i32 0, i32 3
  %34 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %33, i64 0, i64 0
  %35 = getelementptr inbounds [7 x float], [7 x float]* %34, i64 0, i64 5
  store float 0x3FECCE7040000000, float* %35, align 4
  %36 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %37 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %36, i32 0, i32 3
  %38 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %37, i64 0, i64 0
  %39 = getelementptr inbounds [7 x float], [7 x float]* %38, i64 0, i64 6
  store float 0x3FE20418A0000000, float* %39, align 4
  %40 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %41 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %40, i32 0, i32 4
  store i32 9, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %42

; <label>:42:                                     ; preds = %81, %0
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %45 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %84

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [9 x float], [9 x float]* @default_amino_prior.defmq, i64 0, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %54 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %53, i32 0, i32 5
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [200 x float], [200 x float]* %54, i64 0, i64 %56
  store float %52, float* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

; <label>:58:                                     ; preds = %77, %48
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 20
  br i1 %60, label %61, label %80

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [9 x [20 x float]], [9 x [20 x float]]* @default_amino_prior.defm, i64 0, i64 %63
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [20 x float], [20 x float]* %64, i64 0, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %70 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %69, i32 0, i32 6
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %70, i64 0, i64 %72
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [20 x float], [20 x float]* %73, i64 0, i64 %75
  store float %68, float* %76, align 4
  br label %77

; <label>:77:                                     ; preds = %61
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %58

; <label>:80:                                     ; preds = %58
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %42

; <label>:84:                                     ; preds = %42
  %85 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %86 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %85, i32 0, i32 7
  store i32 1, i32* %86, align 4
  %87 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %88 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %87, i32 0, i32 8
  %89 = getelementptr inbounds [200 x float], [200 x float]* %88, i64 0, i64 0
  store float 1.000000e+00, float* %89, align 4
  %90 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %91 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %90, i32 0, i32 9
  %92 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %91, i64 0, i64 0
  %93 = getelementptr inbounds [20 x float], [20 x float]* %92, i64 0, i64 0
  store float 6.810000e+02, float* %93, align 4
  %94 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %95 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %94, i32 0, i32 9
  %96 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %95, i64 0, i64 0
  %97 = getelementptr inbounds [20 x float], [20 x float]* %96, i64 0, i64 1
  store float 1.200000e+02, float* %97, align 4
  %98 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %99 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %98, i32 0, i32 9
  %100 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %99, i64 0, i64 0
  %101 = getelementptr inbounds [20 x float], [20 x float]* %100, i64 0, i64 2
  store float 6.230000e+02, float* %101, align 4
  %102 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %103 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %102, i32 0, i32 9
  %104 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %103, i64 0, i64 0
  %105 = getelementptr inbounds [20 x float], [20 x float]* %104, i64 0, i64 3
  store float 6.510000e+02, float* %105, align 4
  %106 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %107 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %106, i32 0, i32 9
  %108 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %107, i64 0, i64 0
  %109 = getelementptr inbounds [20 x float], [20 x float]* %108, i64 0, i64 4
  store float 3.130000e+02, float* %109, align 4
  %110 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %111 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %110, i32 0, i32 9
  %112 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %111, i64 0, i64 0
  %113 = getelementptr inbounds [20 x float], [20 x float]* %112, i64 0, i64 5
  store float 9.020000e+02, float* %113, align 4
  %114 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %115 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %114, i32 0, i32 9
  %116 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %115, i64 0, i64 0
  %117 = getelementptr inbounds [20 x float], [20 x float]* %116, i64 0, i64 6
  store float 2.410000e+02, float* %117, align 4
  %118 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %119 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %118, i32 0, i32 9
  %120 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %119, i64 0, i64 0
  %121 = getelementptr inbounds [20 x float], [20 x float]* %120, i64 0, i64 7
  store float 3.710000e+02, float* %121, align 4
  %122 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %123 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %122, i32 0, i32 9
  %124 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %123, i64 0, i64 0
  %125 = getelementptr inbounds [20 x float], [20 x float]* %124, i64 0, i64 8
  store float 6.870000e+02, float* %125, align 4
  %126 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %127 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %126, i32 0, i32 9
  %128 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %127, i64 0, i64 0
  %129 = getelementptr inbounds [20 x float], [20 x float]* %128, i64 0, i64 9
  store float 6.760000e+02, float* %129, align 4
  %130 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %131 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %130, i32 0, i32 9
  %132 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %131, i64 0, i64 0
  %133 = getelementptr inbounds [20 x float], [20 x float]* %132, i64 0, i64 10
  store float 1.430000e+02, float* %133, align 4
  %134 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %135 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %134, i32 0, i32 9
  %136 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %135, i64 0, i64 0
  %137 = getelementptr inbounds [20 x float], [20 x float]* %136, i64 0, i64 11
  store float 5.480000e+02, float* %137, align 4
  %138 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %139 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %138, i32 0, i32 9
  %140 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %139, i64 0, i64 0
  %141 = getelementptr inbounds [20 x float], [20 x float]* %140, i64 0, i64 12
  store float 6.470000e+02, float* %141, align 4
  %142 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %143 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %142, i32 0, i32 9
  %144 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %143, i64 0, i64 0
  %145 = getelementptr inbounds [20 x float], [20 x float]* %144, i64 0, i64 13
  store float 4.150000e+02, float* %145, align 4
  %146 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %147 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %146, i32 0, i32 9
  %148 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %147, i64 0, i64 0
  %149 = getelementptr inbounds [20 x float], [20 x float]* %148, i64 0, i64 14
  store float 5.510000e+02, float* %149, align 4
  %150 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %151 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %150, i32 0, i32 9
  %152 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %151, i64 0, i64 0
  %153 = getelementptr inbounds [20 x float], [20 x float]* %152, i64 0, i64 15
  store float 9.260000e+02, float* %153, align 4
  %154 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %155 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %154, i32 0, i32 9
  %156 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %155, i64 0, i64 0
  %157 = getelementptr inbounds [20 x float], [20 x float]* %156, i64 0, i64 16
  store float 6.230000e+02, float* %157, align 4
  %158 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %159 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %158, i32 0, i32 9
  %160 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %159, i64 0, i64 0
  %161 = getelementptr inbounds [20 x float], [20 x float]* %160, i64 0, i64 17
  store float 5.050000e+02, float* %161, align 4
  %162 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %163 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %162, i32 0, i32 9
  %164 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %163, i64 0, i64 0
  %165 = getelementptr inbounds [20 x float], [20 x float]* %164, i64 0, i64 18
  store float 1.020000e+02, float* %165, align 4
  %166 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %167 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %166, i32 0, i32 9
  %168 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %167, i64 0, i64 0
  %169 = getelementptr inbounds [20 x float], [20 x float]* %168, i64 0, i64 19
  store float 2.690000e+02, float* %169, align 4
  %170 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  ret %struct.p7prior_s* %170
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p7prior_s* @default_nucleic_prior() #0 {
  %1 = alloca %struct.p7prior_s*, align 8
  %2 = call %struct.p7prior_s* @P7AllocPrior()
  store %struct.p7prior_s* %2, %struct.p7prior_s** %1, align 8
  %3 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %4 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %6 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %5, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %8 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %7, i32 0, i32 2
  %9 = getelementptr inbounds [200 x float], [200 x float]* %8, i64 0, i64 0
  store float 1.000000e+00, float* %9, align 4
  %10 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %11 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %10, i32 0, i32 3
  %12 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %11, i64 0, i64 0
  %13 = getelementptr inbounds [7 x float], [7 x float]* %12, i64 0, i64 0
  store float 0x3FE967A100000000, float* %13, align 4
  %14 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %15 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %14, i32 0, i32 3
  %16 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %15, i64 0, i64 0
  %17 = getelementptr inbounds [7 x float], [7 x float]* %16, i64 0, i64 1
  store float 0x3F9C779A60000000, float* %17, align 4
  %18 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %19 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %18, i32 0, i32 3
  %20 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %19, i64 0, i64 0
  %21 = getelementptr inbounds [7 x float], [7 x float]* %20, i64 0, i64 2
  store float 0x3F8BA5E360000000, float* %21, align 4
  %22 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %23 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %22, i32 0, i32 3
  %24 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %23, i64 0, i64 0
  %25 = getelementptr inbounds [7 x float], [7 x float]* %24, i64 0, i64 3
  store float 0x3FC3DA5120000000, float* %25, align 4
  %26 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %27 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %26, i32 0, i32 3
  %28 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %27, i64 0, i64 0
  %29 = getelementptr inbounds [7 x float], [7 x float]* %28, i64 0, i64 4
  store float 0x3FC1096BC0000000, float* %29, align 4
  %30 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %31 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %30, i32 0, i32 3
  %32 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %31, i64 0, i64 0
  %33 = getelementptr inbounds [7 x float], [7 x float]* %32, i64 0, i64 5
  store float 0x3FECCE7040000000, float* %33, align 4
  %34 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %35 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %34, i32 0, i32 3
  %36 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %35, i64 0, i64 0
  %37 = getelementptr inbounds [7 x float], [7 x float]* %36, i64 0, i64 6
  store float 0x3FE20418A0000000, float* %37, align 4
  %38 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %39 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %38, i32 0, i32 4
  store i32 1, i32* %39, align 4
  %40 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %41 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %40, i32 0, i32 5
  %42 = getelementptr inbounds [200 x float], [200 x float]* %41, i64 0, i64 0
  store float 1.000000e+00, float* %42, align 4
  %43 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %44 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %43, i32 0, i32 6
  %45 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %44, i64 0, i64 0
  %46 = getelementptr inbounds [20 x float], [20 x float]* %45, i32 0, i32 0
  %47 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %46, i32 %47, float 1.000000e+00)
  %48 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %49 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %48, i32 0, i32 7
  store i32 1, i32* %49, align 4
  %50 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %51 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %50, i32 0, i32 8
  %52 = getelementptr inbounds [200 x float], [200 x float]* %51, i64 0, i64 0
  store float 1.000000e+00, float* %52, align 4
  %53 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  %54 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %53, i32 0, i32 9
  %55 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %54, i64 0, i64 0
  %56 = getelementptr inbounds [20 x float], [20 x float]* %55, i32 0, i32 0
  %57 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %56, i32 %57, float 1.000000e+00)
  %58 = load %struct.p7prior_s*, %struct.p7prior_s** %1, align 8
  ret %struct.p7prior_s* %58
}

declare void @Die(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.p7prior_s* @P7ReadPrior(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.p7prior_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %3, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %2, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* %12)
  br label %13

; <label>:13:                                     ; preds = %11, %1
  %14 = call %struct.p7prior_s* @P7AllocPrior()
  store %struct.p7prior_s* %14, %struct.p7prior_s** %4, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = call i8* @Getword(%struct._IO_FILE* %15, i32 4)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  call void @s2upper(i8* %17)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %13
  %22 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %23 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %27

; <label>:24:                                     ; preds = %13
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %2, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0), i8* %25, i8* %26)
  br label %27

; <label>:27:                                     ; preds = %24, %21
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %29 = call i8* @Getword(%struct._IO_FILE* %28, i32 4)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  call void @s2upper(i8* %30)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* @Alphabet_type, align 4
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %2, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i8* %38)
  br label %39

; <label>:39:                                     ; preds = %37, %34
  br label %54

; <label>:40:                                     ; preds = %27
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* @Alphabet_type, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %44
  %48 = load i8*, i8** %2, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i32 0, i32 0), i8* %48)
  br label %49

; <label>:49:                                     ; preds = %47, %44
  br label %53

; <label>:50:                                     ; preds = %40
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %2, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* %51, i8* %52)
  br label %53

; <label>:53:                                     ; preds = %50, %49
  br label %54

; <label>:54:                                     ; preds = %53, %39
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %56 = call i8* @Getword(%struct._IO_FILE* %55, i32 1)
  %57 = call i32 @atoi(i8* %56) #5
  %58 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %59 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %61 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %54
  %65 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %66 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i32 0, i32 0), i32 %67)
  br label %68

; <label>:68:                                     ; preds = %64, %54
  %69 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %70 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 200
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %68
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i32 0, i32 0), i32 200)
  br label %74

; <label>:74:                                     ; preds = %73, %68
  store i32 0, i32* %6, align 4
  br label %75

; <label>:75:                                     ; preds = %111, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %78 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %114

; <label>:81:                                     ; preds = %75
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %83 = call i8* @Getword(%struct._IO_FILE* %82, i32 2)
  %84 = call double @atof(i8* %83) #5
  %85 = fptrunc double %84 to float
  %86 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %87 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %86, i32 0, i32 2
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [200 x float], [200 x float]* %87, i64 0, i64 %89
  store float %85, float* %90, align 4
  store i32 0, i32* %7, align 4
  br label %91

; <label>:91:                                     ; preds = %107, %81
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 7
  br i1 %93, label %94, label %110

; <label>:94:                                     ; preds = %91
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %96 = call i8* @Getword(%struct._IO_FILE* %95, i32 2)
  %97 = call double @atof(i8* %96) #5
  %98 = fptrunc double %97 to float
  %99 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %100 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %99, i32 0, i32 3
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %100, i64 0, i64 %102
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [7 x float], [7 x float]* %103, i64 0, i64 %105
  store float %98, float* %106, align 4
  br label %107

; <label>:107:                                    ; preds = %94
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %91

; <label>:110:                                    ; preds = %91
  br label %111

; <label>:111:                                    ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %75

; <label>:114:                                    ; preds = %75
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %116 = call i8* @Getword(%struct._IO_FILE* %115, i32 1)
  %117 = call i32 @atoi(i8* %116) #5
  %118 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %119 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %121 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

; <label>:124:                                    ; preds = %114
  %125 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %126 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0), i32 %127)
  br label %128

; <label>:128:                                    ; preds = %124, %114
  %129 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %130 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 200
  br i1 %132, label %133, label %137

; <label>:133:                                    ; preds = %128
  %134 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %135 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0), i32 %136, i32 200)
  br label %137

; <label>:137:                                    ; preds = %133, %128
  store i32 0, i32* %6, align 4
  br label %138

; <label>:138:                                    ; preds = %175, %137
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %141 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %178

; <label>:144:                                    ; preds = %138
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %146 = call i8* @Getword(%struct._IO_FILE* %145, i32 2)
  %147 = call double @atof(i8* %146) #5
  %148 = fptrunc double %147 to float
  %149 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %150 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %149, i32 0, i32 5
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [200 x float], [200 x float]* %150, i64 0, i64 %152
  store float %148, float* %153, align 4
  store i32 0, i32* %7, align 4
  br label %154

; <label>:154:                                    ; preds = %171, %144
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @Alphabet_size, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %174

; <label>:158:                                    ; preds = %154
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %160 = call i8* @Getword(%struct._IO_FILE* %159, i32 2)
  %161 = call double @atof(i8* %160) #5
  %162 = fptrunc double %161 to float
  %163 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %164 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %163, i32 0, i32 6
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %164, i64 0, i64 %166
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [20 x float], [20 x float]* %167, i64 0, i64 %169
  store float %162, float* %170, align 4
  br label %171

; <label>:171:                                    ; preds = %158
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %154

; <label>:174:                                    ; preds = %154
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %138

; <label>:178:                                    ; preds = %138
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %180 = call i8* @Getword(%struct._IO_FILE* %179, i32 1)
  %181 = call i32 @atoi(i8* %180) #5
  %182 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %183 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 4
  %184 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %185 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %192

; <label>:188:                                    ; preds = %178
  %189 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %190 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i32 0, i32 0), i32 %191)
  br label %192

; <label>:192:                                    ; preds = %188, %178
  %193 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %194 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %195, 200
  br i1 %196, label %197, label %201

; <label>:197:                                    ; preds = %192
  %198 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %199 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i32 0, i32 0), i32 %200, i32 200)
  br label %201

; <label>:201:                                    ; preds = %197, %192
  store i32 0, i32* %6, align 4
  br label %202

; <label>:202:                                    ; preds = %239, %201
  %203 = load i32, i32* %6, align 4
  %204 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %205 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %242

; <label>:208:                                    ; preds = %202
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %210 = call i8* @Getword(%struct._IO_FILE* %209, i32 2)
  %211 = call double @atof(i8* %210) #5
  %212 = fptrunc double %211 to float
  %213 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %214 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %213, i32 0, i32 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [200 x float], [200 x float]* %214, i64 0, i64 %216
  store float %212, float* %217, align 4
  store i32 0, i32* %7, align 4
  br label %218

; <label>:218:                                    ; preds = %235, %208
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @Alphabet_size, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %238

; <label>:222:                                    ; preds = %218
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %224 = call i8* @Getword(%struct._IO_FILE* %223, i32 2)
  %225 = call double @atof(i8* %224) #5
  %226 = fptrunc double %225 to float
  %227 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %228 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %227, i32 0, i32 9
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %228, i64 0, i64 %230
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [20 x float], [20 x float]* %231, i64 0, i64 %233
  store float %226, float* %234, align 4
  br label %235

; <label>:235:                                    ; preds = %222
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %7, align 4
  br label %218

; <label>:238:                                    ; preds = %218
  br label %239

; <label>:239:                                    ; preds = %238
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %6, align 4
  br label %202

; <label>:242:                                    ; preds = %202
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %244 = call i32 @fclose(%struct._IO_FILE* %243)
  %245 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  ret %struct.p7prior_s* %245
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @Getword(%struct._IO_FILE*, i32) #1

declare void @s2upper(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @PAMPrior(i8*, %struct.p7prior_s*, float) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p7prior_s*, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.p7prior_s* %1, %struct.p7prior_s** %5, align 8
  store float %2, float* %6, align 4
  %15 = load i32, i32* @Alphabet_type, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0))
  br label %18

; <label>:18:                                     ; preds = %17, %3
  %19 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %20 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %18
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.18, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %23, %18
  %25 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %26 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %24
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i32 0, i32 0))
  br label %30

; <label>:30:                                     ; preds = %29, %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @FileConcat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %34, %struct._IO_FILE** %7, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = call %struct._IO_FILE* @EnvFileOpen(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8** null)
  store %struct._IO_FILE* %38, %struct._IO_FILE** %7, align 8
  %39 = icmp eq %struct._IO_FILE* %38, null
  br i1 %39, label %40, label %46

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = call %struct._IO_FILE* @EnvFileOpen(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8** null)
  store %struct._IO_FILE* %42, %struct._IO_FILE** %7, align 8
  %43 = icmp eq %struct._IO_FILE* %42, null
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** %4, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i8* %45)
  br label %46

; <label>:46:                                     ; preds = %44, %40, %36, %30
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %48 = call i32 @ParsePAMFile(%struct._IO_FILE* %47, i32*** %9, float* %10)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

; <label>:50:                                     ; preds = %46
  %51 = load i8*, i8** %4, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0), i8* %51)
  br label %52

; <label>:52:                                     ; preds = %50, %46
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* %53)
  %55 = load i8*, i8** %8, align 8
  call void @free(i8* %55) #4
  %56 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %57 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %59 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %58, i32 0, i32 4
  store i32 20, i32* %59, align 4
  store i32 0, i32* %11, align 4
  br label %60

; <label>:60:                                     ; preds = %115, %52
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @Alphabet_size, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %118

; <label>:64:                                     ; preds = %60
  store i32 0, i32* %12, align 4
  br label %65

; <label>:65:                                     ; preds = %111, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @Alphabet_size, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %114

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 65
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %80, 65
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [0 x float], [0 x float]* @aafq, i64 0, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fpext float %85 to double
  %87 = load i32**, i32*** %9, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sitofp i32 %95 to float
  %97 = load float, float* %10, align 4
  %98 = fmul float %96, %97
  %99 = fpext float %98 to double
  %100 = call double @exp(double %99) #4
  %101 = fmul double %86, %100
  %102 = fptrunc double %101 to float
  %103 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %104 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %103, i32 0, i32 6
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %104, i64 0, i64 %106
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [20 x float], [20 x float]* %107, i64 0, i64 %109
  store float %102, float* %110, align 4
  br label %111

; <label>:111:                                    ; preds = %69
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %65

; <label>:114:                                    ; preds = %65
  br label %115

; <label>:115:                                    ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %60

; <label>:118:                                    ; preds = %60
  store i32 0, i32* %11, align 4
  br label %119

; <label>:119:                                    ; preds = %148, %118
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @Alphabet_size, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %151

; <label>:123:                                    ; preds = %119
  %124 = load i32, i32* @Alphabet_size, align 4
  %125 = sitofp i32 %124 to double
  %126 = fdiv double 1.000000e+00, %125
  %127 = fptrunc double %126 to float
  %128 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %129 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %128, i32 0, i32 5
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [200 x float], [200 x float]* %129, i64 0, i64 %131
  store float %127, float* %132, align 4
  %133 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %134 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %133, i32 0, i32 6
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %134, i64 0, i64 %136
  %138 = getelementptr inbounds [20 x float], [20 x float]* %137, i32 0, i32 0
  %139 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %138, i32 %139)
  %140 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %141 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %140, i32 0, i32 6
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %141, i64 0, i64 %143
  %145 = getelementptr inbounds [20 x float], [20 x float]* %144, i32 0, i32 0
  %146 = load i32, i32* @Alphabet_size, align 4
  %147 = load float, float* %6, align 4
  call void @FScale(float* %145, i32 %146, float %147)
  br label %148

; <label>:148:                                    ; preds = %123
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %119

; <label>:151:                                    ; preds = %119
  %152 = load i32**, i32*** %9, align 8
  %153 = bitcast i32** %152 to i8**
  call void @Free2DArray(i8** %153, i32 27)
  ret void
}

declare i8* @FileConcat(i8*, i8*) #1

declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

declare i32 @ParsePAMFile(%struct._IO_FILE*, i32***, float*) #1

; Function Attrs: nounwind
declare double @exp(double) #2

declare void @FNorm(float*, i32) #1

declare void @FScale(float*, i32, float) #1

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7DefaultNullModel(float*, float*) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load i32, i32* @Alphabet_type, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %27

; <label>:8:                                      ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

; <label>:9:                                      ; preds = %22, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @Alphabet_size, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [0 x float], [0 x float]* @aafq, i64 0, i64 %15
  %17 = load float, float* %16, align 4
  %18 = load float*, float** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  store float %17, float* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %9

; <label>:25:                                     ; preds = %9
  %26 = load float*, float** %4, align 8
  store float 0x3FEFE8A940000000, float* %26, align 4
  br label %47

; <label>:27:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %28

; <label>:28:                                     ; preds = %42, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @Alphabet_size, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* @Alphabet_size, align 4
  %34 = sitofp i32 %33 to float
  %35 = fpext float %34 to double
  %36 = fdiv double 1.000000e+00, %35
  %37 = fptrunc double %36 to float
  %38 = load float*, float** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  store float %37, float* %41, align 4
  br label %42

; <label>:42:                                     ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %28

; <label>:45:                                     ; preds = %28
  %46 = load float*, float** %4, align 8
  store float 0x3FEFF7D100000000, float* %46, align 4
  br label %47

; <label>:47:                                     ; preds = %45, %25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P7ReadNullModel(i8*, float*, float*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %7, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %4, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* %15)
  br label %16

; <label>:16:                                     ; preds = %14, %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %18 = call i8* @Getword(%struct._IO_FILE* %17, i32 4)
  store i8* %18, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %16
  br label %79

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %8, align 8
  call void @s2upper(i8* %22)
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  store i32 2, i32* %10, align 4
  br label %34

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %27
  store i32 3, i32* %10, align 4
  br label %33

; <label>:32:                                     ; preds = %27
  br label %79

; <label>:33:                                     ; preds = %31
  br label %34

; <label>:34:                                     ; preds = %33, %26
  %35 = load i32, i32* @Alphabet_type, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %10, align 4
  call void @SetAlphabet(i32 %38)
  br label %46

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* @Alphabet_type, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = load i8*, i8** %4, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i32 0, i32 0), i8* %44)
  br label %45

; <label>:45:                                     ; preds = %43, %39
  br label %46

; <label>:46:                                     ; preds = %45, %37
  store i32 0, i32* %9, align 4
  br label %47

; <label>:47:                                     ; preds = %64, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @Alphabet_size, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %67

; <label>:51:                                     ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %53 = call i8* @Getword(%struct._IO_FILE* %52, i32 2)
  store i8* %53, i8** %8, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %51
  br label %79

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = call double @atof(i8* %57) #5
  %59 = fptrunc double %58 to float
  %60 = load float*, float** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  store float %59, float* %63, align 4
  br label %64

; <label>:64:                                     ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %47

; <label>:67:                                     ; preds = %47
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %69 = call i8* @Getword(%struct._IO_FILE* %68, i32 2)
  store i8* %69, i8** %8, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %67
  br label %79

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = call double @atof(i8* %73) #5
  %75 = fptrunc double %74 to float
  %76 = load float*, float** %6, align 8
  store float %75, float* %76, align 4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %78 = call i32 @fclose(%struct._IO_FILE* %77)
  br label %83

; <label>:79:                                     ; preds = %71, %55, %32, %20
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %81 = call i32 @fclose(%struct._IO_FILE* %80)
  %82 = load i8*, i8** %4, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0), i8* %82)
  br label %83

; <label>:83:                                     ; preds = %79, %72
  ret void
}

declare void @SetAlphabet(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7PriorifyHMM(%struct.plan7_s*, %struct.p7prior_s*) #0 {
  %3 = alloca %struct.plan7_s*, align 8
  %4 = alloca %struct.p7prior_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca [200 x float], align 16
  %8 = alloca [200 x float], align 16
  %9 = alloca [200 x float], align 16
  store %struct.plan7_s* %0, %struct.plan7_s** %3, align 8
  store %struct.p7prior_s* %1, %struct.p7prior_s** %4, align 8
  %10 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 26
  %12 = load float*, float** %11, align 8
  %13 = getelementptr inbounds float, float* %12, i64 2
  %14 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %15 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 20
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  call void @FSet(float* %13, i32 %17, float 0.000000e+00)
  %18 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 27
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %23 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 20
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  call void @FSet(float* %21, i32 %25, float 0.000000e+00)
  %26 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %27 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 24
  %28 = load float, float* %27, align 8
  %29 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 26
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  %33 = load float, float* %32, align 4
  %34 = fadd float %28, %33
  %35 = fpext float %34 to double
  %36 = fadd double %35, 2.000000e+00
  %37 = fptrunc double %36 to float
  store float %37, float* %6, align 4
  %38 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 24
  %40 = load float, float* %39, align 8
  %41 = fpext float %40 to double
  %42 = fadd double %41, 1.000000e+00
  %43 = load float, float* %6, align 4
  %44 = fpext float %43 to double
  %45 = fdiv double %42, %44
  %46 = fptrunc double %45 to float
  %47 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %48 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %47, i32 0, i32 24
  store float %46, float* %48, align 8
  %49 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %50 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 26
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %52, align 4
  %54 = fpext float %53 to double
  %55 = fadd double %54, 1.000000e+00
  %56 = load float, float* %6, align 4
  %57 = fpext float %56 to double
  %58 = fdiv double %55, %57
  %59 = fptrunc double %58 to float
  %60 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 26
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  store float %59, float* %63, align 4
  %64 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %65 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 27
  %66 = load float*, float** %65, align 8
  %67 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 20
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %66, i64 %70
  store float 1.000000e+00, float* %71, align 4
  store i32 1, i32* %5, align 4
  br label %72

; <label>:72:                                     ; preds = %265, %2
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 20
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %268

; <label>:78:                                     ; preds = %72
  %79 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 11
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %119

; <label>:83:                                     ; preds = %78
  %84 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %85 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %84, i32 0, i32 11
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %119

; <label>:92:                                     ; preds = %83
  %93 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %94 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %93, i32 0, i32 11
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %101 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %99, %102
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %92
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0))
  br label %105

; <label>:105:                                    ; preds = %104, %92
  %106 = getelementptr inbounds [200 x float], [200 x float]* %7, i32 0, i32 0
  %107 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %108 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  call void @FSet(float* %106, i32 %109, float 0.000000e+00)
  %110 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %111 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %110, i32 0, i32 11
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [200 x float], [200 x float]* %7, i64 0, i64 %117
  store float 1.000000e+00, float* %118, align 4
  br label %127

; <label>:119:                                    ; preds = %83, %78
  %120 = getelementptr inbounds [200 x float], [200 x float]* %7, i32 0, i32 0
  %121 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %122 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %121, i32 0, i32 2
  %123 = getelementptr inbounds [200 x float], [200 x float]* %122, i32 0, i32 0
  %124 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %125 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  call void @FCopy(float* %120, float* %123, i32 %126)
  br label %127

; <label>:127:                                    ; preds = %119, %105
  %128 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %129 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %128, i32 0, i32 12
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %168

; <label>:132:                                    ; preds = %127
  %133 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %134 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %133, i32 0, i32 12
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %168

; <label>:141:                                    ; preds = %132
  %142 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %143 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %142, i32 0, i32 12
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %150 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = icmp sge i32 %148, %151
  br i1 %152, label %153, label %154

; <label>:153:                                    ; preds = %141
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0))
  br label %154

; <label>:154:                                    ; preds = %153, %141
  %155 = getelementptr inbounds [200 x float], [200 x float]* %8, i32 0, i32 0
  %156 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %157 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  call void @FSet(float* %155, i32 %158, float 0.000000e+00)
  %159 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %160 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %159, i32 0, i32 12
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [200 x float], [200 x float]* %8, i64 0, i64 %166
  store float 1.000000e+00, float* %167, align 4
  br label %176

; <label>:168:                                    ; preds = %132, %127
  %169 = getelementptr inbounds [200 x float], [200 x float]* %8, i32 0, i32 0
  %170 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %171 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %170, i32 0, i32 5
  %172 = getelementptr inbounds [200 x float], [200 x float]* %171, i32 0, i32 0
  %173 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %174 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  call void @FCopy(float* %169, float* %172, i32 %175)
  br label %176

; <label>:176:                                    ; preds = %168, %154
  %177 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %178 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %177, i32 0, i32 13
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %217

; <label>:181:                                    ; preds = %176
  %182 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %183 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %182, i32 0, i32 13
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %217

; <label>:190:                                    ; preds = %181
  %191 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %192 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %191, i32 0, i32 13
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %199 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = icmp sge i32 %197, %200
  br i1 %201, label %202, label %203

; <label>:202:                                    ; preds = %190
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0))
  br label %203

; <label>:203:                                    ; preds = %202, %190
  %204 = getelementptr inbounds [200 x float], [200 x float]* %9, i32 0, i32 0
  %205 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %206 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  call void @FSet(float* %204, i32 %207, float 0.000000e+00)
  %208 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %209 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %208, i32 0, i32 13
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [200 x float], [200 x float]* %9, i64 0, i64 %215
  store float 1.000000e+00, float* %216, align 4
  br label %225

; <label>:217:                                    ; preds = %181, %176
  %218 = getelementptr inbounds [200 x float], [200 x float]* %9, i32 0, i32 0
  %219 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %220 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %219, i32 0, i32 8
  %221 = getelementptr inbounds [200 x float], [200 x float]* %220, i32 0, i32 0
  %222 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %223 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  call void @FCopy(float* %218, float* %221, i32 %224)
  br label %225

; <label>:225:                                    ; preds = %217, %203
  %226 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %227 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %226, i32 0, i32 21
  %228 = load float**, float*** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float*, float** %228, i64 %230
  %232 = load float*, float** %231, align 8
  %233 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %234 = getelementptr inbounds [200 x float], [200 x float]* %7, i32 0, i32 0
  call void @P7PriorifyTransitionVector(float* %232, %struct.p7prior_s* %233, float* %234)
  %235 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %236 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %235, i32 0, i32 22
  %237 = load float**, float*** %236, align 8
  %238 = load i32, i32* %5, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float*, float** %237, i64 %239
  %241 = load float*, float** %240, align 8
  %242 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %243 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %244 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds [200 x float], [200 x float]* %8, i32 0, i32 0
  %247 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %248 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %247, i32 0, i32 6
  %249 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %248, i32 0, i32 0
  call void @P7PriorifyEmissionVector(float* %241, %struct.p7prior_s* %242, i32 %245, float* %246, [20 x float]* %249, float* null)
  %250 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %251 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %250, i32 0, i32 23
  %252 = load float**, float*** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float*, float** %252, i64 %254
  %256 = load float*, float** %255, align 8
  %257 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %258 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %259 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds [200 x float], [200 x float]* %9, i32 0, i32 0
  %262 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %263 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %262, i32 0, i32 9
  %264 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %263, i32 0, i32 0
  call void @P7PriorifyEmissionVector(float* %256, %struct.p7prior_s* %257, i32 %260, float* %261, [20 x float]* %264, float* null)
  br label %265

; <label>:265:                                    ; preds = %225
  %266 = load i32, i32* %5, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %5, align 4
  br label %72

; <label>:268:                                    ; preds = %72
  %269 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %270 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %269, i32 0, i32 12
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %315

; <label>:273:                                    ; preds = %268
  %274 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %275 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %274, i32 0, i32 12
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %278 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %277, i32 0, i32 20
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = icmp sge i32 %282, 0
  br i1 %283, label %284, label %315

; <label>:284:                                    ; preds = %273
  %285 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %286 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %285, i32 0, i32 12
  %287 = load i32*, i32** %286, align 8
  %288 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %289 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %288, i32 0, i32 20
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %287, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %295 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = icmp sge i32 %293, %296
  br i1 %297, label %298, label %299

; <label>:298:                                    ; preds = %284
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0))
  br label %299

; <label>:299:                                    ; preds = %298, %284
  %300 = getelementptr inbounds [200 x float], [200 x float]* %8, i32 0, i32 0
  %301 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %302 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  call void @FSet(float* %300, i32 %303, float 0.000000e+00)
  %304 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %305 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %304, i32 0, i32 12
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %308 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %307, i32 0, i32 20
  %309 = load i32, i32* %308, align 8
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %306, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [200 x float], [200 x float]* %8, i64 0, i64 %313
  store float 1.000000e+00, float* %314, align 4
  br label %323

; <label>:315:                                    ; preds = %273, %268
  %316 = getelementptr inbounds [200 x float], [200 x float]* %8, i32 0, i32 0
  %317 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %318 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %317, i32 0, i32 5
  %319 = getelementptr inbounds [200 x float], [200 x float]* %318, i32 0, i32 0
  %320 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %321 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  call void @FCopy(float* %316, float* %319, i32 %322)
  br label %323

; <label>:323:                                    ; preds = %315, %299
  %324 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %325 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %324, i32 0, i32 22
  %326 = load float**, float*** %325, align 8
  %327 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  %328 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %327, i32 0, i32 20
  %329 = load i32, i32* %328, align 8
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float*, float** %326, i64 %330
  %332 = load float*, float** %331, align 8
  %333 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %334 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %335 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds [200 x float], [200 x float]* %8, i32 0, i32 0
  %338 = load %struct.p7prior_s*, %struct.p7prior_s** %4, align 8
  %339 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %338, i32 0, i32 6
  %340 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %339, i32 0, i32 0
  call void @P7PriorifyEmissionVector(float* %332, %struct.p7prior_s* %333, i32 %336, float* %337, [20 x float]* %340, float* null)
  %341 = load %struct.plan7_s*, %struct.plan7_s** %3, align 8
  call void @Plan7Renormalize(%struct.plan7_s* %341)
  ret void
}

declare void @FCopy(float*, float*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P7PriorifyTransitionVector(float*, %struct.p7prior_s*, float*) #0 {
  %4 = alloca float*, align 8
  %5 = alloca %struct.p7prior_s*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [200 x float], align 16
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float* %0, float** %4, align 8
  store %struct.p7prior_s* %1, %struct.p7prior_s** %5, align 8
  store float* %2, float** %6, align 8
  %14 = getelementptr inbounds [200 x float], [200 x float]* %9, i64 0, i64 0
  store float 1.000000e+00, float* %14, align 16
  %15 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %16 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %3
  %20 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %21 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %110

; <label>:24:                                     ; preds = %19, %3
  %25 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %26 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %110

; <label>:29:                                     ; preds = %24
  store i32 0, i32* %8, align 4
  br label %30

; <label>:30:                                     ; preds = %102, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %33 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %105

; <label>:36:                                     ; preds = %30
  %37 = load float*, float** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fpext float %41 to double
  %43 = fcmp ogt double %42, 0.000000e+00
  br i1 %43, label %44, label %52

; <label>:44:                                     ; preds = %36
  %45 = load float*, float** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = call double @log(double %50) #4
  br label %53

; <label>:52:                                     ; preds = %36
  br label %53

; <label>:53:                                     ; preds = %52, %44
  %54 = phi double [ %51, %44 ], [ -9.990000e+02, %52 ]
  %55 = fptrunc double %54 to float
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [200 x float], [200 x float]* %9, i64 0, i64 %57
  store float %55, float* %58, align 4
  %59 = load float*, float** %4, align 8
  %60 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %61 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %60, i32 0, i32 3
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %61, i64 0, i64 %63
  %65 = getelementptr inbounds [7 x float], [7 x float]* %64, i32 0, i32 0
  %66 = call float @Logp_cvec(float* %59, i32 3, float* %65)
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [200 x float], [200 x float]* %9, i64 0, i64 %68
  %70 = load float, float* %69, align 4
  %71 = fadd float %70, %66
  store float %71, float* %69, align 4
  %72 = load float*, float** %4, align 8
  %73 = getelementptr inbounds float, float* %72, i64 3
  %74 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %75 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %74, i32 0, i32 3
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %75, i64 0, i64 %77
  %79 = getelementptr inbounds [7 x float], [7 x float]* %78, i32 0, i32 0
  %80 = getelementptr inbounds float, float* %79, i64 3
  %81 = call float @Logp_cvec(float* %73, i32 2, float* %80)
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [200 x float], [200 x float]* %9, i64 0, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fadd float %85, %81
  store float %86, float* %84, align 4
  %87 = load float*, float** %4, align 8
  %88 = getelementptr inbounds float, float* %87, i64 5
  %89 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %90 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %89, i32 0, i32 3
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %90, i64 0, i64 %92
  %94 = getelementptr inbounds [7 x float], [7 x float]* %93, i32 0, i32 0
  %95 = getelementptr inbounds float, float* %94, i64 5
  %96 = call float @Logp_cvec(float* %88, i32 2, float* %95)
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [200 x float], [200 x float]* %9, i64 0, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fadd float %100, %96
  store float %101, float* %99, align 4
  br label %102

; <label>:102:                                    ; preds = %53
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %30

; <label>:105:                                    ; preds = %30
  %106 = getelementptr inbounds [200 x float], [200 x float]* %9, i32 0, i32 0
  %107 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %108 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  call void @LogNorm(float* %106, i32 %109)
  br label %110

; <label>:110:                                    ; preds = %105, %24, %19
  %111 = load float*, float** %4, align 8
  %112 = call float @FSum(float* %111, i32 3)
  store float %112, float* %10, align 4
  %113 = load float*, float** %4, align 8
  %114 = getelementptr inbounds float, float* %113, i64 3
  %115 = load float, float* %114, align 4
  %116 = load float*, float** %4, align 8
  %117 = getelementptr inbounds float, float* %116, i64 4
  %118 = load float, float* %117, align 4
  %119 = fadd float %115, %118
  store float %119, float* %12, align 4
  %120 = load float*, float** %4, align 8
  %121 = getelementptr inbounds float, float* %120, i64 5
  %122 = load float, float* %121, align 4
  %123 = load float*, float** %4, align 8
  %124 = getelementptr inbounds float, float* %123, i64 6
  %125 = load float, float* %124, align 4
  %126 = fadd float %122, %125
  store float %126, float* %11, align 4
  store i32 0, i32* %7, align 4
  br label %127

; <label>:127:                                    ; preds = %264, %110
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 7
  br i1 %129, label %130, label %267

; <label>:130:                                    ; preds = %127
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %8, align 4
  br label %131

; <label>:131:                                    ; preds = %255, %130
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %134 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %258

; <label>:137:                                    ; preds = %131
  %138 = load i32, i32* %7, align 4
  switch i32 %138, label %254 [
    i32 0, label %139
    i32 1, label %139
    i32 2, label %139
    i32 3, label %172
    i32 4, label %172
    i32 5, label %213
    i32 6, label %213
  ]

; <label>:139:                                    ; preds = %137, %137, %137
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [200 x float], [200 x float]* %9, i64 0, i64 %141
  %143 = load float, float* %142, align 4
  %144 = load float*, float** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  %148 = load float, float* %147, align 4
  %149 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %150 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %149, i32 0, i32 3
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %150, i64 0, i64 %152
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [7 x float], [7 x float]* %153, i64 0, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fadd float %148, %157
  %159 = fmul float %143, %158
  %160 = load float, float* %10, align 4
  %161 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %162 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %161, i32 0, i32 3
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %162, i64 0, i64 %164
  %166 = getelementptr inbounds [7 x float], [7 x float]* %165, i32 0, i32 0
  %167 = call float @FSum(float* %166, i32 3)
  %168 = fadd float %160, %167
  %169 = fdiv float %159, %168
  %170 = load float, float* %13, align 4
  %171 = fadd float %170, %169
  store float %171, float* %13, align 4
  br label %254

; <label>:172:                                    ; preds = %137, %137
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [200 x float], [200 x float]* %9, i64 0, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float*, float** %4, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %183 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %182, i32 0, i32 3
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %183, i64 0, i64 %185
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [7 x float], [7 x float]* %186, i64 0, i64 %188
  %190 = load float, float* %189, align 4
  %191 = fadd float %181, %190
  %192 = fmul float %176, %191
  %193 = load float, float* %12, align 4
  %194 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %195 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %194, i32 0, i32 3
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %195, i64 0, i64 %197
  %199 = getelementptr inbounds [7 x float], [7 x float]* %198, i64 0, i64 3
  %200 = load float, float* %199, align 4
  %201 = fadd float %193, %200
  %202 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %203 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %202, i32 0, i32 3
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %203, i64 0, i64 %205
  %207 = getelementptr inbounds [7 x float], [7 x float]* %206, i64 0, i64 4
  %208 = load float, float* %207, align 4
  %209 = fadd float %201, %208
  %210 = fdiv float %192, %209
  %211 = load float, float* %13, align 4
  %212 = fadd float %211, %210
  store float %212, float* %13, align 4
  br label %254

; <label>:213:                                    ; preds = %137, %137
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [200 x float], [200 x float]* %9, i64 0, i64 %215
  %217 = load float, float* %216, align 4
  %218 = load float*, float** %4, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %218, i64 %220
  %222 = load float, float* %221, align 4
  %223 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %224 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %223, i32 0, i32 3
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %224, i64 0, i64 %226
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [7 x float], [7 x float]* %227, i64 0, i64 %229
  %231 = load float, float* %230, align 4
  %232 = fadd float %222, %231
  %233 = fmul float %217, %232
  %234 = load float, float* %11, align 4
  %235 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %236 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %235, i32 0, i32 3
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %236, i64 0, i64 %238
  %240 = getelementptr inbounds [7 x float], [7 x float]* %239, i64 0, i64 5
  %241 = load float, float* %240, align 4
  %242 = fadd float %234, %241
  %243 = load %struct.p7prior_s*, %struct.p7prior_s** %5, align 8
  %244 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %243, i32 0, i32 3
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %244, i64 0, i64 %246
  %248 = getelementptr inbounds [7 x float], [7 x float]* %247, i64 0, i64 6
  %249 = load float, float* %248, align 4
  %250 = fadd float %242, %249
  %251 = fdiv float %233, %250
  %252 = load float, float* %13, align 4
  %253 = fadd float %252, %251
  store float %253, float* %13, align 4
  br label %254

; <label>:254:                                    ; preds = %137, %213, %172, %139
  br label %255

; <label>:255:                                    ; preds = %254
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %8, align 4
  br label %131

; <label>:258:                                    ; preds = %131
  %259 = load float, float* %13, align 4
  %260 = load float*, float** %4, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %260, i64 %262
  store float %259, float* %263, align 4
  br label %264

; <label>:264:                                    ; preds = %258
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %127

; <label>:267:                                    ; preds = %127
  %268 = load float*, float** %4, align 8
  call void @FNorm(float* %268, i32 3)
  %269 = load float*, float** %4, align 8
  %270 = getelementptr inbounds float, float* %269, i64 3
  call void @FNorm(float* %270, i32 2)
  %271 = load float*, float** %4, align 8
  %272 = getelementptr inbounds float, float* %271, i64 5
  call void @FNorm(float* %272, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P7PriorifyEmissionVector(float*, %struct.p7prior_s*, i32, float*, [20 x float]*, float*) #0 {
  %7 = alloca float*, align 8
  %8 = alloca %struct.p7prior_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca [20 x float]*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [200 x float], align 16
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store float* %0, float** %7, align 8
  store %struct.p7prior_s* %1, %struct.p7prior_s** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store [20 x float]* %4, [20 x float]** %11, align 8
  store float* %5, float** %12, align 8
  %19 = getelementptr inbounds [200 x float], [200 x float]* %15, i64 0, i64 0
  store float 1.000000e+00, float* %19, align 16
  %20 = load %struct.p7prior_s*, %struct.p7prior_s** %8, align 8
  %21 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %74

; <label>:24:                                     ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %74

; <label>:27:                                     ; preds = %24
  store i32 0, i32* %14, align 4
  br label %28

; <label>:28:                                     ; preds = %68, %27
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %71

; <label>:32:                                     ; preds = %28
  %33 = load float*, float** %10, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fpext float %37 to double
  %39 = fcmp ogt double %38, 0.000000e+00
  br i1 %39, label %40, label %48

; <label>:40:                                     ; preds = %32
  %41 = load float*, float** %10, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = call double @log(double %46) #4
  br label %49

; <label>:48:                                     ; preds = %32
  br label %49

; <label>:49:                                     ; preds = %48, %40
  %50 = phi double [ %47, %40 ], [ -9.990000e+02, %48 ]
  %51 = fptrunc double %50 to float
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [200 x float], [200 x float]* %15, i64 0, i64 %53
  store float %51, float* %54, align 4
  %55 = load float*, float** %7, align 8
  %56 = load i32, i32* @Alphabet_size, align 4
  %57 = load [20 x float]*, [20 x float]** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [20 x float], [20 x float]* %57, i64 %59
  %61 = getelementptr inbounds [20 x float], [20 x float]* %60, i32 0, i32 0
  %62 = call float @Logp_cvec(float* %55, i32 %56, float* %61)
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [200 x float], [200 x float]* %15, i64 0, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fadd float %66, %62
  store float %67, float* %65, align 4
  br label %68

; <label>:68:                                     ; preds = %49
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %28

; <label>:71:                                     ; preds = %28
  %72 = getelementptr inbounds [200 x float], [200 x float]* %15, i32 0, i32 0
  %73 = load i32, i32* %9, align 4
  call void @LogNorm(float* %72, i32 %73)
  br label %103

; <label>:74:                                     ; preds = %24, %6
  %75 = load %struct.p7prior_s*, %struct.p7prior_s** %8, align 8
  %76 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %102

; <label>:79:                                     ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %102

; <label>:82:                                     ; preds = %79
  store i32 0, i32* %14, align 4
  br label %83

; <label>:83:                                     ; preds = %96, %82
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @Alphabet_size, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %99

; <label>:87:                                     ; preds = %83
  %88 = load float*, float** %7, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [200 x float], [200 x float]* %15, i64 0, i64 %94
  store float %92, float* %95, align 4
  br label %96

; <label>:96:                                     ; preds = %87
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %83

; <label>:99:                                     ; preds = %83
  %100 = getelementptr inbounds [200 x float], [200 x float]* %15, i32 0, i32 0
  %101 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %100, i32 %101)
  br label %102

; <label>:102:                                    ; preds = %99, %79, %74
  br label %103

; <label>:103:                                    ; preds = %102, %71
  %104 = load float*, float** %7, align 8
  %105 = load i32, i32* @Alphabet_size, align 4
  %106 = call float @FSum(float* %104, i32 %105)
  store float %106, float* %16, align 4
  store i32 0, i32* %13, align 4
  br label %107

; <label>:107:                                    ; preds = %158, %103
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @Alphabet_size, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %161

; <label>:111:                                    ; preds = %107
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %14, align 4
  br label %112

; <label>:112:                                    ; preds = %149, %111
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %152

; <label>:116:                                    ; preds = %112
  %117 = load [20 x float]*, [20 x float]** %11, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [20 x float], [20 x float]* %117, i64 %119
  %121 = getelementptr inbounds [20 x float], [20 x float]* %120, i32 0, i32 0
  %122 = load i32, i32* @Alphabet_size, align 4
  %123 = call float @FSum(float* %121, i32 %122)
  store float %123, float* %17, align 4
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [200 x float], [200 x float]* %15, i64 0, i64 %125
  %127 = load float, float* %126, align 4
  %128 = load float*, float** %7, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  %132 = load float, float* %131, align 4
  %133 = load [20 x float]*, [20 x float]** %11, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [20 x float], [20 x float]* %133, i64 %135
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [20 x float], [20 x float]* %136, i64 0, i64 %138
  %140 = load float, float* %139, align 4
  %141 = fadd float %132, %140
  %142 = fmul float %127, %141
  %143 = load float, float* %16, align 4
  %144 = load float, float* %17, align 4
  %145 = fadd float %143, %144
  %146 = fdiv float %142, %145
  %147 = load float, float* %18, align 4
  %148 = fadd float %147, %146
  store float %148, float* %18, align 4
  br label %149

; <label>:149:                                    ; preds = %116
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %112

; <label>:152:                                    ; preds = %112
  %153 = load float, float* %18, align 4
  %154 = load float*, float** %7, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %154, i64 %156
  store float %153, float* %157, align 4
  br label %158

; <label>:158:                                    ; preds = %152
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %107

; <label>:161:                                    ; preds = %107
  %162 = load float*, float** %7, align 8
  %163 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %162, i32 %163)
  %164 = load float*, float** %12, align 8
  %165 = icmp ne float* %164, null
  br i1 %165, label %166, label %184

; <label>:166:                                    ; preds = %161
  store i32 0, i32* %14, align 4
  br label %167

; <label>:167:                                    ; preds = %180, %166
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %183

; <label>:171:                                    ; preds = %167
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [200 x float], [200 x float]* %15, i64 0, i64 %173
  %175 = load float, float* %174, align 4
  %176 = load float*, float** %12, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %176, i64 %178
  store float %175, float* %179, align 4
  br label %180

; <label>:180:                                    ; preds = %171
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %167

; <label>:183:                                    ; preds = %167
  br label %184

; <label>:184:                                    ; preds = %183, %161
  ret void
}

declare void @Plan7Renormalize(%struct.plan7_s*) #1

; Function Attrs: nounwind
declare double @log(double) #2

declare float @Logp_cvec(float*, i32, float*) #1

declare void @LogNorm(float*, i32) #1

declare float @FSum(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
