; ModuleID = 'selex.c'
source_filename = "selex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.block_struc = type { i32, i32 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [72 x i8] c"Can't read a SELEX format alignment from a pipe, stdin, or gzip'ed file\00", align 1
@squid_errno = external global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"#=CS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"#=RF\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@commentsyms = internal global [3 x i8] c"%#\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"selex.c\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"#=SS\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"#=SA\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Parse error in ReadSELEX()\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"#=AU\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"#=ID\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"#=AC\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"#=DE\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"#=GA\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Parse error in #=GA line in ReadSELEX()\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"#=TC\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Parse error in #=TC line in ReadSELEX()\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"#=NC\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Parse error in #=NC line in ReadSELEX()\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"#=SQ\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Parse error in #=SQ line in ReadSELEX()\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"Parse error in #=SQ line in ReadSELEX(): weight is not a number\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"Parse error in #=SQ line in ReadSELEX(): incomplete line\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c".:\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c":\09 \00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Parse error in #=CS line in ReadSELEX()\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Parse error in #=RF line in ReadSELEX()\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Parse error in #=SS line in ReadSELEX()\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Parse error in #=SA line in ReadSELEX()\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"#=\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"Parse error in alignment line in ReadSELEX()\00", align 1
@.str.31 = private unnamed_addr constant [54 x i8] c"sequences may be in different orders in blocks of %s?\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"#=ID %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"#=AC %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"#=DE %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"#=AU %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"#=GA %.1f %.1f\0A\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"#=GA %.1f\0A\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"#=NC %.1f %.1f\0A\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"#=NC %.1f\0A\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"#=TC %.1f %.1f\0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"#=TC %.1f\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"#=SQ %-*.*s %6.4f %s %s %d..%d::%d %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"%-*.*s %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [73 x i8] c"TAB characters will corrupt a SELEX alignment! Please remove them first.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msa_struct* @ReadSELEX(%struct.msafile_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca %struct.msafile_struct*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca %struct.block_struc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.aliinfo_s, align 8
  %26 = alloca %struct.aliinfo_s*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.msafile_struct* %0, %struct.msafile_struct** %3, align 8
  store i32 0, i32* %7, align 4
  store %struct.block_struc* null, %struct.block_struc** %10, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %29 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %30 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %29, i32 0, i32 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8
  %32 = call i32 @feof(%struct._IO_FILE* %31) #4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %1
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %1406

; <label>:35:                                     ; preds = %1
  %36 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %37 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

; <label>:40:                                     ; preds = %35
  %41 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %42 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %40, %35
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i32 0, i32 0))
  br label %46

; <label>:46:                                     ; preds = %45, %40
  %47 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %48 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %47, i32 0, i32 0
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %48, align 8
  store %struct._IO_FILE* %49, %struct._IO_FILE** %5, align 8
  store %struct.aliinfo_s* %25, %struct.aliinfo_s** %26, align 8
  %50 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  call void @InitAinfo(%struct.aliinfo_s* %50)
  br label %51

; <label>:51:                                     ; preds = %88, %46
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %54 = call i8* @fgets(i8* %52, i32 4096, %struct._IO_FILE* %53)
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %51
  store i32 2, i32* @squid_errno, align 4
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %1406

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %60 = call i8* @strcpy(i8* %58, i8* %59) #4
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %62 = load i8, i8* %61, align 16
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 35
  br i1 %64, label %65, label %77

; <label>:65:                                     ; preds = %57
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %65
  store i32 1, i32* %23, align 4
  br label %76

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %72 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %70
  store i32 1, i32* %24, align 4
  br label %75

; <label>:75:                                     ; preds = %74, %70
  br label %76

; <label>:76:                                     ; preds = %75, %69
  br label %77

; <label>:77:                                     ; preds = %76, %57
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %80 = call i8* @strtok(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %80, i8** %12, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %88, label %82

; <label>:82:                                     ; preds = %78
  %83 = load i8*, i8** %12, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %85) #5
  %87 = icmp ne i8* %86, null
  br label %88

; <label>:88:                                     ; preds = %82, %78
  %89 = phi i1 [ true, %78 ], [ %87, %82 ]
  br i1 %89, label %51, label %90

; <label>:90:                                     ; preds = %88
  store i32 0, i32* %11, align 4
  store i32 0, i32* %19, align 4
  br label %91

; <label>:91:                                     ; preds = %355, %90
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %93 = call i32 @feof(%struct._IO_FILE* %92) #4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br i1 %95, label %96, label %356

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %96
  %100 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 151, i64 8)
  %101 = bitcast i8* %100 to %struct.block_struc*
  store %struct.block_struc* %101, %struct.block_struc** %10, align 8
  br label %111

; <label>:102:                                    ; preds = %96
  %103 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %104 = bitcast %struct.block_struc* %103 to i8*
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 153, i8* %104, i64 %108)
  %110 = bitcast i8* %109 to %struct.block_struc*
  store %struct.block_struc* %110, %struct.block_struc** %10, align 8
  br label %111

; <label>:111:                                    ; preds = %102, %99
  %112 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %112, i64 %114
  %116 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %115, i32 0, i32 0
  store i32 4097, i32* %116, align 4
  %117 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %117, i64 %119
  %121 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %120, i32 0, i32 1
  store i32 -1, i32* %121, align 4
  store i32 0, i32* %14, align 4
  br label %122

; <label>:122:                                    ; preds = %318, %111
  %123 = load i8*, i8** %12, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %319

; <label>:125:                                    ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %165

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* %14, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

; <label>:131:                                    ; preds = %128
  %132 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 164, i64 360)
  %133 = bitcast i8* %132 to %struct.seqinfo_s*
  %134 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %135 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %134, i32 0, i32 6
  store %struct.seqinfo_s* %133, %struct.seqinfo_s** %135, align 8
  br label %149

; <label>:136:                                    ; preds = %128
  %137 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %138 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %137, i32 0, i32 6
  %139 = load %struct.seqinfo_s*, %struct.seqinfo_s** %138, align 8
  %140 = bitcast %struct.seqinfo_s* %139 to i8*
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 360
  %145 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 166, i8* %140, i64 %144)
  %146 = bitcast i8* %145 to %struct.seqinfo_s*
  %147 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %148 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %147, i32 0, i32 6
  store %struct.seqinfo_s* %146, %struct.seqinfo_s** %148, align 8
  br label %149

; <label>:149:                                    ; preds = %136, %131
  %150 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %151 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %150, i32 0, i32 6
  %152 = load %struct.seqinfo_s*, %struct.seqinfo_s** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %152, i64 %154
  %156 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  %157 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %158 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %157, i32 0, i32 6
  %159 = load %struct.seqinfo_s*, %struct.seqinfo_s** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %159, i64 %161
  %163 = load i8*, i8** %12, align 8
  %164 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %162, i8* %163, i32 1)
  br label %179

; <label>:165:                                    ; preds = %125
  %166 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %167 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %166, i32 0, i32 6
  %168 = load %struct.seqinfo_s*, %struct.seqinfo_s** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %168, i64 %170
  %172 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %171, i32 0, i32 1
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %172, i32 0, i32 0
  %174 = load i8*, i8** %12, align 8
  %175 = call i32 @strcmp(i8* %173, i8* %174) #5
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

; <label>:177:                                    ; preds = %165
  store i32 1, i32* %19, align 4
  br label %178

; <label>:178:                                    ; preds = %177, %165
  br label %179

; <label>:179:                                    ; preds = %178, %149
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  %182 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %182, i8** %13, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %253

; <label>:184:                                    ; preds = %179
  %185 = load i8*, i8** %13, align 8
  %186 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %190, i64 %192
  %194 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = icmp slt i64 %189, %196
  br i1 %197, label %198, label %210

; <label>:198:                                    ; preds = %184
  %199 = load i8*, i8** %13, align 8
  %200 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %205, i64 %207
  %209 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %208, i32 0, i32 0
  store i32 %204, i32* %209, align 4
  br label %210

; <label>:210:                                    ; preds = %198, %184
  %211 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %212 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %213 = call i64 @strlen(i8* %212) #5
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = getelementptr inbounds i8, i8* %214, i64 -1
  store i8* %215, i8** %13, align 8
  br label %216

; <label>:216:                                    ; preds = %223, %210
  %217 = load i8*, i8** %13, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %219) #5
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %226

; <label>:222:                                    ; preds = %216
  br label %223

; <label>:223:                                    ; preds = %222
  %224 = load i8*, i8** %13, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 -1
  store i8* %225, i8** %13, align 8
  br label %216

; <label>:226:                                    ; preds = %216
  %227 = load i8*, i8** %13, align 8
  %228 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %229 = ptrtoint i8* %227 to i64
  %230 = ptrtoint i8* %228 to i64
  %231 = sub i64 %229, %230
  %232 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %232, i64 %234
  %236 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = icmp sgt i64 %231, %238
  br i1 %239, label %240, label %252

; <label>:240:                                    ; preds = %226
  %241 = load i8*, i8** %13, align 8
  %242 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %243 = ptrtoint i8* %241 to i64
  %244 = ptrtoint i8* %242 to i64
  %245 = sub i64 %243, %244
  %246 = trunc i64 %245 to i32
  %247 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %247, i64 %249
  %251 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %250, i32 0, i32 1
  store i32 %246, i32* %251, align 4
  br label %252

; <label>:252:                                    ; preds = %240, %226
  br label %253

; <label>:253:                                    ; preds = %252, %179
  br label %254

; <label>:254:                                    ; preds = %312, %253
  %255 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %257 = call i8* @fgets(i8* %255, i32 4096, %struct._IO_FILE* %256)
  %258 = icmp eq i8* %257, null
  br i1 %258, label %259, label %260

; <label>:259:                                    ; preds = %254
  store i8* null, i8** %12, align 8
  br label %318

; <label>:260:                                    ; preds = %254
  %261 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %262 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %263 = call i8* @strcpy(i8* %261, i8* %262) #4
  %264 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %265 = call i32 @strncmp(i8* %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 4) #5
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %278

; <label>:267:                                    ; preds = %260
  %268 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %269 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %268, i32 0, i32 6
  %270 = load %struct.seqinfo_s*, %struct.seqinfo_s** %269, align 8
  %271 = load i32, i32* %14, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %270, i64 %273
  %275 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, 512
  store i32 %277, i32* %275, align 8
  br label %306

; <label>:278:                                    ; preds = %260
  %279 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %280 = call i32 @strncmp(i8* %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4) #5
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %293

; <label>:282:                                    ; preds = %278
  %283 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %284 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %283, i32 0, i32 6
  %285 = load %struct.seqinfo_s*, %struct.seqinfo_s** %284, align 8
  %286 = load i32, i32* %14, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %285, i64 %288
  %290 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, 1024
  store i32 %292, i32* %290, align 8
  br label %305

; <label>:293:                                    ; preds = %278
  %294 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %295 = call i32 @strncmp(i8* %294, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4) #5
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %298

; <label>:297:                                    ; preds = %293
  store i32 1, i32* %23, align 4
  br label %304

; <label>:298:                                    ; preds = %293
  %299 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %300 = call i32 @strncmp(i8* %299, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #5
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %303

; <label>:302:                                    ; preds = %298
  store i32 1, i32* %24, align 4
  br label %303

; <label>:303:                                    ; preds = %302, %298
  br label %304

; <label>:304:                                    ; preds = %303, %297
  br label %305

; <label>:305:                                    ; preds = %304, %282
  br label %306

; <label>:306:                                    ; preds = %305, %267
  %307 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %308 = call i8* @strtok(i8* %307, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %308, i8** %12, align 8
  %309 = icmp eq i8* %308, null
  br i1 %309, label %310, label %311

; <label>:310:                                    ; preds = %306
  br label %318

; <label>:311:                                    ; preds = %306
  br label %312

; <label>:312:                                    ; preds = %311
  %313 = load i8*, i8** %12, align 8
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %315) #5
  %317 = icmp ne i8* %316, null
  br i1 %317, label %254, label %318

; <label>:318:                                    ; preds = %312, %310, %259
  br label %122

; <label>:319:                                    ; preds = %122
  %320 = load i32, i32* %11, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %324

; <label>:322:                                    ; preds = %319
  %323 = load i32, i32* %14, align 4
  store i32 %323, i32* %7, align 4
  br label %330

; <label>:324:                                    ; preds = %319
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* %7, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %328, label %329

; <label>:328:                                    ; preds = %324
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  br label %329

; <label>:329:                                    ; preds = %328, %324
  br label %330

; <label>:330:                                    ; preds = %329, %322
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %11, align 4
  br label %333

; <label>:333:                                    ; preds = %353, %330
  %334 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %336 = call i8* @fgets(i8* %334, i32 4096, %struct._IO_FILE* %335)
  %337 = icmp eq i8* %336, null
  br i1 %337, label %338, label %339

; <label>:338:                                    ; preds = %333
  store i8* null, i8** %12, align 8
  br label %355

; <label>:339:                                    ; preds = %333
  %340 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %341 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %342 = call i8* @strcpy(i8* %340, i8* %341) #4
  br label %343

; <label>:343:                                    ; preds = %339
  %344 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %345 = call i8* @strtok(i8* %344, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %345, i8** %12, align 8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %353, label %347

; <label>:347:                                    ; preds = %343
  %348 = load i8*, i8** %12, align 8
  %349 = load i8, i8* %348, align 1
  %350 = sext i8 %349 to i32
  %351 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %350) #5
  %352 = icmp ne i8* %351, null
  br label %353

; <label>:353:                                    ; preds = %347, %343
  %354 = phi i1 [ true, %343 ], [ %352, %347 ]
  br i1 %354, label %333, label %355

; <label>:355:                                    ; preds = %353, %338
  br label %91

; <label>:356:                                    ; preds = %91
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %357

; <label>:357:                                    ; preds = %378, %356
  %358 = load i32, i32* %15, align 4
  %359 = load i32, i32* %11, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %381

; <label>:361:                                    ; preds = %357
  %362 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %363 = load i32, i32* %15, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %362, i64 %364
  %366 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %369 = load i32, i32* %15, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %368, i64 %370
  %372 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = sub nsw i32 %367, %373
  %375 = add nsw i32 %374, 1
  %376 = load i32, i32* %18, align 4
  %377 = add nsw i32 %376, %375
  store i32 %377, i32* %18, align 4
  br label %378

; <label>:378:                                    ; preds = %361
  %379 = load i32, i32* %15, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %15, align 4
  br label %357

; <label>:381:                                    ; preds = %357
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @rewind(%struct._IO_FILE* %382)
  %383 = load i32, i32* %7, align 4
  %384 = sext i32 %383 to i64
  %385 = mul i64 %384, 8
  %386 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 247, i64 %385)
  %387 = bitcast i8* %386 to i8**
  store i8** %387, i8*** %6, align 8
  %388 = load i32, i32* %23, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %398

; <label>:390:                                    ; preds = %381
  %391 = load i32, i32* %18, align 4
  %392 = add nsw i32 %391, 1
  %393 = sext i32 %392 to i64
  %394 = mul i64 %393, 1
  %395 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 249, i64 %394)
  %396 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %397 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %396, i32 0, i32 4
  store i8* %395, i8** %397, align 8
  br label %398

; <label>:398:                                    ; preds = %390, %381
  %399 = load i32, i32* %24, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %409

; <label>:401:                                    ; preds = %398
  %402 = load i32, i32* %18, align 4
  %403 = add nsw i32 %402, 1
  %404 = sext i32 %403 to i64
  %405 = mul i64 %404, 1
  %406 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 251, i64 %405)
  %407 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %408 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %407, i32 0, i32 5
  store i8* %406, i8** %408, align 8
  br label %409

; <label>:409:                                    ; preds = %401, %398
  store i32 0, i32* %16, align 4
  br label %410

; <label>:410:                                    ; preds = %472, %409
  %411 = load i32, i32* %16, align 4
  %412 = load i32, i32* %7, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %475

; <label>:414:                                    ; preds = %410
  %415 = load i32, i32* %18, align 4
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = mul i64 %417, 1
  %419 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 257, i64 %418)
  %420 = load i8**, i8*** %6, align 8
  %421 = load i32, i32* %16, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8*, i8** %420, i64 %422
  store i8* %419, i8** %423, align 8
  %424 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %425 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %424, i32 0, i32 6
  %426 = load %struct.seqinfo_s*, %struct.seqinfo_s** %425, align 8
  %427 = load i32, i32* %16, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %426, i64 %428
  %430 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = and i32 %431, 512
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %447

; <label>:434:                                    ; preds = %414
  %435 = load i32, i32* %18, align 4
  %436 = add nsw i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = mul i64 %437, 1
  %439 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 259, i64 %438)
  %440 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %441 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %440, i32 0, i32 6
  %442 = load %struct.seqinfo_s*, %struct.seqinfo_s** %441, align 8
  %443 = load i32, i32* %16, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %442, i64 %444
  %446 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %445, i32 0, i32 10
  store i8* %439, i8** %446, align 8
  br label %447

; <label>:447:                                    ; preds = %434, %414
  %448 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %449 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %448, i32 0, i32 6
  %450 = load %struct.seqinfo_s*, %struct.seqinfo_s** %449, align 8
  %451 = load i32, i32* %16, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %450, i64 %452
  %454 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = and i32 %455, 1024
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %471

; <label>:458:                                    ; preds = %447
  %459 = load i32, i32* %18, align 4
  %460 = add nsw i32 %459, 1
  %461 = sext i32 %460 to i64
  %462 = mul i64 %461, 1
  %463 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 261, i64 %462)
  %464 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %465 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %464, i32 0, i32 6
  %466 = load %struct.seqinfo_s*, %struct.seqinfo_s** %465, align 8
  %467 = load i32, i32* %16, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %466, i64 %468
  %470 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %469, i32 0, i32 11
  store i8* %463, i8** %470, align 8
  br label %471

; <label>:471:                                    ; preds = %458, %447
  br label %472

; <label>:472:                                    ; preds = %471
  %473 = load i32, i32* %16, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %16, align 4
  br label %410

; <label>:475:                                    ; preds = %410
  %476 = load i32, i32* %18, align 4
  %477 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %478 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %477, i32 0, i32 1
  store i32 %476, i32* %478, align 4
  %479 = load i32, i32* %7, align 4
  %480 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %481 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %480, i32 0, i32 2
  store i32 %479, i32* %481, align 8
  %482 = load i32, i32* %7, align 4
  %483 = sext i32 %482 to i64
  %484 = mul i64 4, %483
  %485 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 266, i64 %484)
  %486 = bitcast i8* %485 to float*
  %487 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %488 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %487, i32 0, i32 3
  store float* %486, float** %488, align 8
  %489 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %490 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %489, i32 0, i32 3
  %491 = load float*, float** %490, align 8
  %492 = load i32, i32* %7, align 4
  call void @FSet(float* %491, i32 %492, float 1.000000e+00)
  store i32 0, i32* %20, align 4
  br label %493

; <label>:493:                                    ; preds = %777, %506, %475
  %494 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %495 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %496 = call i8* @fgets(i8* %494, i32 4096, %struct._IO_FILE* %495)
  %497 = icmp eq i8* %496, null
  br i1 %497, label %498, label %499

; <label>:498:                                    ; preds = %493
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  br label %499

; <label>:499:                                    ; preds = %498, %493
  %500 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %501 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %502 = call i8* @strcpy(i8* %500, i8* %501) #4
  %503 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %504 = call i8* @strtok(i8* %503, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %504, i8** %12, align 8
  %505 = icmp eq i8* %504, null
  br i1 %505, label %506, label %507

; <label>:506:                                    ; preds = %499
  br label %493

; <label>:507:                                    ; preds = %499
  %508 = load i8*, i8** %12, align 8
  %509 = call i32 @strcmp(i8* %508, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %519

; <label>:511:                                    ; preds = %507
  %512 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %512, i8** %13, align 8
  %513 = icmp ne i8* %512, null
  br i1 %513, label %514, label %519

; <label>:514:                                    ; preds = %511
  %515 = load i8*, i8** %13, align 8
  %516 = call i8* @Strdup(i8* %515)
  %517 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %518 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %517, i32 0, i32 10
  store i8* %516, i8** %518, align 8
  br label %777

; <label>:519:                                    ; preds = %511, %507
  %520 = load i8*, i8** %12, align 8
  %521 = call i32 @strcmp(i8* %520, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #5
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %531

; <label>:523:                                    ; preds = %519
  %524 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %524, i8** %13, align 8
  %525 = icmp ne i8* %524, null
  br i1 %525, label %526, label %531

; <label>:526:                                    ; preds = %523
  %527 = load i8*, i8** %13, align 8
  %528 = call i8* @Strdup(i8* %527)
  %529 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %530 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %529, i32 0, i32 7
  store i8* %528, i8** %530, align 8
  br label %776

; <label>:531:                                    ; preds = %523, %519
  %532 = load i8*, i8** %12, align 8
  %533 = call i32 @strcmp(i8* %532, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #5
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %543

; <label>:535:                                    ; preds = %531
  %536 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %536, i8** %13, align 8
  %537 = icmp ne i8* %536, null
  br i1 %537, label %538, label %543

; <label>:538:                                    ; preds = %535
  %539 = load i8*, i8** %13, align 8
  %540 = call i8* @Strdup(i8* %539)
  %541 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %542 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %541, i32 0, i32 9
  store i8* %540, i8** %542, align 8
  br label %775

; <label>:543:                                    ; preds = %535, %531
  %544 = load i8*, i8** %12, align 8
  %545 = call i32 @strcmp(i8* %544, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #5
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %555

; <label>:547:                                    ; preds = %543
  %548 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %548, i8** %13, align 8
  %549 = icmp ne i8* %548, null
  br i1 %549, label %550, label %555

; <label>:550:                                    ; preds = %547
  %551 = load i8*, i8** %13, align 8
  %552 = call i8* @Strdup(i8* %551)
  %553 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %554 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %553, i32 0, i32 8
  store i8* %552, i8** %554, align 8
  br label %774

; <label>:555:                                    ; preds = %547, %543
  %556 = load i8*, i8** %12, align 8
  %557 = call i32 @strcmp(i8* %556, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #5
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %582

; <label>:559:                                    ; preds = %555
  %560 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %560, i8** %13, align 8
  %561 = icmp eq i8* %560, null
  br i1 %561, label %562, label %563

; <label>:562:                                    ; preds = %559
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0))
  br label %563

; <label>:563:                                    ; preds = %562, %559
  %564 = load i8*, i8** %13, align 8
  %565 = call double @atof(i8* %564) #5
  %566 = fptrunc double %565 to float
  %567 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %568 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %567, i32 0, i32 15
  store float %566, float* %568, align 8
  %569 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %569, i8** %13, align 8
  %570 = icmp eq i8* %569, null
  br i1 %570, label %571, label %572

; <label>:571:                                    ; preds = %563
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0))
  br label %572

; <label>:572:                                    ; preds = %571, %563
  %573 = load i8*, i8** %13, align 8
  %574 = call double @atof(i8* %573) #5
  %575 = fptrunc double %574 to float
  %576 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %577 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %576, i32 0, i32 16
  store float %575, float* %577, align 4
  %578 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %579 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = or i32 %580, 4
  store i32 %581, i32* %579, align 8
  br label %773

; <label>:582:                                    ; preds = %555
  %583 = load i8*, i8** %12, align 8
  %584 = call i32 @strcmp(i8* %583, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #5
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %609

; <label>:586:                                    ; preds = %582
  %587 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %587, i8** %13, align 8
  %588 = icmp eq i8* %587, null
  br i1 %588, label %589, label %590

; <label>:589:                                    ; preds = %586
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0))
  br label %590

; <label>:590:                                    ; preds = %589, %586
  %591 = load i8*, i8** %13, align 8
  %592 = call double @atof(i8* %591) #5
  %593 = fptrunc double %592 to float
  %594 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %595 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %594, i32 0, i32 11
  store float %593, float* %595, align 8
  %596 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %596, i8** %13, align 8
  %597 = icmp eq i8* %596, null
  br i1 %597, label %598, label %599

; <label>:598:                                    ; preds = %590
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0))
  br label %599

; <label>:599:                                    ; preds = %598, %590
  %600 = load i8*, i8** %13, align 8
  %601 = call double @atof(i8* %600) #5
  %602 = fptrunc double %601 to float
  %603 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %604 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %603, i32 0, i32 12
  store float %602, float* %604, align 4
  %605 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %606 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = or i32 %607, 1
  store i32 %608, i32* %606, align 8
  br label %772

; <label>:609:                                    ; preds = %582
  %610 = load i8*, i8** %12, align 8
  %611 = call i32 @strcmp(i8* %610, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #5
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %636

; <label>:613:                                    ; preds = %609
  %614 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %614, i8** %13, align 8
  %615 = icmp eq i8* %614, null
  br i1 %615, label %616, label %617

; <label>:616:                                    ; preds = %613
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0))
  br label %617

; <label>:617:                                    ; preds = %616, %613
  %618 = load i8*, i8** %13, align 8
  %619 = call double @atof(i8* %618) #5
  %620 = fptrunc double %619 to float
  %621 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %622 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %621, i32 0, i32 13
  store float %620, float* %622, align 8
  %623 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %623, i8** %13, align 8
  %624 = icmp eq i8* %623, null
  br i1 %624, label %625, label %626

; <label>:625:                                    ; preds = %617
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0))
  br label %626

; <label>:626:                                    ; preds = %625, %617
  %627 = load i8*, i8** %13, align 8
  %628 = call double @atof(i8* %627) #5
  %629 = fptrunc double %628 to float
  %630 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %631 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %630, i32 0, i32 14
  store float %629, float* %631, align 4
  %632 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %633 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = or i32 %634, 2
  store i32 %635, i32* %633, align 8
  br label %771

; <label>:636:                                    ; preds = %609
  %637 = load i8*, i8** %12, align 8
  %638 = call i32 @strcmp(i8* %637, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #5
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %750

; <label>:640:                                    ; preds = %636
  %641 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %641, i8** %13, align 8
  %642 = icmp eq i8* %641, null
  br i1 %642, label %643, label %644

; <label>:643:                                    ; preds = %640
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0))
  br label %644

; <label>:644:                                    ; preds = %643, %640
  %645 = load i8*, i8** %13, align 8
  %646 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %647 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %646, i32 0, i32 6
  %648 = load %struct.seqinfo_s*, %struct.seqinfo_s** %647, align 8
  %649 = load i32, i32* %20, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %648, i64 %650
  %652 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %651, i32 0, i32 1
  %653 = getelementptr inbounds [64 x i8], [64 x i8]* %652, i32 0, i32 0
  %654 = call i32 @strcmp(i8* %645, i8* %653) #5
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %657

; <label>:656:                                    ; preds = %644
  store i32 1, i32* %19, align 4
  br label %657

; <label>:657:                                    ; preds = %656, %644
  %658 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %658, i8** %13, align 8
  %659 = icmp eq i8* %658, null
  br i1 %659, label %660, label %661

; <label>:660:                                    ; preds = %657
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0))
  br label %661

; <label>:661:                                    ; preds = %660, %657
  %662 = load i8*, i8** %13, align 8
  %663 = call i32 @IsReal(i8* %662)
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %666, label %665

; <label>:665:                                    ; preds = %661
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.21, i32 0, i32 0))
  br label %666

; <label>:666:                                    ; preds = %665, %661
  %667 = load i8*, i8** %13, align 8
  %668 = call double @atof(i8* %667) #5
  %669 = fptrunc double %668 to float
  %670 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %671 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %670, i32 0, i32 3
  %672 = load float*, float** %671, align 8
  %673 = load i32, i32* %20, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds float, float* %672, i64 %674
  store float %669, float* %675, align 4
  %676 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %676, i8** %13, align 8
  %677 = icmp eq i8* %676, null
  br i1 %677, label %678, label %679

; <label>:678:                                    ; preds = %666
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %679

; <label>:679:                                    ; preds = %678, %666
  %680 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %681 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %680, i32 0, i32 6
  %682 = load %struct.seqinfo_s*, %struct.seqinfo_s** %681, align 8
  %683 = load i32, i32* %20, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %682, i64 %684
  %686 = load i8*, i8** %13, align 8
  %687 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %685, i8* %686, i32 2)
  %688 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %688, i8** %13, align 8
  %689 = icmp eq i8* %688, null
  br i1 %689, label %690, label %691

; <label>:690:                                    ; preds = %679
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %691

; <label>:691:                                    ; preds = %690, %679
  %692 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %693 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %692, i32 0, i32 6
  %694 = load %struct.seqinfo_s*, %struct.seqinfo_s** %693, align 8
  %695 = load i32, i32* %20, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %694, i64 %696
  %698 = load i8*, i8** %13, align 8
  %699 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %697, i8* %698, i32 4)
  %700 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #4
  store i8* %700, i8** %13, align 8
  %701 = icmp eq i8* %700, null
  br i1 %701, label %702, label %703

; <label>:702:                                    ; preds = %691
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %703

; <label>:703:                                    ; preds = %702, %691
  %704 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %705 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %704, i32 0, i32 6
  %706 = load %struct.seqinfo_s*, %struct.seqinfo_s** %705, align 8
  %707 = load i32, i32* %20, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %706, i64 %708
  %710 = load i8*, i8** %13, align 8
  %711 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %709, i8* %710, i32 16)
  %712 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #4
  store i8* %712, i8** %13, align 8
  %713 = icmp eq i8* %712, null
  br i1 %713, label %714, label %715

; <label>:714:                                    ; preds = %703
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %715

; <label>:715:                                    ; preds = %714, %703
  %716 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %717 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %716, i32 0, i32 6
  %718 = load %struct.seqinfo_s*, %struct.seqinfo_s** %717, align 8
  %719 = load i32, i32* %20, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %718, i64 %720
  %722 = load i8*, i8** %13, align 8
  %723 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %721, i8* %722, i32 32)
  %724 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)) #4
  store i8* %724, i8** %13, align 8
  %725 = icmp eq i8* %724, null
  br i1 %725, label %726, label %727

; <label>:726:                                    ; preds = %715
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0))
  br label %727

; <label>:727:                                    ; preds = %726, %715
  %728 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %729 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %728, i32 0, i32 6
  %730 = load %struct.seqinfo_s*, %struct.seqinfo_s** %729, align 8
  %731 = load i32, i32* %20, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %730, i64 %732
  %734 = load i8*, i8** %13, align 8
  %735 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %733, i8* %734, i32 256)
  %736 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %736, i8** %13, align 8
  %737 = icmp ne i8* %736, null
  br i1 %737, label %738, label %747

; <label>:738:                                    ; preds = %727
  %739 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %740 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %739, i32 0, i32 6
  %741 = load %struct.seqinfo_s*, %struct.seqinfo_s** %740, align 8
  %742 = load i32, i32* %20, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %741, i64 %743
  %745 = load i8*, i8** %13, align 8
  %746 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %744, i8* %745, i32 8)
  br label %747

; <label>:747:                                    ; preds = %738, %727
  %748 = load i32, i32* %20, align 4
  %749 = add nsw i32 %748, 1
  store i32 %749, i32* %20, align 4
  br label %770

; <label>:750:                                    ; preds = %636
  %751 = load i8*, i8** %12, align 8
  %752 = call i32 @strcmp(i8* %751, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %755

; <label>:754:                                    ; preds = %750
  br label %778

; <label>:755:                                    ; preds = %750
  %756 = load i8*, i8** %12, align 8
  %757 = call i32 @strcmp(i8* %756, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #5
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %760

; <label>:759:                                    ; preds = %755
  br label %778

; <label>:760:                                    ; preds = %755
  %761 = load i8*, i8** %12, align 8
  %762 = load i8, i8* %761, align 1
  %763 = sext i8 %762 to i32
  %764 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %763) #5
  %765 = icmp eq i8* %764, null
  br i1 %765, label %766, label %767

; <label>:766:                                    ; preds = %760
  br label %778

; <label>:767:                                    ; preds = %760
  br label %768

; <label>:768:                                    ; preds = %767
  br label %769

; <label>:769:                                    ; preds = %768
  br label %770

; <label>:770:                                    ; preds = %769, %747
  br label %771

; <label>:771:                                    ; preds = %770, %626
  br label %772

; <label>:772:                                    ; preds = %771, %599
  br label %773

; <label>:773:                                    ; preds = %772, %572
  br label %774

; <label>:774:                                    ; preds = %773, %550
  br label %775

; <label>:775:                                    ; preds = %774, %538
  br label %776

; <label>:776:                                    ; preds = %775, %526
  br label %777

; <label>:777:                                    ; preds = %776, %514
  br label %493

; <label>:778:                                    ; preds = %766, %759, %754
  store i32 0, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %779

; <label>:779:                                    ; preds = %1031, %778
  %780 = load i32, i32* %15, align 4
  %781 = load i32, i32* %11, align 4
  %782 = icmp slt i32 %780, %781
  br i1 %782, label %783, label %1034

; <label>:783:                                    ; preds = %779
  store i32 0, i32* %17, align 4
  br label %784

; <label>:784:                                    ; preds = %985, %783
  %785 = load i8*, i8** %12, align 8
  %786 = icmp ne i8* %785, null
  br i1 %786, label %787, label %986

; <label>:787:                                    ; preds = %784
  %788 = load i8*, i8** %12, align 8
  %789 = call i32 @strcmp(i8* %788, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %791, label %817

; <label>:791:                                    ; preds = %787
  %792 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %793 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %792, i32 0, i32 4
  %794 = load i8*, i8** %793, align 8
  %795 = load i32, i32* %21, align 4
  %796 = load i8*, i8** %12, align 8
  %797 = call i64 @strlen(i8* %796) #5
  %798 = sub i64 %797, 1
  %799 = trunc i64 %798 to i32
  %800 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %801 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %802 = load i32, i32* %15, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %801, i64 %803
  %805 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %804, i32 0, i32 0
  %806 = load i32, i32* %805, align 4
  %807 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %808 = load i32, i32* %15, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %807, i64 %809
  %811 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %810, i32 0, i32 1
  %812 = load i32, i32* %811, align 4
  %813 = call i32 @copy_alignment_line(i8* %794, i32 %795, i32 %799, i8* %800, i32 %806, i32 %812, i8 signext 46)
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %816, label %815

; <label>:815:                                    ; preds = %791
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0))
  br label %816

; <label>:816:                                    ; preds = %815, %791
  br label %957

; <label>:817:                                    ; preds = %787
  %818 = load i8*, i8** %12, align 8
  %819 = call i32 @strcmp(i8* %818, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #5
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %847

; <label>:821:                                    ; preds = %817
  %822 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %823 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %822, i32 0, i32 5
  %824 = load i8*, i8** %823, align 8
  %825 = load i32, i32* %21, align 4
  %826 = load i8*, i8** %12, align 8
  %827 = call i64 @strlen(i8* %826) #5
  %828 = sub i64 %827, 1
  %829 = trunc i64 %828 to i32
  %830 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %831 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %832 = load i32, i32* %15, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %831, i64 %833
  %835 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %834, i32 0, i32 0
  %836 = load i32, i32* %835, align 4
  %837 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %838 = load i32, i32* %15, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %837, i64 %839
  %841 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %840, i32 0, i32 1
  %842 = load i32, i32* %841, align 4
  %843 = call i32 @copy_alignment_line(i8* %824, i32 %825, i32 %829, i8* %830, i32 %836, i32 %842, i8 signext 46)
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %846, label %845

; <label>:845:                                    ; preds = %821
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0))
  br label %846

; <label>:846:                                    ; preds = %845, %821
  br label %956

; <label>:847:                                    ; preds = %817
  %848 = load i8*, i8** %12, align 8
  %849 = call i32 @strcmp(i8* %848, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #5
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %851, label %883

; <label>:851:                                    ; preds = %847
  %852 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %853 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %852, i32 0, i32 6
  %854 = load %struct.seqinfo_s*, %struct.seqinfo_s** %853, align 8
  %855 = load i32, i32* %17, align 4
  %856 = sub nsw i32 %855, 1
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %854, i64 %857
  %859 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %858, i32 0, i32 10
  %860 = load i8*, i8** %859, align 8
  %861 = load i32, i32* %21, align 4
  %862 = load i8*, i8** %12, align 8
  %863 = call i64 @strlen(i8* %862) #5
  %864 = sub i64 %863, 1
  %865 = trunc i64 %864 to i32
  %866 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %867 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %868 = load i32, i32* %15, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %867, i64 %869
  %871 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %870, i32 0, i32 0
  %872 = load i32, i32* %871, align 4
  %873 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %874 = load i32, i32* %15, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %873, i64 %875
  %877 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %876, i32 0, i32 1
  %878 = load i32, i32* %877, align 4
  %879 = call i32 @copy_alignment_line(i8* %860, i32 %861, i32 %865, i8* %866, i32 %872, i32 %878, i8 signext 46)
  %880 = icmp ne i32 %879, 0
  br i1 %880, label %882, label %881

; <label>:881:                                    ; preds = %851
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0))
  br label %882

; <label>:882:                                    ; preds = %881, %851
  br label %955

; <label>:883:                                    ; preds = %847
  %884 = load i8*, i8** %12, align 8
  %885 = call i32 @strcmp(i8* %884, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #5
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %887, label %919

; <label>:887:                                    ; preds = %883
  %888 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %889 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %888, i32 0, i32 6
  %890 = load %struct.seqinfo_s*, %struct.seqinfo_s** %889, align 8
  %891 = load i32, i32* %17, align 4
  %892 = sub nsw i32 %891, 1
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %890, i64 %893
  %895 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %894, i32 0, i32 11
  %896 = load i8*, i8** %895, align 8
  %897 = load i32, i32* %21, align 4
  %898 = load i8*, i8** %12, align 8
  %899 = call i64 @strlen(i8* %898) #5
  %900 = sub i64 %899, 1
  %901 = trunc i64 %900 to i32
  %902 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %903 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %904 = load i32, i32* %15, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %903, i64 %905
  %907 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %906, i32 0, i32 0
  %908 = load i32, i32* %907, align 4
  %909 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %910 = load i32, i32* %15, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %909, i64 %911
  %913 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %912, i32 0, i32 1
  %914 = load i32, i32* %913, align 4
  %915 = call i32 @copy_alignment_line(i8* %896, i32 %897, i32 %901, i8* %902, i32 %908, i32 %914, i8 signext 46)
  %916 = icmp ne i32 %915, 0
  br i1 %916, label %918, label %917

; <label>:917:                                    ; preds = %887
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  br label %918

; <label>:918:                                    ; preds = %917, %887
  br label %954

; <label>:919:                                    ; preds = %883
  %920 = load i8*, i8** %12, align 8
  %921 = call i32 @strncmp(i8* %920, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i64 2) #5
  %922 = icmp ne i32 %921, 0
  br i1 %922, label %923, label %953

; <label>:923:                                    ; preds = %919
  %924 = load i8**, i8*** %6, align 8
  %925 = load i32, i32* %17, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds i8*, i8** %924, i64 %926
  %928 = load i8*, i8** %927, align 8
  %929 = load i32, i32* %21, align 4
  %930 = load i8*, i8** %12, align 8
  %931 = call i64 @strlen(i8* %930) #5
  %932 = sub i64 %931, 1
  %933 = trunc i64 %932 to i32
  %934 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %935 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %936 = load i32, i32* %15, align 4
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %935, i64 %937
  %939 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %938, i32 0, i32 0
  %940 = load i32, i32* %939, align 4
  %941 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %942 = load i32, i32* %15, align 4
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %941, i64 %943
  %945 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %944, i32 0, i32 1
  %946 = load i32, i32* %945, align 4
  %947 = call i32 @copy_alignment_line(i8* %928, i32 %929, i32 %933, i8* %934, i32 %940, i32 %946, i8 signext 46)
  %948 = icmp ne i32 %947, 0
  br i1 %948, label %950, label %949

; <label>:949:                                    ; preds = %923
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i32 0, i32 0))
  br label %950

; <label>:950:                                    ; preds = %949, %923
  %951 = load i32, i32* %17, align 4
  %952 = add nsw i32 %951, 1
  store i32 %952, i32* %17, align 4
  br label %953

; <label>:953:                                    ; preds = %950, %919
  br label %954

; <label>:954:                                    ; preds = %953, %918
  br label %955

; <label>:955:                                    ; preds = %954, %882
  br label %956

; <label>:956:                                    ; preds = %955, %846
  br label %957

; <label>:957:                                    ; preds = %956, %816
  br label %958

; <label>:958:                                    ; preds = %984, %957
  store i8* null, i8** %12, align 8
  %959 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %960 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %961 = call i8* @fgets(i8* %959, i32 4096, %struct._IO_FILE* %960)
  %962 = icmp eq i8* %961, null
  br i1 %962, label %963, label %964

; <label>:963:                                    ; preds = %958
  br label %985

; <label>:964:                                    ; preds = %958
  %965 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %966 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %967 = call i8* @strcpy(i8* %965, i8* %966) #4
  %968 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %969 = call i8* @strtok(i8* %968, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %969, i8** %12, align 8
  %970 = icmp eq i8* %969, null
  br i1 %970, label %971, label %972

; <label>:971:                                    ; preds = %964
  br label %985

; <label>:972:                                    ; preds = %964
  %973 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %974 = call i32 @strncmp(i8* %973, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i64 2) #5
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %977

; <label>:976:                                    ; preds = %972
  br label %985

; <label>:977:                                    ; preds = %972
  %978 = load i8*, i8** %12, align 8
  %979 = load i8, i8* %978, align 1
  %980 = sext i8 %979 to i32
  %981 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %980) #5
  %982 = icmp eq i8* %981, null
  br i1 %982, label %983, label %984

; <label>:983:                                    ; preds = %977
  br label %985

; <label>:984:                                    ; preds = %977
  br label %958

; <label>:985:                                    ; preds = %983, %976, %971, %963
  br label %784

; <label>:986:                                    ; preds = %784
  %987 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %988 = load i32, i32* %15, align 4
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %987, i64 %989
  %991 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %990, i32 0, i32 1
  %992 = load i32, i32* %991, align 4
  %993 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %994 = load i32, i32* %15, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %993, i64 %995
  %997 = getelementptr inbounds %struct.block_struc, %struct.block_struc* %996, i32 0, i32 0
  %998 = load i32, i32* %997, align 4
  %999 = sub nsw i32 %992, %998
  %1000 = add nsw i32 %999, 1
  %1001 = load i32, i32* %21, align 4
  %1002 = add nsw i32 %1001, %1000
  store i32 %1002, i32* %21, align 4
  br label %1003

; <label>:1003:                                   ; preds = %1029, %1016, %986
  %1004 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %1005 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %1006 = call i8* @fgets(i8* %1004, i32 4096, %struct._IO_FILE* %1005)
  %1007 = icmp eq i8* %1006, null
  br i1 %1007, label %1008, label %1009

; <label>:1008:                                   ; preds = %1003
  br label %1030

; <label>:1009:                                   ; preds = %1003
  %1010 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %1011 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %1012 = call i8* @strcpy(i8* %1010, i8* %1011) #4
  %1013 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0
  %1014 = call i8* @strtok(i8* %1013, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %1014, i8** %12, align 8
  %1015 = icmp eq i8* %1014, null
  br i1 %1015, label %1016, label %1017

; <label>:1016:                                   ; preds = %1009
  br label %1003

; <label>:1017:                                   ; preds = %1009
  %1018 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %1019 = call i32 @strncmp(i8* %1018, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i64 2) #5
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1021, label %1022

; <label>:1021:                                   ; preds = %1017
  br label %1030

; <label>:1022:                                   ; preds = %1017
  %1023 = load i8*, i8** %12, align 8
  %1024 = load i8, i8* %1023, align 1
  %1025 = sext i8 %1024 to i32
  %1026 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %1025) #5
  %1027 = icmp eq i8* %1026, null
  br i1 %1027, label %1028, label %1029

; <label>:1028:                                   ; preds = %1022
  br label %1030

; <label>:1029:                                   ; preds = %1022
  br label %1003

; <label>:1030:                                   ; preds = %1028, %1021, %1008
  br label %1031

; <label>:1031:                                   ; preds = %1030
  %1032 = load i32, i32* %15, align 4
  %1033 = add nsw i32 %1032, 1
  store i32 %1033, i32* %15, align 4
  br label %779

; <label>:1034:                                   ; preds = %779
  store i32 0, i32* %17, align 4
  br label %1035

; <label>:1035:                                   ; preds = %1276, %1034
  %1036 = load i32, i32* %17, align 4
  %1037 = load i32, i32* %7, align 4
  %1038 = icmp slt i32 %1036, %1037
  br i1 %1038, label %1039, label %1279

; <label>:1039:                                   ; preds = %1035
  %1040 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1041 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1040, i32 0, i32 6
  %1042 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1041, align 8
  %1043 = load i32, i32* %17, align 4
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1042, i64 %1044
  %1046 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1045, i32 0, i32 0
  %1047 = load i32, i32* %1046, align 8
  %1048 = and i32 %1047, 512
  %1049 = icmp ne i32 %1048, 0
  br i1 %1049, label %1050, label %1157

; <label>:1050:                                   ; preds = %1039
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %1051

; <label>:1051:                                   ; preds = %1142, %1050
  %1052 = load i32, i32* %27, align 4
  %1053 = load i32, i32* %18, align 4
  %1054 = icmp slt i32 %1052, %1053
  br i1 %1054, label %1055, label %1145

; <label>:1055:                                   ; preds = %1051
  %1056 = load i8**, i8*** %6, align 8
  %1057 = load i32, i32* %17, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds i8*, i8** %1056, i64 %1058
  %1060 = load i8*, i8** %1059, align 8
  %1061 = load i32, i32* %27, align 4
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds i8, i8* %1060, i64 %1062
  %1064 = load i8, i8* %1063, align 1
  %1065 = sext i8 %1064 to i32
  %1066 = icmp eq i32 %1065, 32
  br i1 %1066, label %1141, label %1067

; <label>:1067:                                   ; preds = %1055
  %1068 = load i8**, i8*** %6, align 8
  %1069 = load i32, i32* %17, align 4
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds i8*, i8** %1068, i64 %1070
  %1072 = load i8*, i8** %1071, align 8
  %1073 = load i32, i32* %27, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds i8, i8* %1072, i64 %1074
  %1076 = load i8, i8* %1075, align 1
  %1077 = sext i8 %1076 to i32
  %1078 = icmp eq i32 %1077, 46
  br i1 %1078, label %1141, label %1079

; <label>:1079:                                   ; preds = %1067
  %1080 = load i8**, i8*** %6, align 8
  %1081 = load i32, i32* %17, align 4
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds i8*, i8** %1080, i64 %1082
  %1084 = load i8*, i8** %1083, align 8
  %1085 = load i32, i32* %27, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds i8, i8* %1084, i64 %1086
  %1088 = load i8, i8* %1087, align 1
  %1089 = sext i8 %1088 to i32
  %1090 = icmp eq i32 %1089, 95
  br i1 %1090, label %1141, label %1091

; <label>:1091:                                   ; preds = %1079
  %1092 = load i8**, i8*** %6, align 8
  %1093 = load i32, i32* %17, align 4
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds i8*, i8** %1092, i64 %1094
  %1096 = load i8*, i8** %1095, align 8
  %1097 = load i32, i32* %27, align 4
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds i8, i8* %1096, i64 %1098
  %1100 = load i8, i8* %1099, align 1
  %1101 = sext i8 %1100 to i32
  %1102 = icmp eq i32 %1101, 45
  br i1 %1102, label %1141, label %1103

; <label>:1103:                                   ; preds = %1091
  %1104 = load i8**, i8*** %6, align 8
  %1105 = load i32, i32* %17, align 4
  %1106 = sext i32 %1105 to i64
  %1107 = getelementptr inbounds i8*, i8** %1104, i64 %1106
  %1108 = load i8*, i8** %1107, align 8
  %1109 = load i32, i32* %27, align 4
  %1110 = sext i32 %1109 to i64
  %1111 = getelementptr inbounds i8, i8* %1108, i64 %1110
  %1112 = load i8, i8* %1111, align 1
  %1113 = sext i8 %1112 to i32
  %1114 = icmp eq i32 %1113, 126
  br i1 %1114, label %1141, label %1115

; <label>:1115:                                   ; preds = %1103
  %1116 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1117 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1116, i32 0, i32 6
  %1118 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1117, align 8
  %1119 = load i32, i32* %17, align 4
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1118, i64 %1120
  %1122 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1121, i32 0, i32 10
  %1123 = load i8*, i8** %1122, align 8
  %1124 = load i32, i32* %27, align 4
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds i8, i8* %1123, i64 %1125
  %1127 = load i8, i8* %1126, align 1
  %1128 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1129 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1128, i32 0, i32 6
  %1130 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1129, align 8
  %1131 = load i32, i32* %17, align 4
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1130, i64 %1132
  %1134 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1133, i32 0, i32 10
  %1135 = load i8*, i8** %1134, align 8
  %1136 = load i32, i32* %28, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds i8, i8* %1135, i64 %1137
  store i8 %1127, i8* %1138, align 1
  %1139 = load i32, i32* %28, align 4
  %1140 = add nsw i32 %1139, 1
  store i32 %1140, i32* %28, align 4
  br label %1141

; <label>:1141:                                   ; preds = %1115, %1103, %1091, %1079, %1067, %1055
  br label %1142

; <label>:1142:                                   ; preds = %1141
  %1143 = load i32, i32* %27, align 4
  %1144 = add nsw i32 %1143, 1
  store i32 %1144, i32* %27, align 4
  br label %1051

; <label>:1145:                                   ; preds = %1051
  %1146 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1147 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1146, i32 0, i32 6
  %1148 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1147, align 8
  %1149 = load i32, i32* %17, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1148, i64 %1150
  %1152 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1151, i32 0, i32 10
  %1153 = load i8*, i8** %1152, align 8
  %1154 = load i32, i32* %28, align 4
  %1155 = sext i32 %1154 to i64
  %1156 = getelementptr inbounds i8, i8* %1153, i64 %1155
  store i8 0, i8* %1156, align 1
  br label %1157

; <label>:1157:                                   ; preds = %1145, %1039
  %1158 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1159 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1158, i32 0, i32 6
  %1160 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1159, align 8
  %1161 = load i32, i32* %17, align 4
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1160, i64 %1162
  %1164 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1163, i32 0, i32 0
  %1165 = load i32, i32* %1164, align 8
  %1166 = and i32 %1165, 1024
  %1167 = icmp ne i32 %1166, 0
  br i1 %1167, label %1168, label %1275

; <label>:1168:                                   ; preds = %1157
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %1169

; <label>:1169:                                   ; preds = %1260, %1168
  %1170 = load i32, i32* %27, align 4
  %1171 = load i32, i32* %18, align 4
  %1172 = icmp slt i32 %1170, %1171
  br i1 %1172, label %1173, label %1263

; <label>:1173:                                   ; preds = %1169
  %1174 = load i8**, i8*** %6, align 8
  %1175 = load i32, i32* %17, align 4
  %1176 = sext i32 %1175 to i64
  %1177 = getelementptr inbounds i8*, i8** %1174, i64 %1176
  %1178 = load i8*, i8** %1177, align 8
  %1179 = load i32, i32* %27, align 4
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds i8, i8* %1178, i64 %1180
  %1182 = load i8, i8* %1181, align 1
  %1183 = sext i8 %1182 to i32
  %1184 = icmp eq i32 %1183, 32
  br i1 %1184, label %1259, label %1185

; <label>:1185:                                   ; preds = %1173
  %1186 = load i8**, i8*** %6, align 8
  %1187 = load i32, i32* %17, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds i8*, i8** %1186, i64 %1188
  %1190 = load i8*, i8** %1189, align 8
  %1191 = load i32, i32* %27, align 4
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds i8, i8* %1190, i64 %1192
  %1194 = load i8, i8* %1193, align 1
  %1195 = sext i8 %1194 to i32
  %1196 = icmp eq i32 %1195, 46
  br i1 %1196, label %1259, label %1197

; <label>:1197:                                   ; preds = %1185
  %1198 = load i8**, i8*** %6, align 8
  %1199 = load i32, i32* %17, align 4
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds i8*, i8** %1198, i64 %1200
  %1202 = load i8*, i8** %1201, align 8
  %1203 = load i32, i32* %27, align 4
  %1204 = sext i32 %1203 to i64
  %1205 = getelementptr inbounds i8, i8* %1202, i64 %1204
  %1206 = load i8, i8* %1205, align 1
  %1207 = sext i8 %1206 to i32
  %1208 = icmp eq i32 %1207, 95
  br i1 %1208, label %1259, label %1209

; <label>:1209:                                   ; preds = %1197
  %1210 = load i8**, i8*** %6, align 8
  %1211 = load i32, i32* %17, align 4
  %1212 = sext i32 %1211 to i64
  %1213 = getelementptr inbounds i8*, i8** %1210, i64 %1212
  %1214 = load i8*, i8** %1213, align 8
  %1215 = load i32, i32* %27, align 4
  %1216 = sext i32 %1215 to i64
  %1217 = getelementptr inbounds i8, i8* %1214, i64 %1216
  %1218 = load i8, i8* %1217, align 1
  %1219 = sext i8 %1218 to i32
  %1220 = icmp eq i32 %1219, 45
  br i1 %1220, label %1259, label %1221

; <label>:1221:                                   ; preds = %1209
  %1222 = load i8**, i8*** %6, align 8
  %1223 = load i32, i32* %17, align 4
  %1224 = sext i32 %1223 to i64
  %1225 = getelementptr inbounds i8*, i8** %1222, i64 %1224
  %1226 = load i8*, i8** %1225, align 8
  %1227 = load i32, i32* %27, align 4
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds i8, i8* %1226, i64 %1228
  %1230 = load i8, i8* %1229, align 1
  %1231 = sext i8 %1230 to i32
  %1232 = icmp eq i32 %1231, 126
  br i1 %1232, label %1259, label %1233

; <label>:1233:                                   ; preds = %1221
  %1234 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1235 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1234, i32 0, i32 6
  %1236 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1235, align 8
  %1237 = load i32, i32* %17, align 4
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1236, i64 %1238
  %1240 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1239, i32 0, i32 11
  %1241 = load i8*, i8** %1240, align 8
  %1242 = load i32, i32* %27, align 4
  %1243 = sext i32 %1242 to i64
  %1244 = getelementptr inbounds i8, i8* %1241, i64 %1243
  %1245 = load i8, i8* %1244, align 1
  %1246 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1247 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1246, i32 0, i32 6
  %1248 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1247, align 8
  %1249 = load i32, i32* %17, align 4
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1248, i64 %1250
  %1252 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1251, i32 0, i32 11
  %1253 = load i8*, i8** %1252, align 8
  %1254 = load i32, i32* %28, align 4
  %1255 = sext i32 %1254 to i64
  %1256 = getelementptr inbounds i8, i8* %1253, i64 %1255
  store i8 %1245, i8* %1256, align 1
  %1257 = load i32, i32* %28, align 4
  %1258 = add nsw i32 %1257, 1
  store i32 %1258, i32* %28, align 4
  br label %1259

; <label>:1259:                                   ; preds = %1233, %1221, %1209, %1197, %1185, %1173
  br label %1260

; <label>:1260:                                   ; preds = %1259
  %1261 = load i32, i32* %27, align 4
  %1262 = add nsw i32 %1261, 1
  store i32 %1262, i32* %27, align 4
  br label %1169

; <label>:1263:                                   ; preds = %1169
  %1264 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1265 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1264, i32 0, i32 6
  %1266 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1265, align 8
  %1267 = load i32, i32* %17, align 4
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1266, i64 %1268
  %1270 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1269, i32 0, i32 11
  %1271 = load i8*, i8** %1270, align 8
  %1272 = load i32, i32* %28, align 4
  %1273 = sext i32 %1272 to i64
  %1274 = getelementptr inbounds i8, i8* %1271, i64 %1273
  store i8 0, i8* %1274, align 1
  br label %1275

; <label>:1275:                                   ; preds = %1263, %1157
  br label %1276

; <label>:1276:                                   ; preds = %1275
  %1277 = load i32, i32* %17, align 4
  %1278 = add nsw i32 %1277, 1
  store i32 %1278, i32* %17, align 4
  br label %1035

; <label>:1279:                                   ; preds = %1035
  %1280 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1281 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1280, i32 0, i32 5
  %1282 = load i8*, i8** %1281, align 8
  %1283 = icmp ne i8* %1282, null
  br i1 %1283, label %1284, label %1291

; <label>:1284:                                   ; preds = %1279
  %1285 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1286 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1285, i32 0, i32 5
  %1287 = load i8*, i8** %1286, align 8
  %1288 = load i32, i32* %18, align 4
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds i8, i8* %1287, i64 %1289
  store i8 0, i8* %1290, align 1
  br label %1291

; <label>:1291:                                   ; preds = %1284, %1279
  %1292 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1293 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1292, i32 0, i32 4
  %1294 = load i8*, i8** %1293, align 8
  %1295 = icmp ne i8* %1294, null
  br i1 %1295, label %1296, label %1303

; <label>:1296:                                   ; preds = %1291
  %1297 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1298 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1297, i32 0, i32 4
  %1299 = load i8*, i8** %1298, align 8
  %1300 = load i32, i32* %18, align 4
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds i8, i8* %1299, i64 %1301
  store i8 0, i8* %1302, align 1
  br label %1303

; <label>:1303:                                   ; preds = %1296, %1291
  store i32 0, i32* %17, align 4
  br label %1304

; <label>:1304:                                   ; preds = %1317, %1303
  %1305 = load i32, i32* %17, align 4
  %1306 = load i32, i32* %7, align 4
  %1307 = icmp slt i32 %1305, %1306
  br i1 %1307, label %1308, label %1320

; <label>:1308:                                   ; preds = %1304
  %1309 = load i8**, i8*** %6, align 8
  %1310 = load i32, i32* %17, align 4
  %1311 = sext i32 %1310 to i64
  %1312 = getelementptr inbounds i8*, i8** %1309, i64 %1311
  %1313 = load i8*, i8** %1312, align 8
  %1314 = load i32, i32* %18, align 4
  %1315 = sext i32 %1314 to i64
  %1316 = getelementptr inbounds i8, i8* %1313, i64 %1315
  store i8 0, i8* %1316, align 1
  br label %1317

; <label>:1317:                                   ; preds = %1308
  %1318 = load i32, i32* %17, align 4
  %1319 = add nsw i32 %1318, 1
  store i32 %1319, i32* %17, align 4
  br label %1304

; <label>:1320:                                   ; preds = %1304
  store i32 0, i32* %17, align 4
  br label %1321

; <label>:1321:                                   ; preds = %1386, %1320
  %1322 = load i32, i32* %17, align 4
  %1323 = load i32, i32* %7, align 4
  %1324 = icmp slt i32 %1322, %1323
  br i1 %1324, label %1325, label %1389

; <label>:1325:                                   ; preds = %1321
  store i32 0, i32* %22, align 4
  %1326 = load i8**, i8*** %6, align 8
  %1327 = load i32, i32* %17, align 4
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds i8*, i8** %1326, i64 %1328
  %1330 = load i8*, i8** %1329, align 8
  store i8* %1330, i8** %13, align 8
  br label %1331

; <label>:1331:                                   ; preds = %1365, %1325
  %1332 = load i8*, i8** %13, align 8
  %1333 = load i8, i8* %1332, align 1
  %1334 = sext i8 %1333 to i32
  %1335 = icmp ne i32 %1334, 0
  br i1 %1335, label %1336, label %1368

; <label>:1336:                                   ; preds = %1331
  %1337 = load i8*, i8** %13, align 8
  %1338 = load i8, i8* %1337, align 1
  %1339 = sext i8 %1338 to i32
  %1340 = icmp eq i32 %1339, 32
  br i1 %1340, label %1364, label %1341

; <label>:1341:                                   ; preds = %1336
  %1342 = load i8*, i8** %13, align 8
  %1343 = load i8, i8* %1342, align 1
  %1344 = sext i8 %1343 to i32
  %1345 = icmp eq i32 %1344, 46
  br i1 %1345, label %1364, label %1346

; <label>:1346:                                   ; preds = %1341
  %1347 = load i8*, i8** %13, align 8
  %1348 = load i8, i8* %1347, align 1
  %1349 = sext i8 %1348 to i32
  %1350 = icmp eq i32 %1349, 95
  br i1 %1350, label %1364, label %1351

; <label>:1351:                                   ; preds = %1346
  %1352 = load i8*, i8** %13, align 8
  %1353 = load i8, i8* %1352, align 1
  %1354 = sext i8 %1353 to i32
  %1355 = icmp eq i32 %1354, 45
  br i1 %1355, label %1364, label %1356

; <label>:1356:                                   ; preds = %1351
  %1357 = load i8*, i8** %13, align 8
  %1358 = load i8, i8* %1357, align 1
  %1359 = sext i8 %1358 to i32
  %1360 = icmp eq i32 %1359, 126
  br i1 %1360, label %1364, label %1361

; <label>:1361:                                   ; preds = %1356
  %1362 = load i32, i32* %22, align 4
  %1363 = add nsw i32 %1362, 1
  store i32 %1363, i32* %22, align 4
  br label %1364

; <label>:1364:                                   ; preds = %1361, %1356, %1351, %1346, %1341, %1336
  br label %1365

; <label>:1365:                                   ; preds = %1364
  %1366 = load i8*, i8** %13, align 8
  %1367 = getelementptr inbounds i8, i8* %1366, i32 1
  store i8* %1367, i8** %13, align 8
  br label %1331

; <label>:1368:                                   ; preds = %1331
  %1369 = load i32, i32* %22, align 4
  %1370 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1371 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1370, i32 0, i32 6
  %1372 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1371, align 8
  %1373 = load i32, i32* %17, align 4
  %1374 = sext i32 %1373 to i64
  %1375 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1372, i64 %1374
  %1376 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1375, i32 0, i32 5
  store i32 %1369, i32* %1376, align 4
  %1377 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1378 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1377, i32 0, i32 6
  %1379 = load %struct.seqinfo_s*, %struct.seqinfo_s** %1378, align 8
  %1380 = load i32, i32* %17, align 4
  %1381 = sext i32 %1380 to i64
  %1382 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1379, i64 %1381
  %1383 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %1382, i32 0, i32 0
  %1384 = load i32, i32* %1383, align 8
  %1385 = or i32 %1384, 64
  store i32 %1385, i32* %1383, align 8
  br label %1386

; <label>:1386:                                   ; preds = %1368
  %1387 = load i32, i32* %17, align 4
  %1388 = add nsw i32 %1387, 1
  store i32 %1388, i32* %17, align 4
  br label %1321

; <label>:1389:                                   ; preds = %1321
  %1390 = load %struct.block_struc*, %struct.block_struc** %10, align 8
  %1391 = bitcast %struct.block_struc* %1390 to i8*
  call void @free(i8* %1391) #4
  %1392 = load i32, i32* %19, align 4
  %1393 = icmp ne i32 %1392, 0
  br i1 %1393, label %1394, label %1398

; <label>:1394:                                   ; preds = %1389
  %1395 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %1396 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %1395, i32 0, i32 1
  %1397 = load i8*, i8** %1396, align 8
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.31, i32 0, i32 0), i8* %1397)
  br label %1398

; <label>:1398:                                   ; preds = %1394, %1389
  %1399 = load i8**, i8*** %6, align 8
  %1400 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  %1401 = call %struct.msa_struct* @MSAFromAINFO(i8** %1399, %struct.aliinfo_s* %1400)
  store %struct.msa_struct* %1401, %struct.msa_struct** %4, align 8
  %1402 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %1402)
  %1403 = load i8**, i8*** %6, align 8
  %1404 = load %struct.aliinfo_s*, %struct.aliinfo_s** %26, align 8
  call void @FreeAlignment(i8** %1403, %struct.aliinfo_s* %1404)
  %1405 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  store %struct.msa_struct* %1405, %struct.msa_struct** %2, align 8
  br label %1406

; <label>:1406:                                   ; preds = %1398, %56, %34
  %1407 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  ret %struct.msa_struct* %1407
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare void @Die(i8*, ...) #2

declare void @InitAinfo(%struct.aliinfo_s*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i8* @sre_malloc(i8*, i32, i64) #2

declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

declare i32 @SetSeqinfoString(%struct.seqinfo_s*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @rewind(%struct._IO_FILE*) #2

declare void @FSet(float*, i32, float) #2

declare i8* @Strdup(i8*) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

declare i32 @IsReal(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_alignment_line(i8*, i32, i32, i8*, i32, i32, i8 signext) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8 %6, i8* %15, align 1
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %12, align 8
  store i8* %23, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %24

; <label>:24:                                     ; preds = %36, %7
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %24
  %29 = load i8*, i8** %17, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %17, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %17, align 8
  br label %35

; <label>:35:                                     ; preds = %32, %28
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %18, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %18, align 4
  br label %24

; <label>:39:                                     ; preds = %24
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %18, align 4
  br label %41

; <label>:41:                                     ; preds = %95, %39
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %98

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %17, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 9
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %45
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.47, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %99

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %51
  %56 = load i8, i8* %15, align 1
  %57 = load i8*, i8** %16, align 8
  store i8 %56, i8* %57, align 1
  br label %85

; <label>:58:                                     ; preds = %51
  %59 = load i8*, i8** %17, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

; <label>:63:                                     ; preds = %58
  %64 = load i8*, i8** %17, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %63, %58
  %69 = load i8, i8* %15, align 1
  %70 = load i8*, i8** %16, align 8
  store i8 %69, i8* %70, align 1
  br label %84

; <label>:71:                                     ; preds = %63
  %72 = load i8*, i8** %17, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %71
  %77 = load i8, i8* %15, align 1
  %78 = load i8*, i8** %16, align 8
  store i8 %77, i8* %78, align 1
  br label %83

; <label>:79:                                     ; preds = %71
  %80 = load i8*, i8** %17, align 8
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %16, align 8
  store i8 %81, i8* %82, align 1
  br label %83

; <label>:83:                                     ; preds = %79, %76
  br label %84

; <label>:84:                                     ; preds = %83, %68
  br label %85

; <label>:85:                                     ; preds = %84, %55
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %16, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %94

; <label>:91:                                     ; preds = %85
  %92 = load i8*, i8** %17, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %17, align 8
  br label %94

; <label>:94:                                     ; preds = %91, %85
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %41

; <label>:98:                                     ; preds = %41
  store i32 1, i32* %8, align 4
  br label %99

; <label>:99:                                     ; preds = %98, %50
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @Warn(i8*, ...) #2

declare %struct.msa_struct* @MSAFromAINFO(i8**, %struct.aliinfo_s*) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

declare void @FreeAlignment(i8**, %struct.aliinfo_s*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @WriteSELEX(%struct._IO_FILE*, %struct.msa_struct*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.msa_struct* %1, %struct.msa_struct** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  call void @actually_write_selex(%struct._IO_FILE* %5, %struct.msa_struct* %6, i32 50)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @actually_write_selex(%struct._IO_FILE*, %struct.msa_struct*, i32) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.msa_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.msa_struct* %1, %struct.msa_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 101
  %14 = sext i32 %13 to i64
  %15 = mul i64 1, %14
  %16 = call noalias i8* @malloc(i64 %15) #4
  store i8* %16, i8** %10, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %17

; <label>:17:                                     ; preds = %38, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %41

; <label>:23:                                     ; preds = %17
  %24 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strlen(i8* %30) #5
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %23
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %9, align 4
  br label %37

; <label>:37:                                     ; preds = %35, %23
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %17

; <label>:41:                                     ; preds = %17
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 6
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  store i32 6, i32* %9, align 4
  br label %45

; <label>:45:                                     ; preds = %44, %41
  store i32 0, i32* %7, align 4
  br label %46

; <label>:46:                                     ; preds = %62, %45
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %48, i32 0, i32 21
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %65

; <label>:52:                                     ; preds = %46
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %54 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %55 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %54, i32 0, i32 20
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* %60)
  br label %62

; <label>:62:                                     ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %46

; <label>:65:                                     ; preds = %46
  %66 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %67 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %66, i32 0, i32 21
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %65
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %73

; <label>:73:                                     ; preds = %70, %65
  %74 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %75 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %74, i32 0, i32 7
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

; <label>:78:                                     ; preds = %73
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %80 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %81 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %80, i32 0, i32 7
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* %82)
  br label %84

; <label>:84:                                     ; preds = %78, %73
  %85 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %86 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %85, i32 0, i32 9
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %95

; <label>:89:                                     ; preds = %84
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %91 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %92 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 9
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* %93)
  br label %95

; <label>:95:                                     ; preds = %89, %84
  %96 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %97 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %96, i32 0, i32 8
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %106

; <label>:100:                                    ; preds = %95
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %102 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %103 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %102, i32 0, i32 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* %104)
  br label %106

; <label>:106:                                    ; preds = %100, %95
  %107 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %108 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %107, i32 0, i32 10
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %117

; <label>:111:                                    ; preds = %106
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %113 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %114 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %113, i32 0, i32 10
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* %115)
  br label %117

; <label>:117:                                    ; preds = %111, %106
  %118 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %119 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %118, i32 0, i32 19
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %119, i64 0, i64 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

; <label>:123:                                    ; preds = %117
  %124 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %125 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %124, i32 0, i32 19
  %126 = getelementptr inbounds [6 x i32], [6 x i32]* %125, i64 0, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

; <label>:129:                                    ; preds = %123
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %131 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %132 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %131, i32 0, i32 18
  %133 = getelementptr inbounds [6 x float], [6 x float]* %132, i64 0, i64 2
  %134 = load float, float* %133, align 8
  %135 = fpext float %134 to double
  %136 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %137 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %136, i32 0, i32 18
  %138 = getelementptr inbounds [6 x float], [6 x float]* %137, i64 0, i64 3
  %139 = load float, float* %138, align 4
  %140 = fpext float %139 to double
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), double %135, double %140)
  br label %157

; <label>:142:                                    ; preds = %123, %117
  %143 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %144 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %143, i32 0, i32 19
  %145 = getelementptr inbounds [6 x i32], [6 x i32]* %144, i64 0, i64 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

; <label>:148:                                    ; preds = %142
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %150 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %151 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %150, i32 0, i32 18
  %152 = getelementptr inbounds [6 x float], [6 x float]* %151, i64 0, i64 2
  %153 = load float, float* %152, align 8
  %154 = fpext float %153 to double
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), double %154)
  br label %156

; <label>:156:                                    ; preds = %148, %142
  br label %157

; <label>:157:                                    ; preds = %156, %129
  %158 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %159 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %158, i32 0, i32 19
  %160 = getelementptr inbounds [6 x i32], [6 x i32]* %159, i64 0, i64 4
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %182

; <label>:163:                                    ; preds = %157
  %164 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %165 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %164, i32 0, i32 19
  %166 = getelementptr inbounds [6 x i32], [6 x i32]* %165, i64 0, i64 5
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %182

; <label>:169:                                    ; preds = %163
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %171 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %172 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %171, i32 0, i32 18
  %173 = getelementptr inbounds [6 x float], [6 x float]* %172, i64 0, i64 4
  %174 = load float, float* %173, align 8
  %175 = fpext float %174 to double
  %176 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %177 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %176, i32 0, i32 18
  %178 = getelementptr inbounds [6 x float], [6 x float]* %177, i64 0, i64 5
  %179 = load float, float* %178, align 4
  %180 = fpext float %179 to double
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), double %175, double %180)
  br label %197

; <label>:182:                                    ; preds = %163, %157
  %183 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %184 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %183, i32 0, i32 19
  %185 = getelementptr inbounds [6 x i32], [6 x i32]* %184, i64 0, i64 4
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

; <label>:188:                                    ; preds = %182
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %190 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %191 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %190, i32 0, i32 18
  %192 = getelementptr inbounds [6 x float], [6 x float]* %191, i64 0, i64 4
  %193 = load float, float* %192, align 8
  %194 = fpext float %193 to double
  %195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), double %194)
  br label %196

; <label>:196:                                    ; preds = %188, %182
  br label %197

; <label>:197:                                    ; preds = %196, %169
  %198 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %199 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %198, i32 0, i32 19
  %200 = getelementptr inbounds [6 x i32], [6 x i32]* %199, i64 0, i64 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %222

; <label>:203:                                    ; preds = %197
  %204 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %205 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %204, i32 0, i32 19
  %206 = getelementptr inbounds [6 x i32], [6 x i32]* %205, i64 0, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %222

; <label>:209:                                    ; preds = %203
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %211 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %212 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %211, i32 0, i32 18
  %213 = getelementptr inbounds [6 x float], [6 x float]* %212, i64 0, i64 0
  %214 = load float, float* %213, align 8
  %215 = fpext float %214 to double
  %216 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %217 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %216, i32 0, i32 18
  %218 = getelementptr inbounds [6 x float], [6 x float]* %217, i64 0, i64 1
  %219 = load float, float* %218, align 4
  %220 = fpext float %219 to double
  %221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), double %215, double %220)
  br label %237

; <label>:222:                                    ; preds = %203, %197
  %223 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %224 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %223, i32 0, i32 19
  %225 = getelementptr inbounds [6 x i32], [6 x i32]* %224, i64 0, i64 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

; <label>:228:                                    ; preds = %222
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %230 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %231 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %230, i32 0, i32 18
  %232 = getelementptr inbounds [6 x float], [6 x float]* %231, i64 0, i64 0
  %233 = load float, float* %232, align 8
  %234 = fpext float %233 to double
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), double %234)
  br label %236

; <label>:236:                                    ; preds = %228, %222
  br label %237

; <label>:237:                                    ; preds = %236, %209
  store i32 0, i32* %7, align 4
  br label %238

; <label>:238:                                    ; preds = %312, %237
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %241 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %315

; <label>:244:                                    ; preds = %238
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %249 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %248, i32 0, i32 1
  %250 = load i8**, i8*** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %256 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %255, i32 0, i32 2
  %257 = load float*, float** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %257, i64 %259
  %261 = load float, float* %260, align 4
  %262 = fpext float %261 to double
  %263 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %264 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %263, i32 0, i32 14
  %265 = load i8**, i8*** %264, align 8
  %266 = icmp ne i8** %265, null
  br i1 %266, label %267, label %284

; <label>:267:                                    ; preds = %244
  %268 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %269 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %268, i32 0, i32 14
  %270 = load i8**, i8*** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %284

; <label>:276:                                    ; preds = %267
  %277 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %278 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %277, i32 0, i32 14
  %279 = load i8**, i8*** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %279, i64 %281
  %283 = load i8*, i8** %282, align 8
  br label %285

; <label>:284:                                    ; preds = %267, %244
  br label %285

; <label>:285:                                    ; preds = %284, %276
  %286 = phi i8* [ %283, %276 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), %284 ]
  %287 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %288 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %287, i32 0, i32 15
  %289 = load i8**, i8*** %288, align 8
  %290 = icmp ne i8** %289, null
  br i1 %290, label %291, label %308

; <label>:291:                                    ; preds = %285
  %292 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %293 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %292, i32 0, i32 15
  %294 = load i8**, i8*** %293, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %308

; <label>:300:                                    ; preds = %291
  %301 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %302 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %301, i32 0, i32 15
  %303 = load i8**, i8*** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8*, i8** %303, i64 %305
  %307 = load i8*, i8** %306, align 8
  br label %309

; <label>:308:                                    ; preds = %291, %285
  br label %309

; <label>:309:                                    ; preds = %308, %300
  %310 = phi i8* [ %307, %300 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), %308 ]
  %311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i32 %246, i32 %247, i8* %254, double %262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i8* %286, i32 0, i32 0, i32 0, i8* %310)
  br label %312

; <label>:312:                                    ; preds = %309
  %313 = load i32, i32* %7, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %7, align 4
  br label %238

; <label>:315:                                    ; preds = %238
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %316, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %11, align 4
  br label %318

; <label>:318:                                    ; preds = %498, %315
  %319 = load i32, i32* %11, align 4
  %320 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %321 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = icmp slt i32 %319, %322
  br i1 %323, label %324, label %502

; <label>:324:                                    ; preds = %318
  %325 = load i32, i32* %11, align 4
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %330

; <label>:327:                                    ; preds = %324
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %329 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %328, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %330

; <label>:330:                                    ; preds = %327, %324
  %331 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %332 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %331, i32 0, i32 11
  %333 = load i8*, i8** %332, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %355

; <label>:335:                                    ; preds = %330
  %336 = load i8*, i8** %10, align 8
  %337 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %338 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %337, i32 0, i32 11
  %339 = load i8*, i8** %338, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = call i8* @strncpy(i8* %336, i8* %342, i64 %344) #4
  %346 = load i8*, i8** %10, align 8
  %347 = load i32, i32* %6, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  store i8 0, i8* %349, align 1
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* %9, align 4
  %353 = load i8*, i8** %10, align 8
  %354 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %350, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %351, i32 %352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %353)
  br label %355

; <label>:355:                                    ; preds = %335, %330
  %356 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %357 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %356, i32 0, i32 13
  %358 = load i8*, i8** %357, align 8
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %380

; <label>:360:                                    ; preds = %355
  %361 = load i8*, i8** %10, align 8
  %362 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %363 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %362, i32 0, i32 13
  %364 = load i8*, i8** %363, align 8
  %365 = load i32, i32* %11, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %364, i64 %366
  %368 = load i32, i32* %6, align 4
  %369 = sext i32 %368 to i64
  %370 = call i8* @strncpy(i8* %361, i8* %367, i64 %369) #4
  %371 = load i8*, i8** %10, align 8
  %372 = load i32, i32* %6, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  store i8 0, i8* %374, align 1
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %376 = load i32, i32* %9, align 4
  %377 = load i32, i32* %9, align 4
  %378 = load i8*, i8** %10, align 8
  %379 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %375, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %376, i32 %377, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %378)
  br label %380

; <label>:380:                                    ; preds = %360, %355
  store i32 0, i32* %7, align 4
  br label %381

; <label>:381:                                    ; preds = %494, %380
  %382 = load i32, i32* %7, align 4
  %383 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %384 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 4
  %386 = icmp slt i32 %382, %385
  br i1 %386, label %387, label %497

; <label>:387:                                    ; preds = %381
  %388 = load i8*, i8** %10, align 8
  %389 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %390 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %389, i32 0, i32 0
  %391 = load i8**, i8*** %390, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8*, i8** %391, i64 %393
  %395 = load i8*, i8** %394, align 8
  %396 = load i32, i32* %11, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8, i8* %395, i64 %397
  %399 = load i32, i32* %6, align 4
  %400 = sext i32 %399 to i64
  %401 = call i8* @strncpy(i8* %388, i8* %398, i64 %400) #4
  %402 = load i8*, i8** %10, align 8
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %402, i64 %404
  store i8 0, i8* %405, align 1
  %406 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %407 = load i32, i32* %9, align 4
  %408 = load i32, i32* %9, align 4
  %409 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %410 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %409, i32 0, i32 1
  %411 = load i8**, i8*** %410, align 8
  %412 = load i32, i32* %7, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8*, i8** %411, i64 %413
  %415 = load i8*, i8** %414, align 8
  %416 = load i8*, i8** %10, align 8
  %417 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %406, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %407, i32 %408, i8* %415, i8* %416)
  %418 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %419 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %418, i32 0, i32 16
  %420 = load i8**, i8*** %419, align 8
  %421 = icmp ne i8** %420, null
  br i1 %421, label %422, label %455

; <label>:422:                                    ; preds = %387
  %423 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %424 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %423, i32 0, i32 16
  %425 = load i8**, i8*** %424, align 8
  %426 = load i32, i32* %7, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8*, i8** %425, i64 %427
  %429 = load i8*, i8** %428, align 8
  %430 = icmp ne i8* %429, null
  br i1 %430, label %431, label %455

; <label>:431:                                    ; preds = %422
  %432 = load i8*, i8** %10, align 8
  %433 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %434 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %433, i32 0, i32 16
  %435 = load i8**, i8*** %434, align 8
  %436 = load i32, i32* %7, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8*, i8** %435, i64 %437
  %439 = load i8*, i8** %438, align 8
  %440 = load i32, i32* %11, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8, i8* %439, i64 %441
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = call i8* @strncpy(i8* %432, i8* %442, i64 %444) #4
  %446 = load i8*, i8** %10, align 8
  %447 = load i32, i32* %6, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %446, i64 %448
  store i8 0, i8* %449, align 1
  %450 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %9, align 4
  %453 = load i8*, i8** %10, align 8
  %454 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %450, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %451, i32 %452, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %453)
  br label %455

; <label>:455:                                    ; preds = %431, %422, %387
  %456 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %457 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %456, i32 0, i32 17
  %458 = load i8**, i8*** %457, align 8
  %459 = icmp ne i8** %458, null
  br i1 %459, label %460, label %493

; <label>:460:                                    ; preds = %455
  %461 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %462 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %461, i32 0, i32 17
  %463 = load i8**, i8*** %462, align 8
  %464 = load i32, i32* %7, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8*, i8** %463, i64 %465
  %467 = load i8*, i8** %466, align 8
  %468 = icmp ne i8* %467, null
  br i1 %468, label %469, label %493

; <label>:469:                                    ; preds = %460
  %470 = load i8*, i8** %10, align 8
  %471 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %472 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %471, i32 0, i32 17
  %473 = load i8**, i8*** %472, align 8
  %474 = load i32, i32* %7, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8*, i8** %473, i64 %475
  %477 = load i8*, i8** %476, align 8
  %478 = load i32, i32* %11, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i8, i8* %477, i64 %479
  %481 = load i32, i32* %6, align 4
  %482 = sext i32 %481 to i64
  %483 = call i8* @strncpy(i8* %470, i8* %480, i64 %482) #4
  %484 = load i8*, i8** %10, align 8
  %485 = load i32, i32* %6, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i8, i8* %484, i64 %486
  store i8 0, i8* %487, align 1
  %488 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %489 = load i32, i32* %9, align 4
  %490 = load i32, i32* %9, align 4
  %491 = load i8*, i8** %10, align 8
  %492 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %488, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %489, i32 %490, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %491)
  br label %493

; <label>:493:                                    ; preds = %469, %460, %455
  br label %494

; <label>:494:                                    ; preds = %493
  %495 = load i32, i32* %7, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %7, align 4
  br label %381

; <label>:497:                                    ; preds = %381
  br label %498

; <label>:498:                                    ; preds = %497
  %499 = load i32, i32* %6, align 4
  %500 = load i32, i32* %11, align 4
  %501 = add nsw i32 %500, %499
  store i32 %501, i32* %11, align 4
  br label %318

; <label>:502:                                    ; preds = %318
  %503 = load i8*, i8** %10, align 8
  call void @free(i8* %503) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @WriteSELEXOneBlock(%struct._IO_FILE*, %struct.msa_struct*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.msa_struct* %1, %struct.msa_struct** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %7 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  call void @actually_write_selex(%struct._IO_FILE* %5, %struct.msa_struct* %6, i32 %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @DealignAseqs(i8**, i32, i8***) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8***, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8*** %2, i8**** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 738, i64 %14)
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

; <label>:17:                                     ; preds = %143, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %146

; <label>:21:                                     ; preds = %17
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strlen(i8* %26) #5
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 1
  %33 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 744, i64 %32)
  %34 = load i8**, i8*** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %33, i8** %37, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %38

; <label>:38:                                     ; preds = %131, %21
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %134

; <label>:50:                                     ; preds = %38
  %51 = load i8**, i8*** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %130, label %62

; <label>:62:                                     ; preds = %50
  %63 = load i8**, i8*** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %130, label %74

; <label>:74:                                     ; preds = %62
  %75 = load i8**, i8*** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 95
  br i1 %85, label %130, label %86

; <label>:86:                                     ; preds = %74
  %87 = load i8**, i8*** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 45
  br i1 %97, label %130, label %98

; <label>:98:                                     ; preds = %86
  %99 = load i8**, i8*** %4, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 126
  br i1 %109, label %130, label %110

; <label>:110:                                    ; preds = %98
  %111 = load i8**, i8*** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = load i8**, i8*** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 %119, i8* %127, align 1
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %130

; <label>:130:                                    ; preds = %110, %98, %86, %74, %62, %50
  br label %131

; <label>:131:                                    ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %38

; <label>:134:                                    ; preds = %38
  %135 = load i8**, i8*** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 0, i8* %142, align 1
  br label %143

; <label>:143:                                    ; preds = %134
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %17

; <label>:146:                                    ; preds = %17
  %147 = load i8**, i8*** %7, align 8
  %148 = load i8***, i8**** %6, align 8
  store i8** %147, i8*** %148, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @IsSELEXFormat(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %4, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i32 4, i32* @squid_errno, align 4
  store i32 0, i32* %2, align 4
  br label %118

; <label>:12:                                     ; preds = %1
  store i32 0, i32* %7, align 4
  br label %13

; <label>:13:                                     ; preds = %113, %105, %101, %96, %12
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 500
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %19 = call i8* @fgets(i8* %17, i32 4096, %struct._IO_FILE* %18)
  %20 = icmp ne i8* %19, null
  br label %21

; <label>:21:                                     ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %114

; <label>:23:                                     ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %23
  br label %115

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %32 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i64 4) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  br label %115

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35
  br label %115

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %42 = call i32 @strncmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i64 4) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %40
  br label %115

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %45
  br label %115

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i64 4) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %50
  br label %115

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i64 4) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %55
  br label %115

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %62 = call i32 @strncmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i64 4) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %60
  br label %115

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 4) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %65
  br label %115

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %72 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %70
  br label %115

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %77 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %75
  br label %115

; <label>:80:                                     ; preds = %75
  br label %81

; <label>:81:                                     ; preds = %80
  br label %82

; <label>:82:                                     ; preds = %81
  br label %83

; <label>:83:                                     ; preds = %82
  br label %84

; <label>:84:                                     ; preds = %83
  br label %85

; <label>:85:                                     ; preds = %84
  br label %86

; <label>:86:                                     ; preds = %85
  br label %87

; <label>:87:                                     ; preds = %86
  br label %88

; <label>:88:                                     ; preds = %87
  br label %89

; <label>:89:                                     ; preds = %88
  br label %90

; <label>:90:                                     ; preds = %89
  %91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %92 = load i8, i8* %91, align 16
  %93 = sext i8 %92 to i32
  %94 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @commentsyms, i32 0, i32 0), i32 %93) #5
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %90
  br label %13

; <label>:97:                                     ; preds = %90
  %98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %99 = call i8* @strtok(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %99, i8** %6, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %97
  br label %13

; <label>:102:                                    ; preds = %97
  %103 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %103, i8** %6, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  br label %13

; <label>:106:                                    ; preds = %102
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @Seqtype(i8* %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

; <label>:110:                                    ; preds = %106
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %112 = call i32 @fclose(%struct._IO_FILE* %111)
  store i32 0, i32* %2, align 4
  br label %118

; <label>:113:                                    ; preds = %106
  br label %13

; <label>:114:                                    ; preds = %21
  br label %115

; <label>:115:                                    ; preds = %114, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %117 = call i32 @fclose(%struct._IO_FILE* %116)
  store i32 1, i32* %2, align 4
  br label %118

; <label>:118:                                    ; preds = %115, %110, %11
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @Seqtype(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

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
