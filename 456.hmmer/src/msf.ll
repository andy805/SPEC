; ModuleID = 'msf.c'
source_filename = "msf.c"
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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [24 x i8] c"!!AA_MULTIPLE_ALIGNMENT\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"!!NA_MULTIPLE_ALIGNMENT\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MSF:\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"^.+MSF: +([0-9]+) +Type: +([PNX]).+Check: +([0-9]+) +\5C.\5C.\00", align 1
@sqd_parse = external global [10 x i8*], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"Name:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Weight:\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"No Weight: on line %d for %s in name section of MSF file %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"Invalid line (probably %d) in name section of MSF file %s:\0A%s\0A\00", align 1
@squid_errno = external global i32, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Didn't find a sequence for %s in MSF file %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"msf.c\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"!!NA_MULTIPLE_ALIGNMENT 1.0\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"!!AA_MULTIPLE_ALIGNMENT 1.0\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"WriteMSF(): couldn't guess whether that alignment is RNA or protein.\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Invalid sequence type %d in WriteMSF()\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"%B %d, %Y %H:%M\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"What time is it on earth? strftime() failed in WriteMSF().\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c" %s  MSF: %d  Type: %c  %s  Check: %d  ..\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"squid.msf\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c" Name: %-*.*s  Len:  %5d  Check: %4d  Weight: %.2f\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"%*s  %-6d%*s%6d\0A\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%*s  %-6d\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.msa_struct* @ReadMSF(%struct.msafile_struct*) #0 {
  %2 = alloca %struct.msa_struct*, align 8
  %3 = alloca %struct.msafile_struct*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.msafile_struct* %0, %struct.msafile_struct** %3, align 8
  %15 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %16 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %15, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = call i32 @feof(%struct._IO_FILE* %17) #5
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %1
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %371

; <label>:21:                                     ; preds = %1
  %22 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %23 = call i8* @MSAFileGetLine(%struct.msafile_struct* %22)
  store i8* %23, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %21
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %371

; <label>:26:                                     ; preds = %21
  %27 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0)
  store %struct.msa_struct* %27, %struct.msa_struct** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i64 23) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %26
  %32 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 6
  store i32 3, i32* %33, align 4
  %34 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %35 = call i8* @MSAFileGetLine(%struct.msafile_struct* %34)
  store i8* %35, i8** %5, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %31
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %371

; <label>:38:                                     ; preds = %31
  br label %52

; <label>:39:                                     ; preds = %26
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i64 23) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

; <label>:43:                                     ; preds = %39
  %44 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 6
  store i32 2, i32* %45, align 4
  %46 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %47 = call i8* @MSAFileGetLine(%struct.msafile_struct* %46)
  store i8* %47, i8** %5, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %43
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %371

; <label>:50:                                     ; preds = %43
  br label %51

; <label>:51:                                     ; preds = %50, %39
  br label %52

; <label>:52:                                     ; preds = %51, %38
  br label %53

; <label>:53:                                     ; preds = %95, %52
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #6
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %87

; <label>:57:                                     ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #6
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %87

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @Strparse(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0), i8* %62, i32 3)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

; <label>:65:                                     ; preds = %61
  %66 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 0), align 16
  %67 = call i32 @atoi(i8* %66) #6
  store i32 %67, i32* %6, align 4
  %68 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 1), align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %74 [
    i32 78, label %71
    i32 80, label %72
    i32 88, label %73
  ]

; <label>:71:                                     ; preds = %65
  store i32 2, i32* %7, align 4
  br label %75

; <label>:72:                                     ; preds = %65
  store i32 3, i32* %7, align 4
  br label %75

; <label>:73:                                     ; preds = %65
  store i32 0, i32* %7, align 4
  br label %75

; <label>:74:                                     ; preds = %65
  store i32 0, i32* %7, align 4
  br label %75

; <label>:75:                                     ; preds = %74, %73, %72, %71
  %76 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @sqd_parse, i64 0, i64 3), align 8
  %77 = call i32 @atoi(i8* %76) #6
  store i32 %77, i32* %8, align 4
  %78 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %79 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %75
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %85 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  br label %86

; <label>:86:                                     ; preds = %82, %75
  br label %99

; <label>:87:                                     ; preds = %61, %57, %53
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @IsBlankline(i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

; <label>:91:                                     ; preds = %87
  %92 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %93 = load i8*, i8** %5, align 8
  call void @MSAAddComment(%struct.msa_struct* %92, i8* %93)
  br label %94

; <label>:94:                                     ; preds = %91, %87
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %97 = call i8* @MSAFileGetLine(%struct.msafile_struct* %96)
  store i8* %97, i8** %5, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %53, label %99

; <label>:99:                                     ; preds = %95, %86
  br label %100

; <label>:100:                                    ; preds = %222, %130, %99
  %101 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %102 = call i8* @MSAFileGetLine(%struct.msafile_struct* %101)
  store i8* %102, i8** %5, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %223

; <label>:104:                                    ; preds = %100
  br label %105

; <label>:105:                                    ; preds = %122, %104
  %106 = load i8*, i8** %5, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 32
  br i1 %109, label %115, label %110

; <label>:110:                                    ; preds = %105
  %111 = load i8*, i8** %5, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %115, label %120

; <label>:115:                                    ; preds = %110, %105
  %116 = load i8*, i8** %5, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br label %120

; <label>:120:                                    ; preds = %115, %110
  %121 = phi i1 [ false, %110 ], [ %119, %115 ]
  br i1 %121, label %122, label %125

; <label>:122:                                    ; preds = %120
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %5, align 8
  br label %105

; <label>:125:                                    ; preds = %120
  %126 = load i8*, i8** %5, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 10
  br i1 %129, label %130, label %131

; <label>:130:                                    ; preds = %125
  br label %100

; <label>:131:                                    ; preds = %125
  %132 = load i8*, i8** %5, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 33
  br i1 %135, label %136, label %139

; <label>:136:                                    ; preds = %131
  %137 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %138 = load i8*, i8** %5, align 8
  call void @MSAAddComment(%struct.msa_struct* %137, i8* %138)
  br label %221

; <label>:139:                                    ; preds = %131
  %140 = load i8*, i8** %5, align 8
  %141 = call i8* @strstr(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #6
  store i8* %141, i8** %10, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %207

; <label>:143:                                    ; preds = %139
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 5
  store i8* %145, i8** %10, align 8
  %146 = call i8* @sre_strtok(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %11)
  store i8* %146, i8** %9, align 8
  %147 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %148 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %147, i32 0, i32 39
  %149 = load %struct.GKI*, %struct.GKI** %148, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = call i32 @GKIStoreKey(%struct.GKI* %149, i8* %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %154 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %153, i32 0, i32 40
  %155 = load i32, i32* %154, align 8
  %156 = icmp sge i32 %152, %155
  br i1 %156, label %157, label %159

; <label>:157:                                    ; preds = %143
  %158 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  call void @MSAExpand(%struct.msa_struct* %158)
  br label %159

; <label>:159:                                    ; preds = %157, %143
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i8* @sre_strdup(i8* %160, i32 %161)
  %163 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %164 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %163, i32 0, i32 1
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  store i8* %162, i8** %168, align 8
  %169 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %170 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = call i8* @strstr(i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #6
  store i8* %174, i8** %10, align 8
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %190

; <label>:176:                                    ; preds = %159
  %177 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %178 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %181 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %180, i32 0, i32 1
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %188 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i32 0, i32 0), i32 %179, i8* %186, i8* %189)
  br label %190

; <label>:190:                                    ; preds = %176, %159
  %191 = load i8*, i8** %10, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 7
  store i8* %192, i8** %10, align 8
  %193 = call i8* @sre_strtok(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %11)
  store i8* %193, i8** %9, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = call double @atof(i8* %194) #6
  %196 = fptrunc double %195 to float
  %197 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %198 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %197, i32 0, i32 2
  %199 = load float*, float** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  store float %196, float* %202, align 4
  %203 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %204 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, 1
  store i32 %206, i32* %204, align 8
  br label %220

; <label>:207:                                    ; preds = %139
  %208 = load i8*, i8** %5, align 8
  %209 = call i32 @strncmp(i8* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i64 2) #6
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

; <label>:211:                                    ; preds = %207
  br label %223

; <label>:212:                                    ; preds = %207
  %213 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %214 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %217 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load i8*, i8** %5, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i32 0, i32 0), i32 %215, i8* %218, i8* %219)
  store i32 5, i32* @squid_errno, align 4
  store %struct.msa_struct* null, %struct.msa_struct** %2, align 8
  br label %371

; <label>:220:                                    ; preds = %190
  br label %221

; <label>:221:                                    ; preds = %220, %136
  br label %222

; <label>:222:                                    ; preds = %221
  br label %100

; <label>:223:                                    ; preds = %211, %100
  br label %224

; <label>:224:                                    ; preds = %271, %270, %261, %236, %232, %223
  %225 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %226 = call i8* @MSAFileGetLine(%struct.msafile_struct* %225)
  store i8* %226, i8** %5, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %294

; <label>:228:                                    ; preds = %224
  %229 = load i8*, i8** %5, align 8
  store i8* %229, i8** %10, align 8
  %230 = call i8* @sre_strtok(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* null)
  store i8* %230, i8** %13, align 8
  %231 = icmp eq i8* %230, null
  br i1 %231, label %232, label %233

; <label>:232:                                    ; preds = %228
  br label %224

; <label>:233:                                    ; preds = %228
  %234 = call i8* @sre_strtok(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32* %11)
  store i8* %234, i8** %14, align 8
  %235 = icmp eq i8* %234, null
  br i1 %235, label %236, label %237

; <label>:236:                                    ; preds = %233
  br label %224

; <label>:237:                                    ; preds = %233
  %238 = call i16** @__ctype_b_loc() #7
  %239 = load i16*, i16** %238, align 8
  %240 = load i8*, i8** %13, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i16, i16* %239, i64 %243
  %245 = load i16, i16* %244, align 2
  %246 = zext i16 %245 to i32
  %247 = and i32 %246, 2048
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %262

; <label>:249:                                    ; preds = %237
  %250 = call i16** @__ctype_b_loc() #7
  %251 = load i16*, i16** %250, align 8
  %252 = load i8*, i8** %14, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i16, i16* %251, i64 %255
  %257 = load i16, i16* %256, align 2
  %258 = zext i16 %257 to i32
  %259 = and i32 %258, 2048
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

; <label>:261:                                    ; preds = %249
  br label %224

; <label>:262:                                    ; preds = %249, %237
  %263 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %264 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %263, i32 0, i32 39
  %265 = load %struct.GKI*, %struct.GKI** %264, align 8
  %266 = load i8*, i8** %13, align 8
  %267 = call i32 @GKIKeyIndex(%struct.GKI* %265, i8* %266)
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %12, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

; <label>:270:                                    ; preds = %262
  br label %224

; <label>:271:                                    ; preds = %262
  %272 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %273 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %272, i32 0, i32 0
  %274 = load i8**, i8*** %273, align 8
  %275 = load i32, i32* %12, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  %278 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %279 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %278, i32 0, i32 42
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i8*, i8** %14, align 8
  %286 = load i32, i32* %11, align 4
  %287 = call i32 @sre_strcat(i8** %277, i32 %284, i8* %285, i32 %286)
  %288 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %289 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %288, i32 0, i32 42
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  store i32 %287, i32* %293, align 4
  br label %224

; <label>:294:                                    ; preds = %224
  store i32 0, i32* %12, align 4
  br label %295

; <label>:295:                                    ; preds = %365, %294
  %296 = load i32, i32* %12, align 4
  %297 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %298 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %296, %299
  br i1 %300, label %301, label %368

; <label>:301:                                    ; preds = %295
  %302 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %303 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %302, i32 0, i32 0
  %304 = load i8**, i8*** %303, align 8
  %305 = load i32, i32* %12, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %304, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = icmp eq i8* %308, null
  br i1 %309, label %310, label %321

; <label>:310:                                    ; preds = %301
  %311 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %312 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %311, i32 0, i32 1
  %313 = load i8**, i8*** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8*, i8** %313, i64 %315
  %317 = load i8*, i8** %316, align 8
  %318 = load %struct.msafile_struct*, %struct.msafile_struct** %3, align 8
  %319 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %318, i32 0, i32 1
  %320 = load i8*, i8** %319, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i8* %317, i8* %320)
  br label %321

; <label>:321:                                    ; preds = %310, %301
  %322 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %323 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %322, i32 0, i32 0
  %324 = load i8**, i8*** %323, align 8
  %325 = load i32, i32* %12, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8*, i8** %324, i64 %326
  %328 = load i8*, i8** %327, align 8
  store i8* %328, i8** %10, align 8
  store i8* %328, i8** %5, align 8
  br label %329

; <label>:329:                                    ; preds = %360, %321
  %330 = load i8*, i8** %5, align 8
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %363

; <label>:334:                                    ; preds = %329
  %335 = load i8*, i8** %5, align 8
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp eq i32 %337, 32
  br i1 %338, label %344, label %339

; <label>:339:                                    ; preds = %334
  %340 = load i8*, i8** %5, align 8
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 9
  br i1 %343, label %344, label %353

; <label>:344:                                    ; preds = %339, %334
  %345 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %346 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %345, i32 0, i32 42
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %12, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %350, align 4
  br label %359

; <label>:353:                                    ; preds = %339
  %354 = load i8*, i8** %5, align 8
  %355 = load i8, i8* %354, align 1
  %356 = load i8*, i8** %10, align 8
  store i8 %355, i8* %356, align 1
  %357 = load i8*, i8** %10, align 8
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** %10, align 8
  br label %359

; <label>:359:                                    ; preds = %353, %344
  br label %360

; <label>:360:                                    ; preds = %359
  %361 = load i8*, i8** %5, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %362, i8** %5, align 8
  br label %329

; <label>:363:                                    ; preds = %329
  %364 = load i8*, i8** %10, align 8
  store i8 0, i8* %364, align 1
  br label %365

; <label>:365:                                    ; preds = %363
  %366 = load i32, i32* %12, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %12, align 4
  br label %295

; <label>:368:                                    ; preds = %295
  %369 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  call void @MSAVerifyParse(%struct.msa_struct* %369)
  %370 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  store %struct.msa_struct* %370, %struct.msa_struct** %2, align 8
  br label %371

; <label>:371:                                    ; preds = %368, %212, %49, %37, %25, %20
  %372 = load %struct.msa_struct*, %struct.msa_struct** %2, align 8
  ret %struct.msa_struct* %372
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i32 @Strparse(i8*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i32 @IsBlankline(i8*) #2

declare void @MSAAddComment(%struct.msa_struct*, i8*) #2

declare i8* @sre_strtok(i8**, i8*, i32*) #2

declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

declare void @MSAExpand(%struct.msa_struct*) #2

declare i8* @sre_strdup(i8*, i32) #2

declare void @Die(i8*, ...) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @GKIKeyIndex(%struct.GKI*, i8*) #2

declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @WriteMSF(%struct._IO_FILE*, %struct.msa_struct*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [51 x i8], align 16
  %15 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.msa_struct* %1, %struct.msa_struct** %4, align 8
  %16 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %17 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 273, i64 %20)
  %22 = bitcast i8* %21 to i8**
  store i8** %22, i8*** %7, align 8
  %23 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 274, i64 %27)
  %29 = bitcast i8* %28 to i8**
  store i8** %29, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %30

; <label>:30:                                     ; preds = %64, %2
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %67

; <label>:36:                                     ; preds = %30
  %37 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %38 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @sre_strdup(i8* %43, i32 %46)
  %48 = load i8**, i8*** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %47, i8** %51, align 8
  %52 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @sre_strdup(i8* %58, i32 -1)
  %60 = load i8**, i8*** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %59, i8** %63, align 8
  br label %64

; <label>:64:                                     ; preds = %36
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %30

; <label>:67:                                     ; preds = %30
  store i32 0, i32* %9, align 4
  br label %68

; <label>:68:                                     ; preds = %114, %67
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %71 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %117

; <label>:74:                                     ; preds = %68
  %75 = load i8**, i8*** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %10, align 8
  br label %80

; <label>:80:                                     ; preds = %110, %74
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %113

; <label>:85:                                     ; preds = %80
  %86 = call i16** @__ctype_b_loc() #7
  %87 = load i16*, i16** %86, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16* %87, i64 %91
  %93 = load i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = and i32 %94, 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

; <label>:97:                                     ; preds = %85
  %98 = load i8*, i8** %10, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 45
  br i1 %101, label %102, label %109

; <label>:102:                                    ; preds = %97
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 95
  br i1 %106, label %107, label %109

; <label>:107:                                    ; preds = %102
  %108 = load i8*, i8** %10, align 8
  store i8 95, i8* %108, align 1
  br label %109

; <label>:109:                                    ; preds = %107, %102, %97, %85
  br label %110

; <label>:110:                                    ; preds = %109
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %10, align 8
  br label %80

; <label>:113:                                    ; preds = %80
  br label %114

; <label>:114:                                    ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %68

; <label>:117:                                    ; preds = %68
  store i32 0, i32* %9, align 4
  br label %118

; <label>:118:                                    ; preds = %291, %117
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %121 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %294

; <label>:124:                                    ; preds = %118
  %125 = load i8**, i8*** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %10, align 8
  br label %130

; <label>:130:                                    ; preds = %166, %124
  %131 = load i8*, i8** %10, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %162

; <label>:135:                                    ; preds = %130
  %136 = load i8*, i8** %10, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %160, label %140

; <label>:140:                                    ; preds = %135
  %141 = load i8*, i8** %10, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 46
  br i1 %144, label %160, label %145

; <label>:145:                                    ; preds = %140
  %146 = load i8*, i8** %10, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 95
  br i1 %149, label %160, label %150

; <label>:150:                                    ; preds = %145
  %151 = load i8*, i8** %10, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 45
  br i1 %154, label %160, label %155

; <label>:155:                                    ; preds = %150
  %156 = load i8*, i8** %10, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 126
  br label %160

; <label>:160:                                    ; preds = %155, %150, %145, %140, %135
  %161 = phi i1 [ true, %150 ], [ true, %145 ], [ true, %140 ], [ true, %135 ], [ %159, %155 ]
  br label %162

; <label>:162:                                    ; preds = %160, %130
  %163 = phi i1 [ false, %130 ], [ %161, %160 ]
  br i1 %163, label %164, label %169

; <label>:164:                                    ; preds = %162
  %165 = load i8*, i8** %10, align 8
  store i8 126, i8* %165, align 1
  br label %166

; <label>:166:                                    ; preds = %164
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %10, align 8
  br label %130

; <label>:169:                                    ; preds = %162
  br label %170

; <label>:170:                                    ; preds = %203, %169
  %171 = load i8*, i8** %10, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %206

; <label>:175:                                    ; preds = %170
  %176 = load i8*, i8** %10, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 32
  br i1 %179, label %200, label %180

; <label>:180:                                    ; preds = %175
  %181 = load i8*, i8** %10, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 46
  br i1 %184, label %200, label %185

; <label>:185:                                    ; preds = %180
  %186 = load i8*, i8** %10, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 95
  br i1 %189, label %200, label %190

; <label>:190:                                    ; preds = %185
  %191 = load i8*, i8** %10, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 45
  br i1 %194, label %200, label %195

; <label>:195:                                    ; preds = %190
  %196 = load i8*, i8** %10, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 126
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %195, %190, %185, %180, %175
  %201 = load i8*, i8** %10, align 8
  store i8 46, i8* %201, align 1
  br label %202

; <label>:202:                                    ; preds = %200, %195
  br label %203

; <label>:203:                                    ; preds = %202
  %204 = load i8*, i8** %10, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %10, align 8
  br label %170

; <label>:206:                                    ; preds = %170
  %207 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %208 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %211

; <label>:211:                                    ; preds = %287, %206
  %212 = load i32, i32* %13, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %276

; <label>:214:                                    ; preds = %211
  %215 = load i8**, i8*** %7, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 32
  br i1 %225, label %274, label %226

; <label>:226:                                    ; preds = %214
  %227 = load i8**, i8*** %7, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 46
  br i1 %237, label %274, label %238

; <label>:238:                                    ; preds = %226
  %239 = load i8**, i8*** %7, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %239, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 95
  br i1 %249, label %274, label %250

; <label>:250:                                    ; preds = %238
  %251 = load i8**, i8*** %7, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 45
  br i1 %261, label %274, label %262

; <label>:262:                                    ; preds = %250
  %263 = load i8**, i8*** %7, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 126
  br label %274

; <label>:274:                                    ; preds = %262, %250, %238, %226, %214
  %275 = phi i1 [ true, %250 ], [ true, %238 ], [ true, %226 ], [ true, %214 ], [ %273, %262 ]
  br label %276

; <label>:276:                                    ; preds = %274, %211
  %277 = phi i1 [ false, %211 ], [ %275, %274 ]
  br i1 %277, label %278, label %290

; <label>:278:                                    ; preds = %276
  %279 = load i8**, i8*** %7, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %279, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  store i8 126, i8* %286, align 1
  br label %287

; <label>:287:                                    ; preds = %278
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %13, align 4
  br label %211

; <label>:290:                                    ; preds = %276
  br label %291

; <label>:291:                                    ; preds = %290
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %118

; <label>:294:                                    ; preds = %118
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %295

; <label>:295:                                    ; preds = %316, %294
  %296 = load i32, i32* %9, align 4
  %297 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %298 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %296, %299
  br i1 %300, label %301, label %319

; <label>:301:                                    ; preds = %295
  %302 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %303 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %302, i32 0, i32 1
  %304 = load i8**, i8*** %303, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %304, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = call i64 @strlen(i8* %308) #6
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* %12, align 4
  %312 = icmp sgt i32 %310, %311
  br i1 %312, label %313, label %315

; <label>:313:                                    ; preds = %301
  %314 = load i32, i32* %11, align 4
  store i32 %314, i32* %12, align 4
  br label %315

; <label>:315:                                    ; preds = %313, %301
  br label %316

; <label>:316:                                    ; preds = %315
  %317 = load i32, i32* %9, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %9, align 4
  br label %295

; <label>:319:                                    ; preds = %295
  %320 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %321 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %334

; <label>:324:                                    ; preds = %319
  %325 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %326 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %325, i32 0, i32 0
  %327 = load i8**, i8*** %326, align 8
  %328 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %329 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @GuessAlignmentSeqtype(i8** %327, i32 %330)
  %332 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %333 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %332, i32 0, i32 6
  store i32 %331, i32* %333, align 4
  br label %334

; <label>:334:                                    ; preds = %324, %319
  %335 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %336 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 2
  br i1 %338, label %339, label %342

; <label>:339:                                    ; preds = %334
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %371

; <label>:342:                                    ; preds = %334
  %343 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %344 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %347, label %350

; <label>:347:                                    ; preds = %342
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %349 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %370

; <label>:350:                                    ; preds = %342
  %351 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %352 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %351, i32 0, i32 6
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %353, 3
  br i1 %354, label %355, label %358

; <label>:355:                                    ; preds = %350
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  br label %369

; <label>:358:                                    ; preds = %350
  %359 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %360 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %364

; <label>:363:                                    ; preds = %358
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i32 0, i32 0))
  br label %368

; <label>:364:                                    ; preds = %358
  %365 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %366 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0), i32 %367)
  br label %368

; <label>:368:                                    ; preds = %364, %363
  br label %369

; <label>:369:                                    ; preds = %368, %355
  br label %370

; <label>:370:                                    ; preds = %369, %347
  br label %371

; <label>:371:                                    ; preds = %370, %339
  %372 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %373 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %372, i32 0, i32 21
  %374 = load i32, i32* %373, align 8
  %375 = icmp sgt i32 %374, 0
  br i1 %375, label %376, label %399

; <label>:376:                                    ; preds = %371
  store i32 0, i32* %9, align 4
  br label %377

; <label>:377:                                    ; preds = %393, %376
  %378 = load i32, i32* %9, align 4
  %379 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %380 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %379, i32 0, i32 21
  %381 = load i32, i32* %380, align 8
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %383, label %396

; <label>:383:                                    ; preds = %377
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %385 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %386 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %385, i32 0, i32 20
  %387 = load i8**, i8*** %386, align 8
  %388 = load i32, i32* %9, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8*, i8** %387, i64 %389
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %384, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %391)
  br label %393

; <label>:393:                                    ; preds = %383
  %394 = load i32, i32* %9, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %9, align 4
  br label %377

; <label>:396:                                    ; preds = %377
  %397 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %398 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %397, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %399

; <label>:399:                                    ; preds = %396, %371
  %400 = call i64 @time(i64* null) #5
  store i64 %400, i64* %5, align 8
  %401 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i32 0, i32 0
  %402 = call %struct.tm* @localtime(i64* %5) #5
  %403 = call i64 @strftime(i8* %401, i64 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), %struct.tm* %402) #5
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %406

; <label>:405:                                    ; preds = %399
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i32 0, i32 0))
  br label %406

; <label>:406:                                    ; preds = %405, %399
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %408 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %409 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %408, i32 0, i32 7
  %410 = load i8*, i8** %409, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %416

; <label>:412:                                    ; preds = %406
  %413 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %414 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %413, i32 0, i32 7
  %415 = load i8*, i8** %414, align 8
  br label %417

; <label>:416:                                    ; preds = %406
  br label %417

; <label>:417:                                    ; preds = %416, %412
  %418 = phi i8* [ %415, %412 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), %416 ]
  %419 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %420 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %423 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %422, i32 0, i32 6
  %424 = load i32, i32* %423, align 4
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i64
  %427 = select i1 %425, i32 78, i32 80
  %428 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i32 0, i32 0
  %429 = load i8**, i8*** %7, align 8
  %430 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %431 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @GCGMultchecksum(i8** %429, i32 %432)
  %434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %407, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* %418, i32 %421, i32 %427, i8* %428, i32 %433)
  %435 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %436 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %435, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %437

; <label>:437:                                    ; preds = %473, %417
  %438 = load i32, i32* %9, align 4
  %439 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %440 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 4
  %442 = icmp slt i32 %438, %441
  br i1 %442, label %443, label %476

; <label>:443:                                    ; preds = %437
  %444 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %445 = load i32, i32* %12, align 4
  %446 = load i32, i32* %12, align 4
  %447 = load i8**, i8*** %8, align 8
  %448 = load i32, i32* %9, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8*, i8** %447, i64 %449
  %451 = load i8*, i8** %450, align 8
  %452 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %453 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 8
  %455 = load i8**, i8*** %7, align 8
  %456 = load i32, i32* %9, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i8*, i8** %455, i64 %457
  %459 = load i8*, i8** %458, align 8
  %460 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %461 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @GCGchecksum(i8* %459, i32 %462)
  %464 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %465 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %464, i32 0, i32 2
  %466 = load float*, float** %465, align 8
  %467 = load i32, i32* %9, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds float, float* %466, i64 %468
  %470 = load float, float* %469, align 4
  %471 = fpext float %470 to double
  %472 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %444, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i32 0, i32 0), i32 %445, i32 %446, i8* %451, i32 %454, i32 %463, double %471)
  br label %473

; <label>:473:                                    ; preds = %443
  %474 = load i32, i32* %9, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %9, align 4
  br label %437

; <label>:476:                                    ; preds = %437
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %478 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %477, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %479 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %480 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %479, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %13, align 4
  br label %481

; <label>:481:                                    ; preds = %584, %476
  %482 = load i32, i32* %13, align 4
  %483 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %484 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 8
  %486 = icmp slt i32 %482, %485
  br i1 %486, label %487, label %587

; <label>:487:                                    ; preds = %481
  %488 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %489 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %488, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %490 = load i32, i32* %13, align 4
  %491 = add nsw i32 %490, 50
  %492 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %493 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 8
  %495 = icmp sgt i32 %491, %494
  br i1 %495, label %496, label %502

; <label>:496:                                    ; preds = %487
  %497 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %498 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* %13, align 4
  %501 = sub nsw i32 %499, %500
  br label %503

; <label>:502:                                    ; preds = %487
  br label %503

; <label>:503:                                    ; preds = %502, %496
  %504 = phi i32 [ %501, %496 ], [ 50, %502 ]
  store i32 %504, i32* %11, align 4
  %505 = load i32, i32* %11, align 4
  %506 = icmp sgt i32 %505, 10
  br i1 %506, label %507, label %522

; <label>:507:                                    ; preds = %503
  %508 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %509 = load i32, i32* %12, align 4
  %510 = load i32, i32* %13, align 4
  %511 = add nsw i32 %510, 1
  %512 = load i32, i32* %11, align 4
  %513 = load i32, i32* %11, align 4
  %514 = sub nsw i32 %513, 1
  %515 = sdiv i32 %514, 10
  %516 = add nsw i32 %512, %515
  %517 = sub nsw i32 %516, 12
  %518 = load i32, i32* %13, align 4
  %519 = load i32, i32* %11, align 4
  %520 = add nsw i32 %518, %519
  %521 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %508, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i32 %509, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 %511, i32 %517, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 %520)
  br label %528

; <label>:522:                                    ; preds = %503
  %523 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %524 = load i32, i32* %12, align 4
  %525 = load i32, i32* %13, align 4
  %526 = add nsw i32 %525, 1
  %527 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %523, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 %524, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 %526)
  br label %528

; <label>:528:                                    ; preds = %522, %507
  store i32 0, i32* %9, align 4
  br label %529

; <label>:529:                                    ; preds = %580, %528
  %530 = load i32, i32* %9, align 4
  %531 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %532 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %531, i32 0, i32 4
  %533 = load i32, i32* %532, align 4
  %534 = icmp slt i32 %530, %533
  br i1 %534, label %535, label %583

; <label>:535:                                    ; preds = %529
  %536 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %537 = load i32, i32* %12, align 4
  %538 = load i8**, i8*** %8, align 8
  %539 = load i32, i32* %9, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8*, i8** %538, i64 %540
  %542 = load i8*, i8** %541, align 8
  %543 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %537, i8* %542)
  %544 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0
  %545 = load i8**, i8*** %7, align 8
  %546 = load i32, i32* %9, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i8*, i8** %545, i64 %547
  %549 = load i8*, i8** %548, align 8
  %550 = load i32, i32* %13, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, i8* %549, i64 %551
  %553 = call i8* @strncpy(i8* %544, i8* %552, i64 50) #5
  %554 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i64 0, i64 50
  store i8 0, i8* %554, align 2
  store i32 0, i32* %15, align 4
  br label %555

; <label>:555:                                    ; preds = %574, %535
  %556 = load i32, i32* %15, align 4
  %557 = load i32, i32* %11, align 4
  %558 = icmp slt i32 %556, %557
  br i1 %558, label %559, label %577

; <label>:559:                                    ; preds = %555
  %560 = load i32, i32* %15, align 4
  %561 = srem i32 %560, 10
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %566, label %563

; <label>:563:                                    ; preds = %559
  %564 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %565 = call i32 @fputc(i32 32, %struct._IO_FILE* %564)
  br label %566

; <label>:566:                                    ; preds = %563, %559
  %567 = load i32, i32* %15, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i64 0, i64 %568
  %570 = load i8, i8* %569, align 1
  %571 = sext i8 %570 to i32
  %572 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %573 = call i32 @fputc(i32 %571, %struct._IO_FILE* %572)
  br label %574

; <label>:574:                                    ; preds = %566
  %575 = load i32, i32* %15, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %15, align 4
  br label %555

; <label>:577:                                    ; preds = %555
  %578 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %579 = call i32 @fputc(i32 10, %struct._IO_FILE* %578)
  br label %580

; <label>:580:                                    ; preds = %577
  %581 = load i32, i32* %9, align 4
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %9, align 4
  br label %529

; <label>:583:                                    ; preds = %529
  br label %584

; <label>:584:                                    ; preds = %583
  %585 = load i32, i32* %13, align 4
  %586 = add nsw i32 %585, 50
  store i32 %586, i32* %13, align 4
  br label %481

; <label>:587:                                    ; preds = %481
  %588 = load i8**, i8*** %7, align 8
  %589 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %590 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %589, i32 0, i32 4
  %591 = load i32, i32* %590, align 4
  call void @Free2DArray(i8** %588, i32 %591)
  %592 = load i8**, i8*** %8, align 8
  %593 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %594 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %593, i32 0, i32 4
  %595 = load i32, i32* %594, align 4
  call void @Free2DArray(i8** %592, i32 %595)
  ret void
}

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @GuessAlignmentSeqtype(i8**, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

declare i32 @GCGMultchecksum(i8**, i32) #2

declare i32 @GCGchecksum(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare void @Free2DArray(i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
