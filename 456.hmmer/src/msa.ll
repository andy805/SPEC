; ModuleID = 'msa.c'
source_filename = "msa.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"msa.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to sre_strcat()\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Parse error: no sequences were found for alignment %s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Parse error: No sequence for %s in alignment %s\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"Parse error: some weights are set, but %s doesn't have one in alignment %s\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Parse error: sequence %s: length %d, expected %d in alignment %s\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"Parse error: #=GR SS annotation for %s: length %d, expected %d in alignment %s\00", align 1
@.str.9 = private unnamed_addr constant [79 x i8] c"Parse error: #=GR SA annotation for %s: length %d, expected %d in alignment %s\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"Parse error: #=GC SS_cons annotation: length %d, expected %d in alignment %s\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"Parse error: #=GC SA_cons annotation: length %d, expected %d in alignment %s\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"Parse error: #=GC RF annotation: length %d, expected %d in alignment %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"[STDIN]\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s.ssi\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"Can't autodetect alignment file format from a stdin or gzip pipe\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"Can't determine format of multiple alignment file %s\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"MSAFILE corrupted: bad format index\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"can't write. no such alignment format %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [156 x i8] c"File %s does not appear to be an alignment file;\0Arather, it appears to be an unaligned file in %s format.\0AI'm expecting an alignment file in this context.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msa_struct* @MSAAlloc(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msa_struct*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 68, i64 360)
  %8 = bitcast i8* %7 to %struct.msa_struct*
  store %struct.msa_struct* %8, %struct.msa_struct** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 69, i64 %11)
  %13 = bitcast i8* %12 to i8**
  %14 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 0
  store i8** %13, i8*** %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 8, %17
  %19 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 70, i64 %18)
  %20 = bitcast i8* %19 to i8**
  %21 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 1
  store i8** %20, i8*** %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 71, i64 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 42
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 72, i64 %32)
  %34 = bitcast i8* %33 to float*
  %35 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 2
  store float* %34, float** %36, align 8
  store i32 0, i32* %6, align 4
  br label %37

; <label>:37:                                     ; preds = %82, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %85

; <label>:41:                                     ; preds = %37
  %42 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* null, i8** %47, align 8
  %48 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %48, i32 0, i32 42
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 0, i32* %53, align 4
  %54 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %55 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %54, i32 0, i32 2
  %56 = load float*, float** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  store float -1.000000e+00, float* %59, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

; <label>:62:                                     ; preds = %41
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 1, %65
  %67 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 80, i64 %66)
  %68 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %69 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %67, i8** %73, align 8
  br label %81

; <label>:74:                                     ; preds = %41
  %75 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %76 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* null, i8** %80, align 8
  br label %81

; <label>:81:                                     ; preds = %74, %62
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %37

; <label>:85:                                     ; preds = %37
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %88 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %90 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %89, i32 0, i32 4
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %93 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %92, i32 0, i32 40
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %96 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %95, i32 0, i32 41
  store i32 %94, i32* %96, align 4
  %97 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %98 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %97, i32 0, i32 5
  store i32 0, i32* %98, align 8
  %99 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %100 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %99, i32 0, i32 6
  store i32 0, i32* %100, align 4
  %101 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %102 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %101, i32 0, i32 7
  store i8* null, i8** %102, align 8
  %103 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %104 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %103, i32 0, i32 8
  store i8* null, i8** %104, align 8
  %105 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %106 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %105, i32 0, i32 9
  store i8* null, i8** %106, align 8
  %107 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %108 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %107, i32 0, i32 10
  store i8* null, i8** %108, align 8
  %109 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %110 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %109, i32 0, i32 11
  store i8* null, i8** %110, align 8
  %111 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %112 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %111, i32 0, i32 12
  store i8* null, i8** %112, align 8
  %113 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %114 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %113, i32 0, i32 13
  store i8* null, i8** %114, align 8
  %115 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %116 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %115, i32 0, i32 14
  store i8** null, i8*** %116, align 8
  %117 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %118 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %117, i32 0, i32 15
  store i8** null, i8*** %118, align 8
  %119 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %120 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %119, i32 0, i32 16
  store i8** null, i8*** %120, align 8
  %121 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %122 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %121, i32 0, i32 43
  store i32* null, i32** %122, align 8
  %123 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %124 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %123, i32 0, i32 17
  store i8** null, i8*** %124, align 8
  %125 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %126 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %125, i32 0, i32 44
  store i32* null, i32** %126, align 8
  %127 = call %struct.GKI* @GKIInit()
  %128 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %129 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %128, i32 0, i32 39
  store %struct.GKI* %127, %struct.GKI** %129, align 8
  %130 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %131 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %130, i32 0, i32 45
  store i32 0, i32* %131, align 8
  store i32 0, i32* %6, align 4
  br label %132

; <label>:132:                                    ; preds = %146, %85
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 6
  br i1 %134, label %135, label %149

; <label>:135:                                    ; preds = %132
  %136 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %137 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %136, i32 0, i32 18
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [6 x float], [6 x float]* %137, i64 0, i64 %139
  store float 0.000000e+00, float* %140, align 4
  %141 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %142 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %141, i32 0, i32 19
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [6 x i32], [6 x i32]* %142, i64 0, i64 %144
  store i32 0, i32* %145, align 4
  br label %146

; <label>:146:                                    ; preds = %135
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %132

; <label>:149:                                    ; preds = %132
  %150 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %151 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %150, i32 0, i32 20
  store i8** null, i8*** %151, align 8
  %152 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %153 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %152, i32 0, i32 21
  store i32 0, i32* %153, align 8
  %154 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %155 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %154, i32 0, i32 22
  store i32 0, i32* %155, align 4
  %156 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %157 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %156, i32 0, i32 23
  store i8** null, i8*** %157, align 8
  %158 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %159 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %158, i32 0, i32 24
  store i8** null, i8*** %159, align 8
  %160 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %161 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %160, i32 0, i32 25
  store i32 0, i32* %161, align 8
  %162 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %163 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %162, i32 0, i32 27
  store i8** null, i8*** %163, align 8
  %164 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %165 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %164, i32 0, i32 28
  store i8*** null, i8**** %165, align 8
  %166 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %167 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %166, i32 0, i32 29
  store %struct.GKI* null, %struct.GKI** %167, align 8
  %168 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %169 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %168, i32 0, i32 30
  store i32 0, i32* %169, align 8
  %170 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %171 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %170, i32 0, i32 31
  store i8** null, i8*** %171, align 8
  %172 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %173 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %172, i32 0, i32 32
  store i8** null, i8*** %173, align 8
  %174 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %175 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %174, i32 0, i32 33
  store %struct.GKI* null, %struct.GKI** %175, align 8
  %176 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %177 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %176, i32 0, i32 34
  store i32 0, i32* %177, align 8
  %178 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %179 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %178, i32 0, i32 35
  store i8** null, i8*** %179, align 8
  %180 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %181 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %180, i32 0, i32 36
  store i8*** null, i8**** %181, align 8
  %182 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %183 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %182, i32 0, i32 37
  store %struct.GKI* null, %struct.GKI** %183, align 8
  %184 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %185 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %184, i32 0, i32 38
  store i32 0, i32* %185, align 8
  %186 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  ret %struct.msa_struct* %186
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare %struct.GKI* @GKIInit() #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAExpand(%struct.msa_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %2, align 8
  %5 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 41
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 40
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = bitcast i8** %14 to i8*
  %16 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %17 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 40
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 162, i8* %15, i64 %20)
  %22 = bitcast i8* %21 to i8**
  %23 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 0
  store i8** %22, i8*** %24, align 8
  %25 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = bitcast i8** %27 to i8*
  %29 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %30 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 40
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 163, i8* %28, i64 %33)
  %35 = bitcast i8* %34 to i8**
  %36 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %37 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %36, i32 0, i32 1
  store i8** %35, i8*** %37, align 8
  %38 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %39 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %38, i32 0, i32 42
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 40
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 164, i8* %41, i64 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %50 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 42
  store i32* %48, i32** %50, align 8
  %51 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %52 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %51, i32 0, i32 2
  %53 = load float*, float** %52, align 8
  %54 = bitcast float* %53 to i8*
  %55 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 40
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 165, i8* %54, i64 %59)
  %61 = bitcast i8* %60 to float*
  %62 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %63 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %62, i32 0, i32 2
  store float* %61, float** %63, align 8
  %64 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %65 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 16
  %66 = load i8**, i8*** %65, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %95

; <label>:68:                                     ; preds = %1
  %69 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %70 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 16
  %71 = load i8**, i8*** %70, align 8
  %72 = bitcast i8** %71 to i8*
  %73 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %74 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %73, i32 0, i32 40
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 8, %76
  %78 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 168, i8* %72, i64 %77)
  %79 = bitcast i8* %78 to i8**
  %80 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %81 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %80, i32 0, i32 16
  store i8** %79, i8*** %81, align 8
  %82 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %83 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 43
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %87 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %86, i32 0, i32 40
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 169, i8* %85, i64 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %94 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %93, i32 0, i32 43
  store i32* %92, i32** %94, align 8
  br label %95

; <label>:95:                                     ; preds = %68, %1
  %96 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %97 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %96, i32 0, i32 17
  %98 = load i8**, i8*** %97, align 8
  %99 = icmp ne i8** %98, null
  br i1 %99, label %100, label %127

; <label>:100:                                    ; preds = %95
  %101 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %102 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %101, i32 0, i32 17
  %103 = load i8**, i8*** %102, align 8
  %104 = bitcast i8** %103 to i8*
  %105 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %106 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %105, i32 0, i32 40
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = mul i64 8, %108
  %110 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 172, i8* %104, i64 %109)
  %111 = bitcast i8* %110 to i8**
  %112 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %113 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %112, i32 0, i32 17
  store i8** %111, i8*** %113, align 8
  %114 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %115 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %114, i32 0, i32 44
  %116 = load i32*, i32** %115, align 8
  %117 = bitcast i32* %116 to i8*
  %118 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %119 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %118, i32 0, i32 40
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = mul i64 4, %121
  %123 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 173, i8* %117, i64 %122)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %126 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %125, i32 0, i32 44
  store i32* %124, i32** %126, align 8
  br label %127

; <label>:127:                                    ; preds = %100, %95
  %128 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %129 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %128, i32 0, i32 14
  %130 = load i8**, i8*** %129, align 8
  %131 = icmp ne i8** %130, null
  br i1 %131, label %132, label %146

; <label>:132:                                    ; preds = %127
  %133 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %134 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %133, i32 0, i32 14
  %135 = load i8**, i8*** %134, align 8
  %136 = bitcast i8** %135 to i8*
  %137 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %138 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %137, i32 0, i32 40
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = mul i64 8, %140
  %142 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 176, i8* %136, i64 %141)
  %143 = bitcast i8* %142 to i8**
  %144 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %145 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %144, i32 0, i32 14
  store i8** %143, i8*** %145, align 8
  br label %146

; <label>:146:                                    ; preds = %132, %127
  %147 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %148 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %147, i32 0, i32 15
  %149 = load i8**, i8*** %148, align 8
  %150 = icmp ne i8** %149, null
  br i1 %150, label %151, label %165

; <label>:151:                                    ; preds = %146
  %152 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %153 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %152, i32 0, i32 15
  %154 = load i8**, i8*** %153, align 8
  %155 = bitcast i8** %154 to i8*
  %156 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %157 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %156, i32 0, i32 40
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = mul i64 8, %159
  %161 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 178, i8* %155, i64 %160)
  %162 = bitcast i8* %161 to i8**
  %163 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %163, i32 0, i32 15
  store i8** %162, i8*** %164, align 8
  br label %165

; <label>:165:                                    ; preds = %151, %146
  %166 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %167 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %166, i32 0, i32 40
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %170 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %169, i32 0, i32 41
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %168, %171
  store i32 %172, i32* %3, align 4
  br label %173

; <label>:173:                                    ; preds = %345, %165
  %174 = load i32, i32* %3, align 4
  %175 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %176 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %175, i32 0, i32 40
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %348

; <label>:179:                                    ; preds = %173
  %180 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %181 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %180, i32 0, i32 1
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  store i8* null, i8** %185, align 8
  %186 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %187 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %186, i32 0, i32 2
  %188 = load float*, float** %187, align 8
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  store float -1.000000e+00, float* %191, align 4
  %192 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %193 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %192, i32 0, i32 14
  %194 = load i8**, i8*** %193, align 8
  %195 = icmp ne i8** %194, null
  br i1 %195, label %196, label %203

; <label>:196:                                    ; preds = %179
  %197 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %198 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %197, i32 0, i32 14
  %199 = load i8**, i8*** %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  store i8* null, i8** %202, align 8
  br label %203

; <label>:203:                                    ; preds = %196, %179
  %204 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %205 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %204, i32 0, i32 15
  %206 = load i8**, i8*** %205, align 8
  %207 = icmp ne i8** %206, null
  br i1 %207, label %208, label %215

; <label>:208:                                    ; preds = %203
  %209 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %210 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %209, i32 0, i32 15
  %211 = load i8**, i8*** %210, align 8
  %212 = load i32, i32* %3, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  store i8* null, i8** %214, align 8
  br label %215

; <label>:215:                                    ; preds = %208, %203
  %216 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %217 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %241

; <label>:220:                                    ; preds = %215
  %221 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %222 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %221, i32 0, i32 0
  %223 = load i8**, i8*** %222, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %229 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = mul i64 1, %232
  %234 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 189, i8* %227, i64 %233)
  %235 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %236 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %235, i32 0, i32 0
  %237 = load i8**, i8*** %236, align 8
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %237, i64 %239
  store i8* %234, i8** %240, align 8
  br label %248

; <label>:241:                                    ; preds = %215
  %242 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %243 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %242, i32 0, i32 0
  %244 = load i8**, i8*** %243, align 8
  %245 = load i32, i32* %3, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %244, i64 %246
  store i8* null, i8** %247, align 8
  br label %248

; <label>:248:                                    ; preds = %241, %220
  %249 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %250 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %249, i32 0, i32 42
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %3, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 0, i32* %254, align 4
  %255 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %256 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %255, i32 0, i32 16
  %257 = load i8**, i8*** %256, align 8
  %258 = icmp ne i8** %257, null
  br i1 %258, label %259, label %299

; <label>:259:                                    ; preds = %248
  %260 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %261 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %285

; <label>:264:                                    ; preds = %259
  %265 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %266 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %265, i32 0, i32 16
  %267 = load i8**, i8*** %266, align 8
  %268 = load i32, i32* %3, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %273 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = mul i64 1, %276
  %278 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 195, i8* %271, i64 %277)
  %279 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %280 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %279, i32 0, i32 16
  %281 = load i8**, i8*** %280, align 8
  %282 = load i32, i32* %3, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8*, i8** %281, i64 %283
  store i8* %278, i8** %284, align 8
  br label %292

; <label>:285:                                    ; preds = %259
  %286 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %287 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %286, i32 0, i32 16
  %288 = load i8**, i8*** %287, align 8
  %289 = load i32, i32* %3, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  store i8* null, i8** %291, align 8
  br label %292

; <label>:292:                                    ; preds = %285, %264
  %293 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %294 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %293, i32 0, i32 43
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %3, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 0, i32* %298, align 4
  br label %299

; <label>:299:                                    ; preds = %292, %248
  %300 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %301 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %300, i32 0, i32 17
  %302 = load i8**, i8*** %301, align 8
  %303 = icmp ne i8** %302, null
  br i1 %303, label %304, label %344

; <label>:304:                                    ; preds = %299
  %305 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %306 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %330

; <label>:309:                                    ; preds = %304
  %310 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %311 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %310, i32 0, i32 16
  %312 = load i8**, i8*** %311, align 8
  %313 = load i32, i32* %3, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %312, i64 %314
  %316 = load i8*, i8** %315, align 8
  %317 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %318 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = mul i64 1, %321
  %323 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 201, i8* %316, i64 %322)
  %324 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %325 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %324, i32 0, i32 17
  %326 = load i8**, i8*** %325, align 8
  %327 = load i32, i32* %3, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8*, i8** %326, i64 %328
  store i8* %323, i8** %329, align 8
  br label %337

; <label>:330:                                    ; preds = %304
  %331 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %332 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %331, i32 0, i32 17
  %333 = load i8**, i8*** %332, align 8
  %334 = load i32, i32* %3, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8*, i8** %333, i64 %335
  store i8* null, i8** %336, align 8
  br label %337

; <label>:337:                                    ; preds = %330, %309
  %338 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %339 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %338, i32 0, i32 44
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %3, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  store i32 0, i32* %343, align 4
  br label %344

; <label>:344:                                    ; preds = %337, %299
  br label %345

; <label>:345:                                    ; preds = %344
  %346 = load i32, i32* %3, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %3, align 4
  br label %173

; <label>:348:                                    ; preds = %173
  %349 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %350 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %349, i32 0, i32 28
  %351 = load i8***, i8**** %350, align 8
  %352 = icmp ne i8*** %351, null
  br i1 %352, label %353, label %424

; <label>:353:                                    ; preds = %348
  store i32 0, i32* %3, align 4
  br label %354

; <label>:354:                                    ; preds = %420, %353
  %355 = load i32, i32* %3, align 4
  %356 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %357 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %356, i32 0, i32 30
  %358 = load i32, i32* %357, align 8
  %359 = icmp slt i32 %355, %358
  br i1 %359, label %360, label %423

; <label>:360:                                    ; preds = %354
  %361 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %362 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %361, i32 0, i32 28
  %363 = load i8***, i8**** %362, align 8
  %364 = load i32, i32* %3, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8**, i8*** %363, i64 %365
  %367 = load i8**, i8*** %366, align 8
  %368 = icmp ne i8** %367, null
  br i1 %368, label %369, label %419

; <label>:369:                                    ; preds = %360
  %370 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %371 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %370, i32 0, i32 28
  %372 = load i8***, i8**** %371, align 8
  %373 = load i32, i32* %3, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8**, i8*** %372, i64 %374
  %376 = load i8**, i8*** %375, align 8
  %377 = bitcast i8** %376 to i8*
  %378 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %379 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %378, i32 0, i32 40
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = mul i64 8, %381
  %383 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 217, i8* %377, i64 %382)
  %384 = bitcast i8* %383 to i8**
  %385 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %386 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %385, i32 0, i32 28
  %387 = load i8***, i8**** %386, align 8
  %388 = load i32, i32* %3, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8**, i8*** %387, i64 %389
  store i8** %384, i8*** %390, align 8
  %391 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %392 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %391, i32 0, i32 40
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %395 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %394, i32 0, i32 41
  %396 = load i32, i32* %395, align 4
  %397 = sub nsw i32 %393, %396
  store i32 %397, i32* %4, align 4
  br label %398

; <label>:398:                                    ; preds = %415, %369
  %399 = load i32, i32* %4, align 4
  %400 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %401 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %400, i32 0, i32 40
  %402 = load i32, i32* %401, align 8
  %403 = icmp slt i32 %399, %402
  br i1 %403, label %404, label %418

; <label>:404:                                    ; preds = %398
  %405 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %406 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %405, i32 0, i32 28
  %407 = load i8***, i8**** %406, align 8
  %408 = load i32, i32* %3, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8**, i8*** %407, i64 %409
  %411 = load i8**, i8*** %410, align 8
  %412 = load i32, i32* %4, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8*, i8** %411, i64 %413
  store i8* null, i8** %414, align 8
  br label %415

; <label>:415:                                    ; preds = %404
  %416 = load i32, i32* %4, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %4, align 4
  br label %398

; <label>:418:                                    ; preds = %398
  br label %419

; <label>:419:                                    ; preds = %418, %360
  br label %420

; <label>:420:                                    ; preds = %419
  %421 = load i32, i32* %3, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %3, align 4
  br label %354

; <label>:423:                                    ; preds = %354
  br label %424

; <label>:424:                                    ; preds = %423, %348
  %425 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %426 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %425, i32 0, i32 36
  %427 = load i8***, i8**** %426, align 8
  %428 = icmp ne i8*** %427, null
  br i1 %428, label %429, label %500

; <label>:429:                                    ; preds = %424
  store i32 0, i32* %3, align 4
  br label %430

; <label>:430:                                    ; preds = %496, %429
  %431 = load i32, i32* %3, align 4
  %432 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %433 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %432, i32 0, i32 38
  %434 = load i32, i32* %433, align 8
  %435 = icmp slt i32 %431, %434
  br i1 %435, label %436, label %499

; <label>:436:                                    ; preds = %430
  %437 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %438 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %437, i32 0, i32 36
  %439 = load i8***, i8**** %438, align 8
  %440 = load i32, i32* %3, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8**, i8*** %439, i64 %441
  %443 = load i8**, i8*** %442, align 8
  %444 = icmp ne i8** %443, null
  br i1 %444, label %445, label %495

; <label>:445:                                    ; preds = %436
  %446 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %447 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %446, i32 0, i32 36
  %448 = load i8***, i8**** %447, align 8
  %449 = load i32, i32* %3, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8**, i8*** %448, i64 %450
  %452 = load i8**, i8*** %451, align 8
  %453 = bitcast i8** %452 to i8*
  %454 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %455 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %454, i32 0, i32 40
  %456 = load i32, i32* %455, align 8
  %457 = sext i32 %456 to i64
  %458 = mul i64 8, %457
  %459 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 232, i8* %453, i64 %458)
  %460 = bitcast i8* %459 to i8**
  %461 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %462 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %461, i32 0, i32 36
  %463 = load i8***, i8**** %462, align 8
  %464 = load i32, i32* %3, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8**, i8*** %463, i64 %465
  store i8** %460, i8*** %466, align 8
  %467 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %468 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %467, i32 0, i32 40
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %471 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %470, i32 0, i32 41
  %472 = load i32, i32* %471, align 4
  %473 = sub nsw i32 %469, %472
  store i32 %473, i32* %4, align 4
  br label %474

; <label>:474:                                    ; preds = %491, %445
  %475 = load i32, i32* %4, align 4
  %476 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %477 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %476, i32 0, i32 40
  %478 = load i32, i32* %477, align 8
  %479 = icmp slt i32 %475, %478
  br i1 %479, label %480, label %494

; <label>:480:                                    ; preds = %474
  %481 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %482 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %481, i32 0, i32 36
  %483 = load i8***, i8**** %482, align 8
  %484 = load i32, i32* %3, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8**, i8*** %483, i64 %485
  %487 = load i8**, i8*** %486, align 8
  %488 = load i32, i32* %4, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8*, i8** %487, i64 %489
  store i8* null, i8** %490, align 8
  br label %491

; <label>:491:                                    ; preds = %480
  %492 = load i32, i32* %4, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %4, align 4
  br label %474

; <label>:494:                                    ; preds = %474
  br label %495

; <label>:495:                                    ; preds = %494, %436
  br label %496

; <label>:496:                                    ; preds = %495
  %497 = load i32, i32* %3, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %3, align 4
  br label %430

; <label>:499:                                    ; preds = %430
  br label %500

; <label>:500:                                    ; preds = %499, %424
  ret void
}

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAFree(%struct.msa_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  store %struct.msa_struct* %0, %struct.msa_struct** %2, align 8
  %3 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  call void @Free2DArray(i8** %5, i32 %8)
  %9 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %10 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 1
  %11 = load i8**, i8*** %10, align 8
  %12 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  call void @Free2DArray(i8** %11, i32 %14)
  %15 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 14
  %17 = load i8**, i8*** %16, align 8
  %18 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  call void @Free2DArray(i8** %17, i32 %20)
  %21 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 15
  %23 = load i8**, i8*** %22, align 8
  %24 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  call void @Free2DArray(i8** %23, i32 %26)
  %27 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %28 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 16
  %29 = load i8**, i8*** %28, align 8
  %30 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %31 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  call void @Free2DArray(i8** %29, i32 %32)
  %33 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 17
  %35 = load i8**, i8*** %34, align 8
  %36 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %37 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  call void @Free2DArray(i8** %35, i32 %38)
  %39 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %40 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 42
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %1
  %44 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 42
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to i8*
  call void @free(i8* %47) #4
  br label %48

; <label>:48:                                     ; preds = %43, %1
  %49 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %50 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 2
  %51 = load float*, float** %50, align 8
  %52 = icmp ne float* %51, null
  br i1 %52, label %53, label %58

; <label>:53:                                     ; preds = %48
  %54 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %55 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %54, i32 0, i32 2
  %56 = load float*, float** %55, align 8
  %57 = bitcast float* %56 to i8*
  call void @free(i8* %57) #4
  br label %58

; <label>:58:                                     ; preds = %53, %48
  %59 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %60 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 7
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

; <label>:63:                                     ; preds = %58
  %64 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %65 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 7
  %66 = load i8*, i8** %65, align 8
  call void @free(i8* %66) #4
  br label %67

; <label>:67:                                     ; preds = %63, %58
  %68 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %69 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 8
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %67
  %73 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %74 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %73, i32 0, i32 8
  %75 = load i8*, i8** %74, align 8
  call void @free(i8* %75) #4
  br label %76

; <label>:76:                                     ; preds = %72, %67
  %77 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %78 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %77, i32 0, i32 9
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

; <label>:81:                                     ; preds = %76
  %82 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %83 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 9
  %84 = load i8*, i8** %83, align 8
  call void @free(i8* %84) #4
  br label %85

; <label>:85:                                     ; preds = %81, %76
  %86 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %87 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %86, i32 0, i32 10
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %85
  %91 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %92 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 10
  %93 = load i8*, i8** %92, align 8
  call void @free(i8* %93) #4
  br label %94

; <label>:94:                                     ; preds = %90, %85
  %95 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %96 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %95, i32 0, i32 11
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

; <label>:99:                                     ; preds = %94
  %100 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %101 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %100, i32 0, i32 11
  %102 = load i8*, i8** %101, align 8
  call void @free(i8* %102) #4
  br label %103

; <label>:103:                                    ; preds = %99, %94
  %104 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %105 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %104, i32 0, i32 12
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %112

; <label>:108:                                    ; preds = %103
  %109 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %110 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %109, i32 0, i32 12
  %111 = load i8*, i8** %110, align 8
  call void @free(i8* %111) #4
  br label %112

; <label>:112:                                    ; preds = %108, %103
  %113 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %114 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %113, i32 0, i32 13
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %121

; <label>:117:                                    ; preds = %112
  %118 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %119 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %118, i32 0, i32 13
  %120 = load i8*, i8** %119, align 8
  call void @free(i8* %120) #4
  br label %121

; <label>:121:                                    ; preds = %117, %112
  %122 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %123 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %122, i32 0, i32 43
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %131

; <label>:126:                                    ; preds = %121
  %127 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %128 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 43
  %129 = load i32*, i32** %128, align 8
  %130 = bitcast i32* %129 to i8*
  call void @free(i8* %130) #4
  br label %131

; <label>:131:                                    ; preds = %126, %121
  %132 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %133 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %132, i32 0, i32 44
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %141

; <label>:136:                                    ; preds = %131
  %137 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %138 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %137, i32 0, i32 44
  %139 = load i32*, i32** %138, align 8
  %140 = bitcast i32* %139 to i8*
  call void @free(i8* %140) #4
  br label %141

; <label>:141:                                    ; preds = %136, %131
  %142 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %143 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %142, i32 0, i32 20
  %144 = load i8**, i8*** %143, align 8
  %145 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %146 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %145, i32 0, i32 21
  %147 = load i32, i32* %146, align 8
  call void @Free2DArray(i8** %144, i32 %147)
  %148 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %149 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %148, i32 0, i32 23
  %150 = load i8**, i8*** %149, align 8
  %151 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %152 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %151, i32 0, i32 25
  %153 = load i32, i32* %152, align 8
  call void @Free2DArray(i8** %150, i32 %153)
  %154 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %155 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %154, i32 0, i32 24
  %156 = load i8**, i8*** %155, align 8
  %157 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %158 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %157, i32 0, i32 25
  %159 = load i32, i32* %158, align 8
  call void @Free2DArray(i8** %156, i32 %159)
  %160 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %161 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %160, i32 0, i32 27
  %162 = load i8**, i8*** %161, align 8
  %163 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %163, i32 0, i32 30
  %165 = load i32, i32* %164, align 8
  call void @Free2DArray(i8** %162, i32 %165)
  %166 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %167 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %166, i32 0, i32 28
  %168 = load i8***, i8**** %167, align 8
  %169 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %170 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %169, i32 0, i32 30
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %173 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  call void @Free3DArray(i8*** %168, i32 %171, i32 %174)
  %175 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %176 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %175, i32 0, i32 31
  %177 = load i8**, i8*** %176, align 8
  %178 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %179 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %178, i32 0, i32 34
  %180 = load i32, i32* %179, align 8
  call void @Free2DArray(i8** %177, i32 %180)
  %181 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %182 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %181, i32 0, i32 32
  %183 = load i8**, i8*** %182, align 8
  %184 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %185 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %184, i32 0, i32 34
  %186 = load i32, i32* %185, align 8
  call void @Free2DArray(i8** %183, i32 %186)
  %187 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %188 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %187, i32 0, i32 35
  %189 = load i8**, i8*** %188, align 8
  %190 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %191 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %190, i32 0, i32 38
  %192 = load i32, i32* %191, align 8
  call void @Free2DArray(i8** %189, i32 %192)
  %193 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %194 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %193, i32 0, i32 36
  %195 = load i8***, i8**** %194, align 8
  %196 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %197 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %196, i32 0, i32 38
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %200 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  call void @Free3DArray(i8*** %195, i32 %198, i32 %201)
  %202 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %203 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %202, i32 0, i32 39
  %204 = load %struct.GKI*, %struct.GKI** %203, align 8
  call void @GKIFree(%struct.GKI* %204)
  %205 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %206 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %205, i32 0, i32 29
  %207 = load %struct.GKI*, %struct.GKI** %206, align 8
  call void @GKIFree(%struct.GKI* %207)
  %208 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %209 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %208, i32 0, i32 33
  %210 = load %struct.GKI*, %struct.GKI** %209, align 8
  call void @GKIFree(%struct.GKI* %210)
  %211 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %212 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %211, i32 0, i32 37
  %213 = load %struct.GKI*, %struct.GKI** %212, align 8
  call void @GKIFree(%struct.GKI* %213)
  %214 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %215 = bitcast %struct.msa_struct* %214 to i8*
  call void @free(i8* %215) #4
  ret void
}

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @Free3DArray(i8***, i32, i32) #1

declare void @GKIFree(%struct.GKI*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MSASetSeqAccession(%struct.msa_struct*, i32, i8*) #0 {
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 14
  %10 = load i8**, i8*** %9, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %12, label %39

; <label>:12:                                     ; preds = %3
  %13 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 40
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 310, i64 %17)
  %19 = bitcast i8* %18 to i8**
  %20 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 14
  store i8** %19, i8*** %21, align 8
  store i32 0, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %35, %12
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 40
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %38

; <label>:28:                                     ; preds = %22
  %29 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %30 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 14
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* null, i8** %34, align 8
  br label %35

; <label>:35:                                     ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %22

; <label>:38:                                     ; preds = %22
  br label %39

; <label>:39:                                     ; preds = %38, %3
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @sre_strdup(i8* %40, i32 -1)
  %42 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 14
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  ret void
}

declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #0 {
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 15
  %10 = load i8**, i8*** %9, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %12, label %39

; <label>:12:                                     ; preds = %3
  %13 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 40
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 335, i64 %17)
  %19 = bitcast i8* %18 to i8**
  %20 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 15
  store i8** %19, i8*** %21, align 8
  store i32 0, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %35, %12
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 40
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %38

; <label>:28:                                     ; preds = %22
  %29 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %30 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 15
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* null, i8** %34, align 8
  br label %35

; <label>:35:                                     ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %22

; <label>:38:                                     ; preds = %22
  br label %39

; <label>:39:                                     ; preds = %38, %3
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @sre_strdup(i8* %40, i32 -1)
  %42 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 15
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAAddComment(%struct.msa_struct*, i8*) #0 {
  %3 = alloca %struct.msa_struct*, align 8
  %4 = alloca i8*, align 8
  store %struct.msa_struct* %0, %struct.msa_struct** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 20
  %7 = load i8**, i8*** %6, align 8
  %8 = icmp eq i8** %7, null
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %2
  %10 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 362, i64 80)
  %11 = bitcast i8* %10 to i8**
  %12 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 20
  store i8** %11, i8*** %13, align 8
  %14 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 22
  store i32 10, i32* %15, align 4
  br label %16

; <label>:16:                                     ; preds = %9, %2
  %17 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %18 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 21
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 22
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %42

; <label>:24:                                     ; preds = %16
  %25 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 22
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 10
  store i32 %28, i32* %26, align 4
  %29 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %30 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 20
  %31 = load i8**, i8*** %30, align 8
  %32 = bitcast i8** %31 to i8*
  %33 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 22
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 367, i8* %32, i64 %37)
  %39 = bitcast i8* %38 to i8**
  %40 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %41 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 20
  store i8** %39, i8*** %41, align 8
  br label %42

; <label>:42:                                     ; preds = %24, %16
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @sre_strdup(i8* %43, i32 -1)
  %45 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %46 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %45, i32 0, i32 20
  %47 = load i8**, i8*** %46, align 8
  %48 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %48, i32 0, i32 21
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %47, i64 %51
  store i8* %44, i8** %52, align 8
  %53 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %54 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 21
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAAddGF(%struct.msa_struct*, i8*, i8*) #0 {
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 23
  %9 = load i8**, i8*** %8, align 8
  %10 = icmp eq i8** %9, null
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %3
  %12 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 395, i64 80)
  %13 = bitcast i8* %12 to i8**
  %14 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 23
  store i8** %13, i8*** %15, align 8
  %16 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 396, i64 80)
  %17 = bitcast i8* %16 to i8**
  %18 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 24
  store i8** %17, i8*** %19, align 8
  %20 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 26
  store i32 10, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %11, %3
  %23 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 25
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %27 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %61

; <label>:30:                                     ; preds = %22
  %31 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 26
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 10
  store i32 %34, i32* %32, align 4
  %35 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 23
  %37 = load i8**, i8*** %36, align 8
  %38 = bitcast i8** %37 to i8*
  %39 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %40 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 26
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 401, i8* %38, i64 %43)
  %45 = bitcast i8* %44 to i8**
  %46 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 23
  store i8** %45, i8*** %47, align 8
  %48 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %48, i32 0, i32 24
  %50 = load i8**, i8*** %49, align 8
  %51 = bitcast i8** %50 to i8*
  %52 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 26
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 402, i8* %51, i64 %56)
  %58 = bitcast i8* %57 to i8**
  %59 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %60 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 24
  store i8** %58, i8*** %60, align 8
  br label %61

; <label>:61:                                     ; preds = %30, %22
  %62 = load i8*, i8** %5, align 8
  %63 = call i8* @sre_strdup(i8* %62, i32 -1)
  %64 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %65 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 23
  %66 = load i8**, i8*** %65, align 8
  %67 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %68 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %67, i32 0, i32 25
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %66, i64 %70
  store i8* %63, i8** %71, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i8* @sre_strdup(i8* %72, i32 -1)
  %74 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %75 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %74, i32 0, i32 24
  %76 = load i8**, i8*** %75, align 8
  %77 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %78 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %77, i32 0, i32 25
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %76, i64 %80
  store i8* %73, i8** %81, align 8
  %82 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %83 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 25
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAAddGS(%struct.msa_struct*, i8*, i32, i8*) #0 {
  %5 = alloca %struct.msa_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 27
  %14 = load i8**, i8*** %13, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %16, label %63

; <label>:16:                                     ; preds = %4
  %17 = call %struct.GKI* @GKIInit()
  %18 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 29
  store %struct.GKI* %17, %struct.GKI** %19, align 8
  %20 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 29
  %22 = load %struct.GKI*, %struct.GKI** %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @GKIStoreKey(%struct.GKI* %22, i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 447, i64 8)
  %26 = bitcast i8* %25 to i8**
  %27 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %28 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 27
  store i8** %26, i8*** %28, align 8
  %29 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 448, i64 8)
  %30 = bitcast i8* %29 to i8***
  %31 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 28
  store i8*** %30, i8**** %32, align 8
  %33 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %33, i32 0, i32 40
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 449, i64 %37)
  %39 = bitcast i8* %38 to i8**
  %40 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %41 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 28
  %42 = load i8***, i8**** %41, align 8
  %43 = getelementptr inbounds i8**, i8*** %42, i64 0
  store i8** %39, i8*** %43, align 8
  store i32 0, i32* %10, align 4
  br label %44

; <label>:44:                                     ; preds = %59, %16
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 40
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %62

; <label>:50:                                     ; preds = %44
  %51 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %52 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %51, i32 0, i32 28
  %53 = load i8***, i8**** %52, align 8
  %54 = getelementptr inbounds i8**, i8*** %53, i64 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* null, i8** %58, align 8
  br label %59

; <label>:59:                                     ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %44

; <label>:62:                                     ; preds = %44
  br label %144

; <label>:63:                                     ; preds = %4
  %64 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %65 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 29
  %66 = load %struct.GKI*, %struct.GKI** %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @GKIKeyIndex(%struct.GKI* %66, i8* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %143

; <label>:71:                                     ; preds = %63
  %72 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %73 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 29
  %74 = load %struct.GKI*, %struct.GKI** %73, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @GKIStoreKey(%struct.GKI* %74, i8* %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %78 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %77, i32 0, i32 27
  %79 = load i8**, i8*** %78, align 8
  %80 = bitcast i8** %79 to i8*
  %81 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %82 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 30
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 463, i8* %80, i64 %86)
  %88 = bitcast i8* %87 to i8**
  %89 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %90 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %89, i32 0, i32 27
  store i8** %88, i8*** %90, align 8
  %91 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %92 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 28
  %93 = load i8***, i8**** %92, align 8
  %94 = bitcast i8*** %93 to i8*
  %95 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %96 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %95, i32 0, i32 30
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 464, i8* %94, i64 %100)
  %102 = bitcast i8* %101 to i8***
  %103 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %104 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %103, i32 0, i32 28
  store i8*** %102, i8**** %104, align 8
  %105 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %106 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %105, i32 0, i32 40
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = mul i64 8, %108
  %110 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 465, i64 %109)
  %111 = bitcast i8* %110 to i8**
  %112 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %113 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %112, i32 0, i32 28
  %114 = load i8***, i8**** %113, align 8
  %115 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %116 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %115, i32 0, i32 30
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8**, i8*** %114, i64 %118
  store i8** %111, i8*** %119, align 8
  store i32 0, i32* %10, align 4
  br label %120

; <label>:120:                                    ; preds = %139, %71
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %123 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %122, i32 0, i32 40
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %142

; <label>:126:                                    ; preds = %120
  %127 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %128 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 28
  %129 = load i8***, i8**** %128, align 8
  %130 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %131 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %130, i32 0, i32 30
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8**, i8*** %129, i64 %133
  %135 = load i8**, i8*** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  store i8* null, i8** %138, align 8
  br label %139

; <label>:139:                                    ; preds = %126
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %120

; <label>:142:                                    ; preds = %120
  br label %143

; <label>:143:                                    ; preds = %142, %63
  br label %144

; <label>:144:                                    ; preds = %143, %62
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %147 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %146, i32 0, i32 30
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %150, label %163

; <label>:150:                                    ; preds = %144
  %151 = load i8*, i8** %6, align 8
  %152 = call i8* @sre_strdup(i8* %151, i32 -1)
  %153 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %154 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %153, i32 0, i32 27
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* %152, i8** %158, align 8
  %159 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %160 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %159, i32 0, i32 30
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  br label %163

; <label>:163:                                    ; preds = %150, %144
  %164 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %165 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %164, i32 0, i32 28
  %166 = load i8***, i8**** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8**, i8*** %166, i64 %168
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %189

; <label>:176:                                    ; preds = %163
  %177 = load i8*, i8** %8, align 8
  %178 = call i8* @sre_strdup(i8* %177, i32 -1)
  %179 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %180 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %179, i32 0, i32 28
  %181 = load i8***, i8**** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8**, i8*** %181, i64 %183
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  store i8* %178, i8** %188, align 8
  br label %220

; <label>:189:                                    ; preds = %163
  %190 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %191 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %190, i32 0, i32 28
  %192 = load i8***, i8**** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8**, i8*** %192, i64 %194
  %196 = load i8**, i8*** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = call i32 @sre_strcat(i8** %199, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 1)
  store i32 %200, i32* %11, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

; <label>:202:                                    ; preds = %189
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %203

; <label>:203:                                    ; preds = %202, %189
  %204 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %205 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %204, i32 0, i32 28
  %206 = load i8***, i8**** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8**, i8*** %206, i64 %208
  %210 = load i8**, i8*** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i32, i32* %11, align 4
  %215 = load i8*, i8** %8, align 8
  %216 = call i32 @sre_strcat(i8** %213, i32 %214, i8* %215, i32 -1)
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

; <label>:218:                                    ; preds = %203
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %219

; <label>:219:                                    ; preds = %218, %203
  br label %220

; <label>:220:                                    ; preds = %219, %176
  ret void
}

declare i32 @GKIStoreKey(%struct.GKI*, i8*) #1

declare i32 @GKIKeyIndex(%struct.GKI*, i8*) #1

declare i32 @sre_strcat(i8**, i32, i8*, i32) #1

declare void @Die(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAAppendGC(%struct.msa_struct*, i8*, i8*) #0 {
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 31
  %10 = load i8**, i8*** %9, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %12, label %33

; <label>:12:                                     ; preds = %3
  %13 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 517, i64 8)
  %14 = bitcast i8* %13 to i8**
  %15 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 31
  store i8** %14, i8*** %16, align 8
  %17 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 518, i64 8)
  %18 = bitcast i8* %17 to i8**
  %19 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 32
  store i8** %18, i8*** %20, align 8
  %21 = call %struct.GKI* @GKIInit()
  %22 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %23 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 33
  store %struct.GKI* %21, %struct.GKI** %23, align 8
  %24 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 33
  %26 = load %struct.GKI*, %struct.GKI** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @GKIStoreKey(%struct.GKI* %26, i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %30 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 32
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* null, i8** %32, align 8
  br label %82

; <label>:33:                                     ; preds = %3
  %34 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %35 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %34, i32 0, i32 33
  %36 = load %struct.GKI*, %struct.GKI** %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @GKIKeyIndex(%struct.GKI* %36, i8* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %81

; <label>:41:                                     ; preds = %33
  %42 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 33
  %44 = load %struct.GKI*, %struct.GKI** %43, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @GKIStoreKey(%struct.GKI* %44, i8* %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %48 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 31
  %49 = load i8**, i8*** %48, align 8
  %50 = bitcast i8** %49 to i8*
  %51 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %52 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %51, i32 0, i32 34
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 533, i8* %50, i64 %56)
  %58 = bitcast i8* %57 to i8**
  %59 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %60 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 31
  store i8** %58, i8*** %60, align 8
  %61 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %62 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %61, i32 0, i32 32
  %63 = load i8**, i8*** %62, align 8
  %64 = bitcast i8** %63 to i8*
  %65 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %66 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %65, i32 0, i32 34
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 8
  %71 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 534, i8* %64, i64 %70)
  %72 = bitcast i8* %71 to i8**
  %73 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %74 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %73, i32 0, i32 32
  store i8** %72, i8*** %74, align 8
  %75 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %76 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %75, i32 0, i32 32
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* null, i8** %80, align 8
  br label %81

; <label>:81:                                     ; preds = %41, %33
  br label %82

; <label>:82:                                     ; preds = %81, %12
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %85 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %84, i32 0, i32 34
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %101

; <label>:88:                                     ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = call i8* @sre_strdup(i8* %89, i32 -1)
  %91 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %92 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 31
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %90, i8** %96, align 8
  %97 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %98 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %97, i32 0, i32 34
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

; <label>:101:                                    ; preds = %88, %82
  %102 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %103 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %102, i32 0, i32 32
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @sre_strcat(i8** %107, i32 -1, i8* %108, i32 -1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @MSAGetGC(%struct.msa_struct*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 33
  %9 = load %struct.GKI*, %struct.GKI** %8, align 8
  %10 = icmp eq %struct.GKI* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %28

; <label>:12:                                     ; preds = %2
  %13 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 33
  %15 = load %struct.GKI*, %struct.GKI** %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @GKIKeyIndex(%struct.GKI* %15, i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %12
  store i8* null, i8** %3, align 8
  br label %28

; <label>:20:                                     ; preds = %12
  %21 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 32
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  br label %28

; <label>:28:                                     ; preds = %20, %19, %11
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAAppendGR(%struct.msa_struct*, i8*, i32, i8*) #0 {
  %5 = alloca %struct.msa_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 35
  %13 = load i8**, i8*** %12, align 8
  %14 = icmp eq i8** %13, null
  br i1 %14, label %15, label %62

; <label>:15:                                     ; preds = %4
  %16 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 601, i64 8)
  %17 = bitcast i8* %16 to i8**
  %18 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 35
  store i8** %17, i8*** %19, align 8
  %20 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 602, i64 8)
  %21 = bitcast i8* %20 to i8***
  %22 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %23 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 36
  store i8*** %21, i8**** %23, align 8
  %24 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 40
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 603, i64 %28)
  %30 = bitcast i8* %29 to i8**
  %31 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 36
  %33 = load i8***, i8**** %32, align 8
  %34 = getelementptr inbounds i8**, i8*** %33, i64 0
  store i8** %30, i8*** %34, align 8
  store i32 0, i32* %10, align 4
  br label %35

; <label>:35:                                     ; preds = %50, %15
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %38 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 40
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %53

; <label>:41:                                     ; preds = %35
  %42 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 36
  %44 = load i8***, i8**** %43, align 8
  %45 = getelementptr inbounds i8**, i8*** %44, i64 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* null, i8** %49, align 8
  br label %50

; <label>:50:                                     ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %35

; <label>:53:                                     ; preds = %35
  %54 = call %struct.GKI* @GKIInit()
  %55 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 37
  store %struct.GKI* %54, %struct.GKI** %56, align 8
  %57 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %58 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %57, i32 0, i32 37
  %59 = load %struct.GKI*, %struct.GKI** %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @GKIStoreKey(%struct.GKI* %59, i8* %60)
  store i32 %61, i32* %9, align 4
  br label %143

; <label>:62:                                     ; preds = %4
  %63 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %64 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %63, i32 0, i32 37
  %65 = load %struct.GKI*, %struct.GKI** %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @GKIKeyIndex(%struct.GKI* %65, i8* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %142

; <label>:70:                                     ; preds = %62
  %71 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %72 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %71, i32 0, i32 37
  %73 = load %struct.GKI*, %struct.GKI** %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @GKIStoreKey(%struct.GKI* %73, i8* %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %77 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %76, i32 0, i32 35
  %78 = load i8**, i8*** %77, align 8
  %79 = bitcast i8** %78 to i8*
  %80 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %81 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %80, i32 0, i32 38
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 620, i8* %79, i64 %85)
  %87 = bitcast i8* %86 to i8**
  %88 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %89 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %88, i32 0, i32 35
  store i8** %87, i8*** %89, align 8
  %90 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %91 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %90, i32 0, i32 36
  %92 = load i8***, i8**** %91, align 8
  %93 = bitcast i8*** %92 to i8*
  %94 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %95 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %94, i32 0, i32 38
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 8
  %100 = call i8* @sre_realloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 621, i8* %93, i64 %99)
  %101 = bitcast i8* %100 to i8***
  %102 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %103 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %102, i32 0, i32 36
  store i8*** %101, i8**** %103, align 8
  %104 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %105 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %104, i32 0, i32 40
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = mul i64 8, %107
  %109 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 622, i64 %108)
  %110 = bitcast i8* %109 to i8**
  %111 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %112 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %111, i32 0, i32 36
  %113 = load i8***, i8**** %112, align 8
  %114 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %115 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %114, i32 0, i32 38
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8**, i8*** %113, i64 %117
  store i8** %110, i8*** %118, align 8
  store i32 0, i32* %10, align 4
  br label %119

; <label>:119:                                    ; preds = %138, %70
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %122 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %121, i32 0, i32 40
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %141

; <label>:125:                                    ; preds = %119
  %126 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %127 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %126, i32 0, i32 36
  %128 = load i8***, i8**** %127, align 8
  %129 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %130 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %129, i32 0, i32 38
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8**, i8*** %128, i64 %132
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* null, i8** %137, align 8
  br label %138

; <label>:138:                                    ; preds = %125
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %119

; <label>:141:                                    ; preds = %119
  br label %142

; <label>:142:                                    ; preds = %141, %62
  br label %143

; <label>:143:                                    ; preds = %142, %53
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %146 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %145, i32 0, i32 38
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %162

; <label>:149:                                    ; preds = %143
  %150 = load i8*, i8** %6, align 8
  %151 = call i8* @sre_strdup(i8* %150, i32 -1)
  %152 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %153 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %152, i32 0, i32 35
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  store i8* %151, i8** %157, align 8
  %158 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %159 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %158, i32 0, i32 38
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  br label %162

; <label>:162:                                    ; preds = %149, %143
  %163 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %163, i32 0, i32 36
  %165 = load i8***, i8**** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8**, i8*** %165, i64 %167
  %169 = load i8**, i8*** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @sre_strcat(i8** %172, i32 -1, i8* %173, i32 -1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAVerifyParse(%struct.msa_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %2, align 8
  %4 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

; <label>:8:                                      ; preds = %1
  %9 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %10 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 7
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %8
  %14 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 7
  %16 = load i8*, i8** %15, align 8
  br label %18

; <label>:17:                                     ; preds = %8
  br label %18

; <label>:18:                                     ; preds = %17, %13
  %19 = phi i8* [ %16, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %17 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i8* %19)
  br label %20

; <label>:20:                                     ; preds = %18, %1
  %21 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 42
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %27 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %249, %20
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %31 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %252

; <label>:34:                                     ; preds = %28
  %35 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %62

; <label>:43:                                     ; preds = %34
  %44 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %52 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %51, i32 0, i32 7
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %43
  %56 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %57 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 7
  %58 = load i8*, i8** %57, align 8
  br label %60

; <label>:59:                                     ; preds = %43
  br label %60

; <label>:60:                                     ; preds = %59, %55
  %61 = phi i8* [ %58, %55 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %59 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* %50, i8* %61)
  br label %62

; <label>:62:                                     ; preds = %60, %34
  %63 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %64 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %97

; <label>:68:                                     ; preds = %62
  %69 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %70 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 2
  %71 = load float*, float** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fpext float %75 to double
  %77 = fcmp oeq double %76, -1.000000e+00
  br i1 %77, label %78, label %97

; <label>:78:                                     ; preds = %68
  %79 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %80 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %87 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %86, i32 0, i32 7
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %78
  %91 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %92 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 7
  %93 = load i8*, i8** %92, align 8
  br label %95

; <label>:94:                                     ; preds = %78
  br label %95

; <label>:95:                                     ; preds = %94, %90
  %96 = phi i8* [ %93, %90 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %94 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i32 0, i32 0), i8* %85, i8* %96)
  br label %97

; <label>:97:                                     ; preds = %95, %68, %62
  %98 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %99 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %98, i32 0, i32 42
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %106 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %104, %107
  br i1 %108, label %109, label %138

; <label>:109:                                    ; preds = %97
  %110 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %111 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %110, i32 0, i32 1
  %112 = load i8**, i8*** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %118 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %117, i32 0, i32 42
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %125 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %128 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 7
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %135

; <label>:131:                                    ; preds = %109
  %132 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %133 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %132, i32 0, i32 7
  %134 = load i8*, i8** %133, align 8
  br label %136

; <label>:135:                                    ; preds = %109
  br label %136

; <label>:136:                                    ; preds = %135, %131
  %137 = phi i8* [ %134, %131 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %135 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0), i8* %116, i32 %123, i32 %126, i8* %137)
  br label %138

; <label>:138:                                    ; preds = %136, %97
  %139 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %140 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %139, i32 0, i32 16
  %141 = load i8**, i8*** %140, align 8
  %142 = icmp ne i8** %141, null
  br i1 %142, label %143, label %193

; <label>:143:                                    ; preds = %138
  %144 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %145 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %144, i32 0, i32 16
  %146 = load i8**, i8*** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %193

; <label>:152:                                    ; preds = %143
  %153 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %154 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %153, i32 0, i32 43
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %161 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %164, label %193

; <label>:164:                                    ; preds = %152
  %165 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %166 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %165, i32 0, i32 1
  %167 = load i8**, i8*** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %173 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %172, i32 0, i32 43
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %180 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %183 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %182, i32 0, i32 7
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %190

; <label>:186:                                    ; preds = %164
  %187 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %188 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %187, i32 0, i32 7
  %189 = load i8*, i8** %188, align 8
  br label %191

; <label>:190:                                    ; preds = %164
  br label %191

; <label>:191:                                    ; preds = %190, %186
  %192 = phi i8* [ %189, %186 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %190 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i32 0, i32 0), i8* %171, i32 %178, i32 %181, i8* %192)
  br label %193

; <label>:193:                                    ; preds = %191, %152, %143, %138
  %194 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %195 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %194, i32 0, i32 17
  %196 = load i8**, i8*** %195, align 8
  %197 = icmp ne i8** %196, null
  br i1 %197, label %198, label %248

; <label>:198:                                    ; preds = %193
  %199 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %200 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %199, i32 0, i32 17
  %201 = load i8**, i8*** %200, align 8
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %248

; <label>:207:                                    ; preds = %198
  %208 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %209 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %208, i32 0, i32 44
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %3, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %216 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %214, %217
  br i1 %218, label %219, label %248

; <label>:219:                                    ; preds = %207
  %220 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %221 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %220, i32 0, i32 1
  %222 = load i8**, i8*** %221, align 8
  %223 = load i32, i32* %3, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %228 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %227, i32 0, i32 44
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %3, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %235 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %238 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %237, i32 0, i32 7
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %245

; <label>:241:                                    ; preds = %219
  %242 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %243 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %242, i32 0, i32 7
  %244 = load i8*, i8** %243, align 8
  br label %246

; <label>:245:                                    ; preds = %219
  br label %246

; <label>:246:                                    ; preds = %245, %241
  %247 = phi i8* [ %244, %241 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %245 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i32 0, i32 0), i8* %226, i32 %233, i32 %236, i8* %247)
  br label %248

; <label>:248:                                    ; preds = %246, %207, %198, %193
  br label %249

; <label>:249:                                    ; preds = %248
  %250 = load i32, i32* %3, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %3, align 4
  br label %28

; <label>:252:                                    ; preds = %28
  %253 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %254 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %253, i32 0, i32 11
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %286

; <label>:257:                                    ; preds = %252
  %258 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %259 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %258, i32 0, i32 11
  %260 = load i8*, i8** %259, align 8
  %261 = call i64 @strlen(i8* %260) #5
  %262 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %263 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = icmp ne i64 %261, %265
  br i1 %266, label %267, label %286

; <label>:267:                                    ; preds = %257
  %268 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %269 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %268, i32 0, i32 11
  %270 = load i8*, i8** %269, align 8
  %271 = call i64 @strlen(i8* %270) #5
  %272 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %273 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %276 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %275, i32 0, i32 7
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %283

; <label>:279:                                    ; preds = %267
  %280 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %281 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %280, i32 0, i32 7
  %282 = load i8*, i8** %281, align 8
  br label %284

; <label>:283:                                    ; preds = %267
  br label %284

; <label>:284:                                    ; preds = %283, %279
  %285 = phi i8* [ %282, %279 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %283 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i32 0, i32 0), i64 %271, i32 %274, i8* %285)
  br label %286

; <label>:286:                                    ; preds = %284, %257, %252
  %287 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %288 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %287, i32 0, i32 12
  %289 = load i8*, i8** %288, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %320

; <label>:291:                                    ; preds = %286
  %292 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %293 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %292, i32 0, i32 12
  %294 = load i8*, i8** %293, align 8
  %295 = call i64 @strlen(i8* %294) #5
  %296 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %297 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = icmp ne i64 %295, %299
  br i1 %300, label %301, label %320

; <label>:301:                                    ; preds = %291
  %302 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %303 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %302, i32 0, i32 12
  %304 = load i8*, i8** %303, align 8
  %305 = call i64 @strlen(i8* %304) #5
  %306 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %307 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %310 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %309, i32 0, i32 7
  %311 = load i8*, i8** %310, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %317

; <label>:313:                                    ; preds = %301
  %314 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %315 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %314, i32 0, i32 7
  %316 = load i8*, i8** %315, align 8
  br label %318

; <label>:317:                                    ; preds = %301
  br label %318

; <label>:318:                                    ; preds = %317, %313
  %319 = phi i8* [ %316, %313 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %317 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i32 0, i32 0), i64 %305, i32 %308, i8* %319)
  br label %320

; <label>:320:                                    ; preds = %318, %291, %286
  %321 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %322 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %321, i32 0, i32 13
  %323 = load i8*, i8** %322, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %354

; <label>:325:                                    ; preds = %320
  %326 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %327 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %326, i32 0, i32 13
  %328 = load i8*, i8** %327, align 8
  %329 = call i64 @strlen(i8* %328) #5
  %330 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %331 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = sext i32 %332 to i64
  %334 = icmp ne i64 %329, %333
  br i1 %334, label %335, label %354

; <label>:335:                                    ; preds = %325
  %336 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %337 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %336, i32 0, i32 13
  %338 = load i8*, i8** %337, align 8
  %339 = call i64 @strlen(i8* %338) #5
  %340 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %341 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %344 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %343, i32 0, i32 7
  %345 = load i8*, i8** %344, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %351

; <label>:347:                                    ; preds = %335
  %348 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %349 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %348, i32 0, i32 7
  %350 = load i8*, i8** %349, align 8
  br label %352

; <label>:351:                                    ; preds = %335
  br label %352

; <label>:352:                                    ; preds = %351, %347
  %353 = phi i8* [ %350, %347 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %351 ]
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i32 0, i32 0), i64 %339, i32 %342, i8* %353)
  br label %354

; <label>:354:                                    ; preds = %352, %325, %320
  %355 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %356 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = and i32 %357, 1
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %367, label %360

; <label>:360:                                    ; preds = %354
  %361 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %362 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %361, i32 0, i32 2
  %363 = load float*, float** %362, align 8
  %364 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %365 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 4
  call void @FSet(float* %363, i32 %366, float 1.000000e+00)
  br label %367

; <label>:367:                                    ; preds = %360, %354
  %368 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %369 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %368, i32 0, i32 42
  %370 = load i32*, i32** %369, align 8
  %371 = icmp ne i32* %370, null
  br i1 %371, label %372, label %379

; <label>:372:                                    ; preds = %367
  %373 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %374 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %373, i32 0, i32 42
  %375 = load i32*, i32** %374, align 8
  %376 = bitcast i32* %375 to i8*
  call void @free(i8* %376) #4
  %377 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %378 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %377, i32 0, i32 42
  store i32* null, i32** %378, align 8
  br label %379

; <label>:379:                                    ; preds = %372, %367
  %380 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %381 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %380, i32 0, i32 43
  %382 = load i32*, i32** %381, align 8
  %383 = icmp ne i32* %382, null
  br i1 %383, label %384, label %391

; <label>:384:                                    ; preds = %379
  %385 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %386 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %385, i32 0, i32 43
  %387 = load i32*, i32** %386, align 8
  %388 = bitcast i32* %387 to i8*
  call void @free(i8* %388) #4
  %389 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %390 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %389, i32 0, i32 43
  store i32* null, i32** %390, align 8
  br label %391

; <label>:391:                                    ; preds = %384, %379
  %392 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %393 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %392, i32 0, i32 44
  %394 = load i32*, i32** %393, align 8
  %395 = icmp ne i32* %394, null
  br i1 %395, label %396, label %403

; <label>:396:                                    ; preds = %391
  %397 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %398 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %397, i32 0, i32 44
  %399 = load i32*, i32** %398, align 8
  %400 = bitcast i32* %399 to i8*
  call void @free(i8* %400) #4
  %401 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %402 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %401, i32 0, i32 44
  store i32* null, i32** %402, align 8
  br label %403

; <label>:403:                                    ; preds = %396, %391
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @FSet(float*, i32, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msafile_struct* @MSAFileOpen(i8*, i32, i8*) #0 {
  %4 = alloca %struct.msafile_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.msafile_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 760, i64 64)
  %13 = bitcast i8* %12 to %struct.msafile_struct*
  store %struct.msafile_struct* %13, %struct.msafile_struct** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

; <label>:17:                                     ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %19 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %20 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %19, i32 0, i32 0
  store %struct._IO_FILE* %18, %struct._IO_FILE** %20, align 8
  %21 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %22 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %21, i32 0, i32 7
  store i32 1, i32* %22, align 4
  %23 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %24 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %23, i32 0, i32 6
  store i32 0, i32* %24, align 8
  %25 = call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 -1)
  %26 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %27 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %29 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %28, i32 0, i32 5
  store %struct.ssifile_s* null, %struct.ssifile_s** %29, align 8
  br label %86

; <label>:30:                                     ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = call %struct._IO_FILE* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %33 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %34 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %33, i32 0, i32 0
  store %struct._IO_FILE* %32, %struct._IO_FILE** %34, align 8
  %35 = icmp ne %struct._IO_FILE* %32, null
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strlen(i8* %37) #5
  %39 = add i64 %38, 5
  %40 = mul i64 1, %39
  %41 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 806, i64 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* %43) #4
  br label %70

; <label>:45:                                     ; preds = %30
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call %struct._IO_FILE* @EnvFileOpen(i8* %46, i8* %47, i8** %10)
  %49 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %50 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %49, i32 0, i32 0
  store %struct._IO_FILE* %48, %struct._IO_FILE** %50, align 8
  %51 = icmp ne %struct._IO_FILE* %48, null
  br i1 %51, label %52, label %68

; <label>:52:                                     ; preds = %45
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* @FileConcat(i8* %53, i8* %54)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i64 @strlen(i8* %56) #5
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @strlen(i8* %58) #5
  %60 = add i64 %57, %59
  %61 = add i64 %60, 5
  %62 = mul i64 1, %61
  %63 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 813, i64 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* %65) #4
  %67 = load i8*, i8** %10, align 8
  call void @free(i8* %67) #4
  br label %69

; <label>:68:                                     ; preds = %45
  store %struct.msafile_struct* null, %struct.msafile_struct** %4, align 8
  br label %121

; <label>:69:                                     ; preds = %52
  br label %70

; <label>:70:                                     ; preds = %69, %36
  %71 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %72 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %71, i32 0, i32 7
  store i32 0, i32* %72, align 4
  %73 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %74 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %73, i32 0, i32 6
  store i32 0, i32* %74, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call i8* @sre_strdup(i8* %75, i32 -1)
  %77 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %78 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %80 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %79, i32 0, i32 5
  store %struct.ssifile_s* null, %struct.ssifile_s** %80, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %83 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %82, i32 0, i32 5
  %84 = call i32 @SSIOpen(i8* %81, %struct.ssifile_s** %83)
  %85 = load i8*, i8** %9, align 8
  call void @free(i8* %85) #4
  br label %86

; <label>:86:                                     ; preds = %70, %17
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %110

; <label>:89:                                     ; preds = %86
  %90 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %91 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %99, label %94

; <label>:94:                                     ; preds = %89
  %95 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %96 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %94, %89
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i32 0, i32 0))
  br label %100

; <label>:100:                                    ; preds = %99, %94
  %101 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %102 = call i32 @MSAFileFormat(%struct.msafile_struct* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

; <label>:105:                                    ; preds = %100
  %106 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %107 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0), i8* %108)
  br label %109

; <label>:109:                                    ; preds = %105, %100
  br label %110

; <label>:110:                                    ; preds = %109, %86
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %113 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 8
  %114 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %115 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %114, i32 0, i32 2
  store i32 0, i32* %115, align 8
  %116 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %117 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %116, i32 0, i32 3
  store i8* null, i8** %117, align 8
  %118 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  %119 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %118, i32 0, i32 4
  store i32 0, i32* %119, align 8
  %120 = load %struct.msafile_struct*, %struct.msafile_struct** %8, align 8
  store %struct.msafile_struct* %120, %struct.msafile_struct** %4, align 8
  br label %121

; <label>:121:                                    ; preds = %110, %68
  %122 = load %struct.msafile_struct*, %struct.msafile_struct** %4, align 8
  ret %struct.msafile_struct* %122
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

declare i8* @FileConcat(i8*, i8*) #1

declare i32 @SSIOpen(i8*, %struct.ssifile_s**) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @MSAFileFormat(%struct.msafile_struct*) #0 {
  %2 = alloca %struct.msafile_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.msafile_struct* %0, %struct.msafile_struct** %2, align 8
  %4 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %5 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %4, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %7 = call i32 @SeqfileFormat(%struct._IO_FILE* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  store i32 105, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %10, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 100
  br i1 %16, label %23, label %17

; <label>:17:                                     ; preds = %14
  %18 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %19 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i8* @SeqfileFormat2String(i32 %21)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.21, i32 0, i32 0), i8* %20, i8* %22)
  br label %23

; <label>:23:                                     ; preds = %17, %14, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @MSAFileRewind(%struct.msafile_struct*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msafile_struct*, align 8
  store %struct.msafile_struct* %0, %struct.msafile_struct** %3, align 8
  %4 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %5 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

; <label>:8:                                      ; preds = %1
  %9 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %10 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %18

; <label>:14:                                     ; preds = %8
  %15 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %16 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %15, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  call void @rewind(%struct._IO_FILE* %17)
  store i32 1, i32* %2, align 4
  br label %18

; <label>:18:                                     ; preds = %14, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @MSAFilePositionByKey(%struct.msafile_struct*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msafile_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssioffset_s, align 8
  store %struct.msafile_struct* %0, %struct.msafile_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.msafile_struct*, %struct.msafile_struct** %4, align 8
  %9 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %8, i32 0, i32 5
  %10 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %11 = icmp eq %struct.ssifile_s* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

; <label>:13:                                     ; preds = %2
  %14 = load %struct.msafile_struct*, %struct.msafile_struct** %4, align 8
  %15 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %14, i32 0, i32 5
  %16 = load %struct.ssifile_s*, %struct.ssifile_s** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %16, i8* %17, i32* %6, %struct.ssioffset_s* %7)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %13
  store i32 0, i32* %3, align 4
  br label %29

; <label>:21:                                     ; preds = %13
  %22 = load %struct.msafile_struct*, %struct.msafile_struct** %4, align 8
  %23 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %22, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %25 = call i32 @SSISetFilePosition(%struct._IO_FILE* %24, %struct.ssioffset_s* %7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %21
  store i32 0, i32* %3, align 4
  br label %29

; <label>:28:                                     ; preds = %21
  store i32 1, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %27, %20, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare i32 @SSIGetOffsetByName(%struct.ssifile_s*, i8*, i32*, %struct.ssioffset_s*) #1

declare i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @MSAFilePositionByIndex(%struct.msafile_struct*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msafile_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssioffset_s, align 8
  store %struct.msafile_struct* %0, %struct.msafile_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.msafile_struct*, %struct.msafile_struct** %4, align 8
  %9 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %8, i32 0, i32 5
  %10 = load %struct.ssifile_s*, %struct.ssifile_s** %9, align 8
  %11 = icmp eq %struct.ssifile_s* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

; <label>:13:                                     ; preds = %2
  %14 = load %struct.msafile_struct*, %struct.msafile_struct** %4, align 8
  %15 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %14, i32 0, i32 5
  %16 = load %struct.ssifile_s*, %struct.ssifile_s** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @SSIGetOffsetByNumber(%struct.ssifile_s* %16, i32 %17, i32* %6, %struct.ssioffset_s* %7)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %13
  store i32 0, i32* %3, align 4
  br label %29

; <label>:21:                                     ; preds = %13
  %22 = load %struct.msafile_struct*, %struct.msafile_struct** %4, align 8
  %23 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %22, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %25 = call i32 @SSISetFilePosition(%struct._IO_FILE* %24, %struct.ssioffset_s* %7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %21
  store i32 0, i32* %3, align 4
  br label %29

; <label>:28:                                     ; preds = %21
  store i32 1, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %27, %20, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare i32 @SSIGetOffsetByNumber(%struct.ssifile_s*, i32, i32*, %struct.ssioffset_s*) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msa_struct* @MSAFileRead(%struct.msafile_struct*) #0 {
  %2 = alloca %struct.msafile_struct*, align 8
  %3 = alloca %struct.msa_struct*, align 8
  store %struct.msafile_struct* %0, %struct.msafile_struct** %2, align 8
  store %struct.msa_struct* null, %struct.msa_struct** %3, align 8
  %4 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %5 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %4, i32 0, i32 8
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %25 [
    i32 101, label %7
    i32 103, label %10
    i32 105, label %13
    i32 104, label %16
    i32 102, label %19
    i32 106, label %22
  ]

; <label>:7:                                      ; preds = %1
  %8 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %9 = call %struct.msa_struct* @ReadStockholm(%struct.msafile_struct* %8)
  store %struct.msa_struct* %9, %struct.msa_struct** %3, align 8
  br label %26

; <label>:10:                                     ; preds = %1
  %11 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %12 = call %struct.msa_struct* @ReadMSF(%struct.msafile_struct* %11)
  store %struct.msa_struct* %12, %struct.msa_struct** %3, align 8
  br label %26

; <label>:13:                                     ; preds = %1
  %14 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %15 = call %struct.msa_struct* @ReadA2M(%struct.msafile_struct* %14)
  store %struct.msa_struct* %15, %struct.msa_struct** %3, align 8
  br label %26

; <label>:16:                                     ; preds = %1
  %17 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %18 = call %struct.msa_struct* @ReadClustal(%struct.msafile_struct* %17)
  store %struct.msa_struct* %18, %struct.msa_struct** %3, align 8
  br label %26

; <label>:19:                                     ; preds = %1
  %20 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %21 = call %struct.msa_struct* @ReadSELEX(%struct.msafile_struct* %20)
  store %struct.msa_struct* %21, %struct.msa_struct** %3, align 8
  br label %26

; <label>:22:                                     ; preds = %1
  %23 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %24 = call %struct.msa_struct* @ReadPhylip(%struct.msafile_struct* %23)
  store %struct.msa_struct* %24, %struct.msa_struct** %3, align 8
  br label %26

; <label>:25:                                     ; preds = %1
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0))
  br label %26

; <label>:26:                                     ; preds = %25, %22, %19, %16, %13, %10, %7
  %27 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  ret %struct.msa_struct* %27
}

declare %struct.msa_struct* @ReadStockholm(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadMSF(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadA2M(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadClustal(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadSELEX(%struct.msafile_struct*) #1

declare %struct.msa_struct* @ReadPhylip(%struct.msafile_struct*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAFileClose(%struct.msafile_struct*) #0 {
  %2 = alloca %struct.msafile_struct*, align 8
  store %struct.msafile_struct* %0, %struct.msafile_struct** %2, align 8
  %3 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %4 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

; <label>:7:                                      ; preds = %1
  %8 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %9 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %8, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %11 = call i32 @fclose(%struct._IO_FILE* %10)
  br label %12

; <label>:12:                                     ; preds = %7, %1
  %13 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %14 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %13, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %12
  %18 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %19 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  call void @free(i8* %20) #4
  br label %21

; <label>:21:                                     ; preds = %17, %12
  %22 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %23 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %22, i32 0, i32 5
  %24 = load %struct.ssifile_s*, %struct.ssifile_s** %23, align 8
  %25 = icmp ne %struct.ssifile_s* %24, null
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %21
  %27 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %28 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %27, i32 0, i32 5
  %29 = load %struct.ssifile_s*, %struct.ssifile_s** %28, align 8
  call void @SSIClose(%struct.ssifile_s* %29)
  br label %30

; <label>:30:                                     ; preds = %26, %21
  %31 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %32 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

; <label>:35:                                     ; preds = %30
  %36 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %37 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  call void @free(i8* %38) #4
  br label %39

; <label>:39:                                     ; preds = %35, %30
  %40 = load %struct.msafile_struct*, %struct.msafile_struct** %2, align 8
  %41 = bitcast %struct.msafile_struct* %40 to i8*
  call void @free(i8* %41) #4
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @SSIClose(%struct.ssifile_s*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @MSAFileGetLine(%struct.msafile_struct*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msafile_struct*, align 8
  %4 = alloca i8*, align 8
  store %struct.msafile_struct* %0, %struct.msafile_struct** %3, align 8
  %5 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %6 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %5, i32 0, i32 3
  %7 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %8 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %7, i32 0, i32 4
  %9 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %10 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %9, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = call i8* @sre_fgets(i8** %6, i32* %8, %struct._IO_FILE* %11)
  store i8* %12, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  store i8* null, i8** %2, align 8
  br label %23

; <label>:15:                                     ; preds = %1
  %16 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %17 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %21 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %23

; <label>:23:                                     ; preds = %15, %14
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAFileWrite(%struct._IO_FILE*, %struct.msa_struct*, i32, i32) #0 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.msa_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.msa_struct* %1, %struct.msa_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %35 [
    i32 105, label %10
    i32 104, label %13
    i32 103, label %16
    i32 106, label %19
    i32 102, label %22
    i32 101, label %25
  ]

; <label>:10:                                     ; preds = %4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %12 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  call void @WriteA2M(%struct._IO_FILE* %11, %struct.msa_struct* %12)
  br label %37

; <label>:13:                                     ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %15 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  call void @WriteClustal(%struct._IO_FILE* %14, %struct.msa_struct* %15)
  br label %37

; <label>:16:                                     ; preds = %4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %18 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  call void @WriteMSF(%struct._IO_FILE* %17, %struct.msa_struct* %18)
  br label %37

; <label>:19:                                     ; preds = %4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %21 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  call void @WritePhylip(%struct._IO_FILE* %20, %struct.msa_struct* %21)
  br label %37

; <label>:22:                                     ; preds = %4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %24 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  call void @WriteSELEX(%struct._IO_FILE* %23, %struct.msa_struct* %24)
  br label %37

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %30 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  call void @WriteStockholmOneBlock(%struct._IO_FILE* %29, %struct.msa_struct* %30)
  br label %34

; <label>:31:                                     ; preds = %25
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %33 = load %struct.msa_struct*, %struct.msa_struct** %6, align 8
  call void @WriteStockholm(%struct._IO_FILE* %32, %struct.msa_struct* %33)
  br label %34

; <label>:34:                                     ; preds = %31, %28
  br label %37

; <label>:35:                                     ; preds = %4
  %36 = load i32, i32* %7, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i32 %36)
  br label %37

; <label>:37:                                     ; preds = %35, %34, %22, %19, %16, %13, %10
  ret void
}

declare void @WriteA2M(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteClustal(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteMSF(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WritePhylip(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteSELEX(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteStockholmOneBlock(%struct._IO_FILE*, %struct.msa_struct*) #1

declare void @WriteStockholm(%struct._IO_FILE*, %struct.msa_struct*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @MSAGetSeqidx(%struct.msa_struct*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msa_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %18, i8* %25) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %17
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %4, align 4
  br label %66

; <label>:30:                                     ; preds = %17, %11, %3
  %31 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 39
  %33 = load %struct.GKI*, %struct.GKI** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @GKIKeyIndex(%struct.GKI* %33, i8* %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %66

; <label>:39:                                     ; preds = %30
  %40 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %41 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %40, i32 0, i32 39
  %42 = load %struct.GKI*, %struct.GKI** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @GKIStoreKey(%struct.GKI* %42, i8* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 40
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %39
  %51 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  call void @MSAExpand(%struct.msa_struct* %51)
  br label %52

; <label>:52:                                     ; preds = %50, %39
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @sre_strdup(i8* %53, i32 -1)
  %55 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %54, i8** %60, align 8
  %61 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %62 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

; <label>:66:                                     ; preds = %52, %37, %28
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msa_struct* @MSAFromAINFO(i8**, %struct.aliinfo_s*) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.aliinfo_s*, align 8
  %5 = alloca %struct.msa_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.aliinfo_s* %1, %struct.aliinfo_s** %4, align 8
  %8 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %9 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %12 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.msa_struct* @MSAAlloc(i32 %10, i32 %13)
  store %struct.msa_struct* %14, %struct.msa_struct** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

; <label>:15:                                     ; preds = %313, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %18 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %316

; <label>:21:                                     ; preds = %15
  %22 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %23 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @strcpy(i8* %28, i8* %33) #4
  %35 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %36 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %35, i32 0, i32 3
  %37 = load float*, float** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 2
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %41, float* %47, align 4
  %48 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %49 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %48, i32 0, i32 6
  %50 = load %struct.seqinfo_s*, %struct.seqinfo_s** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %50, i64 %52
  %54 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %53, i32 0, i32 1
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %54, i32 0, i32 0
  %56 = call i8* @sre_strdup(i8* %55, i32 -1)
  %57 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %58 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %56, i8** %62, align 8
  %63 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %64 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %67 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %66, i32 0, i32 42
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %73 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 39
  %74 = load %struct.GKI*, %struct.GKI** %73, align 8
  %75 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %76 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @GKIStoreKey(%struct.GKI* %74, i8* %81)
  %83 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %84 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %83, i32 0, i32 6
  %85 = load %struct.seqinfo_s*, %struct.seqinfo_s** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %85, i64 %87
  %89 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

; <label>:93:                                     ; preds = %21
  %94 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %97 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %96, i32 0, i32 6
  %98 = load %struct.seqinfo_s*, %struct.seqinfo_s** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %98, i64 %100
  %102 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %101, i32 0, i32 3
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %102, i32 0, i32 0
  call void @MSASetSeqAccession(%struct.msa_struct* %94, i32 %95, i8* %103)
  br label %104

; <label>:104:                                    ; preds = %93, %21
  %105 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %106 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %105, i32 0, i32 6
  %107 = load %struct.seqinfo_s*, %struct.seqinfo_s** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %107, i64 %109
  %111 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

; <label>:115:                                    ; preds = %104
  %116 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %119 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %118, i32 0, i32 6
  %120 = load %struct.seqinfo_s*, %struct.seqinfo_s** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %120, i64 %122
  %124 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %123, i32 0, i32 4
  %125 = getelementptr inbounds [128 x i8], [128 x i8]* %124, i32 0, i32 0
  call void @MSASetSeqDescription(%struct.msa_struct* %116, i32 %117, i8* %125)
  br label %126

; <label>:126:                                    ; preds = %115, %104
  %127 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %128 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %127, i32 0, i32 6
  %129 = load %struct.seqinfo_s*, %struct.seqinfo_s** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %129, i64 %131
  %133 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 512
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %219

; <label>:137:                                    ; preds = %126
  %138 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %139 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %138, i32 0, i32 16
  %140 = load i8**, i8*** %139, align 8
  %141 = icmp eq i8** %140, null
  br i1 %141, label %142, label %184

; <label>:142:                                    ; preds = %137
  %143 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %144 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %143, i32 0, i32 40
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = mul i64 8, %146
  %148 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1055, i64 %147)
  %149 = bitcast i8* %148 to i8**
  %150 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %151 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %150, i32 0, i32 16
  store i8** %149, i8*** %151, align 8
  %152 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %153 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %152, i32 0, i32 40
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = mul i64 4, %155
  %157 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1056, i64 %156)
  %158 = bitcast i8* %157 to i32*
  %159 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %160 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %159, i32 0, i32 43
  store i32* %158, i32** %160, align 8
  store i32 0, i32* %7, align 4
  br label %161

; <label>:161:                                    ; preds = %180, %142
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %163, i32 0, i32 40
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %183

; <label>:167:                                    ; preds = %161
  %168 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %169 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %168, i32 0, i32 16
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  store i8* null, i8** %173, align 8
  %174 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %175 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %174, i32 0, i32 43
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 0, i32* %179, align 4
  br label %180

; <label>:180:                                    ; preds = %167
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %161

; <label>:183:                                    ; preds = %161
  br label %184

; <label>:184:                                    ; preds = %183, %137
  %185 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %186 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %185, i32 0, i32 0
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %193 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %196 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %195, i32 0, i32 6
  %197 = load %struct.seqinfo_s*, %struct.seqinfo_s** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %197, i64 %199
  %201 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %200, i32 0, i32 10
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %204 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %203, i32 0, i32 16
  %205 = load i8**, i8*** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = call i32 @MakeAlignedString(i8* %191, i32 %194, i8* %202, i8** %208)
  %210 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %211 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %214 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %213, i32 0, i32 43
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %212, i32* %218, align 4
  br label %219

; <label>:219:                                    ; preds = %184, %126
  %220 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %221 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %220, i32 0, i32 6
  %222 = load %struct.seqinfo_s*, %struct.seqinfo_s** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %222, i64 %224
  %226 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, 1024
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %312

; <label>:230:                                    ; preds = %219
  %231 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %232 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %231, i32 0, i32 17
  %233 = load i8**, i8*** %232, align 8
  %234 = icmp eq i8** %233, null
  br i1 %234, label %235, label %277

; <label>:235:                                    ; preds = %230
  %236 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %237 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %236, i32 0, i32 40
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = mul i64 8, %239
  %241 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1068, i64 %240)
  %242 = bitcast i8* %241 to i8**
  %243 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %244 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %243, i32 0, i32 17
  store i8** %242, i8*** %244, align 8
  %245 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %246 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %245, i32 0, i32 40
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = mul i64 4, %248
  %250 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1069, i64 %249)
  %251 = bitcast i8* %250 to i32*
  %252 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %253 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %252, i32 0, i32 44
  store i32* %251, i32** %253, align 8
  store i32 0, i32* %7, align 4
  br label %254

; <label>:254:                                    ; preds = %273, %235
  %255 = load i32, i32* %7, align 4
  %256 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %257 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %256, i32 0, i32 40
  %258 = load i32, i32* %257, align 8
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %276

; <label>:260:                                    ; preds = %254
  %261 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %262 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %261, i32 0, i32 17
  %263 = load i8**, i8*** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  store i8* null, i8** %266, align 8
  %267 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %268 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %267, i32 0, i32 44
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 0, i32* %272, align 4
  br label %273

; <label>:273:                                    ; preds = %260
  %274 = load i32, i32* %7, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %7, align 4
  br label %254

; <label>:276:                                    ; preds = %254
  br label %277

; <label>:277:                                    ; preds = %276, %230
  %278 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %279 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %278, i32 0, i32 0
  %280 = load i8**, i8*** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8*, i8** %280, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %286 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %289 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %288, i32 0, i32 6
  %290 = load %struct.seqinfo_s*, %struct.seqinfo_s** %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %290, i64 %292
  %294 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %293, i32 0, i32 11
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %297 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %296, i32 0, i32 17
  %298 = load i8**, i8*** %297, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8*, i8** %298, i64 %300
  %302 = call i32 @MakeAlignedString(i8* %284, i32 %287, i8* %295, i8** %301)
  %303 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %304 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %307 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %306, i32 0, i32 44
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %6, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %305, i32* %311, align 4
  br label %312

; <label>:312:                                    ; preds = %277, %219
  br label %313

; <label>:313:                                    ; preds = %312
  %314 = load i32, i32* %6, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %6, align 4
  br label %15

; <label>:316:                                    ; preds = %15
  %317 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %318 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %317, i32 0, i32 7
  %319 = load i8*, i8** %318, align 8
  %320 = call i8* @sre_strdup(i8* %319, i32 -1)
  %321 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %322 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %321, i32 0, i32 7
  store i8* %320, i8** %322, align 8
  %323 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %324 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %323, i32 0, i32 8
  %325 = load i8*, i8** %324, align 8
  %326 = call i8* @sre_strdup(i8* %325, i32 -1)
  %327 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %328 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %327, i32 0, i32 8
  store i8* %326, i8** %328, align 8
  %329 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %330 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %329, i32 0, i32 9
  %331 = load i8*, i8** %330, align 8
  %332 = call i8* @sre_strdup(i8* %331, i32 -1)
  %333 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %334 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %333, i32 0, i32 9
  store i8* %332, i8** %334, align 8
  %335 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %336 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %335, i32 0, i32 10
  %337 = load i8*, i8** %336, align 8
  %338 = call i8* @sre_strdup(i8* %337, i32 -1)
  %339 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %340 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %339, i32 0, i32 10
  store i8* %338, i8** %340, align 8
  %341 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %342 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %341, i32 0, i32 4
  %343 = load i8*, i8** %342, align 8
  %344 = call i8* @sre_strdup(i8* %343, i32 -1)
  %345 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %346 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %345, i32 0, i32 11
  store i8* %344, i8** %346, align 8
  %347 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %348 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %347, i32 0, i32 5
  %349 = load i8*, i8** %348, align 8
  %350 = call i8* @sre_strdup(i8* %349, i32 -1)
  %351 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %352 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %351, i32 0, i32 13
  store i8* %350, i8** %352, align 8
  %353 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %354 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = and i32 %355, 1
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %377

; <label>:358:                                    ; preds = %316
  %359 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %360 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %359, i32 0, i32 11
  %361 = load float, float* %360, align 8
  %362 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %363 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %362, i32 0, i32 18
  %364 = getelementptr inbounds [6 x float], [6 x float]* %363, i64 0, i64 0
  store float %361, float* %364, align 8
  %365 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %366 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %365, i32 0, i32 19
  %367 = getelementptr inbounds [6 x i32], [6 x i32]* %366, i64 0, i64 0
  store i32 1, i32* %367, align 8
  %368 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %369 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %368, i32 0, i32 12
  %370 = load float, float* %369, align 4
  %371 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %372 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %371, i32 0, i32 18
  %373 = getelementptr inbounds [6 x float], [6 x float]* %372, i64 0, i64 1
  store float %370, float* %373, align 4
  %374 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %375 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %374, i32 0, i32 19
  %376 = getelementptr inbounds [6 x i32], [6 x i32]* %375, i64 0, i64 1
  store i32 1, i32* %376, align 4
  br label %377

; <label>:377:                                    ; preds = %358, %316
  %378 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %379 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = and i32 %380, 2
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %402

; <label>:383:                                    ; preds = %377
  %384 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %385 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %384, i32 0, i32 13
  %386 = load float, float* %385, align 8
  %387 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %388 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %387, i32 0, i32 18
  %389 = getelementptr inbounds [6 x float], [6 x float]* %388, i64 0, i64 4
  store float %386, float* %389, align 8
  %390 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %391 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %390, i32 0, i32 19
  %392 = getelementptr inbounds [6 x i32], [6 x i32]* %391, i64 0, i64 4
  store i32 1, i32* %392, align 8
  %393 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %394 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %393, i32 0, i32 14
  %395 = load float, float* %394, align 4
  %396 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %397 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %396, i32 0, i32 18
  %398 = getelementptr inbounds [6 x float], [6 x float]* %397, i64 0, i64 5
  store float %395, float* %398, align 4
  %399 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %400 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %399, i32 0, i32 19
  %401 = getelementptr inbounds [6 x i32], [6 x i32]* %400, i64 0, i64 5
  store i32 1, i32* %401, align 4
  br label %402

; <label>:402:                                    ; preds = %383, %377
  %403 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %404 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = and i32 %405, 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %427

; <label>:408:                                    ; preds = %402
  %409 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %410 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %409, i32 0, i32 15
  %411 = load float, float* %410, align 8
  %412 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %413 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %412, i32 0, i32 18
  %414 = getelementptr inbounds [6 x float], [6 x float]* %413, i64 0, i64 2
  store float %411, float* %414, align 8
  %415 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %416 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %415, i32 0, i32 19
  %417 = getelementptr inbounds [6 x i32], [6 x i32]* %416, i64 0, i64 2
  store i32 1, i32* %417, align 8
  %418 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %419 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %418, i32 0, i32 16
  %420 = load float, float* %419, align 4
  %421 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %422 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %421, i32 0, i32 18
  %423 = getelementptr inbounds [6 x float], [6 x float]* %422, i64 0, i64 3
  store float %420, float* %423, align 4
  %424 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %425 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %424, i32 0, i32 19
  %426 = getelementptr inbounds [6 x i32], [6 x i32]* %425, i64 0, i64 3
  store i32 1, i32* %426, align 4
  br label %427

; <label>:427:                                    ; preds = %408, %402
  %428 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %429 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %432 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %431, i32 0, i32 4
  store i32 %430, i32* %432, align 4
  %433 = load %struct.aliinfo_s*, %struct.aliinfo_s** %4, align 8
  %434 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  %437 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %436, i32 0, i32 3
  store i32 %435, i32* %437, align 8
  %438 = load %struct.msa_struct*, %struct.msa_struct** %5, align 8
  ret %struct.msa_struct* %438
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @MakeAlignedString(i8*, i32, i8*, i8**) #1

declare i32 @SeqfileFormat(%struct._IO_FILE*) #1

declare i8* @SeqfileFormat2String(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAMingap(%struct.msa_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %2, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1157, i64 %10)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

; <label>:13:                                     ; preds = %118, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %121

; <label>:19:                                     ; preds = %13
  store i32 0, i32* %5, align 4
  br label %20

; <label>:20:                                     ; preds = %98, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %23 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %101

; <label>:26:                                     ; preds = %20
  %27 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %28 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %97, label %40

; <label>:40:                                     ; preds = %26
  %41 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %42 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %97, label %54

; <label>:54:                                     ; preds = %40
  %55 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 95
  br i1 %67, label %97, label %68

; <label>:68:                                     ; preds = %54
  %69 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %70 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 45
  br i1 %81, label %97, label %82

; <label>:82:                                     ; preds = %68
  %83 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %84 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 126
  br i1 %95, label %97, label %96

; <label>:96:                                     ; preds = %82
  br label %101

; <label>:97:                                     ; preds = %82, %68, %54, %40, %26
  br label %98

; <label>:98:                                     ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %20

; <label>:101:                                    ; preds = %96, %20
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %104 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %112

; <label>:107:                                    ; preds = %101
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 0, i32* %111, align 4
  br label %117

; <label>:112:                                    ; preds = %101
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 1, i32* %116, align 4
  br label %117

; <label>:117:                                    ; preds = %112, %107
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %13

; <label>:121:                                    ; preds = %13
  %122 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %123 = load i32*, i32** %3, align 8
  call void @MSAShorterAlignment(%struct.msa_struct* %122, i32* %123)
  %124 = load i32*, i32** %3, align 8
  %125 = bitcast i32* %124 to i8*
  call void @free(i8* %125) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MSAShorterAlignment(%struct.msa_struct*, i32*) #0 {
  %3 = alloca %struct.msa_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

; <label>:9:                                      ; preds = %278, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %281

; <label>:15:                                     ; preds = %9
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %15
  br label %278

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %275

; <label>:27:                                     ; preds = %23
  store i32 0, i32* %7, align 4
  br label %28

; <label>:28:                                     ; preds = %182, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %31 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %185

; <label>:34:                                     ; preds = %28
  %35 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %45, i8* %55, align 1
  %56 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %57 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 16
  %58 = load i8**, i8*** %57, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %91

; <label>:60:                                     ; preds = %34
  %61 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %62 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %61, i32 0, i32 16
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %91

; <label>:69:                                     ; preds = %60
  %70 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %71 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %70, i32 0, i32 16
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %82 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %81, i32 0, i32 16
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %80, i8* %90, align 1
  br label %91

; <label>:91:                                     ; preds = %69, %60, %34
  %92 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %93 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %92, i32 0, i32 17
  %94 = load i8**, i8*** %93, align 8
  %95 = icmp ne i8** %94, null
  br i1 %95, label %96, label %127

; <label>:96:                                     ; preds = %91
  %97 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %98 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %97, i32 0, i32 17
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %127

; <label>:105:                                    ; preds = %96
  %106 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %107 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %106, i32 0, i32 17
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %118 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %117, i32 0, i32 17
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 %116, i8* %126, align 1
  br label %127

; <label>:127:                                    ; preds = %105, %96, %91
  store i32 0, i32* %8, align 4
  br label %128

; <label>:128:                                    ; preds = %178, %127
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %131 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %130, i32 0, i32 38
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %181

; <label>:134:                                    ; preds = %128
  %135 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %136 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %135, i32 0, i32 36
  %137 = load i8***, i8**** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8**, i8*** %137, i64 %139
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %177

; <label>:147:                                    ; preds = %134
  %148 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %149 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %148, i32 0, i32 36
  %150 = load i8***, i8**** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8**, i8*** %150, i64 %152
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %163, i32 0, i32 36
  %165 = load i8***, i8**** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8**, i8*** %165, i64 %167
  %169 = load i8**, i8*** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 %162, i8* %176, align 1
  br label %177

; <label>:177:                                    ; preds = %147, %134
  br label %178

; <label>:178:                                    ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %128

; <label>:181:                                    ; preds = %128
  br label %182

; <label>:182:                                    ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %28

; <label>:185:                                    ; preds = %28
  %186 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %187 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %186, i32 0, i32 11
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %204

; <label>:190:                                    ; preds = %185
  %191 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %192 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %191, i32 0, i32 11
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %199 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %198, i32 0, i32 11
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  store i8 %197, i8* %203, align 1
  br label %204

; <label>:204:                                    ; preds = %190, %185
  %205 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %206 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %205, i32 0, i32 12
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %223

; <label>:209:                                    ; preds = %204
  %210 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %211 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %210, i32 0, i32 12
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %218 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %217, i32 0, i32 12
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  store i8 %216, i8* %222, align 1
  br label %223

; <label>:223:                                    ; preds = %209, %204
  %224 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %225 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %224, i32 0, i32 13
  %226 = load i8*, i8** %225, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %242

; <label>:228:                                    ; preds = %223
  %229 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %230 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %229, i32 0, i32 13
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %237 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %236, i32 0, i32 13
  %238 = load i8*, i8** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  store i8 %235, i8* %241, align 1
  br label %242

; <label>:242:                                    ; preds = %228, %223
  store i32 0, i32* %8, align 4
  br label %243

; <label>:243:                                    ; preds = %271, %242
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %246 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %245, i32 0, i32 34
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %274

; <label>:249:                                    ; preds = %243
  %250 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %251 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %250, i32 0, i32 32
  %252 = load i8**, i8*** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %262 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %261, i32 0, i32 32
  %263 = load i8**, i8*** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %6, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  store i8 %260, i8* %270, align 1
  br label %271

; <label>:271:                                    ; preds = %249
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %8, align 4
  br label %243

; <label>:274:                                    ; preds = %243
  br label %275

; <label>:275:                                    ; preds = %274, %23
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %6, align 4
  br label %278

; <label>:278:                                    ; preds = %275, %22
  %279 = load i32, i32* %5, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %5, align 4
  br label %9

; <label>:281:                                    ; preds = %9
  %282 = load i32, i32* %6, align 4
  %283 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %284 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %283, i32 0, i32 3
  store i32 %282, i32* %284, align 8
  store i32 0, i32* %7, align 4
  br label %285

; <label>:285:                                    ; preds = %391, %281
  %286 = load i32, i32* %7, align 4
  %287 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %288 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = icmp slt i32 %286, %289
  br i1 %290, label %291, label %394

; <label>:291:                                    ; preds = %285
  %292 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %293 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %292, i32 0, i32 0
  %294 = load i8**, i8*** %293, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  store i8 0, i8* %301, align 1
  %302 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %303 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %302, i32 0, i32 16
  %304 = load i8**, i8*** %303, align 8
  %305 = icmp ne i8** %304, null
  br i1 %305, label %306, label %326

; <label>:306:                                    ; preds = %291
  %307 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %308 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %307, i32 0, i32 16
  %309 = load i8**, i8*** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %309, i64 %311
  %313 = load i8*, i8** %312, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %326

; <label>:315:                                    ; preds = %306
  %316 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %317 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %316, i32 0, i32 16
  %318 = load i8**, i8*** %317, align 8
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8*, i8** %318, i64 %320
  %322 = load i8*, i8** %321, align 8
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  store i8 0, i8* %325, align 1
  br label %326

; <label>:326:                                    ; preds = %315, %306, %291
  %327 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %328 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %327, i32 0, i32 17
  %329 = load i8**, i8*** %328, align 8
  %330 = icmp ne i8** %329, null
  br i1 %330, label %331, label %351

; <label>:331:                                    ; preds = %326
  %332 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %333 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %332, i32 0, i32 17
  %334 = load i8**, i8*** %333, align 8
  %335 = load i32, i32* %7, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8*, i8** %334, i64 %336
  %338 = load i8*, i8** %337, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %351

; <label>:340:                                    ; preds = %331
  %341 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %342 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %341, i32 0, i32 17
  %343 = load i8**, i8*** %342, align 8
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8*, i8** %343, i64 %345
  %347 = load i8*, i8** %346, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %347, i64 %349
  store i8 0, i8* %350, align 1
  br label %351

; <label>:351:                                    ; preds = %340, %331, %326
  store i32 0, i32* %8, align 4
  br label %352

; <label>:352:                                    ; preds = %387, %351
  %353 = load i32, i32* %8, align 4
  %354 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %355 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %354, i32 0, i32 38
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %390

; <label>:358:                                    ; preds = %352
  %359 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %360 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %359, i32 0, i32 36
  %361 = load i8***, i8**** %360, align 8
  %362 = load i32, i32* %8, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8**, i8*** %361, i64 %363
  %365 = load i8**, i8*** %364, align 8
  %366 = load i32, i32* %7, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8*, i8** %365, i64 %367
  %369 = load i8*, i8** %368, align 8
  %370 = icmp ne i8* %369, null
  br i1 %370, label %371, label %386

; <label>:371:                                    ; preds = %358
  %372 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %373 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %372, i32 0, i32 36
  %374 = load i8***, i8**** %373, align 8
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8**, i8*** %374, i64 %376
  %378 = load i8**, i8*** %377, align 8
  %379 = load i32, i32* %7, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8*, i8** %378, i64 %380
  %382 = load i8*, i8** %381, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %382, i64 %384
  store i8 0, i8* %385, align 1
  br label %386

; <label>:386:                                    ; preds = %371, %358
  br label %387

; <label>:387:                                    ; preds = %386
  %388 = load i32, i32* %8, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %8, align 4
  br label %352

; <label>:390:                                    ; preds = %352
  br label %391

; <label>:391:                                    ; preds = %390
  %392 = load i32, i32* %7, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %7, align 4
  br label %285

; <label>:394:                                    ; preds = %285
  %395 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %396 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %395, i32 0, i32 11
  %397 = load i8*, i8** %396, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %406

; <label>:399:                                    ; preds = %394
  %400 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %401 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %400, i32 0, i32 11
  %402 = load i8*, i8** %401, align 8
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %402, i64 %404
  store i8 0, i8* %405, align 1
  br label %406

; <label>:406:                                    ; preds = %399, %394
  %407 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %408 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %407, i32 0, i32 12
  %409 = load i8*, i8** %408, align 8
  %410 = icmp ne i8* %409, null
  br i1 %410, label %411, label %418

; <label>:411:                                    ; preds = %406
  %412 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %413 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %412, i32 0, i32 12
  %414 = load i8*, i8** %413, align 8
  %415 = load i32, i32* %6, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8, i8* %414, i64 %416
  store i8 0, i8* %417, align 1
  br label %418

; <label>:418:                                    ; preds = %411, %406
  %419 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %420 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %419, i32 0, i32 13
  %421 = load i8*, i8** %420, align 8
  %422 = icmp ne i8* %421, null
  br i1 %422, label %423, label %430

; <label>:423:                                    ; preds = %418
  %424 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %425 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %424, i32 0, i32 13
  %426 = load i8*, i8** %425, align 8
  %427 = load i32, i32* %6, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %426, i64 %428
  store i8 0, i8* %429, align 1
  br label %430

; <label>:430:                                    ; preds = %423, %418
  store i32 0, i32* %8, align 4
  br label %431

; <label>:431:                                    ; preds = %448, %430
  %432 = load i32, i32* %8, align 4
  %433 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %434 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %433, i32 0, i32 34
  %435 = load i32, i32* %434, align 8
  %436 = icmp slt i32 %432, %435
  br i1 %436, label %437, label %451

; <label>:437:                                    ; preds = %431
  %438 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %439 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %438, i32 0, i32 32
  %440 = load i8**, i8*** %439, align 8
  %441 = load i32, i32* %8, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8*, i8** %440, i64 %442
  %444 = load i8*, i8** %443, align 8
  %445 = load i32, i32* %6, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i8, i8* %444, i64 %446
  store i8 0, i8* %447, align 1
  br label %448

; <label>:448:                                    ; preds = %437
  %449 = load i32, i32* %8, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %8, align 4
  br label %431

; <label>:451:                                    ; preds = %431
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MSANogap(%struct.msa_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %2, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1189, i64 %10)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

; <label>:13:                                     ; preds = %118, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %121

; <label>:19:                                     ; preds = %13
  store i32 0, i32* %5, align 4
  br label %20

; <label>:20:                                     ; preds = %98, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %23 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %101

; <label>:26:                                     ; preds = %20
  %27 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %28 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %96, label %40

; <label>:40:                                     ; preds = %26
  %41 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %42 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %96, label %54

; <label>:54:                                     ; preds = %40
  %55 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 95
  br i1 %67, label %96, label %68

; <label>:68:                                     ; preds = %54
  %69 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %70 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 45
  br i1 %81, label %96, label %82

; <label>:82:                                     ; preds = %68
  %83 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %84 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 126
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %82, %68, %54, %40, %26
  br label %101

; <label>:97:                                     ; preds = %82
  br label %98

; <label>:98:                                     ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %20

; <label>:101:                                    ; preds = %96, %20
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %104 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %112

; <label>:107:                                    ; preds = %101
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 1, i32* %111, align 4
  br label %117

; <label>:112:                                    ; preds = %101
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 0, i32* %116, align 4
  br label %117

; <label>:117:                                    ; preds = %112, %107
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %13

; <label>:121:                                    ; preds = %13
  %122 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  %123 = load i32*, i32** %3, align 8
  call void @MSAShorterAlignment(%struct.msa_struct* %122, i32* %123)
  %124 = load i32*, i32** %3, align 8
  %125 = bitcast i32* %124 to i8*
  call void @free(i8* %125) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @MSASmallerAlignment(%struct.msa_struct*, i32*, %struct.msa_struct**) #0 {
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.msa_struct**, align 8
  %7 = alloca %struct.msa_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.msa_struct** %2, %struct.msa_struct*** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %29, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

; <label>:18:                                     ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %28

; <label>:28:                                     ; preds = %25, %18
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %12

; <label>:32:                                     ; preds = %12
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %32
  %36 = load %struct.msa_struct**, %struct.msa_struct*** %6, align 8
  store %struct.msa_struct* null, %struct.msa_struct** %36, align 8
  br label %334

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.msa_struct* @MSAAlloc(i32 %38, i32 0)
  store %struct.msa_struct* %39, %struct.msa_struct** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %40

; <label>:40:                                     ; preds = %233, %37
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %236

; <label>:46:                                     ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %232

; <label>:53:                                     ; preds = %46
  %54 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %55 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %62 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @sre_strdup(i8* %60, i32 %63)
  %65 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %66 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %64, i8** %70, align 8
  %71 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %72 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %79 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @sre_strdup(i8* %77, i32 %80)
  %82 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %83 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  store i8* %81, i8** %87, align 8
  %88 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %89 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %88, i32 0, i32 39
  %90 = load %struct.GKI*, %struct.GKI** %89, align 8
  %91 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %92 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %91, i32 0, i32 1
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @GKIStoreKey(%struct.GKI* %90, i8* %97)
  %99 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %100 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %99, i32 0, i32 2
  %101 = load float*, float** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  %105 = load float, float* %104, align 4
  %106 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %107 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %106, i32 0, i32 2
  %108 = load float*, float** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  store float %105, float* %111, align 4
  %112 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %113 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %112, i32 0, i32 14
  %114 = load i8**, i8*** %113, align 8
  %115 = icmp ne i8** %114, null
  br i1 %115, label %116, label %126

; <label>:116:                                    ; preds = %53
  %117 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %120 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %119, i32 0, i32 14
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  call void @MSASetSeqAccession(%struct.msa_struct* %117, i32 %118, i8* %125)
  br label %126

; <label>:126:                                    ; preds = %116, %53
  %127 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %128 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %127, i32 0, i32 15
  %129 = load i8**, i8*** %128, align 8
  %130 = icmp ne i8** %129, null
  br i1 %130, label %131, label %141

; <label>:131:                                    ; preds = %126
  %132 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %135 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %134, i32 0, i32 15
  %136 = load i8**, i8*** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  call void @MSASetSeqDescription(%struct.msa_struct* %132, i32 %133, i8* %140)
  br label %141

; <label>:141:                                    ; preds = %131, %126
  %142 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %143 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %142, i32 0, i32 16
  %144 = load i8**, i8*** %143, align 8
  %145 = icmp ne i8** %144, null
  br i1 %145, label %146, label %185

; <label>:146:                                    ; preds = %141
  %147 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %148 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %147, i32 0, i32 16
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %185

; <label>:155:                                    ; preds = %146
  %156 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %157 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %156, i32 0, i32 16
  %158 = load i8**, i8*** %157, align 8
  %159 = icmp eq i8** %158, null
  br i1 %159, label %160, label %170

; <label>:160:                                    ; preds = %155
  %161 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %162 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 8, %164
  %166 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1333, i64 %165)
  %167 = bitcast i8* %166 to i8**
  %168 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %169 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %168, i32 0, i32 16
  store i8** %167, i8*** %169, align 8
  br label %170

; <label>:170:                                    ; preds = %160, %155
  %171 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %172 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %171, i32 0, i32 16
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i8* @sre_strdup(i8* %177, i32 -1)
  %179 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %180 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %179, i32 0, i32 16
  %181 = load i8**, i8*** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  store i8* %178, i8** %184, align 8
  br label %185

; <label>:185:                                    ; preds = %170, %146, %141
  %186 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %187 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %186, i32 0, i32 17
  %188 = load i8**, i8*** %187, align 8
  %189 = icmp ne i8** %188, null
  br i1 %189, label %190, label %229

; <label>:190:                                    ; preds = %185
  %191 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %192 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %191, i32 0, i32 17
  %193 = load i8**, i8*** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %229

; <label>:199:                                    ; preds = %190
  %200 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %201 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %200, i32 0, i32 17
  %202 = load i8**, i8*** %201, align 8
  %203 = icmp eq i8** %202, null
  br i1 %203, label %204, label %214

; <label>:204:                                    ; preds = %199
  %205 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %206 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 8, %208
  %210 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1338, i64 %209)
  %211 = bitcast i8* %210 to i8**
  %212 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %213 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %212, i32 0, i32 17
  store i8** %211, i8*** %213, align 8
  br label %214

; <label>:214:                                    ; preds = %204, %199
  %215 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %216 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %215, i32 0, i32 17
  %217 = load i8**, i8*** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = call i8* @sre_strdup(i8* %221, i32 -1)
  %223 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %224 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %223, i32 0, i32 17
  %225 = load i8**, i8*** %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %225, i64 %227
  store i8* %222, i8** %228, align 8
  br label %229

; <label>:229:                                    ; preds = %214, %190, %185
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  br label %232

; <label>:232:                                    ; preds = %229, %46
  br label %233

; <label>:233:                                    ; preds = %232
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %9, align 4
  br label %40

; <label>:236:                                    ; preds = %40
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %239 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 4
  %240 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %241 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %244 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %243, i32 0, i32 3
  store i32 %242, i32* %244, align 8
  %245 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %246 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %249 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 8
  %250 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %251 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %254 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %253, i32 0, i32 6
  store i32 %252, i32* %254, align 4
  %255 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %256 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %255, i32 0, i32 7
  %257 = load i8*, i8** %256, align 8
  %258 = call i8* @sre_strdup(i8* %257, i32 -1)
  %259 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %260 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %259, i32 0, i32 7
  store i8* %258, i8** %260, align 8
  %261 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %262 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %261, i32 0, i32 8
  %263 = load i8*, i8** %262, align 8
  %264 = call i8* @sre_strdup(i8* %263, i32 -1)
  %265 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %266 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %265, i32 0, i32 8
  store i8* %264, i8** %266, align 8
  %267 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %268 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %267, i32 0, i32 9
  %269 = load i8*, i8** %268, align 8
  %270 = call i8* @sre_strdup(i8* %269, i32 -1)
  %271 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %272 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %271, i32 0, i32 9
  store i8* %270, i8** %272, align 8
  %273 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %274 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %273, i32 0, i32 10
  %275 = load i8*, i8** %274, align 8
  %276 = call i8* @sre_strdup(i8* %275, i32 -1)
  %277 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %278 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %277, i32 0, i32 10
  store i8* %276, i8** %278, align 8
  %279 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %280 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %279, i32 0, i32 11
  %281 = load i8*, i8** %280, align 8
  %282 = call i8* @sre_strdup(i8* %281, i32 -1)
  %283 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %284 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %283, i32 0, i32 11
  store i8* %282, i8** %284, align 8
  %285 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %286 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %285, i32 0, i32 12
  %287 = load i8*, i8** %286, align 8
  %288 = call i8* @sre_strdup(i8* %287, i32 -1)
  %289 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %290 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %289, i32 0, i32 12
  store i8* %288, i8** %290, align 8
  %291 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %292 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %291, i32 0, i32 13
  %293 = load i8*, i8** %292, align 8
  %294 = call i8* @sre_strdup(i8* %293, i32 -1)
  %295 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %296 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %295, i32 0, i32 13
  store i8* %294, i8** %296, align 8
  store i32 0, i32* %11, align 4
  br label %297

; <label>:297:                                    ; preds = %323, %236
  %298 = load i32, i32* %11, align 4
  %299 = icmp slt i32 %298, 6
  br i1 %299, label %300, label %326

; <label>:300:                                    ; preds = %297
  %301 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %302 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %301, i32 0, i32 18
  %303 = load i32, i32* %11, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [6 x float], [6 x float]* %302, i64 0, i64 %304
  %306 = load float, float* %305, align 4
  %307 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %308 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %307, i32 0, i32 18
  %309 = load i32, i32* %11, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [6 x float], [6 x float]* %308, i64 0, i64 %310
  store float %306, float* %311, align 4
  %312 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %313 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %312, i32 0, i32 19
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [6 x i32], [6 x i32]* %313, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %319 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %318, i32 0, i32 19
  %320 = load i32, i32* %11, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [6 x i32], [6 x i32]* %319, i64 0, i64 %321
  store i32 %317, i32* %322, align 4
  br label %323

; <label>:323:                                    ; preds = %300
  %324 = load i32, i32* %11, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %11, align 4
  br label %297

; <label>:326:                                    ; preds = %297
  %327 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %328 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %327, i32 0, i32 42
  %329 = load i32*, i32** %328, align 8
  %330 = bitcast i32* %329 to i8*
  call void @free(i8* %330) #4
  %331 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  call void @MSAMingap(%struct.msa_struct* %331)
  %332 = load %struct.msa_struct*, %struct.msa_struct** %7, align 8
  %333 = load %struct.msa_struct**, %struct.msa_struct*** %6, align 8
  store %struct.msa_struct* %332, %struct.msa_struct** %333, align 8
  br label %334

; <label>:334:                                    ; preds = %326, %35
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @MSAGetSeqAccession(%struct.msa_struct*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 14
  %8 = load i8**, i8*** %7, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %2
  %11 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 14
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %10
  %20 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 14
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  br label %28

; <label>:27:                                     ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %28

; <label>:28:                                     ; preds = %27, %19
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @MSAGetSeqDescription(%struct.msa_struct*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 15
  %8 = load i8**, i8*** %7, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %2
  %11 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 15
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %10
  %20 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 15
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  br label %28

; <label>:27:                                     ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %28

; <label>:28:                                     ; preds = %27, %19
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @MSAGetSeqSS(%struct.msa_struct*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 16
  %8 = load i8**, i8*** %7, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %2
  %11 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 16
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %10
  %20 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 16
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  br label %28

; <label>:27:                                     ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %28

; <label>:28:                                     ; preds = %27, %19
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @MSAGetSeqSA(%struct.msa_struct*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 17
  %8 = load i8**, i8*** %7, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %2
  %11 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 17
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %10
  %20 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 17
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  br label %28

; <label>:27:                                     ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %28

; <label>:28:                                     ; preds = %27, %19
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define float @MSAAverageSequenceLength(%struct.msa_struct*) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.msa_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store %struct.msa_struct* %0, %struct.msa_struct** %3, align 8
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %27

; <label>:12:                                     ; preds = %6
  %13 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %14 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @DealignedLength(i8* %19)
  %21 = sitofp i32 %20 to float
  %22 = load float, float* %5, align 4
  %23 = fadd float %22, %21
  store float %23, float* %5, align 4
  br label %24

; <label>:24:                                     ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %6

; <label>:27:                                     ; preds = %6
  %28 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %27
  store float 0.000000e+00, float* %2, align 4
  br label %40

; <label>:33:                                     ; preds = %27
  %34 = load float, float* %5, align 4
  %35 = load %struct.msa_struct*, %struct.msa_struct** %3, align 8
  %36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %34, %38
  store float %39, float* %2, align 4
  br label %40

; <label>:40:                                     ; preds = %33, %32
  %41 = load float, float* %2, align 4
  ret float %41
}

declare i32 @DealignedLength(i8*) #1

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
