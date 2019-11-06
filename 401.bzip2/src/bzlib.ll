; ModuleID = 'bzlib.c'
source_filename = "bzlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bzFile = type { i32, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [269 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis may be a bug in bzip2/libbzip2, %s.\0AIt may also be a bug in your compiler.  Please do not bother the\0Aoriginal author of bzip2 with a bug report for this.  He\0Adoesn't know anything about bzip2 as it appears in CPU2006.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"1.0.3, 15-Feb-2005\00", align 1
@bzerrorstrings = internal global [16 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)], align 16
@BZ2_crc32Table = external global [256 x i32], align 16
@BZ2_rNums = external global [512 x i32], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @BZ2_bz__AssertH__fail(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i8* @BZ2_bzlibVersion()
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([269 x i8], [269 x i8]* @.str, i32 0, i32 0), i32 %4, i8* %5)
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 1007
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([1057 x i8], [1057 x i8]* @.str.1, i32 0, i32 0))
  br label %12

; <label>:12:                                     ; preds = %9, %1
  call void @exit(i32 0) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @BZ2_bzlibVersion() #0 {
  ret i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzCompressInit(%struct.bz_stream*, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bz_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.EState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 @bz_config_ok()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %4
  store i32 -9, i32* %5, align 4
  br label %245

; <label>:15:                                     ; preds = %4
  %16 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %17 = icmp eq %struct.bz_stream* %16, null
  br i1 %17, label %30, label %18

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 9
  br i1 %23, label %30, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 250
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27, %24, %21, %18, %15
  store i32 -2, i32* %5, align 4
  br label %245

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31
  store i32 30, i32* %9, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %31
  %36 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %37 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %36, i32 0, i32 9
  %38 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %37, align 8
  %39 = icmp eq i8* (i8*, i32, i32)* %38, null
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %35
  %41 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %42 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %41, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %42, align 8
  br label %43

; <label>:43:                                     ; preds = %40, %35
  %44 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %45 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %44, i32 0, i32 10
  %46 = load void (i8*, i8*)*, void (i8*, i8*)** %45, align 8
  %47 = icmp eq void (i8*, i8*)* %46, null
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %43
  %49 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %50 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %49, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %50, align 8
  br label %51

; <label>:51:                                     ; preds = %48, %43
  %52 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %53 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %52, i32 0, i32 9
  %54 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %53, align 8
  %55 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %56 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %55, i32 0, i32 11
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* %54(i8* %57, i32 55768, i32 1)
  %59 = bitcast i8* %58 to %struct.EState*
  store %struct.EState* %59, %struct.EState** %11, align 8
  %60 = load %struct.EState*, %struct.EState** %11, align 8
  %61 = icmp eq %struct.EState* %60, null
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %51
  store i32 -3, i32* %5, align 4
  br label %245

; <label>:63:                                     ; preds = %51
  %64 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %65 = load %struct.EState*, %struct.EState** %11, align 8
  %66 = getelementptr inbounds %struct.EState, %struct.EState* %65, i32 0, i32 0
  store %struct.bz_stream* %64, %struct.bz_stream** %66, align 8
  %67 = load %struct.EState*, %struct.EState** %11, align 8
  %68 = getelementptr inbounds %struct.EState, %struct.EState* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  %69 = load %struct.EState*, %struct.EState** %11, align 8
  %70 = getelementptr inbounds %struct.EState, %struct.EState* %69, i32 0, i32 5
  store i32* null, i32** %70, align 8
  %71 = load %struct.EState*, %struct.EState** %11, align 8
  %72 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 6
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 100000, %73
  store i32 %74, i32* %10, align 4
  %75 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %76 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %75, i32 0, i32 9
  %77 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %76, align 8
  %78 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %79 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %78, i32 0, i32 11
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i8* %77(i8* %80, i32 %84, i32 1)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.EState*, %struct.EState** %11, align 8
  %88 = getelementptr inbounds %struct.EState, %struct.EState* %87, i32 0, i32 4
  store i32* %86, i32** %88, align 8
  %89 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %90 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %89, i32 0, i32 9
  %91 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %90, align 8
  %92 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %93 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %92, i32 0, i32 11
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 34
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i8* %91(i8* %94, i32 %99, i32 1)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.EState*, %struct.EState** %11, align 8
  %103 = getelementptr inbounds %struct.EState, %struct.EState* %102, i32 0, i32 5
  store i32* %101, i32** %103, align 8
  %104 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %105 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %104, i32 0, i32 9
  %106 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %105, align 8
  %107 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %108 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %107, i32 0, i32 11
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* %106(i8* %109, i32 262148, i32 1)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.EState*, %struct.EState** %11, align 8
  %113 = getelementptr inbounds %struct.EState, %struct.EState* %112, i32 0, i32 6
  store i32* %111, i32** %113, align 8
  %114 = load %struct.EState*, %struct.EState** %11, align 8
  %115 = getelementptr inbounds %struct.EState, %struct.EState* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %128, label %118

; <label>:118:                                    ; preds = %63
  %119 = load %struct.EState*, %struct.EState** %11, align 8
  %120 = getelementptr inbounds %struct.EState, %struct.EState* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %128, label %123

; <label>:123:                                    ; preds = %118
  %124 = load %struct.EState*, %struct.EState** %11, align 8
  %125 = getelementptr inbounds %struct.EState, %struct.EState* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %189

; <label>:128:                                    ; preds = %123, %118, %63
  %129 = load %struct.EState*, %struct.EState** %11, align 8
  %130 = getelementptr inbounds %struct.EState, %struct.EState* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %144

; <label>:133:                                    ; preds = %128
  %134 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %135 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %134, i32 0, i32 10
  %136 = load void (i8*, i8*)*, void (i8*, i8*)** %135, align 8
  %137 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %138 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %137, i32 0, i32 11
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.EState*, %struct.EState** %11, align 8
  %141 = getelementptr inbounds %struct.EState, %struct.EState* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = bitcast i32* %142 to i8*
  call void %136(i8* %139, i8* %143)
  br label %144

; <label>:144:                                    ; preds = %133, %128
  %145 = load %struct.EState*, %struct.EState** %11, align 8
  %146 = getelementptr inbounds %struct.EState, %struct.EState* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %160

; <label>:149:                                    ; preds = %144
  %150 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %151 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %150, i32 0, i32 10
  %152 = load void (i8*, i8*)*, void (i8*, i8*)** %151, align 8
  %153 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %154 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %153, i32 0, i32 11
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.EState*, %struct.EState** %11, align 8
  %157 = getelementptr inbounds %struct.EState, %struct.EState* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = bitcast i32* %158 to i8*
  call void %152(i8* %155, i8* %159)
  br label %160

; <label>:160:                                    ; preds = %149, %144
  %161 = load %struct.EState*, %struct.EState** %11, align 8
  %162 = getelementptr inbounds %struct.EState, %struct.EState* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %176

; <label>:165:                                    ; preds = %160
  %166 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %167 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %166, i32 0, i32 10
  %168 = load void (i8*, i8*)*, void (i8*, i8*)** %167, align 8
  %169 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %170 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %169, i32 0, i32 11
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.EState*, %struct.EState** %11, align 8
  %173 = getelementptr inbounds %struct.EState, %struct.EState* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = bitcast i32* %174 to i8*
  call void %168(i8* %171, i8* %175)
  br label %176

; <label>:176:                                    ; preds = %165, %160
  %177 = load %struct.EState*, %struct.EState** %11, align 8
  %178 = icmp ne %struct.EState* %177, null
  br i1 %178, label %179, label %188

; <label>:179:                                    ; preds = %176
  %180 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %181 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %180, i32 0, i32 10
  %182 = load void (i8*, i8*)*, void (i8*, i8*)** %181, align 8
  %183 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %184 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %183, i32 0, i32 11
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.EState*, %struct.EState** %11, align 8
  %187 = bitcast %struct.EState* %186 to i8*
  call void %182(i8* %185, i8* %187)
  br label %188

; <label>:188:                                    ; preds = %179, %176
  store i32 -3, i32* %5, align 4
  br label %245

; <label>:189:                                    ; preds = %123
  %190 = load %struct.EState*, %struct.EState** %11, align 8
  %191 = getelementptr inbounds %struct.EState, %struct.EState* %190, i32 0, i32 29
  store i32 0, i32* %191, align 4
  %192 = load %struct.EState*, %struct.EState** %11, align 8
  %193 = getelementptr inbounds %struct.EState, %struct.EState* %192, i32 0, i32 2
  store i32 2, i32* %193, align 4
  %194 = load %struct.EState*, %struct.EState** %11, align 8
  %195 = getelementptr inbounds %struct.EState, %struct.EState* %194, i32 0, i32 1
  store i32 2, i32* %195, align 8
  %196 = load %struct.EState*, %struct.EState** %11, align 8
  %197 = getelementptr inbounds %struct.EState, %struct.EState* %196, i32 0, i32 27
  store i32 0, i32* %197, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.EState*, %struct.EState** %11, align 8
  %200 = getelementptr inbounds %struct.EState, %struct.EState* %199, i32 0, i32 30
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* %7, align 4
  %202 = mul nsw i32 100000, %201
  %203 = sub nsw i32 %202, 19
  %204 = load %struct.EState*, %struct.EState** %11, align 8
  %205 = getelementptr inbounds %struct.EState, %struct.EState* %204, i32 0, i32 18
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.EState*, %struct.EState** %11, align 8
  %208 = getelementptr inbounds %struct.EState, %struct.EState* %207, i32 0, i32 28
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.EState*, %struct.EState** %11, align 8
  %211 = getelementptr inbounds %struct.EState, %struct.EState* %210, i32 0, i32 12
  store i32 %209, i32* %211, align 8
  %212 = load %struct.EState*, %struct.EState** %11, align 8
  %213 = getelementptr inbounds %struct.EState, %struct.EState* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = bitcast i32* %214 to i8*
  %216 = load %struct.EState*, %struct.EState** %11, align 8
  %217 = getelementptr inbounds %struct.EState, %struct.EState* %216, i32 0, i32 9
  store i8* %215, i8** %217, align 8
  %218 = load %struct.EState*, %struct.EState** %11, align 8
  %219 = getelementptr inbounds %struct.EState, %struct.EState* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = bitcast i32* %220 to i16*
  %222 = load %struct.EState*, %struct.EState** %11, align 8
  %223 = getelementptr inbounds %struct.EState, %struct.EState* %222, i32 0, i32 10
  store i16* %221, i16** %223, align 8
  %224 = load %struct.EState*, %struct.EState** %11, align 8
  %225 = getelementptr inbounds %struct.EState, %struct.EState* %224, i32 0, i32 11
  store i8* null, i8** %225, align 8
  %226 = load %struct.EState*, %struct.EState** %11, align 8
  %227 = getelementptr inbounds %struct.EState, %struct.EState* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.EState*, %struct.EState** %11, align 8
  %230 = getelementptr inbounds %struct.EState, %struct.EState* %229, i32 0, i32 8
  store i32* %228, i32** %230, align 8
  %231 = load %struct.EState*, %struct.EState** %11, align 8
  %232 = bitcast %struct.EState* %231 to i8*
  %233 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %234 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %233, i32 0, i32 8
  store i8* %232, i8** %234, align 8
  %235 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %236 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %235, i32 0, i32 2
  store i32 0, i32* %236, align 4
  %237 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %238 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %237, i32 0, i32 3
  store i32 0, i32* %238, align 8
  %239 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %240 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %239, i32 0, i32 6
  store i32 0, i32* %240, align 4
  %241 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %242 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %241, i32 0, i32 7
  store i32 0, i32* %242, align 8
  %243 = load %struct.EState*, %struct.EState** %11, align 8
  call void @init_RL(%struct.EState* %243)
  %244 = load %struct.EState*, %struct.EState** %11, align 8
  call void @prepare_new_block(%struct.EState* %244)
  store i32 0, i32* %5, align 4
  br label %245

; <label>:245:                                    ; preds = %189, %188, %62, %30, %14
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bz_config_ok() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @default_bzalloc(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @malloc(i64 %11) #8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_bzfree(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8
  call void @free(i8* %8) #8
  br label %9

; <label>:9:                                      ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_RL(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  store %struct.EState* %0, %struct.EState** %2, align 8
  %3 = load %struct.EState*, %struct.EState** %2, align 8
  %4 = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 13
  store i32 256, i32* %4, align 4
  %5 = load %struct.EState*, %struct.EState** %2, align 8
  %6 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 14
  store i32 0, i32* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_new_block(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  %3 = alloca i32, align 4
  store %struct.EState* %0, %struct.EState** %2, align 8
  %4 = load %struct.EState*, %struct.EState** %2, align 8
  %5 = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 17
  store i32 0, i32* %5, align 4
  %6 = load %struct.EState*, %struct.EState** %2, align 8
  %7 = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 19
  store i32 0, i32* %7, align 4
  %8 = load %struct.EState*, %struct.EState** %2, align 8
  %9 = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 20
  store i32 0, i32* %9, align 8
  %10 = load %struct.EState*, %struct.EState** %2, align 8
  %11 = getelementptr inbounds %struct.EState, %struct.EState* %10, i32 0, i32 26
  store i32 -1, i32* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %21, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %12
  %16 = load %struct.EState*, %struct.EState** %2, align 8
  %17 = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 22
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %19
  store i8 0, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %12

; <label>:24:                                     ; preds = %12
  %25 = load %struct.EState*, %struct.EState** %2, align 8
  %26 = getelementptr inbounds %struct.EState, %struct.EState* %25, i32 0, i32 29
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzCompress(%struct.bz_stream*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bz_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.EState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %9 = icmp eq %struct.bz_stream* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %147

; <label>:11:                                     ; preds = %2
  %12 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %13 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %12, i32 0, i32 8
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.EState*
  store %struct.EState* %15, %struct.EState** %7, align 8
  %16 = load %struct.EState*, %struct.EState** %7, align 8
  %17 = icmp eq %struct.EState* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %11
  store i32 -2, i32* %3, align 4
  br label %147

; <label>:19:                                     ; preds = %11
  %20 = load %struct.EState*, %struct.EState** %7, align 8
  %21 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 0
  %22 = load %struct.bz_stream*, %struct.bz_stream** %21, align 8
  %23 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %24 = icmp ne %struct.bz_stream* %22, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %19
  store i32 -2, i32* %3, align 4
  br label %147

; <label>:26:                                     ; preds = %19
  br label %27

; <label>:27:                                     ; preds = %57, %46, %26
  %28 = load %struct.EState*, %struct.EState** %7, align 8
  %29 = getelementptr inbounds %struct.EState, %struct.EState* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %146 [
    i32 1, label %31
    i32 2, label %32
    i32 3, label %66
    i32 4, label %104
  ]

; <label>:31:                                     ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

; <label>:35:                                     ; preds = %32
  %36 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %37 = call zeroext i8 @handle_compress(%struct.bz_stream* %36)
  store i8 %37, i8* %6, align 1
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 -2
  store i32 %42, i32* %3, align 4
  br label %147

; <label>:43:                                     ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %43
  %47 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %48 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.EState*, %struct.EState** %7, align 8
  %51 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.EState*, %struct.EState** %7, align 8
  %53 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 1
  store i32 3, i32* %53, align 8
  br label %27

; <label>:54:                                     ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %54
  %58 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %59 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.EState*, %struct.EState** %7, align 8
  %62 = getelementptr inbounds %struct.EState, %struct.EState* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.EState*, %struct.EState** %7, align 8
  %64 = getelementptr inbounds %struct.EState, %struct.EState* %63, i32 0, i32 1
  store i32 4, i32* %64, align 8
  br label %27

; <label>:65:                                     ; preds = %54
  store i32 -2, i32* %3, align 4
  br label %147

; <label>:66:                                     ; preds = %27
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:70:                                     ; preds = %66
  %71 = load %struct.EState*, %struct.EState** %7, align 8
  %72 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.EState*, %struct.EState** %7, align 8
  %75 = getelementptr inbounds %struct.EState, %struct.EState* %74, i32 0, i32 0
  %76 = load %struct.bz_stream*, %struct.bz_stream** %75, align 8
  %77 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %73, %78
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:81:                                     ; preds = %70
  %82 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %83 = call zeroext i8 @handle_compress(%struct.bz_stream* %82)
  store i8 %83, i8* %6, align 1
  %84 = load %struct.EState*, %struct.EState** %7, align 8
  %85 = getelementptr inbounds %struct.EState, %struct.EState* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp ugt i32 %86, 0
  br i1 %87, label %100, label %88

; <label>:88:                                     ; preds = %81
  %89 = load %struct.EState*, %struct.EState** %7, align 8
  %90 = call zeroext i8 @isempty_RL(%struct.EState* %89)
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %100

; <label>:92:                                     ; preds = %88
  %93 = load %struct.EState*, %struct.EState** %7, align 8
  %94 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 20
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.EState*, %struct.EState** %7, align 8
  %97 = getelementptr inbounds %struct.EState, %struct.EState* %96, i32 0, i32 19
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %101

; <label>:100:                                    ; preds = %92, %88, %81
  store i32 2, i32* %3, align 4
  br label %147

; <label>:101:                                    ; preds = %92
  %102 = load %struct.EState*, %struct.EState** %7, align 8
  %103 = getelementptr inbounds %struct.EState, %struct.EState* %102, i32 0, i32 1
  store i32 2, i32* %103, align 8
  store i32 1, i32* %3, align 4
  br label %147

; <label>:104:                                    ; preds = %27
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 2
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %104
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:108:                                    ; preds = %104
  %109 = load %struct.EState*, %struct.EState** %7, align 8
  %110 = getelementptr inbounds %struct.EState, %struct.EState* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.EState*, %struct.EState** %7, align 8
  %113 = getelementptr inbounds %struct.EState, %struct.EState* %112, i32 0, i32 0
  %114 = load %struct.bz_stream*, %struct.bz_stream** %113, align 8
  %115 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %111, %116
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %108
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:119:                                    ; preds = %108
  %120 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %121 = call zeroext i8 @handle_compress(%struct.bz_stream* %120)
  store i8 %121, i8* %6, align 1
  %122 = load i8, i8* %6, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %125, label %124

; <label>:124:                                    ; preds = %119
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:125:                                    ; preds = %119
  %126 = load %struct.EState*, %struct.EState** %7, align 8
  %127 = getelementptr inbounds %struct.EState, %struct.EState* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = icmp ugt i32 %128, 0
  br i1 %129, label %142, label %130

; <label>:130:                                    ; preds = %125
  %131 = load %struct.EState*, %struct.EState** %7, align 8
  %132 = call zeroext i8 @isempty_RL(%struct.EState* %131)
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %142

; <label>:134:                                    ; preds = %130
  %135 = load %struct.EState*, %struct.EState** %7, align 8
  %136 = getelementptr inbounds %struct.EState, %struct.EState* %135, i32 0, i32 20
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.EState*, %struct.EState** %7, align 8
  %139 = getelementptr inbounds %struct.EState, %struct.EState* %138, i32 0, i32 19
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %134, %130, %125
  store i32 3, i32* %3, align 4
  br label %147

; <label>:143:                                    ; preds = %134
  %144 = load %struct.EState*, %struct.EState** %7, align 8
  %145 = getelementptr inbounds %struct.EState, %struct.EState* %144, i32 0, i32 1
  store i32 1, i32* %145, align 8
  store i32 4, i32* %3, align 4
  br label %147

; <label>:146:                                    ; preds = %27
  store i32 0, i32* %3, align 4
  br label %147

; <label>:147:                                    ; preds = %146, %143, %142, %124, %118, %107, %101, %100, %80, %69, %65, %35, %31, %25, %18, %10
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @handle_compress(%struct.bz_stream*) #0 {
  %2 = alloca %struct.bz_stream*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca %struct.EState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %2, align 8
  store i8 0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  %6 = load %struct.bz_stream*, %struct.bz_stream** %2, align 8
  %7 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %6, i32 0, i32 8
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.EState*
  store %struct.EState* %9, %struct.EState** %5, align 8
  br label %10

; <label>:10:                                     ; preds = %1, %123
  %11 = load %struct.EState*, %struct.EState** %5, align 8
  %12 = getelementptr inbounds %struct.EState, %struct.EState* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %67

; <label>:15:                                     ; preds = %10
  %16 = load %struct.EState*, %struct.EState** %5, align 8
  %17 = call zeroext i8 @copy_output_until_stop(%struct.EState* %16)
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %4, align 1
  %23 = load %struct.EState*, %struct.EState** %5, align 8
  %24 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 20
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.EState*, %struct.EState** %5, align 8
  %27 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 19
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %15
  br label %124

; <label>:31:                                     ; preds = %15
  %32 = load %struct.EState*, %struct.EState** %5, align 8
  %33 = getelementptr inbounds %struct.EState, %struct.EState* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %47

; <label>:36:                                     ; preds = %31
  %37 = load %struct.EState*, %struct.EState** %5, align 8
  %38 = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

; <label>:41:                                     ; preds = %36
  %42 = load %struct.EState*, %struct.EState** %5, align 8
  %43 = call zeroext i8 @isempty_RL(%struct.EState* %42)
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %41
  br label %124

; <label>:47:                                     ; preds = %41, %36, %31
  %48 = load %struct.EState*, %struct.EState** %5, align 8
  call void @prepare_new_block(%struct.EState* %48)
  %49 = load %struct.EState*, %struct.EState** %5, align 8
  %50 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 2
  store i32 2, i32* %50, align 4
  %51 = load %struct.EState*, %struct.EState** %5, align 8
  %52 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %66

; <label>:55:                                     ; preds = %47
  %56 = load %struct.EState*, %struct.EState** %5, align 8
  %57 = getelementptr inbounds %struct.EState, %struct.EState* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

; <label>:60:                                     ; preds = %55
  %61 = load %struct.EState*, %struct.EState** %5, align 8
  %62 = call zeroext i8 @isempty_RL(%struct.EState* %61)
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %60
  br label %124

; <label>:66:                                     ; preds = %60, %55, %47
  br label %67

; <label>:67:                                     ; preds = %66, %10
  %68 = load %struct.EState*, %struct.EState** %5, align 8
  %69 = getelementptr inbounds %struct.EState, %struct.EState* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %123

; <label>:72:                                     ; preds = %67
  %73 = load %struct.EState*, %struct.EState** %5, align 8
  %74 = call zeroext i8 @copy_input_until_stop(%struct.EState* %73)
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* %3, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, %75
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %3, align 1
  %80 = load %struct.EState*, %struct.EState** %5, align 8
  %81 = getelementptr inbounds %struct.EState, %struct.EState* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 2
  br i1 %83, label %84, label %100

; <label>:84:                                     ; preds = %72
  %85 = load %struct.EState*, %struct.EState** %5, align 8
  %86 = getelementptr inbounds %struct.EState, %struct.EState* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100

; <label>:89:                                     ; preds = %84
  %90 = load %struct.EState*, %struct.EState** %5, align 8
  call void @flush_RL(%struct.EState* %90)
  %91 = load %struct.EState*, %struct.EState** %5, align 8
  %92 = load %struct.EState*, %struct.EState** %5, align 8
  %93 = getelementptr inbounds %struct.EState, %struct.EState* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 4
  %96 = zext i1 %95 to i32
  %97 = trunc i32 %96 to i8
  call void @BZ2_compressBlock(%struct.EState* %91, i8 zeroext %97)
  %98 = load %struct.EState*, %struct.EState** %5, align 8
  %99 = getelementptr inbounds %struct.EState, %struct.EState* %98, i32 0, i32 2
  store i32 1, i32* %99, align 4
  br label %122

; <label>:100:                                    ; preds = %84, %72
  %101 = load %struct.EState*, %struct.EState** %5, align 8
  %102 = getelementptr inbounds %struct.EState, %struct.EState* %101, i32 0, i32 17
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.EState*, %struct.EState** %5, align 8
  %105 = getelementptr inbounds %struct.EState, %struct.EState* %104, i32 0, i32 18
  %106 = load i32, i32* %105, align 8
  %107 = icmp sge i32 %103, %106
  br i1 %107, label %108, label %112

; <label>:108:                                    ; preds = %100
  %109 = load %struct.EState*, %struct.EState** %5, align 8
  call void @BZ2_compressBlock(%struct.EState* %109, i8 zeroext 0)
  %110 = load %struct.EState*, %struct.EState** %5, align 8
  %111 = getelementptr inbounds %struct.EState, %struct.EState* %110, i32 0, i32 2
  store i32 1, i32* %111, align 4
  br label %121

; <label>:112:                                    ; preds = %100
  %113 = load %struct.EState*, %struct.EState** %5, align 8
  %114 = getelementptr inbounds %struct.EState, %struct.EState* %113, i32 0, i32 0
  %115 = load %struct.bz_stream*, %struct.bz_stream** %114, align 8
  %116 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %112
  br label %124

; <label>:120:                                    ; preds = %112
  br label %121

; <label>:121:                                    ; preds = %120, %108
  br label %122

; <label>:122:                                    ; preds = %121, %89
  br label %123

; <label>:123:                                    ; preds = %122, %67
  br label %10

; <label>:124:                                    ; preds = %119, %65, %46, %30
  %125 = load i8, i8* %3, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

; <label>:128:                                    ; preds = %124
  %129 = load i8, i8* %4, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br label %132

; <label>:132:                                    ; preds = %128, %124
  %133 = phi i1 [ true, %124 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  %135 = trunc i32 %134 to i8
  ret i8 %135
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @isempty_RL(%struct.EState*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.EState*, align 8
  store %struct.EState* %0, %struct.EState** %3, align 8
  %4 = load %struct.EState*, %struct.EState** %3, align 8
  %5 = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 13
  %6 = load i32, i32* %5, align 4
  %7 = icmp ult i32 %6, 256
  br i1 %7, label %8, label %14

; <label>:8:                                      ; preds = %1
  %9 = load %struct.EState*, %struct.EState** %3, align 8
  %10 = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 14
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %8
  store i8 0, i8* %2, align 1
  br label %15

; <label>:14:                                     ; preds = %8, %1
  store i8 1, i8* %2, align 1
  br label %15

; <label>:15:                                     ; preds = %14, %13
  %16 = load i8, i8* %2, align 1
  ret i8 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzCompressEnd(%struct.bz_stream*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bz_stream*, align 8
  %4 = alloca %struct.EState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %3, align 8
  %5 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %6 = icmp eq %struct.bz_stream* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %83

; <label>:8:                                      ; preds = %1
  %9 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %10 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %9, i32 0, i32 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.EState*
  store %struct.EState* %12, %struct.EState** %4, align 8
  %13 = load %struct.EState*, %struct.EState** %4, align 8
  %14 = icmp eq %struct.EState* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %8
  store i32 -2, i32* %2, align 4
  br label %83

; <label>:16:                                     ; preds = %8
  %17 = load %struct.EState*, %struct.EState** %4, align 8
  %18 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 0
  %19 = load %struct.bz_stream*, %struct.bz_stream** %18, align 8
  %20 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %21 = icmp ne %struct.bz_stream* %19, %20
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  store i32 -2, i32* %2, align 4
  br label %83

; <label>:23:                                     ; preds = %16
  %24 = load %struct.EState*, %struct.EState** %4, align 8
  %25 = getelementptr inbounds %struct.EState, %struct.EState* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %23
  %29 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %30 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 10
  %31 = load void (i8*, i8*)*, void (i8*, i8*)** %30, align 8
  %32 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %33 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 11
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.EState*, %struct.EState** %4, align 8
  %36 = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  call void %31(i8* %34, i8* %38)
  br label %39

; <label>:39:                                     ; preds = %28, %23
  %40 = load %struct.EState*, %struct.EState** %4, align 8
  %41 = getelementptr inbounds %struct.EState, %struct.EState* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %39
  %45 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %46 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %45, i32 0, i32 10
  %47 = load void (i8*, i8*)*, void (i8*, i8*)** %46, align 8
  %48 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %49 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %48, i32 0, i32 11
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.EState*, %struct.EState** %4, align 8
  %52 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to i8*
  call void %47(i8* %50, i8* %54)
  br label %55

; <label>:55:                                     ; preds = %44, %39
  %56 = load %struct.EState*, %struct.EState** %4, align 8
  %57 = getelementptr inbounds %struct.EState, %struct.EState* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %71

; <label>:60:                                     ; preds = %55
  %61 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %62 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %61, i32 0, i32 10
  %63 = load void (i8*, i8*)*, void (i8*, i8*)** %62, align 8
  %64 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %65 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %64, i32 0, i32 11
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.EState*, %struct.EState** %4, align 8
  %68 = getelementptr inbounds %struct.EState, %struct.EState* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to i8*
  call void %63(i8* %66, i8* %70)
  br label %71

; <label>:71:                                     ; preds = %60, %55
  %72 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %73 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %72, i32 0, i32 10
  %74 = load void (i8*, i8*)*, void (i8*, i8*)** %73, align 8
  %75 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %76 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %75, i32 0, i32 11
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %79 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %78, i32 0, i32 8
  %80 = load i8*, i8** %79, align 8
  call void %74(i8* %77, i8* %80)
  %81 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %82 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %81, i32 0, i32 8
  store i8* null, i8** %82, align 8
  store i32 0, i32* %2, align 4
  br label %83

; <label>:83:                                     ; preds = %71, %22, %15, %7
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzDecompressInit(%struct.bz_stream*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bz_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.DState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @bz_config_ok()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %3
  store i32 -9, i32* %4, align 4
  br label %97

; <label>:12:                                     ; preds = %3
  %13 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %14 = icmp eq %struct.bz_stream* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  store i32 -2, i32* %4, align 4
  br label %97

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  store i32 -2, i32* %4, align 4
  br label %97

; <label>:23:                                     ; preds = %19, %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26, %23
  store i32 -2, i32* %4, align 4
  br label %97

; <label>:30:                                     ; preds = %26
  %31 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %31, i32 0, i32 9
  %33 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %32, align 8
  %34 = icmp eq i8* (i8*, i32, i32)* %33, null
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %30
  %36 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %37 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %36, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %37, align 8
  br label %38

; <label>:38:                                     ; preds = %35, %30
  %39 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %40 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %39, i32 0, i32 10
  %41 = load void (i8*, i8*)*, void (i8*, i8*)** %40, align 8
  %42 = icmp eq void (i8*, i8*)* %41, null
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %38
  %44 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %45 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %44, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %45, align 8
  br label %46

; <label>:46:                                     ; preds = %43, %38
  %47 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %48 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %47, i32 0, i32 9
  %49 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %48, align 8
  %50 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %51 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %50, i32 0, i32 11
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* %49(i8* %52, i32 64144, i32 1)
  %54 = bitcast i8* %53 to %struct.DState*
  store %struct.DState* %54, %struct.DState** %8, align 8
  %55 = load %struct.DState*, %struct.DState** %8, align 8
  %56 = icmp eq %struct.DState* %55, null
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %46
  store i32 -3, i32* %4, align 4
  br label %97

; <label>:58:                                     ; preds = %46
  %59 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %60 = load %struct.DState*, %struct.DState** %8, align 8
  %61 = getelementptr inbounds %struct.DState, %struct.DState* %60, i32 0, i32 0
  store %struct.bz_stream* %59, %struct.bz_stream** %61, align 8
  %62 = load %struct.DState*, %struct.DState** %8, align 8
  %63 = bitcast %struct.DState* %62 to i8*
  %64 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %65 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.DState*, %struct.DState** %8, align 8
  %67 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 1
  store i32 10, i32* %67, align 8
  %68 = load %struct.DState*, %struct.DState** %8, align 8
  %69 = getelementptr inbounds %struct.DState, %struct.DState* %68, i32 0, i32 8
  store i32 0, i32* %69, align 4
  %70 = load %struct.DState*, %struct.DState** %8, align 8
  %71 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 7
  store i32 0, i32* %71, align 8
  %72 = load %struct.DState*, %struct.DState** %8, align 8
  %73 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 26
  store i32 0, i32* %73, align 4
  %74 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %75 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %74, i32 0, i32 2
  store i32 0, i32* %75, align 4
  %76 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %77 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %76, i32 0, i32 3
  store i32 0, i32* %77, align 8
  %78 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %79 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %78, i32 0, i32 6
  store i32 0, i32* %79, align 4
  %80 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %81 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %80, i32 0, i32 7
  store i32 0, i32* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = trunc i32 %82 to i8
  %84 = load %struct.DState*, %struct.DState** %8, align 8
  %85 = getelementptr inbounds %struct.DState, %struct.DState* %84, i32 0, i32 10
  store i8 %83, i8* %85, align 4
  %86 = load %struct.DState*, %struct.DState** %8, align 8
  %87 = getelementptr inbounds %struct.DState, %struct.DState* %86, i32 0, i32 22
  store i8* null, i8** %87, align 8
  %88 = load %struct.DState*, %struct.DState** %8, align 8
  %89 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 21
  store i16* null, i16** %89, align 8
  %90 = load %struct.DState*, %struct.DState** %8, align 8
  %91 = getelementptr inbounds %struct.DState, %struct.DState* %90, i32 0, i32 20
  store i32* null, i32** %91, align 8
  %92 = load %struct.DState*, %struct.DState** %8, align 8
  %93 = getelementptr inbounds %struct.DState, %struct.DState* %92, i32 0, i32 11
  store i32 0, i32* %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.DState*, %struct.DState** %8, align 8
  %96 = getelementptr inbounds %struct.DState, %struct.DState* %95, i32 0, i32 12
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %97

; <label>:97:                                     ; preds = %58, %57, %29, %22, %15, %11
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_indexIntoF(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 256, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %25, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %9, %10
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %13, %18
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %5, align 4
  br label %24

; <label>:22:                                     ; preds = %8
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %6, align 4
  br label %24

; <label>:24:                                     ; preds = %22, %20
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %8, label %30

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzDecompress(%struct.bz_stream*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bz_stream*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.DState*, align 8
  %6 = alloca i32, align 4
  store %struct.bz_stream* %0, %struct.bz_stream** %3, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %8 = icmp eq %struct.bz_stream* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %170

; <label>:10:                                     ; preds = %1
  %11 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %12 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.DState*
  store %struct.DState* %14, %struct.DState** %5, align 8
  %15 = load %struct.DState*, %struct.DState** %5, align 8
  %16 = icmp eq %struct.DState* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %10
  store i32 -2, i32* %2, align 4
  br label %170

; <label>:18:                                     ; preds = %10
  %19 = load %struct.DState*, %struct.DState** %5, align 8
  %20 = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 0
  %21 = load %struct.bz_stream*, %struct.bz_stream** %20, align 8
  %22 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %23 = icmp ne %struct.bz_stream* %21, %22
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %18
  store i32 -2, i32* %2, align 4
  br label %170

; <label>:25:                                     ; preds = %18
  br label %26

; <label>:26:                                     ; preds = %25, %169
  %27 = load %struct.DState*, %struct.DState** %5, align 8
  %28 = getelementptr inbounds %struct.DState, %struct.DState* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %170

; <label>:32:                                     ; preds = %26
  %33 = load %struct.DState*, %struct.DState** %5, align 8
  %34 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %126

; <label>:37:                                     ; preds = %32
  %38 = load %struct.DState*, %struct.DState** %5, align 8
  %39 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 10
  %40 = load i8, i8* %39, align 4
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %37
  %43 = load %struct.DState*, %struct.DState** %5, align 8
  %44 = call zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %43)
  store i8 %44, i8* %4, align 1
  br label %48

; <label>:45:                                     ; preds = %37
  %46 = load %struct.DState*, %struct.DState** %5, align 8
  %47 = call zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %46)
  store i8 %47, i8* %4, align 1
  br label %48

; <label>:48:                                     ; preds = %45, %42
  %49 = load i8, i8* %4, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %48
  store i32 -4, i32* %2, align 4
  br label %170

; <label>:52:                                     ; preds = %48
  %53 = load %struct.DState*, %struct.DState** %5, align 8
  %54 = getelementptr inbounds %struct.DState, %struct.DState* %53, i32 0, i32 17
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.DState*, %struct.DState** %5, align 8
  %57 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 51
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %124

; <label>:61:                                     ; preds = %52
  %62 = load %struct.DState*, %struct.DState** %5, align 8
  %63 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %124

; <label>:66:                                     ; preds = %61
  %67 = load %struct.DState*, %struct.DState** %5, align 8
  %68 = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 25
  %69 = load i32, i32* %68, align 8
  %70 = xor i32 %69, -1
  %71 = load %struct.DState*, %struct.DState** %5, align 8
  %72 = getelementptr inbounds %struct.DState, %struct.DState* %71, i32 0, i32 25
  store i32 %70, i32* %72, align 8
  %73 = load %struct.DState*, %struct.DState** %5, align 8
  %74 = getelementptr inbounds %struct.DState, %struct.DState* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 3
  br i1 %76, label %77, label %86

; <label>:77:                                     ; preds = %66
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = load %struct.DState*, %struct.DState** %5, align 8
  %80 = getelementptr inbounds %struct.DState, %struct.DState* %79, i32 0, i32 23
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.DState*, %struct.DState** %5, align 8
  %83 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 25
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %81, i32 %84)
  br label %86

; <label>:86:                                     ; preds = %77, %66
  %87 = load %struct.DState*, %struct.DState** %5, align 8
  %88 = getelementptr inbounds %struct.DState, %struct.DState* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %94

; <label>:91:                                     ; preds = %86
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %94

; <label>:94:                                     ; preds = %91, %86
  %95 = load %struct.DState*, %struct.DState** %5, align 8
  %96 = getelementptr inbounds %struct.DState, %struct.DState* %95, i32 0, i32 25
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.DState*, %struct.DState** %5, align 8
  %99 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 23
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %103

; <label>:102:                                    ; preds = %94
  store i32 -4, i32* %2, align 4
  br label %170

; <label>:103:                                    ; preds = %94
  %104 = load %struct.DState*, %struct.DState** %5, align 8
  %105 = getelementptr inbounds %struct.DState, %struct.DState* %104, i32 0, i32 26
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 1
  %108 = load %struct.DState*, %struct.DState** %5, align 8
  %109 = getelementptr inbounds %struct.DState, %struct.DState* %108, i32 0, i32 26
  %110 = load i32, i32* %109, align 4
  %111 = lshr i32 %110, 31
  %112 = or i32 %107, %111
  %113 = load %struct.DState*, %struct.DState** %5, align 8
  %114 = getelementptr inbounds %struct.DState, %struct.DState* %113, i32 0, i32 26
  store i32 %112, i32* %114, align 4
  %115 = load %struct.DState*, %struct.DState** %5, align 8
  %116 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 25
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.DState*, %struct.DState** %5, align 8
  %119 = getelementptr inbounds %struct.DState, %struct.DState* %118, i32 0, i32 26
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.DState*, %struct.DState** %5, align 8
  %123 = getelementptr inbounds %struct.DState, %struct.DState* %122, i32 0, i32 1
  store i32 14, i32* %123, align 8
  br label %125

; <label>:124:                                    ; preds = %61, %52
  store i32 0, i32* %2, align 4
  br label %170

; <label>:125:                                    ; preds = %103
  br label %126

; <label>:126:                                    ; preds = %125, %32
  %127 = load %struct.DState*, %struct.DState** %5, align 8
  %128 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %129, 10
  br i1 %130, label %131, label %169

; <label>:131:                                    ; preds = %126
  %132 = load %struct.DState*, %struct.DState** %5, align 8
  %133 = call i32 @BZ2_decompress(%struct.DState* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %136, label %161

; <label>:136:                                    ; preds = %131
  %137 = load %struct.DState*, %struct.DState** %5, align 8
  %138 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 12
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 3
  br i1 %140, label %141, label %150

; <label>:141:                                    ; preds = %136
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %143 = load %struct.DState*, %struct.DState** %5, align 8
  %144 = getelementptr inbounds %struct.DState, %struct.DState* %143, i32 0, i32 24
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.DState*, %struct.DState** %5, align 8
  %147 = getelementptr inbounds %struct.DState, %struct.DState* %146, i32 0, i32 26
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0), i32 %145, i32 %148)
  br label %150

; <label>:150:                                    ; preds = %141, %136
  %151 = load %struct.DState*, %struct.DState** %5, align 8
  %152 = getelementptr inbounds %struct.DState, %struct.DState* %151, i32 0, i32 26
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.DState*, %struct.DState** %5, align 8
  %155 = getelementptr inbounds %struct.DState, %struct.DState* %154, i32 0, i32 24
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %150
  store i32 -4, i32* %2, align 4
  br label %170

; <label>:159:                                    ; preds = %150
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %2, align 4
  br label %170

; <label>:161:                                    ; preds = %131
  %162 = load %struct.DState*, %struct.DState** %5, align 8
  %163 = getelementptr inbounds %struct.DState, %struct.DState* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 2
  br i1 %165, label %166, label %168

; <label>:166:                                    ; preds = %161
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %170

; <label>:168:                                    ; preds = %161
  br label %169

; <label>:169:                                    ; preds = %168, %126
  br label %26

; <label>:170:                                    ; preds = %166, %159, %158, %124, %102, %51, %31, %24, %17, %9
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.DState*, align 8
  %4 = alloca i8, align 1
  store %struct.DState* %0, %struct.DState** %3, align 8
  %5 = load %struct.DState*, %struct.DState** %3, align 8
  %6 = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 4
  %7 = load i8, i8* %6, align 4
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %614

; <label>:9:                                      ; preds = %1
  br label %10

; <label>:10:                                     ; preds = %9, %210, %218, %318, %326, %426, %434, %595
  br label %11

; <label>:11:                                     ; preds = %10, %88
  %12 = load %struct.DState*, %struct.DState** %3, align 8
  %13 = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 0
  %14 = load %struct.bz_stream*, %struct.bz_stream** %13, align 8
  %15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %11
  store i8 0, i8* %2, align 1
  br label %1019

; <label>:19:                                     ; preds = %11
  %20 = load %struct.DState*, %struct.DState** %3, align 8
  %21 = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %19
  br label %89

; <label>:25:                                     ; preds = %19
  %26 = load %struct.DState*, %struct.DState** %3, align 8
  %27 = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 2
  %28 = load i8, i8* %27, align 4
  %29 = load %struct.DState*, %struct.DState** %3, align 8
  %30 = getelementptr inbounds %struct.DState, %struct.DState* %29, i32 0, i32 0
  %31 = load %struct.bz_stream*, %struct.bz_stream** %30, align 8
  %32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  store i8 %28, i8* %33, align 1
  %34 = load %struct.DState*, %struct.DState** %3, align 8
  %35 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 25
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 8
  %38 = load %struct.DState*, %struct.DState** %3, align 8
  %39 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 25
  %40 = load i32, i32* %39, align 8
  %41 = lshr i32 %40, 24
  %42 = load %struct.DState*, %struct.DState** %3, align 8
  %43 = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 2
  %44 = load i8, i8* %43, align 4
  %45 = zext i8 %44 to i32
  %46 = xor i32 %41, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %37, %49
  %51 = load %struct.DState*, %struct.DState** %3, align 8
  %52 = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 25
  store i32 %50, i32* %52, align 8
  %53 = load %struct.DState*, %struct.DState** %3, align 8
  %54 = getelementptr inbounds %struct.DState, %struct.DState* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.DState*, %struct.DState** %3, align 8
  %58 = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 0
  %59 = load %struct.bz_stream*, %struct.bz_stream** %58, align 8
  %60 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %60, align 8
  %63 = load %struct.DState*, %struct.DState** %3, align 8
  %64 = getelementptr inbounds %struct.DState, %struct.DState* %63, i32 0, i32 0
  %65 = load %struct.bz_stream*, %struct.bz_stream** %64, align 8
  %66 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = add i32 %67, -1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.DState*, %struct.DState** %3, align 8
  %70 = getelementptr inbounds %struct.DState, %struct.DState* %69, i32 0, i32 0
  %71 = load %struct.bz_stream*, %struct.bz_stream** %70, align 8
  %72 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.DState*, %struct.DState** %3, align 8
  %76 = getelementptr inbounds %struct.DState, %struct.DState* %75, i32 0, i32 0
  %77 = load %struct.bz_stream*, %struct.bz_stream** %76, align 8
  %78 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

; <label>:81:                                     ; preds = %25
  %82 = load %struct.DState*, %struct.DState** %3, align 8
  %83 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 0
  %84 = load %struct.bz_stream*, %struct.bz_stream** %83, align 8
  %85 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = add i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

; <label>:88:                                     ; preds = %81, %25
  br label %11

; <label>:89:                                     ; preds = %24
  %90 = load %struct.DState*, %struct.DState** %3, align 8
  %91 = getelementptr inbounds %struct.DState, %struct.DState* %90, i32 0, i32 17
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.DState*, %struct.DState** %3, align 8
  %94 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 51
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %89
  store i8 0, i8* %2, align 1
  br label %1019

; <label>:99:                                     ; preds = %89
  %100 = load %struct.DState*, %struct.DState** %3, align 8
  %101 = getelementptr inbounds %struct.DState, %struct.DState* %100, i32 0, i32 17
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.DState*, %struct.DState** %3, align 8
  %104 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 51
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  %107 = icmp sgt i32 %102, %106
  br i1 %107, label %108, label %109

; <label>:108:                                    ; preds = %99
  store i8 1, i8* %2, align 1
  br label %1019

; <label>:109:                                    ; preds = %99
  %110 = load %struct.DState*, %struct.DState** %3, align 8
  %111 = getelementptr inbounds %struct.DState, %struct.DState* %110, i32 0, i32 3
  store i32 1, i32* %111, align 8
  %112 = load %struct.DState*, %struct.DState** %3, align 8
  %113 = getelementptr inbounds %struct.DState, %struct.DState* %112, i32 0, i32 15
  %114 = load i32, i32* %113, align 8
  %115 = trunc i32 %114 to i8
  %116 = load %struct.DState*, %struct.DState** %3, align 8
  %117 = getelementptr inbounds %struct.DState, %struct.DState* %116, i32 0, i32 2
  store i8 %115, i8* %117, align 4
  %118 = load %struct.DState*, %struct.DState** %3, align 8
  %119 = getelementptr inbounds %struct.DState, %struct.DState* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.DState*, %struct.DState** %3, align 8
  %122 = getelementptr inbounds %struct.DState, %struct.DState* %121, i32 0, i32 18
  %123 = getelementptr inbounds [257 x i32], [257 x i32]* %122, i32 0, i32 0
  %124 = call i32 @BZ2_indexIntoF(i32 %120, i32* %123)
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %4, align 1
  %126 = load %struct.DState*, %struct.DState** %3, align 8
  %127 = getelementptr inbounds %struct.DState, %struct.DState* %126, i32 0, i32 21
  %128 = load i16*, i16** %127, align 8
  %129 = load %struct.DState*, %struct.DState** %3, align 8
  %130 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 14
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i16, i16* %128, i64 %132
  %134 = load i16, i16* %133, align 2
  %135 = zext i16 %134 to i32
  %136 = load %struct.DState*, %struct.DState** %3, align 8
  %137 = getelementptr inbounds %struct.DState, %struct.DState* %136, i32 0, i32 22
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.DState*, %struct.DState** %3, align 8
  %140 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 14
  %141 = load i32, i32* %140, align 4
  %142 = lshr i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %138, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load %struct.DState*, %struct.DState** %3, align 8
  %148 = getelementptr inbounds %struct.DState, %struct.DState* %147, i32 0, i32 14
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 2
  %151 = and i32 %150, 4
  %152 = lshr i32 %146, %151
  %153 = and i32 %152, 15
  %154 = shl i32 %153, 16
  %155 = or i32 %135, %154
  %156 = load %struct.DState*, %struct.DState** %3, align 8
  %157 = getelementptr inbounds %struct.DState, %struct.DState* %156, i32 0, i32 14
  store i32 %155, i32* %157, align 4
  %158 = load %struct.DState*, %struct.DState** %3, align 8
  %159 = getelementptr inbounds %struct.DState, %struct.DState* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %183

; <label>:162:                                    ; preds = %109
  %163 = load %struct.DState*, %struct.DState** %3, align 8
  %164 = getelementptr inbounds %struct.DState, %struct.DState* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.DState*, %struct.DState** %3, align 8
  %170 = getelementptr inbounds %struct.DState, %struct.DState* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  %171 = load %struct.DState*, %struct.DState** %3, align 8
  %172 = getelementptr inbounds %struct.DState, %struct.DState* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.DState*, %struct.DState** %3, align 8
  %176 = getelementptr inbounds %struct.DState, %struct.DState* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 512
  br i1 %178, label %179, label %182

; <label>:179:                                    ; preds = %162
  %180 = load %struct.DState*, %struct.DState** %3, align 8
  %181 = getelementptr inbounds %struct.DState, %struct.DState* %180, i32 0, i32 6
  store i32 0, i32* %181, align 4
  br label %182

; <label>:182:                                    ; preds = %179, %162
  br label %183

; <label>:183:                                    ; preds = %182, %109
  %184 = load %struct.DState*, %struct.DState** %3, align 8
  %185 = getelementptr inbounds %struct.DState, %struct.DState* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %185, align 8
  %188 = load %struct.DState*, %struct.DState** %3, align 8
  %189 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 1
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 1, i32 0
  %194 = load i8, i8* %4, align 1
  %195 = zext i8 %194 to i32
  %196 = xor i32 %195, %193
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %4, align 1
  %198 = load %struct.DState*, %struct.DState** %3, align 8
  %199 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 17
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = load %struct.DState*, %struct.DState** %3, align 8
  %203 = getelementptr inbounds %struct.DState, %struct.DState* %202, i32 0, i32 17
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.DState*, %struct.DState** %3, align 8
  %206 = getelementptr inbounds %struct.DState, %struct.DState* %205, i32 0, i32 51
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  %209 = icmp eq i32 %204, %208
  br i1 %209, label %210, label %211

; <label>:210:                                    ; preds = %183
  br label %10

; <label>:211:                                    ; preds = %183
  %212 = load i8, i8* %4, align 1
  %213 = zext i8 %212 to i32
  %214 = load %struct.DState*, %struct.DState** %3, align 8
  %215 = getelementptr inbounds %struct.DState, %struct.DState* %214, i32 0, i32 15
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %213, %216
  br i1 %217, label %218, label %223

; <label>:218:                                    ; preds = %211
  %219 = load i8, i8* %4, align 1
  %220 = zext i8 %219 to i32
  %221 = load %struct.DState*, %struct.DState** %3, align 8
  %222 = getelementptr inbounds %struct.DState, %struct.DState* %221, i32 0, i32 15
  store i32 %220, i32* %222, align 8
  br label %10

; <label>:223:                                    ; preds = %211
  %224 = load %struct.DState*, %struct.DState** %3, align 8
  %225 = getelementptr inbounds %struct.DState, %struct.DState* %224, i32 0, i32 3
  store i32 2, i32* %225, align 8
  %226 = load %struct.DState*, %struct.DState** %3, align 8
  %227 = getelementptr inbounds %struct.DState, %struct.DState* %226, i32 0, i32 14
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.DState*, %struct.DState** %3, align 8
  %230 = getelementptr inbounds %struct.DState, %struct.DState* %229, i32 0, i32 18
  %231 = getelementptr inbounds [257 x i32], [257 x i32]* %230, i32 0, i32 0
  %232 = call i32 @BZ2_indexIntoF(i32 %228, i32* %231)
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %4, align 1
  %234 = load %struct.DState*, %struct.DState** %3, align 8
  %235 = getelementptr inbounds %struct.DState, %struct.DState* %234, i32 0, i32 21
  %236 = load i16*, i16** %235, align 8
  %237 = load %struct.DState*, %struct.DState** %3, align 8
  %238 = getelementptr inbounds %struct.DState, %struct.DState* %237, i32 0, i32 14
  %239 = load i32, i32* %238, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i16, i16* %236, i64 %240
  %242 = load i16, i16* %241, align 2
  %243 = zext i16 %242 to i32
  %244 = load %struct.DState*, %struct.DState** %3, align 8
  %245 = getelementptr inbounds %struct.DState, %struct.DState* %244, i32 0, i32 22
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.DState*, %struct.DState** %3, align 8
  %248 = getelementptr inbounds %struct.DState, %struct.DState* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 4
  %250 = lshr i32 %249, 1
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %246, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = load %struct.DState*, %struct.DState** %3, align 8
  %256 = getelementptr inbounds %struct.DState, %struct.DState* %255, i32 0, i32 14
  %257 = load i32, i32* %256, align 4
  %258 = shl i32 %257, 2
  %259 = and i32 %258, 4
  %260 = lshr i32 %254, %259
  %261 = and i32 %260, 15
  %262 = shl i32 %261, 16
  %263 = or i32 %243, %262
  %264 = load %struct.DState*, %struct.DState** %3, align 8
  %265 = getelementptr inbounds %struct.DState, %struct.DState* %264, i32 0, i32 14
  store i32 %263, i32* %265, align 4
  %266 = load %struct.DState*, %struct.DState** %3, align 8
  %267 = getelementptr inbounds %struct.DState, %struct.DState* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %291

; <label>:270:                                    ; preds = %223
  %271 = load %struct.DState*, %struct.DState** %3, align 8
  %272 = getelementptr inbounds %struct.DState, %struct.DState* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.DState*, %struct.DState** %3, align 8
  %278 = getelementptr inbounds %struct.DState, %struct.DState* %277, i32 0, i32 5
  store i32 %276, i32* %278, align 8
  %279 = load %struct.DState*, %struct.DState** %3, align 8
  %280 = getelementptr inbounds %struct.DState, %struct.DState* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 4
  %283 = load %struct.DState*, %struct.DState** %3, align 8
  %284 = getelementptr inbounds %struct.DState, %struct.DState* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %285, 512
  br i1 %286, label %287, label %290

; <label>:287:                                    ; preds = %270
  %288 = load %struct.DState*, %struct.DState** %3, align 8
  %289 = getelementptr inbounds %struct.DState, %struct.DState* %288, i32 0, i32 6
  store i32 0, i32* %289, align 4
  br label %290

; <label>:290:                                    ; preds = %287, %270
  br label %291

; <label>:291:                                    ; preds = %290, %223
  %292 = load %struct.DState*, %struct.DState** %3, align 8
  %293 = getelementptr inbounds %struct.DState, %struct.DState* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %293, align 8
  %296 = load %struct.DState*, %struct.DState** %3, align 8
  %297 = getelementptr inbounds %struct.DState, %struct.DState* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, 1
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i32 1, i32 0
  %302 = load i8, i8* %4, align 1
  %303 = zext i8 %302 to i32
  %304 = xor i32 %303, %301
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %4, align 1
  %306 = load %struct.DState*, %struct.DState** %3, align 8
  %307 = getelementptr inbounds %struct.DState, %struct.DState* %306, i32 0, i32 17
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 4
  %310 = load %struct.DState*, %struct.DState** %3, align 8
  %311 = getelementptr inbounds %struct.DState, %struct.DState* %310, i32 0, i32 17
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.DState*, %struct.DState** %3, align 8
  %314 = getelementptr inbounds %struct.DState, %struct.DState* %313, i32 0, i32 51
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  %317 = icmp eq i32 %312, %316
  br i1 %317, label %318, label %319

; <label>:318:                                    ; preds = %291
  br label %10

; <label>:319:                                    ; preds = %291
  %320 = load i8, i8* %4, align 1
  %321 = zext i8 %320 to i32
  %322 = load %struct.DState*, %struct.DState** %3, align 8
  %323 = getelementptr inbounds %struct.DState, %struct.DState* %322, i32 0, i32 15
  %324 = load i32, i32* %323, align 8
  %325 = icmp ne i32 %321, %324
  br i1 %325, label %326, label %331

; <label>:326:                                    ; preds = %319
  %327 = load i8, i8* %4, align 1
  %328 = zext i8 %327 to i32
  %329 = load %struct.DState*, %struct.DState** %3, align 8
  %330 = getelementptr inbounds %struct.DState, %struct.DState* %329, i32 0, i32 15
  store i32 %328, i32* %330, align 8
  br label %10

; <label>:331:                                    ; preds = %319
  %332 = load %struct.DState*, %struct.DState** %3, align 8
  %333 = getelementptr inbounds %struct.DState, %struct.DState* %332, i32 0, i32 3
  store i32 3, i32* %333, align 8
  %334 = load %struct.DState*, %struct.DState** %3, align 8
  %335 = getelementptr inbounds %struct.DState, %struct.DState* %334, i32 0, i32 14
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.DState*, %struct.DState** %3, align 8
  %338 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 18
  %339 = getelementptr inbounds [257 x i32], [257 x i32]* %338, i32 0, i32 0
  %340 = call i32 @BZ2_indexIntoF(i32 %336, i32* %339)
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %4, align 1
  %342 = load %struct.DState*, %struct.DState** %3, align 8
  %343 = getelementptr inbounds %struct.DState, %struct.DState* %342, i32 0, i32 21
  %344 = load i16*, i16** %343, align 8
  %345 = load %struct.DState*, %struct.DState** %3, align 8
  %346 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 14
  %347 = load i32, i32* %346, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i16, i16* %344, i64 %348
  %350 = load i16, i16* %349, align 2
  %351 = zext i16 %350 to i32
  %352 = load %struct.DState*, %struct.DState** %3, align 8
  %353 = getelementptr inbounds %struct.DState, %struct.DState* %352, i32 0, i32 22
  %354 = load i8*, i8** %353, align 8
  %355 = load %struct.DState*, %struct.DState** %3, align 8
  %356 = getelementptr inbounds %struct.DState, %struct.DState* %355, i32 0, i32 14
  %357 = load i32, i32* %356, align 4
  %358 = lshr i32 %357, 1
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %354, i64 %359
  %361 = load i8, i8* %360, align 1
  %362 = zext i8 %361 to i32
  %363 = load %struct.DState*, %struct.DState** %3, align 8
  %364 = getelementptr inbounds %struct.DState, %struct.DState* %363, i32 0, i32 14
  %365 = load i32, i32* %364, align 4
  %366 = shl i32 %365, 2
  %367 = and i32 %366, 4
  %368 = lshr i32 %362, %367
  %369 = and i32 %368, 15
  %370 = shl i32 %369, 16
  %371 = or i32 %351, %370
  %372 = load %struct.DState*, %struct.DState** %3, align 8
  %373 = getelementptr inbounds %struct.DState, %struct.DState* %372, i32 0, i32 14
  store i32 %371, i32* %373, align 4
  %374 = load %struct.DState*, %struct.DState** %3, align 8
  %375 = getelementptr inbounds %struct.DState, %struct.DState* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 8
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %399

; <label>:378:                                    ; preds = %331
  %379 = load %struct.DState*, %struct.DState** %3, align 8
  %380 = getelementptr inbounds %struct.DState, %struct.DState* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.DState*, %struct.DState** %3, align 8
  %386 = getelementptr inbounds %struct.DState, %struct.DState* %385, i32 0, i32 5
  store i32 %384, i32* %386, align 8
  %387 = load %struct.DState*, %struct.DState** %3, align 8
  %388 = getelementptr inbounds %struct.DState, %struct.DState* %387, i32 0, i32 6
  %389 = load i32, i32* %388, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %388, align 4
  %391 = load %struct.DState*, %struct.DState** %3, align 8
  %392 = getelementptr inbounds %struct.DState, %struct.DState* %391, i32 0, i32 6
  %393 = load i32, i32* %392, align 4
  %394 = icmp eq i32 %393, 512
  br i1 %394, label %395, label %398

; <label>:395:                                    ; preds = %378
  %396 = load %struct.DState*, %struct.DState** %3, align 8
  %397 = getelementptr inbounds %struct.DState, %struct.DState* %396, i32 0, i32 6
  store i32 0, i32* %397, align 4
  br label %398

; <label>:398:                                    ; preds = %395, %378
  br label %399

; <label>:399:                                    ; preds = %398, %331
  %400 = load %struct.DState*, %struct.DState** %3, align 8
  %401 = getelementptr inbounds %struct.DState, %struct.DState* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 8
  %403 = add nsw i32 %402, -1
  store i32 %403, i32* %401, align 8
  %404 = load %struct.DState*, %struct.DState** %3, align 8
  %405 = getelementptr inbounds %struct.DState, %struct.DState* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %406, 1
  %408 = zext i1 %407 to i64
  %409 = select i1 %407, i32 1, i32 0
  %410 = load i8, i8* %4, align 1
  %411 = zext i8 %410 to i32
  %412 = xor i32 %411, %409
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %4, align 1
  %414 = load %struct.DState*, %struct.DState** %3, align 8
  %415 = getelementptr inbounds %struct.DState, %struct.DState* %414, i32 0, i32 17
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %415, align 4
  %418 = load %struct.DState*, %struct.DState** %3, align 8
  %419 = getelementptr inbounds %struct.DState, %struct.DState* %418, i32 0, i32 17
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.DState*, %struct.DState** %3, align 8
  %422 = getelementptr inbounds %struct.DState, %struct.DState* %421, i32 0, i32 51
  %423 = load i32, i32* %422, align 8
  %424 = add nsw i32 %423, 1
  %425 = icmp eq i32 %420, %424
  br i1 %425, label %426, label %427

; <label>:426:                                    ; preds = %399
  br label %10

; <label>:427:                                    ; preds = %399
  %428 = load i8, i8* %4, align 1
  %429 = zext i8 %428 to i32
  %430 = load %struct.DState*, %struct.DState** %3, align 8
  %431 = getelementptr inbounds %struct.DState, %struct.DState* %430, i32 0, i32 15
  %432 = load i32, i32* %431, align 8
  %433 = icmp ne i32 %429, %432
  br i1 %433, label %434, label %439

; <label>:434:                                    ; preds = %427
  %435 = load i8, i8* %4, align 1
  %436 = zext i8 %435 to i32
  %437 = load %struct.DState*, %struct.DState** %3, align 8
  %438 = getelementptr inbounds %struct.DState, %struct.DState* %437, i32 0, i32 15
  store i32 %436, i32* %438, align 8
  br label %10

; <label>:439:                                    ; preds = %427
  %440 = load %struct.DState*, %struct.DState** %3, align 8
  %441 = getelementptr inbounds %struct.DState, %struct.DState* %440, i32 0, i32 14
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.DState*, %struct.DState** %3, align 8
  %444 = getelementptr inbounds %struct.DState, %struct.DState* %443, i32 0, i32 18
  %445 = getelementptr inbounds [257 x i32], [257 x i32]* %444, i32 0, i32 0
  %446 = call i32 @BZ2_indexIntoF(i32 %442, i32* %445)
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %4, align 1
  %448 = load %struct.DState*, %struct.DState** %3, align 8
  %449 = getelementptr inbounds %struct.DState, %struct.DState* %448, i32 0, i32 21
  %450 = load i16*, i16** %449, align 8
  %451 = load %struct.DState*, %struct.DState** %3, align 8
  %452 = getelementptr inbounds %struct.DState, %struct.DState* %451, i32 0, i32 14
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds i16, i16* %450, i64 %454
  %456 = load i16, i16* %455, align 2
  %457 = zext i16 %456 to i32
  %458 = load %struct.DState*, %struct.DState** %3, align 8
  %459 = getelementptr inbounds %struct.DState, %struct.DState* %458, i32 0, i32 22
  %460 = load i8*, i8** %459, align 8
  %461 = load %struct.DState*, %struct.DState** %3, align 8
  %462 = getelementptr inbounds %struct.DState, %struct.DState* %461, i32 0, i32 14
  %463 = load i32, i32* %462, align 4
  %464 = lshr i32 %463, 1
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %460, i64 %465
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i32
  %469 = load %struct.DState*, %struct.DState** %3, align 8
  %470 = getelementptr inbounds %struct.DState, %struct.DState* %469, i32 0, i32 14
  %471 = load i32, i32* %470, align 4
  %472 = shl i32 %471, 2
  %473 = and i32 %472, 4
  %474 = lshr i32 %468, %473
  %475 = and i32 %474, 15
  %476 = shl i32 %475, 16
  %477 = or i32 %457, %476
  %478 = load %struct.DState*, %struct.DState** %3, align 8
  %479 = getelementptr inbounds %struct.DState, %struct.DState* %478, i32 0, i32 14
  store i32 %477, i32* %479, align 4
  %480 = load %struct.DState*, %struct.DState** %3, align 8
  %481 = getelementptr inbounds %struct.DState, %struct.DState* %480, i32 0, i32 5
  %482 = load i32, i32* %481, align 8
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %505

; <label>:484:                                    ; preds = %439
  %485 = load %struct.DState*, %struct.DState** %3, align 8
  %486 = getelementptr inbounds %struct.DState, %struct.DState* %485, i32 0, i32 6
  %487 = load i32, i32* %486, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.DState*, %struct.DState** %3, align 8
  %492 = getelementptr inbounds %struct.DState, %struct.DState* %491, i32 0, i32 5
  store i32 %490, i32* %492, align 8
  %493 = load %struct.DState*, %struct.DState** %3, align 8
  %494 = getelementptr inbounds %struct.DState, %struct.DState* %493, i32 0, i32 6
  %495 = load i32, i32* %494, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %494, align 4
  %497 = load %struct.DState*, %struct.DState** %3, align 8
  %498 = getelementptr inbounds %struct.DState, %struct.DState* %497, i32 0, i32 6
  %499 = load i32, i32* %498, align 4
  %500 = icmp eq i32 %499, 512
  br i1 %500, label %501, label %504

; <label>:501:                                    ; preds = %484
  %502 = load %struct.DState*, %struct.DState** %3, align 8
  %503 = getelementptr inbounds %struct.DState, %struct.DState* %502, i32 0, i32 6
  store i32 0, i32* %503, align 4
  br label %504

; <label>:504:                                    ; preds = %501, %484
  br label %505

; <label>:505:                                    ; preds = %504, %439
  %506 = load %struct.DState*, %struct.DState** %3, align 8
  %507 = getelementptr inbounds %struct.DState, %struct.DState* %506, i32 0, i32 5
  %508 = load i32, i32* %507, align 8
  %509 = add nsw i32 %508, -1
  store i32 %509, i32* %507, align 8
  %510 = load %struct.DState*, %struct.DState** %3, align 8
  %511 = getelementptr inbounds %struct.DState, %struct.DState* %510, i32 0, i32 5
  %512 = load i32, i32* %511, align 8
  %513 = icmp eq i32 %512, 1
  %514 = zext i1 %513 to i64
  %515 = select i1 %513, i32 1, i32 0
  %516 = load i8, i8* %4, align 1
  %517 = zext i8 %516 to i32
  %518 = xor i32 %517, %515
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %4, align 1
  %520 = load %struct.DState*, %struct.DState** %3, align 8
  %521 = getelementptr inbounds %struct.DState, %struct.DState* %520, i32 0, i32 17
  %522 = load i32, i32* %521, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %521, align 4
  %524 = load i8, i8* %4, align 1
  %525 = zext i8 %524 to i32
  %526 = add nsw i32 %525, 4
  %527 = load %struct.DState*, %struct.DState** %3, align 8
  %528 = getelementptr inbounds %struct.DState, %struct.DState* %527, i32 0, i32 3
  store i32 %526, i32* %528, align 8
  %529 = load %struct.DState*, %struct.DState** %3, align 8
  %530 = getelementptr inbounds %struct.DState, %struct.DState* %529, i32 0, i32 14
  %531 = load i32, i32* %530, align 4
  %532 = load %struct.DState*, %struct.DState** %3, align 8
  %533 = getelementptr inbounds %struct.DState, %struct.DState* %532, i32 0, i32 18
  %534 = getelementptr inbounds [257 x i32], [257 x i32]* %533, i32 0, i32 0
  %535 = call i32 @BZ2_indexIntoF(i32 %531, i32* %534)
  %536 = load %struct.DState*, %struct.DState** %3, align 8
  %537 = getelementptr inbounds %struct.DState, %struct.DState* %536, i32 0, i32 15
  store i32 %535, i32* %537, align 8
  %538 = load %struct.DState*, %struct.DState** %3, align 8
  %539 = getelementptr inbounds %struct.DState, %struct.DState* %538, i32 0, i32 21
  %540 = load i16*, i16** %539, align 8
  %541 = load %struct.DState*, %struct.DState** %3, align 8
  %542 = getelementptr inbounds %struct.DState, %struct.DState* %541, i32 0, i32 14
  %543 = load i32, i32* %542, align 4
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds i16, i16* %540, i64 %544
  %546 = load i16, i16* %545, align 2
  %547 = zext i16 %546 to i32
  %548 = load %struct.DState*, %struct.DState** %3, align 8
  %549 = getelementptr inbounds %struct.DState, %struct.DState* %548, i32 0, i32 22
  %550 = load i8*, i8** %549, align 8
  %551 = load %struct.DState*, %struct.DState** %3, align 8
  %552 = getelementptr inbounds %struct.DState, %struct.DState* %551, i32 0, i32 14
  %553 = load i32, i32* %552, align 4
  %554 = lshr i32 %553, 1
  %555 = zext i32 %554 to i64
  %556 = getelementptr inbounds i8, i8* %550, i64 %555
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i32
  %559 = load %struct.DState*, %struct.DState** %3, align 8
  %560 = getelementptr inbounds %struct.DState, %struct.DState* %559, i32 0, i32 14
  %561 = load i32, i32* %560, align 4
  %562 = shl i32 %561, 2
  %563 = and i32 %562, 4
  %564 = lshr i32 %558, %563
  %565 = and i32 %564, 15
  %566 = shl i32 %565, 16
  %567 = or i32 %547, %566
  %568 = load %struct.DState*, %struct.DState** %3, align 8
  %569 = getelementptr inbounds %struct.DState, %struct.DState* %568, i32 0, i32 14
  store i32 %567, i32* %569, align 4
  %570 = load %struct.DState*, %struct.DState** %3, align 8
  %571 = getelementptr inbounds %struct.DState, %struct.DState* %570, i32 0, i32 5
  %572 = load i32, i32* %571, align 8
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %595

; <label>:574:                                    ; preds = %505
  %575 = load %struct.DState*, %struct.DState** %3, align 8
  %576 = getelementptr inbounds %struct.DState, %struct.DState* %575, i32 0, i32 6
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.DState*, %struct.DState** %3, align 8
  %582 = getelementptr inbounds %struct.DState, %struct.DState* %581, i32 0, i32 5
  store i32 %580, i32* %582, align 8
  %583 = load %struct.DState*, %struct.DState** %3, align 8
  %584 = getelementptr inbounds %struct.DState, %struct.DState* %583, i32 0, i32 6
  %585 = load i32, i32* %584, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %584, align 4
  %587 = load %struct.DState*, %struct.DState** %3, align 8
  %588 = getelementptr inbounds %struct.DState, %struct.DState* %587, i32 0, i32 6
  %589 = load i32, i32* %588, align 4
  %590 = icmp eq i32 %589, 512
  br i1 %590, label %591, label %594

; <label>:591:                                    ; preds = %574
  %592 = load %struct.DState*, %struct.DState** %3, align 8
  %593 = getelementptr inbounds %struct.DState, %struct.DState* %592, i32 0, i32 6
  store i32 0, i32* %593, align 4
  br label %594

; <label>:594:                                    ; preds = %591, %574
  br label %595

; <label>:595:                                    ; preds = %594, %505
  %596 = load %struct.DState*, %struct.DState** %3, align 8
  %597 = getelementptr inbounds %struct.DState, %struct.DState* %596, i32 0, i32 5
  %598 = load i32, i32* %597, align 8
  %599 = add nsw i32 %598, -1
  store i32 %599, i32* %597, align 8
  %600 = load %struct.DState*, %struct.DState** %3, align 8
  %601 = getelementptr inbounds %struct.DState, %struct.DState* %600, i32 0, i32 5
  %602 = load i32, i32* %601, align 8
  %603 = icmp eq i32 %602, 1
  %604 = zext i1 %603 to i64
  %605 = select i1 %603, i32 1, i32 0
  %606 = load %struct.DState*, %struct.DState** %3, align 8
  %607 = getelementptr inbounds %struct.DState, %struct.DState* %606, i32 0, i32 15
  %608 = load i32, i32* %607, align 8
  %609 = xor i32 %608, %605
  store i32 %609, i32* %607, align 8
  %610 = load %struct.DState*, %struct.DState** %3, align 8
  %611 = getelementptr inbounds %struct.DState, %struct.DState* %610, i32 0, i32 17
  %612 = load i32, i32* %611, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %611, align 4
  br label %10

; <label>:614:                                    ; preds = %1
  br label %615

; <label>:615:                                    ; preds = %614, %775, %783, %843, %851, %911, %919, %924
  br label %616

; <label>:616:                                    ; preds = %615, %693
  %617 = load %struct.DState*, %struct.DState** %3, align 8
  %618 = getelementptr inbounds %struct.DState, %struct.DState* %617, i32 0, i32 0
  %619 = load %struct.bz_stream*, %struct.bz_stream** %618, align 8
  %620 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %619, i32 0, i32 5
  %621 = load i32, i32* %620, align 8
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %623, label %624

; <label>:623:                                    ; preds = %616
  store i8 0, i8* %2, align 1
  br label %1019

; <label>:624:                                    ; preds = %616
  %625 = load %struct.DState*, %struct.DState** %3, align 8
  %626 = getelementptr inbounds %struct.DState, %struct.DState* %625, i32 0, i32 3
  %627 = load i32, i32* %626, align 8
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %630

; <label>:629:                                    ; preds = %624
  br label %694

; <label>:630:                                    ; preds = %624
  %631 = load %struct.DState*, %struct.DState** %3, align 8
  %632 = getelementptr inbounds %struct.DState, %struct.DState* %631, i32 0, i32 2
  %633 = load i8, i8* %632, align 4
  %634 = load %struct.DState*, %struct.DState** %3, align 8
  %635 = getelementptr inbounds %struct.DState, %struct.DState* %634, i32 0, i32 0
  %636 = load %struct.bz_stream*, %struct.bz_stream** %635, align 8
  %637 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %636, i32 0, i32 4
  %638 = load i8*, i8** %637, align 8
  store i8 %633, i8* %638, align 1
  %639 = load %struct.DState*, %struct.DState** %3, align 8
  %640 = getelementptr inbounds %struct.DState, %struct.DState* %639, i32 0, i32 25
  %641 = load i32, i32* %640, align 8
  %642 = shl i32 %641, 8
  %643 = load %struct.DState*, %struct.DState** %3, align 8
  %644 = getelementptr inbounds %struct.DState, %struct.DState* %643, i32 0, i32 25
  %645 = load i32, i32* %644, align 8
  %646 = lshr i32 %645, 24
  %647 = load %struct.DState*, %struct.DState** %3, align 8
  %648 = getelementptr inbounds %struct.DState, %struct.DState* %647, i32 0, i32 2
  %649 = load i8, i8* %648, align 4
  %650 = zext i8 %649 to i32
  %651 = xor i32 %646, %650
  %652 = zext i32 %651 to i64
  %653 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %652
  %654 = load i32, i32* %653, align 4
  %655 = xor i32 %642, %654
  %656 = load %struct.DState*, %struct.DState** %3, align 8
  %657 = getelementptr inbounds %struct.DState, %struct.DState* %656, i32 0, i32 25
  store i32 %655, i32* %657, align 8
  %658 = load %struct.DState*, %struct.DState** %3, align 8
  %659 = getelementptr inbounds %struct.DState, %struct.DState* %658, i32 0, i32 3
  %660 = load i32, i32* %659, align 8
  %661 = add nsw i32 %660, -1
  store i32 %661, i32* %659, align 8
  %662 = load %struct.DState*, %struct.DState** %3, align 8
  %663 = getelementptr inbounds %struct.DState, %struct.DState* %662, i32 0, i32 0
  %664 = load %struct.bz_stream*, %struct.bz_stream** %663, align 8
  %665 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %664, i32 0, i32 4
  %666 = load i8*, i8** %665, align 8
  %667 = getelementptr inbounds i8, i8* %666, i32 1
  store i8* %667, i8** %665, align 8
  %668 = load %struct.DState*, %struct.DState** %3, align 8
  %669 = getelementptr inbounds %struct.DState, %struct.DState* %668, i32 0, i32 0
  %670 = load %struct.bz_stream*, %struct.bz_stream** %669, align 8
  %671 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %670, i32 0, i32 5
  %672 = load i32, i32* %671, align 8
  %673 = add i32 %672, -1
  store i32 %673, i32* %671, align 8
  %674 = load %struct.DState*, %struct.DState** %3, align 8
  %675 = getelementptr inbounds %struct.DState, %struct.DState* %674, i32 0, i32 0
  %676 = load %struct.bz_stream*, %struct.bz_stream** %675, align 8
  %677 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %676, i32 0, i32 6
  %678 = load i32, i32* %677, align 4
  %679 = add i32 %678, 1
  store i32 %679, i32* %677, align 4
  %680 = load %struct.DState*, %struct.DState** %3, align 8
  %681 = getelementptr inbounds %struct.DState, %struct.DState* %680, i32 0, i32 0
  %682 = load %struct.bz_stream*, %struct.bz_stream** %681, align 8
  %683 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %682, i32 0, i32 6
  %684 = load i32, i32* %683, align 4
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %693

; <label>:686:                                    ; preds = %630
  %687 = load %struct.DState*, %struct.DState** %3, align 8
  %688 = getelementptr inbounds %struct.DState, %struct.DState* %687, i32 0, i32 0
  %689 = load %struct.bz_stream*, %struct.bz_stream** %688, align 8
  %690 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %689, i32 0, i32 7
  %691 = load i32, i32* %690, align 8
  %692 = add i32 %691, 1
  store i32 %692, i32* %690, align 8
  br label %693

; <label>:693:                                    ; preds = %686, %630
  br label %616

; <label>:694:                                    ; preds = %629
  %695 = load %struct.DState*, %struct.DState** %3, align 8
  %696 = getelementptr inbounds %struct.DState, %struct.DState* %695, i32 0, i32 17
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.DState*, %struct.DState** %3, align 8
  %699 = getelementptr inbounds %struct.DState, %struct.DState* %698, i32 0, i32 51
  %700 = load i32, i32* %699, align 8
  %701 = add nsw i32 %700, 1
  %702 = icmp eq i32 %697, %701
  br i1 %702, label %703, label %704

; <label>:703:                                    ; preds = %694
  store i8 0, i8* %2, align 1
  br label %1019

; <label>:704:                                    ; preds = %694
  %705 = load %struct.DState*, %struct.DState** %3, align 8
  %706 = getelementptr inbounds %struct.DState, %struct.DState* %705, i32 0, i32 17
  %707 = load i32, i32* %706, align 4
  %708 = load %struct.DState*, %struct.DState** %3, align 8
  %709 = getelementptr inbounds %struct.DState, %struct.DState* %708, i32 0, i32 51
  %710 = load i32, i32* %709, align 8
  %711 = add nsw i32 %710, 1
  %712 = icmp sgt i32 %707, %711
  br i1 %712, label %713, label %714

; <label>:713:                                    ; preds = %704
  store i8 1, i8* %2, align 1
  br label %1019

; <label>:714:                                    ; preds = %704
  %715 = load %struct.DState*, %struct.DState** %3, align 8
  %716 = getelementptr inbounds %struct.DState, %struct.DState* %715, i32 0, i32 3
  store i32 1, i32* %716, align 8
  %717 = load %struct.DState*, %struct.DState** %3, align 8
  %718 = getelementptr inbounds %struct.DState, %struct.DState* %717, i32 0, i32 15
  %719 = load i32, i32* %718, align 8
  %720 = trunc i32 %719 to i8
  %721 = load %struct.DState*, %struct.DState** %3, align 8
  %722 = getelementptr inbounds %struct.DState, %struct.DState* %721, i32 0, i32 2
  store i8 %720, i8* %722, align 4
  %723 = load %struct.DState*, %struct.DState** %3, align 8
  %724 = getelementptr inbounds %struct.DState, %struct.DState* %723, i32 0, i32 14
  %725 = load i32, i32* %724, align 4
  %726 = load %struct.DState*, %struct.DState** %3, align 8
  %727 = getelementptr inbounds %struct.DState, %struct.DState* %726, i32 0, i32 18
  %728 = getelementptr inbounds [257 x i32], [257 x i32]* %727, i32 0, i32 0
  %729 = call i32 @BZ2_indexIntoF(i32 %725, i32* %728)
  %730 = trunc i32 %729 to i8
  store i8 %730, i8* %4, align 1
  %731 = load %struct.DState*, %struct.DState** %3, align 8
  %732 = getelementptr inbounds %struct.DState, %struct.DState* %731, i32 0, i32 21
  %733 = load i16*, i16** %732, align 8
  %734 = load %struct.DState*, %struct.DState** %3, align 8
  %735 = getelementptr inbounds %struct.DState, %struct.DState* %734, i32 0, i32 14
  %736 = load i32, i32* %735, align 4
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds i16, i16* %733, i64 %737
  %739 = load i16, i16* %738, align 2
  %740 = zext i16 %739 to i32
  %741 = load %struct.DState*, %struct.DState** %3, align 8
  %742 = getelementptr inbounds %struct.DState, %struct.DState* %741, i32 0, i32 22
  %743 = load i8*, i8** %742, align 8
  %744 = load %struct.DState*, %struct.DState** %3, align 8
  %745 = getelementptr inbounds %struct.DState, %struct.DState* %744, i32 0, i32 14
  %746 = load i32, i32* %745, align 4
  %747 = lshr i32 %746, 1
  %748 = zext i32 %747 to i64
  %749 = getelementptr inbounds i8, i8* %743, i64 %748
  %750 = load i8, i8* %749, align 1
  %751 = zext i8 %750 to i32
  %752 = load %struct.DState*, %struct.DState** %3, align 8
  %753 = getelementptr inbounds %struct.DState, %struct.DState* %752, i32 0, i32 14
  %754 = load i32, i32* %753, align 4
  %755 = shl i32 %754, 2
  %756 = and i32 %755, 4
  %757 = lshr i32 %751, %756
  %758 = and i32 %757, 15
  %759 = shl i32 %758, 16
  %760 = or i32 %740, %759
  %761 = load %struct.DState*, %struct.DState** %3, align 8
  %762 = getelementptr inbounds %struct.DState, %struct.DState* %761, i32 0, i32 14
  store i32 %760, i32* %762, align 4
  %763 = load %struct.DState*, %struct.DState** %3, align 8
  %764 = getelementptr inbounds %struct.DState, %struct.DState* %763, i32 0, i32 17
  %765 = load i32, i32* %764, align 4
  %766 = add nsw i32 %765, 1
  store i32 %766, i32* %764, align 4
  %767 = load %struct.DState*, %struct.DState** %3, align 8
  %768 = getelementptr inbounds %struct.DState, %struct.DState* %767, i32 0, i32 17
  %769 = load i32, i32* %768, align 4
  %770 = load %struct.DState*, %struct.DState** %3, align 8
  %771 = getelementptr inbounds %struct.DState, %struct.DState* %770, i32 0, i32 51
  %772 = load i32, i32* %771, align 8
  %773 = add nsw i32 %772, 1
  %774 = icmp eq i32 %769, %773
  br i1 %774, label %775, label %776

; <label>:775:                                    ; preds = %714
  br label %615

; <label>:776:                                    ; preds = %714
  %777 = load i8, i8* %4, align 1
  %778 = zext i8 %777 to i32
  %779 = load %struct.DState*, %struct.DState** %3, align 8
  %780 = getelementptr inbounds %struct.DState, %struct.DState* %779, i32 0, i32 15
  %781 = load i32, i32* %780, align 8
  %782 = icmp ne i32 %778, %781
  br i1 %782, label %783, label %788

; <label>:783:                                    ; preds = %776
  %784 = load i8, i8* %4, align 1
  %785 = zext i8 %784 to i32
  %786 = load %struct.DState*, %struct.DState** %3, align 8
  %787 = getelementptr inbounds %struct.DState, %struct.DState* %786, i32 0, i32 15
  store i32 %785, i32* %787, align 8
  br label %615

; <label>:788:                                    ; preds = %776
  %789 = load %struct.DState*, %struct.DState** %3, align 8
  %790 = getelementptr inbounds %struct.DState, %struct.DState* %789, i32 0, i32 3
  store i32 2, i32* %790, align 8
  %791 = load %struct.DState*, %struct.DState** %3, align 8
  %792 = getelementptr inbounds %struct.DState, %struct.DState* %791, i32 0, i32 14
  %793 = load i32, i32* %792, align 4
  %794 = load %struct.DState*, %struct.DState** %3, align 8
  %795 = getelementptr inbounds %struct.DState, %struct.DState* %794, i32 0, i32 18
  %796 = getelementptr inbounds [257 x i32], [257 x i32]* %795, i32 0, i32 0
  %797 = call i32 @BZ2_indexIntoF(i32 %793, i32* %796)
  %798 = trunc i32 %797 to i8
  store i8 %798, i8* %4, align 1
  %799 = load %struct.DState*, %struct.DState** %3, align 8
  %800 = getelementptr inbounds %struct.DState, %struct.DState* %799, i32 0, i32 21
  %801 = load i16*, i16** %800, align 8
  %802 = load %struct.DState*, %struct.DState** %3, align 8
  %803 = getelementptr inbounds %struct.DState, %struct.DState* %802, i32 0, i32 14
  %804 = load i32, i32* %803, align 4
  %805 = zext i32 %804 to i64
  %806 = getelementptr inbounds i16, i16* %801, i64 %805
  %807 = load i16, i16* %806, align 2
  %808 = zext i16 %807 to i32
  %809 = load %struct.DState*, %struct.DState** %3, align 8
  %810 = getelementptr inbounds %struct.DState, %struct.DState* %809, i32 0, i32 22
  %811 = load i8*, i8** %810, align 8
  %812 = load %struct.DState*, %struct.DState** %3, align 8
  %813 = getelementptr inbounds %struct.DState, %struct.DState* %812, i32 0, i32 14
  %814 = load i32, i32* %813, align 4
  %815 = lshr i32 %814, 1
  %816 = zext i32 %815 to i64
  %817 = getelementptr inbounds i8, i8* %811, i64 %816
  %818 = load i8, i8* %817, align 1
  %819 = zext i8 %818 to i32
  %820 = load %struct.DState*, %struct.DState** %3, align 8
  %821 = getelementptr inbounds %struct.DState, %struct.DState* %820, i32 0, i32 14
  %822 = load i32, i32* %821, align 4
  %823 = shl i32 %822, 2
  %824 = and i32 %823, 4
  %825 = lshr i32 %819, %824
  %826 = and i32 %825, 15
  %827 = shl i32 %826, 16
  %828 = or i32 %808, %827
  %829 = load %struct.DState*, %struct.DState** %3, align 8
  %830 = getelementptr inbounds %struct.DState, %struct.DState* %829, i32 0, i32 14
  store i32 %828, i32* %830, align 4
  %831 = load %struct.DState*, %struct.DState** %3, align 8
  %832 = getelementptr inbounds %struct.DState, %struct.DState* %831, i32 0, i32 17
  %833 = load i32, i32* %832, align 4
  %834 = add nsw i32 %833, 1
  store i32 %834, i32* %832, align 4
  %835 = load %struct.DState*, %struct.DState** %3, align 8
  %836 = getelementptr inbounds %struct.DState, %struct.DState* %835, i32 0, i32 17
  %837 = load i32, i32* %836, align 4
  %838 = load %struct.DState*, %struct.DState** %3, align 8
  %839 = getelementptr inbounds %struct.DState, %struct.DState* %838, i32 0, i32 51
  %840 = load i32, i32* %839, align 8
  %841 = add nsw i32 %840, 1
  %842 = icmp eq i32 %837, %841
  br i1 %842, label %843, label %844

; <label>:843:                                    ; preds = %788
  br label %615

; <label>:844:                                    ; preds = %788
  %845 = load i8, i8* %4, align 1
  %846 = zext i8 %845 to i32
  %847 = load %struct.DState*, %struct.DState** %3, align 8
  %848 = getelementptr inbounds %struct.DState, %struct.DState* %847, i32 0, i32 15
  %849 = load i32, i32* %848, align 8
  %850 = icmp ne i32 %846, %849
  br i1 %850, label %851, label %856

; <label>:851:                                    ; preds = %844
  %852 = load i8, i8* %4, align 1
  %853 = zext i8 %852 to i32
  %854 = load %struct.DState*, %struct.DState** %3, align 8
  %855 = getelementptr inbounds %struct.DState, %struct.DState* %854, i32 0, i32 15
  store i32 %853, i32* %855, align 8
  br label %615

; <label>:856:                                    ; preds = %844
  %857 = load %struct.DState*, %struct.DState** %3, align 8
  %858 = getelementptr inbounds %struct.DState, %struct.DState* %857, i32 0, i32 3
  store i32 3, i32* %858, align 8
  %859 = load %struct.DState*, %struct.DState** %3, align 8
  %860 = getelementptr inbounds %struct.DState, %struct.DState* %859, i32 0, i32 14
  %861 = load i32, i32* %860, align 4
  %862 = load %struct.DState*, %struct.DState** %3, align 8
  %863 = getelementptr inbounds %struct.DState, %struct.DState* %862, i32 0, i32 18
  %864 = getelementptr inbounds [257 x i32], [257 x i32]* %863, i32 0, i32 0
  %865 = call i32 @BZ2_indexIntoF(i32 %861, i32* %864)
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* %4, align 1
  %867 = load %struct.DState*, %struct.DState** %3, align 8
  %868 = getelementptr inbounds %struct.DState, %struct.DState* %867, i32 0, i32 21
  %869 = load i16*, i16** %868, align 8
  %870 = load %struct.DState*, %struct.DState** %3, align 8
  %871 = getelementptr inbounds %struct.DState, %struct.DState* %870, i32 0, i32 14
  %872 = load i32, i32* %871, align 4
  %873 = zext i32 %872 to i64
  %874 = getelementptr inbounds i16, i16* %869, i64 %873
  %875 = load i16, i16* %874, align 2
  %876 = zext i16 %875 to i32
  %877 = load %struct.DState*, %struct.DState** %3, align 8
  %878 = getelementptr inbounds %struct.DState, %struct.DState* %877, i32 0, i32 22
  %879 = load i8*, i8** %878, align 8
  %880 = load %struct.DState*, %struct.DState** %3, align 8
  %881 = getelementptr inbounds %struct.DState, %struct.DState* %880, i32 0, i32 14
  %882 = load i32, i32* %881, align 4
  %883 = lshr i32 %882, 1
  %884 = zext i32 %883 to i64
  %885 = getelementptr inbounds i8, i8* %879, i64 %884
  %886 = load i8, i8* %885, align 1
  %887 = zext i8 %886 to i32
  %888 = load %struct.DState*, %struct.DState** %3, align 8
  %889 = getelementptr inbounds %struct.DState, %struct.DState* %888, i32 0, i32 14
  %890 = load i32, i32* %889, align 4
  %891 = shl i32 %890, 2
  %892 = and i32 %891, 4
  %893 = lshr i32 %887, %892
  %894 = and i32 %893, 15
  %895 = shl i32 %894, 16
  %896 = or i32 %876, %895
  %897 = load %struct.DState*, %struct.DState** %3, align 8
  %898 = getelementptr inbounds %struct.DState, %struct.DState* %897, i32 0, i32 14
  store i32 %896, i32* %898, align 4
  %899 = load %struct.DState*, %struct.DState** %3, align 8
  %900 = getelementptr inbounds %struct.DState, %struct.DState* %899, i32 0, i32 17
  %901 = load i32, i32* %900, align 4
  %902 = add nsw i32 %901, 1
  store i32 %902, i32* %900, align 4
  %903 = load %struct.DState*, %struct.DState** %3, align 8
  %904 = getelementptr inbounds %struct.DState, %struct.DState* %903, i32 0, i32 17
  %905 = load i32, i32* %904, align 4
  %906 = load %struct.DState*, %struct.DState** %3, align 8
  %907 = getelementptr inbounds %struct.DState, %struct.DState* %906, i32 0, i32 51
  %908 = load i32, i32* %907, align 8
  %909 = add nsw i32 %908, 1
  %910 = icmp eq i32 %905, %909
  br i1 %910, label %911, label %912

; <label>:911:                                    ; preds = %856
  br label %615

; <label>:912:                                    ; preds = %856
  %913 = load i8, i8* %4, align 1
  %914 = zext i8 %913 to i32
  %915 = load %struct.DState*, %struct.DState** %3, align 8
  %916 = getelementptr inbounds %struct.DState, %struct.DState* %915, i32 0, i32 15
  %917 = load i32, i32* %916, align 8
  %918 = icmp ne i32 %914, %917
  br i1 %918, label %919, label %924

; <label>:919:                                    ; preds = %912
  %920 = load i8, i8* %4, align 1
  %921 = zext i8 %920 to i32
  %922 = load %struct.DState*, %struct.DState** %3, align 8
  %923 = getelementptr inbounds %struct.DState, %struct.DState* %922, i32 0, i32 15
  store i32 %921, i32* %923, align 8
  br label %615

; <label>:924:                                    ; preds = %912
  %925 = load %struct.DState*, %struct.DState** %3, align 8
  %926 = getelementptr inbounds %struct.DState, %struct.DState* %925, i32 0, i32 14
  %927 = load i32, i32* %926, align 4
  %928 = load %struct.DState*, %struct.DState** %3, align 8
  %929 = getelementptr inbounds %struct.DState, %struct.DState* %928, i32 0, i32 18
  %930 = getelementptr inbounds [257 x i32], [257 x i32]* %929, i32 0, i32 0
  %931 = call i32 @BZ2_indexIntoF(i32 %927, i32* %930)
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %4, align 1
  %933 = load %struct.DState*, %struct.DState** %3, align 8
  %934 = getelementptr inbounds %struct.DState, %struct.DState* %933, i32 0, i32 21
  %935 = load i16*, i16** %934, align 8
  %936 = load %struct.DState*, %struct.DState** %3, align 8
  %937 = getelementptr inbounds %struct.DState, %struct.DState* %936, i32 0, i32 14
  %938 = load i32, i32* %937, align 4
  %939 = zext i32 %938 to i64
  %940 = getelementptr inbounds i16, i16* %935, i64 %939
  %941 = load i16, i16* %940, align 2
  %942 = zext i16 %941 to i32
  %943 = load %struct.DState*, %struct.DState** %3, align 8
  %944 = getelementptr inbounds %struct.DState, %struct.DState* %943, i32 0, i32 22
  %945 = load i8*, i8** %944, align 8
  %946 = load %struct.DState*, %struct.DState** %3, align 8
  %947 = getelementptr inbounds %struct.DState, %struct.DState* %946, i32 0, i32 14
  %948 = load i32, i32* %947, align 4
  %949 = lshr i32 %948, 1
  %950 = zext i32 %949 to i64
  %951 = getelementptr inbounds i8, i8* %945, i64 %950
  %952 = load i8, i8* %951, align 1
  %953 = zext i8 %952 to i32
  %954 = load %struct.DState*, %struct.DState** %3, align 8
  %955 = getelementptr inbounds %struct.DState, %struct.DState* %954, i32 0, i32 14
  %956 = load i32, i32* %955, align 4
  %957 = shl i32 %956, 2
  %958 = and i32 %957, 4
  %959 = lshr i32 %953, %958
  %960 = and i32 %959, 15
  %961 = shl i32 %960, 16
  %962 = or i32 %942, %961
  %963 = load %struct.DState*, %struct.DState** %3, align 8
  %964 = getelementptr inbounds %struct.DState, %struct.DState* %963, i32 0, i32 14
  store i32 %962, i32* %964, align 4
  %965 = load %struct.DState*, %struct.DState** %3, align 8
  %966 = getelementptr inbounds %struct.DState, %struct.DState* %965, i32 0, i32 17
  %967 = load i32, i32* %966, align 4
  %968 = add nsw i32 %967, 1
  store i32 %968, i32* %966, align 4
  %969 = load i8, i8* %4, align 1
  %970 = zext i8 %969 to i32
  %971 = add nsw i32 %970, 4
  %972 = load %struct.DState*, %struct.DState** %3, align 8
  %973 = getelementptr inbounds %struct.DState, %struct.DState* %972, i32 0, i32 3
  store i32 %971, i32* %973, align 8
  %974 = load %struct.DState*, %struct.DState** %3, align 8
  %975 = getelementptr inbounds %struct.DState, %struct.DState* %974, i32 0, i32 14
  %976 = load i32, i32* %975, align 4
  %977 = load %struct.DState*, %struct.DState** %3, align 8
  %978 = getelementptr inbounds %struct.DState, %struct.DState* %977, i32 0, i32 18
  %979 = getelementptr inbounds [257 x i32], [257 x i32]* %978, i32 0, i32 0
  %980 = call i32 @BZ2_indexIntoF(i32 %976, i32* %979)
  %981 = load %struct.DState*, %struct.DState** %3, align 8
  %982 = getelementptr inbounds %struct.DState, %struct.DState* %981, i32 0, i32 15
  store i32 %980, i32* %982, align 8
  %983 = load %struct.DState*, %struct.DState** %3, align 8
  %984 = getelementptr inbounds %struct.DState, %struct.DState* %983, i32 0, i32 21
  %985 = load i16*, i16** %984, align 8
  %986 = load %struct.DState*, %struct.DState** %3, align 8
  %987 = getelementptr inbounds %struct.DState, %struct.DState* %986, i32 0, i32 14
  %988 = load i32, i32* %987, align 4
  %989 = zext i32 %988 to i64
  %990 = getelementptr inbounds i16, i16* %985, i64 %989
  %991 = load i16, i16* %990, align 2
  %992 = zext i16 %991 to i32
  %993 = load %struct.DState*, %struct.DState** %3, align 8
  %994 = getelementptr inbounds %struct.DState, %struct.DState* %993, i32 0, i32 22
  %995 = load i8*, i8** %994, align 8
  %996 = load %struct.DState*, %struct.DState** %3, align 8
  %997 = getelementptr inbounds %struct.DState, %struct.DState* %996, i32 0, i32 14
  %998 = load i32, i32* %997, align 4
  %999 = lshr i32 %998, 1
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds i8, i8* %995, i64 %1000
  %1002 = load i8, i8* %1001, align 1
  %1003 = zext i8 %1002 to i32
  %1004 = load %struct.DState*, %struct.DState** %3, align 8
  %1005 = getelementptr inbounds %struct.DState, %struct.DState* %1004, i32 0, i32 14
  %1006 = load i32, i32* %1005, align 4
  %1007 = shl i32 %1006, 2
  %1008 = and i32 %1007, 4
  %1009 = lshr i32 %1003, %1008
  %1010 = and i32 %1009, 15
  %1011 = shl i32 %1010, 16
  %1012 = or i32 %992, %1011
  %1013 = load %struct.DState*, %struct.DState** %3, align 8
  %1014 = getelementptr inbounds %struct.DState, %struct.DState* %1013, i32 0, i32 14
  store i32 %1012, i32* %1014, align 4
  %1015 = load %struct.DState*, %struct.DState** %3, align 8
  %1016 = getelementptr inbounds %struct.DState, %struct.DState* %1015, i32 0, i32 17
  %1017 = load i32, i32* %1016, align 4
  %1018 = add nsw i32 %1017, 1
  store i32 %1018, i32* %1016, align 4
  br label %615

; <label>:1019:                                   ; preds = %713, %703, %623, %108, %98, %18
  %1020 = load i8, i8* %2, align 1
  ret i8 %1020
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.DState*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.DState* %0, %struct.DState** %3, align 8
  %17 = load %struct.DState*, %struct.DState** %3, align 8
  %18 = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 4
  %19 = load i8, i8* %18, align 4
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %528

; <label>:21:                                     ; preds = %1
  br label %22

; <label>:22:                                     ; preds = %21, %202, %210, %290, %298, %378, %386, %509
  br label %23

; <label>:23:                                     ; preds = %22, %100
  %24 = load %struct.DState*, %struct.DState** %3, align 8
  %25 = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 0
  %26 = load %struct.bz_stream*, %struct.bz_stream** %25, align 8
  %27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %23
  store i8 0, i8* %2, align 1
  br label %798

; <label>:31:                                     ; preds = %23
  %32 = load %struct.DState*, %struct.DState** %3, align 8
  %33 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %31
  br label %101

; <label>:37:                                     ; preds = %31
  %38 = load %struct.DState*, %struct.DState** %3, align 8
  %39 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 2
  %40 = load i8, i8* %39, align 4
  %41 = load %struct.DState*, %struct.DState** %3, align 8
  %42 = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 0
  %43 = load %struct.bz_stream*, %struct.bz_stream** %42, align 8
  %44 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  store i8 %40, i8* %45, align 1
  %46 = load %struct.DState*, %struct.DState** %3, align 8
  %47 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 25
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 8
  %50 = load %struct.DState*, %struct.DState** %3, align 8
  %51 = getelementptr inbounds %struct.DState, %struct.DState* %50, i32 0, i32 25
  %52 = load i32, i32* %51, align 8
  %53 = lshr i32 %52, 24
  %54 = load %struct.DState*, %struct.DState** %3, align 8
  %55 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 2
  %56 = load i8, i8* %55, align 4
  %57 = zext i8 %56 to i32
  %58 = xor i32 %53, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %49, %61
  %63 = load %struct.DState*, %struct.DState** %3, align 8
  %64 = getelementptr inbounds %struct.DState, %struct.DState* %63, i32 0, i32 25
  store i32 %62, i32* %64, align 8
  %65 = load %struct.DState*, %struct.DState** %3, align 8
  %66 = getelementptr inbounds %struct.DState, %struct.DState* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.DState*, %struct.DState** %3, align 8
  %70 = getelementptr inbounds %struct.DState, %struct.DState* %69, i32 0, i32 0
  %71 = load %struct.bz_stream*, %struct.bz_stream** %70, align 8
  %72 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  %75 = load %struct.DState*, %struct.DState** %3, align 8
  %76 = getelementptr inbounds %struct.DState, %struct.DState* %75, i32 0, i32 0
  %77 = load %struct.bz_stream*, %struct.bz_stream** %76, align 8
  %78 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = add i32 %79, -1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.DState*, %struct.DState** %3, align 8
  %82 = getelementptr inbounds %struct.DState, %struct.DState* %81, i32 0, i32 0
  %83 = load %struct.bz_stream*, %struct.bz_stream** %82, align 8
  %84 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.DState*, %struct.DState** %3, align 8
  %88 = getelementptr inbounds %struct.DState, %struct.DState* %87, i32 0, i32 0
  %89 = load %struct.bz_stream*, %struct.bz_stream** %88, align 8
  %90 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

; <label>:93:                                     ; preds = %37
  %94 = load %struct.DState*, %struct.DState** %3, align 8
  %95 = getelementptr inbounds %struct.DState, %struct.DState* %94, i32 0, i32 0
  %96 = load %struct.bz_stream*, %struct.bz_stream** %95, align 8
  %97 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = add i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %100

; <label>:100:                                    ; preds = %93, %37
  br label %23

; <label>:101:                                    ; preds = %36
  %102 = load %struct.DState*, %struct.DState** %3, align 8
  %103 = getelementptr inbounds %struct.DState, %struct.DState* %102, i32 0, i32 17
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.DState*, %struct.DState** %3, align 8
  %106 = getelementptr inbounds %struct.DState, %struct.DState* %105, i32 0, i32 51
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  %109 = icmp eq i32 %104, %108
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %101
  store i8 0, i8* %2, align 1
  br label %798

; <label>:111:                                    ; preds = %101
  %112 = load %struct.DState*, %struct.DState** %3, align 8
  %113 = getelementptr inbounds %struct.DState, %struct.DState* %112, i32 0, i32 17
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.DState*, %struct.DState** %3, align 8
  %116 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 51
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  %119 = icmp sgt i32 %114, %118
  br i1 %119, label %120, label %121

; <label>:120:                                    ; preds = %111
  store i8 1, i8* %2, align 1
  br label %798

; <label>:121:                                    ; preds = %111
  %122 = load %struct.DState*, %struct.DState** %3, align 8
  %123 = getelementptr inbounds %struct.DState, %struct.DState* %122, i32 0, i32 3
  store i32 1, i32* %123, align 8
  %124 = load %struct.DState*, %struct.DState** %3, align 8
  %125 = getelementptr inbounds %struct.DState, %struct.DState* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 8
  %127 = trunc i32 %126 to i8
  %128 = load %struct.DState*, %struct.DState** %3, align 8
  %129 = getelementptr inbounds %struct.DState, %struct.DState* %128, i32 0, i32 2
  store i8 %127, i8* %129, align 4
  %130 = load %struct.DState*, %struct.DState** %3, align 8
  %131 = getelementptr inbounds %struct.DState, %struct.DState* %130, i32 0, i32 20
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.DState*, %struct.DState** %3, align 8
  %134 = getelementptr inbounds %struct.DState, %struct.DState* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.DState*, %struct.DState** %3, align 8
  %140 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 14
  store i32 %138, i32* %140, align 4
  %141 = load %struct.DState*, %struct.DState** %3, align 8
  %142 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 14
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 255
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %4, align 1
  %146 = load %struct.DState*, %struct.DState** %3, align 8
  %147 = getelementptr inbounds %struct.DState, %struct.DState* %146, i32 0, i32 14
  %148 = load i32, i32* %147, align 4
  %149 = lshr i32 %148, 8
  store i32 %149, i32* %147, align 4
  %150 = load %struct.DState*, %struct.DState** %3, align 8
  %151 = getelementptr inbounds %struct.DState, %struct.DState* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %175

; <label>:154:                                    ; preds = %121
  %155 = load %struct.DState*, %struct.DState** %3, align 8
  %156 = getelementptr inbounds %struct.DState, %struct.DState* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.DState*, %struct.DState** %3, align 8
  %162 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 8
  %163 = load %struct.DState*, %struct.DState** %3, align 8
  %164 = getelementptr inbounds %struct.DState, %struct.DState* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load %struct.DState*, %struct.DState** %3, align 8
  %168 = getelementptr inbounds %struct.DState, %struct.DState* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 512
  br i1 %170, label %171, label %174

; <label>:171:                                    ; preds = %154
  %172 = load %struct.DState*, %struct.DState** %3, align 8
  %173 = getelementptr inbounds %struct.DState, %struct.DState* %172, i32 0, i32 6
  store i32 0, i32* %173, align 4
  br label %174

; <label>:174:                                    ; preds = %171, %154
  br label %175

; <label>:175:                                    ; preds = %174, %121
  %176 = load %struct.DState*, %struct.DState** %3, align 8
  %177 = getelementptr inbounds %struct.DState, %struct.DState* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.DState*, %struct.DState** %3, align 8
  %181 = getelementptr inbounds %struct.DState, %struct.DState* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 1
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 1, i32 0
  %186 = load i8, i8* %4, align 1
  %187 = zext i8 %186 to i32
  %188 = xor i32 %187, %185
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %4, align 1
  %190 = load %struct.DState*, %struct.DState** %3, align 8
  %191 = getelementptr inbounds %struct.DState, %struct.DState* %190, i32 0, i32 17
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.DState*, %struct.DState** %3, align 8
  %195 = getelementptr inbounds %struct.DState, %struct.DState* %194, i32 0, i32 17
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.DState*, %struct.DState** %3, align 8
  %198 = getelementptr inbounds %struct.DState, %struct.DState* %197, i32 0, i32 51
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  %201 = icmp eq i32 %196, %200
  br i1 %201, label %202, label %203

; <label>:202:                                    ; preds = %175
  br label %22

; <label>:203:                                    ; preds = %175
  %204 = load i8, i8* %4, align 1
  %205 = zext i8 %204 to i32
  %206 = load %struct.DState*, %struct.DState** %3, align 8
  %207 = getelementptr inbounds %struct.DState, %struct.DState* %206, i32 0, i32 15
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %210, label %215

; <label>:210:                                    ; preds = %203
  %211 = load i8, i8* %4, align 1
  %212 = zext i8 %211 to i32
  %213 = load %struct.DState*, %struct.DState** %3, align 8
  %214 = getelementptr inbounds %struct.DState, %struct.DState* %213, i32 0, i32 15
  store i32 %212, i32* %214, align 8
  br label %22

; <label>:215:                                    ; preds = %203
  %216 = load %struct.DState*, %struct.DState** %3, align 8
  %217 = getelementptr inbounds %struct.DState, %struct.DState* %216, i32 0, i32 3
  store i32 2, i32* %217, align 8
  %218 = load %struct.DState*, %struct.DState** %3, align 8
  %219 = getelementptr inbounds %struct.DState, %struct.DState* %218, i32 0, i32 20
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.DState*, %struct.DState** %3, align 8
  %222 = getelementptr inbounds %struct.DState, %struct.DState* %221, i32 0, i32 14
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.DState*, %struct.DState** %3, align 8
  %228 = getelementptr inbounds %struct.DState, %struct.DState* %227, i32 0, i32 14
  store i32 %226, i32* %228, align 4
  %229 = load %struct.DState*, %struct.DState** %3, align 8
  %230 = getelementptr inbounds %struct.DState, %struct.DState* %229, i32 0, i32 14
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 255
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %4, align 1
  %234 = load %struct.DState*, %struct.DState** %3, align 8
  %235 = getelementptr inbounds %struct.DState, %struct.DState* %234, i32 0, i32 14
  %236 = load i32, i32* %235, align 4
  %237 = lshr i32 %236, 8
  store i32 %237, i32* %235, align 4
  %238 = load %struct.DState*, %struct.DState** %3, align 8
  %239 = getelementptr inbounds %struct.DState, %struct.DState* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %263

; <label>:242:                                    ; preds = %215
  %243 = load %struct.DState*, %struct.DState** %3, align 8
  %244 = getelementptr inbounds %struct.DState, %struct.DState* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.DState*, %struct.DState** %3, align 8
  %250 = getelementptr inbounds %struct.DState, %struct.DState* %249, i32 0, i32 5
  store i32 %248, i32* %250, align 8
  %251 = load %struct.DState*, %struct.DState** %3, align 8
  %252 = getelementptr inbounds %struct.DState, %struct.DState* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  %255 = load %struct.DState*, %struct.DState** %3, align 8
  %256 = getelementptr inbounds %struct.DState, %struct.DState* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 512
  br i1 %258, label %259, label %262

; <label>:259:                                    ; preds = %242
  %260 = load %struct.DState*, %struct.DState** %3, align 8
  %261 = getelementptr inbounds %struct.DState, %struct.DState* %260, i32 0, i32 6
  store i32 0, i32* %261, align 4
  br label %262

; <label>:262:                                    ; preds = %259, %242
  br label %263

; <label>:263:                                    ; preds = %262, %215
  %264 = load %struct.DState*, %struct.DState** %3, align 8
  %265 = getelementptr inbounds %struct.DState, %struct.DState* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %265, align 8
  %268 = load %struct.DState*, %struct.DState** %3, align 8
  %269 = getelementptr inbounds %struct.DState, %struct.DState* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 1
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 1, i32 0
  %274 = load i8, i8* %4, align 1
  %275 = zext i8 %274 to i32
  %276 = xor i32 %275, %273
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %4, align 1
  %278 = load %struct.DState*, %struct.DState** %3, align 8
  %279 = getelementptr inbounds %struct.DState, %struct.DState* %278, i32 0, i32 17
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 4
  %282 = load %struct.DState*, %struct.DState** %3, align 8
  %283 = getelementptr inbounds %struct.DState, %struct.DState* %282, i32 0, i32 17
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.DState*, %struct.DState** %3, align 8
  %286 = getelementptr inbounds %struct.DState, %struct.DState* %285, i32 0, i32 51
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 1
  %289 = icmp eq i32 %284, %288
  br i1 %289, label %290, label %291

; <label>:290:                                    ; preds = %263
  br label %22

; <label>:291:                                    ; preds = %263
  %292 = load i8, i8* %4, align 1
  %293 = zext i8 %292 to i32
  %294 = load %struct.DState*, %struct.DState** %3, align 8
  %295 = getelementptr inbounds %struct.DState, %struct.DState* %294, i32 0, i32 15
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %293, %296
  br i1 %297, label %298, label %303

; <label>:298:                                    ; preds = %291
  %299 = load i8, i8* %4, align 1
  %300 = zext i8 %299 to i32
  %301 = load %struct.DState*, %struct.DState** %3, align 8
  %302 = getelementptr inbounds %struct.DState, %struct.DState* %301, i32 0, i32 15
  store i32 %300, i32* %302, align 8
  br label %22

; <label>:303:                                    ; preds = %291
  %304 = load %struct.DState*, %struct.DState** %3, align 8
  %305 = getelementptr inbounds %struct.DState, %struct.DState* %304, i32 0, i32 3
  store i32 3, i32* %305, align 8
  %306 = load %struct.DState*, %struct.DState** %3, align 8
  %307 = getelementptr inbounds %struct.DState, %struct.DState* %306, i32 0, i32 20
  %308 = load i32*, i32** %307, align 8
  %309 = load %struct.DState*, %struct.DState** %3, align 8
  %310 = getelementptr inbounds %struct.DState, %struct.DState* %309, i32 0, i32 14
  %311 = load i32, i32* %310, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %308, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.DState*, %struct.DState** %3, align 8
  %316 = getelementptr inbounds %struct.DState, %struct.DState* %315, i32 0, i32 14
  store i32 %314, i32* %316, align 4
  %317 = load %struct.DState*, %struct.DState** %3, align 8
  %318 = getelementptr inbounds %struct.DState, %struct.DState* %317, i32 0, i32 14
  %319 = load i32, i32* %318, align 4
  %320 = and i32 %319, 255
  %321 = trunc i32 %320 to i8
  store i8 %321, i8* %4, align 1
  %322 = load %struct.DState*, %struct.DState** %3, align 8
  %323 = getelementptr inbounds %struct.DState, %struct.DState* %322, i32 0, i32 14
  %324 = load i32, i32* %323, align 4
  %325 = lshr i32 %324, 8
  store i32 %325, i32* %323, align 4
  %326 = load %struct.DState*, %struct.DState** %3, align 8
  %327 = getelementptr inbounds %struct.DState, %struct.DState* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %351

; <label>:330:                                    ; preds = %303
  %331 = load %struct.DState*, %struct.DState** %3, align 8
  %332 = getelementptr inbounds %struct.DState, %struct.DState* %331, i32 0, i32 6
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.DState*, %struct.DState** %3, align 8
  %338 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 5
  store i32 %336, i32* %338, align 8
  %339 = load %struct.DState*, %struct.DState** %3, align 8
  %340 = getelementptr inbounds %struct.DState, %struct.DState* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 4
  %343 = load %struct.DState*, %struct.DState** %3, align 8
  %344 = getelementptr inbounds %struct.DState, %struct.DState* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 512
  br i1 %346, label %347, label %350

; <label>:347:                                    ; preds = %330
  %348 = load %struct.DState*, %struct.DState** %3, align 8
  %349 = getelementptr inbounds %struct.DState, %struct.DState* %348, i32 0, i32 6
  store i32 0, i32* %349, align 4
  br label %350

; <label>:350:                                    ; preds = %347, %330
  br label %351

; <label>:351:                                    ; preds = %350, %303
  %352 = load %struct.DState*, %struct.DState** %3, align 8
  %353 = getelementptr inbounds %struct.DState, %struct.DState* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %353, align 8
  %356 = load %struct.DState*, %struct.DState** %3, align 8
  %357 = getelementptr inbounds %struct.DState, %struct.DState* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %358, 1
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i32 1, i32 0
  %362 = load i8, i8* %4, align 1
  %363 = zext i8 %362 to i32
  %364 = xor i32 %363, %361
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %4, align 1
  %366 = load %struct.DState*, %struct.DState** %3, align 8
  %367 = getelementptr inbounds %struct.DState, %struct.DState* %366, i32 0, i32 17
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %367, align 4
  %370 = load %struct.DState*, %struct.DState** %3, align 8
  %371 = getelementptr inbounds %struct.DState, %struct.DState* %370, i32 0, i32 17
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.DState*, %struct.DState** %3, align 8
  %374 = getelementptr inbounds %struct.DState, %struct.DState* %373, i32 0, i32 51
  %375 = load i32, i32* %374, align 8
  %376 = add nsw i32 %375, 1
  %377 = icmp eq i32 %372, %376
  br i1 %377, label %378, label %379

; <label>:378:                                    ; preds = %351
  br label %22

; <label>:379:                                    ; preds = %351
  %380 = load i8, i8* %4, align 1
  %381 = zext i8 %380 to i32
  %382 = load %struct.DState*, %struct.DState** %3, align 8
  %383 = getelementptr inbounds %struct.DState, %struct.DState* %382, i32 0, i32 15
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %381, %384
  br i1 %385, label %386, label %391

; <label>:386:                                    ; preds = %379
  %387 = load i8, i8* %4, align 1
  %388 = zext i8 %387 to i32
  %389 = load %struct.DState*, %struct.DState** %3, align 8
  %390 = getelementptr inbounds %struct.DState, %struct.DState* %389, i32 0, i32 15
  store i32 %388, i32* %390, align 8
  br label %22

; <label>:391:                                    ; preds = %379
  %392 = load %struct.DState*, %struct.DState** %3, align 8
  %393 = getelementptr inbounds %struct.DState, %struct.DState* %392, i32 0, i32 20
  %394 = load i32*, i32** %393, align 8
  %395 = load %struct.DState*, %struct.DState** %3, align 8
  %396 = getelementptr inbounds %struct.DState, %struct.DState* %395, i32 0, i32 14
  %397 = load i32, i32* %396, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %394, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.DState*, %struct.DState** %3, align 8
  %402 = getelementptr inbounds %struct.DState, %struct.DState* %401, i32 0, i32 14
  store i32 %400, i32* %402, align 4
  %403 = load %struct.DState*, %struct.DState** %3, align 8
  %404 = getelementptr inbounds %struct.DState, %struct.DState* %403, i32 0, i32 14
  %405 = load i32, i32* %404, align 4
  %406 = and i32 %405, 255
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %4, align 1
  %408 = load %struct.DState*, %struct.DState** %3, align 8
  %409 = getelementptr inbounds %struct.DState, %struct.DState* %408, i32 0, i32 14
  %410 = load i32, i32* %409, align 4
  %411 = lshr i32 %410, 8
  store i32 %411, i32* %409, align 4
  %412 = load %struct.DState*, %struct.DState** %3, align 8
  %413 = getelementptr inbounds %struct.DState, %struct.DState* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %437

; <label>:416:                                    ; preds = %391
  %417 = load %struct.DState*, %struct.DState** %3, align 8
  %418 = getelementptr inbounds %struct.DState, %struct.DState* %417, i32 0, i32 6
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.DState*, %struct.DState** %3, align 8
  %424 = getelementptr inbounds %struct.DState, %struct.DState* %423, i32 0, i32 5
  store i32 %422, i32* %424, align 8
  %425 = load %struct.DState*, %struct.DState** %3, align 8
  %426 = getelementptr inbounds %struct.DState, %struct.DState* %425, i32 0, i32 6
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %426, align 4
  %429 = load %struct.DState*, %struct.DState** %3, align 8
  %430 = getelementptr inbounds %struct.DState, %struct.DState* %429, i32 0, i32 6
  %431 = load i32, i32* %430, align 4
  %432 = icmp eq i32 %431, 512
  br i1 %432, label %433, label %436

; <label>:433:                                    ; preds = %416
  %434 = load %struct.DState*, %struct.DState** %3, align 8
  %435 = getelementptr inbounds %struct.DState, %struct.DState* %434, i32 0, i32 6
  store i32 0, i32* %435, align 4
  br label %436

; <label>:436:                                    ; preds = %433, %416
  br label %437

; <label>:437:                                    ; preds = %436, %391
  %438 = load %struct.DState*, %struct.DState** %3, align 8
  %439 = getelementptr inbounds %struct.DState, %struct.DState* %438, i32 0, i32 5
  %440 = load i32, i32* %439, align 8
  %441 = add nsw i32 %440, -1
  store i32 %441, i32* %439, align 8
  %442 = load %struct.DState*, %struct.DState** %3, align 8
  %443 = getelementptr inbounds %struct.DState, %struct.DState* %442, i32 0, i32 5
  %444 = load i32, i32* %443, align 8
  %445 = icmp eq i32 %444, 1
  %446 = zext i1 %445 to i64
  %447 = select i1 %445, i32 1, i32 0
  %448 = load i8, i8* %4, align 1
  %449 = zext i8 %448 to i32
  %450 = xor i32 %449, %447
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %4, align 1
  %452 = load %struct.DState*, %struct.DState** %3, align 8
  %453 = getelementptr inbounds %struct.DState, %struct.DState* %452, i32 0, i32 17
  %454 = load i32, i32* %453, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %453, align 4
  %456 = load i8, i8* %4, align 1
  %457 = zext i8 %456 to i32
  %458 = add nsw i32 %457, 4
  %459 = load %struct.DState*, %struct.DState** %3, align 8
  %460 = getelementptr inbounds %struct.DState, %struct.DState* %459, i32 0, i32 3
  store i32 %458, i32* %460, align 8
  %461 = load %struct.DState*, %struct.DState** %3, align 8
  %462 = getelementptr inbounds %struct.DState, %struct.DState* %461, i32 0, i32 20
  %463 = load i32*, i32** %462, align 8
  %464 = load %struct.DState*, %struct.DState** %3, align 8
  %465 = getelementptr inbounds %struct.DState, %struct.DState* %464, i32 0, i32 14
  %466 = load i32, i32* %465, align 4
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %463, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.DState*, %struct.DState** %3, align 8
  %471 = getelementptr inbounds %struct.DState, %struct.DState* %470, i32 0, i32 14
  store i32 %469, i32* %471, align 4
  %472 = load %struct.DState*, %struct.DState** %3, align 8
  %473 = getelementptr inbounds %struct.DState, %struct.DState* %472, i32 0, i32 14
  %474 = load i32, i32* %473, align 4
  %475 = and i32 %474, 255
  %476 = trunc i32 %475 to i8
  %477 = zext i8 %476 to i32
  %478 = load %struct.DState*, %struct.DState** %3, align 8
  %479 = getelementptr inbounds %struct.DState, %struct.DState* %478, i32 0, i32 15
  store i32 %477, i32* %479, align 8
  %480 = load %struct.DState*, %struct.DState** %3, align 8
  %481 = getelementptr inbounds %struct.DState, %struct.DState* %480, i32 0, i32 14
  %482 = load i32, i32* %481, align 4
  %483 = lshr i32 %482, 8
  store i32 %483, i32* %481, align 4
  %484 = load %struct.DState*, %struct.DState** %3, align 8
  %485 = getelementptr inbounds %struct.DState, %struct.DState* %484, i32 0, i32 5
  %486 = load i32, i32* %485, align 8
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %509

; <label>:488:                                    ; preds = %437
  %489 = load %struct.DState*, %struct.DState** %3, align 8
  %490 = getelementptr inbounds %struct.DState, %struct.DState* %489, i32 0, i32 6
  %491 = load i32, i32* %490, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = load %struct.DState*, %struct.DState** %3, align 8
  %496 = getelementptr inbounds %struct.DState, %struct.DState* %495, i32 0, i32 5
  store i32 %494, i32* %496, align 8
  %497 = load %struct.DState*, %struct.DState** %3, align 8
  %498 = getelementptr inbounds %struct.DState, %struct.DState* %497, i32 0, i32 6
  %499 = load i32, i32* %498, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %498, align 4
  %501 = load %struct.DState*, %struct.DState** %3, align 8
  %502 = getelementptr inbounds %struct.DState, %struct.DState* %501, i32 0, i32 6
  %503 = load i32, i32* %502, align 4
  %504 = icmp eq i32 %503, 512
  br i1 %504, label %505, label %508

; <label>:505:                                    ; preds = %488
  %506 = load %struct.DState*, %struct.DState** %3, align 8
  %507 = getelementptr inbounds %struct.DState, %struct.DState* %506, i32 0, i32 6
  store i32 0, i32* %507, align 4
  br label %508

; <label>:508:                                    ; preds = %505, %488
  br label %509

; <label>:509:                                    ; preds = %508, %437
  %510 = load %struct.DState*, %struct.DState** %3, align 8
  %511 = getelementptr inbounds %struct.DState, %struct.DState* %510, i32 0, i32 5
  %512 = load i32, i32* %511, align 8
  %513 = add nsw i32 %512, -1
  store i32 %513, i32* %511, align 8
  %514 = load %struct.DState*, %struct.DState** %3, align 8
  %515 = getelementptr inbounds %struct.DState, %struct.DState* %514, i32 0, i32 5
  %516 = load i32, i32* %515, align 8
  %517 = icmp eq i32 %516, 1
  %518 = zext i1 %517 to i64
  %519 = select i1 %517, i32 1, i32 0
  %520 = load %struct.DState*, %struct.DState** %3, align 8
  %521 = getelementptr inbounds %struct.DState, %struct.DState* %520, i32 0, i32 15
  %522 = load i32, i32* %521, align 8
  %523 = xor i32 %522, %519
  store i32 %523, i32* %521, align 8
  %524 = load %struct.DState*, %struct.DState** %3, align 8
  %525 = getelementptr inbounds %struct.DState, %struct.DState* %524, i32 0, i32 17
  %526 = load i32, i32* %525, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %525, align 4
  br label %22

; <label>:528:                                    ; preds = %1
  %529 = load %struct.DState*, %struct.DState** %3, align 8
  %530 = getelementptr inbounds %struct.DState, %struct.DState* %529, i32 0, i32 25
  %531 = load i32, i32* %530, align 8
  store i32 %531, i32* %5, align 4
  %532 = load %struct.DState*, %struct.DState** %3, align 8
  %533 = getelementptr inbounds %struct.DState, %struct.DState* %532, i32 0, i32 2
  %534 = load i8, i8* %533, align 4
  store i8 %534, i8* %6, align 1
  %535 = load %struct.DState*, %struct.DState** %3, align 8
  %536 = getelementptr inbounds %struct.DState, %struct.DState* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 8
  store i32 %537, i32* %7, align 4
  %538 = load %struct.DState*, %struct.DState** %3, align 8
  %539 = getelementptr inbounds %struct.DState, %struct.DState* %538, i32 0, i32 17
  %540 = load i32, i32* %539, align 4
  store i32 %540, i32* %8, align 4
  %541 = load %struct.DState*, %struct.DState** %3, align 8
  %542 = getelementptr inbounds %struct.DState, %struct.DState* %541, i32 0, i32 15
  %543 = load i32, i32* %542, align 8
  store i32 %543, i32* %9, align 4
  %544 = load %struct.DState*, %struct.DState** %3, align 8
  %545 = getelementptr inbounds %struct.DState, %struct.DState* %544, i32 0, i32 20
  %546 = load i32*, i32** %545, align 8
  store i32* %546, i32** %10, align 8
  %547 = load %struct.DState*, %struct.DState** %3, align 8
  %548 = getelementptr inbounds %struct.DState, %struct.DState* %547, i32 0, i32 14
  %549 = load i32, i32* %548, align 4
  store i32 %549, i32* %11, align 4
  %550 = load %struct.DState*, %struct.DState** %3, align 8
  %551 = getelementptr inbounds %struct.DState, %struct.DState* %550, i32 0, i32 0
  %552 = load %struct.bz_stream*, %struct.bz_stream** %551, align 8
  %553 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %552, i32 0, i32 4
  %554 = load i8*, i8** %553, align 8
  store i8* %554, i8** %12, align 8
  %555 = load %struct.DState*, %struct.DState** %3, align 8
  %556 = getelementptr inbounds %struct.DState, %struct.DState* %555, i32 0, i32 0
  %557 = load %struct.bz_stream*, %struct.bz_stream** %556, align 8
  %558 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %557, i32 0, i32 5
  %559 = load i32, i32* %558, align 8
  store i32 %559, i32* %13, align 4
  %560 = load i32, i32* %13, align 4
  store i32 %560, i32* %14, align 4
  %561 = load %struct.DState*, %struct.DState** %3, align 8
  %562 = getelementptr inbounds %struct.DState, %struct.DState* %561, i32 0, i32 51
  %563 = load i32, i32* %562, align 8
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %15, align 4
  br label %565

; <label>:565:                                    ; preds = %528, %673, %679, %698, %704, %707
  %566 = load i32, i32* %7, align 4
  %567 = icmp sgt i32 %566, 0
  br i1 %567, label %568, label %620

; <label>:568:                                    ; preds = %565
  br label %569

; <label>:569:                                    ; preds = %568, %577
  %570 = load i32, i32* %13, align 4
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %573

; <label>:572:                                    ; preds = %569
  br label %736

; <label>:573:                                    ; preds = %569
  %574 = load i32, i32* %7, align 4
  %575 = icmp eq i32 %574, 1
  br i1 %575, label %576, label %577

; <label>:576:                                    ; preds = %573
  br label %597

; <label>:577:                                    ; preds = %573
  %578 = load i8, i8* %6, align 1
  %579 = load i8*, i8** %12, align 8
  store i8 %578, i8* %579, align 1
  %580 = load i32, i32* %5, align 4
  %581 = shl i32 %580, 8
  %582 = load i32, i32* %5, align 4
  %583 = lshr i32 %582, 24
  %584 = load i8, i8* %6, align 1
  %585 = zext i8 %584 to i32
  %586 = xor i32 %583, %585
  %587 = zext i32 %586 to i64
  %588 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %587
  %589 = load i32, i32* %588, align 4
  %590 = xor i32 %581, %589
  store i32 %590, i32* %5, align 4
  %591 = load i32, i32* %7, align 4
  %592 = add nsw i32 %591, -1
  store i32 %592, i32* %7, align 4
  %593 = load i8*, i8** %12, align 8
  %594 = getelementptr inbounds i8, i8* %593, i32 1
  store i8* %594, i8** %12, align 8
  %595 = load i32, i32* %13, align 4
  %596 = add i32 %595, -1
  store i32 %596, i32* %13, align 4
  br label %569

; <label>:597:                                    ; preds = %576
  br label %598

; <label>:598:                                    ; preds = %656, %649, %597
  %599 = load i32, i32* %13, align 4
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %602

; <label>:601:                                    ; preds = %598
  store i32 1, i32* %7, align 4
  br label %736

; <label>:602:                                    ; preds = %598
  %603 = load i8, i8* %6, align 1
  %604 = load i8*, i8** %12, align 8
  store i8 %603, i8* %604, align 1
  %605 = load i32, i32* %5, align 4
  %606 = shl i32 %605, 8
  %607 = load i32, i32* %5, align 4
  %608 = lshr i32 %607, 24
  %609 = load i8, i8* %6, align 1
  %610 = zext i8 %609 to i32
  %611 = xor i32 %608, %610
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = xor i32 %606, %614
  store i32 %615, i32* %5, align 4
  %616 = load i8*, i8** %12, align 8
  %617 = getelementptr inbounds i8, i8* %616, i32 1
  store i8* %617, i8** %12, align 8
  %618 = load i32, i32* %13, align 4
  %619 = add i32 %618, -1
  store i32 %619, i32* %13, align 4
  br label %620

; <label>:620:                                    ; preds = %602, %565
  %621 = load i32, i32* %8, align 4
  %622 = load i32, i32* %15, align 4
  %623 = icmp sgt i32 %621, %622
  br i1 %623, label %624, label %625

; <label>:624:                                    ; preds = %620
  store i8 1, i8* %2, align 1
  br label %798

; <label>:625:                                    ; preds = %620
  %626 = load i32, i32* %8, align 4
  %627 = load i32, i32* %15, align 4
  %628 = icmp eq i32 %626, %627
  br i1 %628, label %629, label %630

; <label>:629:                                    ; preds = %625
  store i32 0, i32* %7, align 4
  br label %736

; <label>:630:                                    ; preds = %625
  %631 = load i32, i32* %9, align 4
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %6, align 1
  %633 = load i32*, i32** %10, align 8
  %634 = load i32, i32* %11, align 4
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds i32, i32* %633, i64 %635
  %637 = load i32, i32* %636, align 4
  store i32 %637, i32* %11, align 4
  %638 = load i32, i32* %11, align 4
  %639 = and i32 %638, 255
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %4, align 1
  %641 = load i32, i32* %11, align 4
  %642 = lshr i32 %641, 8
  store i32 %642, i32* %11, align 4
  %643 = load i32, i32* %8, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %8, align 4
  %645 = load i8, i8* %4, align 1
  %646 = zext i8 %645 to i32
  %647 = load i32, i32* %9, align 4
  %648 = icmp ne i32 %646, %647
  br i1 %648, label %649, label %652

; <label>:649:                                    ; preds = %630
  %650 = load i8, i8* %4, align 1
  %651 = zext i8 %650 to i32
  store i32 %651, i32* %9, align 4
  br label %598

; <label>:652:                                    ; preds = %630
  %653 = load i32, i32* %8, align 4
  %654 = load i32, i32* %15, align 4
  %655 = icmp eq i32 %653, %654
  br i1 %655, label %656, label %657

; <label>:656:                                    ; preds = %652
  br label %598

; <label>:657:                                    ; preds = %652
  store i32 2, i32* %7, align 4
  %658 = load i32*, i32** %10, align 8
  %659 = load i32, i32* %11, align 4
  %660 = zext i32 %659 to i64
  %661 = getelementptr inbounds i32, i32* %658, i64 %660
  %662 = load i32, i32* %661, align 4
  store i32 %662, i32* %11, align 4
  %663 = load i32, i32* %11, align 4
  %664 = and i32 %663, 255
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %4, align 1
  %666 = load i32, i32* %11, align 4
  %667 = lshr i32 %666, 8
  store i32 %667, i32* %11, align 4
  %668 = load i32, i32* %8, align 4
  %669 = add nsw i32 %668, 1
  store i32 %669, i32* %8, align 4
  %670 = load i32, i32* %8, align 4
  %671 = load i32, i32* %15, align 4
  %672 = icmp eq i32 %670, %671
  br i1 %672, label %673, label %674

; <label>:673:                                    ; preds = %657
  br label %565

; <label>:674:                                    ; preds = %657
  %675 = load i8, i8* %4, align 1
  %676 = zext i8 %675 to i32
  %677 = load i32, i32* %9, align 4
  %678 = icmp ne i32 %676, %677
  br i1 %678, label %679, label %682

; <label>:679:                                    ; preds = %674
  %680 = load i8, i8* %4, align 1
  %681 = zext i8 %680 to i32
  store i32 %681, i32* %9, align 4
  br label %565

; <label>:682:                                    ; preds = %674
  store i32 3, i32* %7, align 4
  %683 = load i32*, i32** %10, align 8
  %684 = load i32, i32* %11, align 4
  %685 = zext i32 %684 to i64
  %686 = getelementptr inbounds i32, i32* %683, i64 %685
  %687 = load i32, i32* %686, align 4
  store i32 %687, i32* %11, align 4
  %688 = load i32, i32* %11, align 4
  %689 = and i32 %688, 255
  %690 = trunc i32 %689 to i8
  store i8 %690, i8* %4, align 1
  %691 = load i32, i32* %11, align 4
  %692 = lshr i32 %691, 8
  store i32 %692, i32* %11, align 4
  %693 = load i32, i32* %8, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %8, align 4
  %695 = load i32, i32* %8, align 4
  %696 = load i32, i32* %15, align 4
  %697 = icmp eq i32 %695, %696
  br i1 %697, label %698, label %699

; <label>:698:                                    ; preds = %682
  br label %565

; <label>:699:                                    ; preds = %682
  %700 = load i8, i8* %4, align 1
  %701 = zext i8 %700 to i32
  %702 = load i32, i32* %9, align 4
  %703 = icmp ne i32 %701, %702
  br i1 %703, label %704, label %707

; <label>:704:                                    ; preds = %699
  %705 = load i8, i8* %4, align 1
  %706 = zext i8 %705 to i32
  store i32 %706, i32* %9, align 4
  br label %565

; <label>:707:                                    ; preds = %699
  %708 = load i32*, i32** %10, align 8
  %709 = load i32, i32* %11, align 4
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds i32, i32* %708, i64 %710
  %712 = load i32, i32* %711, align 4
  store i32 %712, i32* %11, align 4
  %713 = load i32, i32* %11, align 4
  %714 = and i32 %713, 255
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %4, align 1
  %716 = load i32, i32* %11, align 4
  %717 = lshr i32 %716, 8
  store i32 %717, i32* %11, align 4
  %718 = load i32, i32* %8, align 4
  %719 = add nsw i32 %718, 1
  store i32 %719, i32* %8, align 4
  %720 = load i8, i8* %4, align 1
  %721 = zext i8 %720 to i32
  %722 = add nsw i32 %721, 4
  store i32 %722, i32* %7, align 4
  %723 = load i32*, i32** %10, align 8
  %724 = load i32, i32* %11, align 4
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds i32, i32* %723, i64 %725
  %727 = load i32, i32* %726, align 4
  store i32 %727, i32* %11, align 4
  %728 = load i32, i32* %11, align 4
  %729 = and i32 %728, 255
  %730 = trunc i32 %729 to i8
  %731 = zext i8 %730 to i32
  store i32 %731, i32* %9, align 4
  %732 = load i32, i32* %11, align 4
  %733 = lshr i32 %732, 8
  store i32 %733, i32* %11, align 4
  %734 = load i32, i32* %8, align 4
  %735 = add nsw i32 %734, 1
  store i32 %735, i32* %8, align 4
  br label %565

; <label>:736:                                    ; preds = %629, %601, %572
  %737 = load %struct.DState*, %struct.DState** %3, align 8
  %738 = getelementptr inbounds %struct.DState, %struct.DState* %737, i32 0, i32 0
  %739 = load %struct.bz_stream*, %struct.bz_stream** %738, align 8
  %740 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %739, i32 0, i32 6
  %741 = load i32, i32* %740, align 4
  store i32 %741, i32* %16, align 4
  %742 = load i32, i32* %14, align 4
  %743 = load i32, i32* %13, align 4
  %744 = sub i32 %742, %743
  %745 = load %struct.DState*, %struct.DState** %3, align 8
  %746 = getelementptr inbounds %struct.DState, %struct.DState* %745, i32 0, i32 0
  %747 = load %struct.bz_stream*, %struct.bz_stream** %746, align 8
  %748 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %747, i32 0, i32 6
  %749 = load i32, i32* %748, align 4
  %750 = add i32 %749, %744
  store i32 %750, i32* %748, align 4
  %751 = load %struct.DState*, %struct.DState** %3, align 8
  %752 = getelementptr inbounds %struct.DState, %struct.DState* %751, i32 0, i32 0
  %753 = load %struct.bz_stream*, %struct.bz_stream** %752, align 8
  %754 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %753, i32 0, i32 6
  %755 = load i32, i32* %754, align 4
  %756 = load i32, i32* %16, align 4
  %757 = icmp ult i32 %755, %756
  br i1 %757, label %758, label %765

; <label>:758:                                    ; preds = %736
  %759 = load %struct.DState*, %struct.DState** %3, align 8
  %760 = getelementptr inbounds %struct.DState, %struct.DState* %759, i32 0, i32 0
  %761 = load %struct.bz_stream*, %struct.bz_stream** %760, align 8
  %762 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %761, i32 0, i32 7
  %763 = load i32, i32* %762, align 8
  %764 = add i32 %763, 1
  store i32 %764, i32* %762, align 8
  br label %765

; <label>:765:                                    ; preds = %758, %736
  %766 = load i32, i32* %5, align 4
  %767 = load %struct.DState*, %struct.DState** %3, align 8
  %768 = getelementptr inbounds %struct.DState, %struct.DState* %767, i32 0, i32 25
  store i32 %766, i32* %768, align 8
  %769 = load i8, i8* %6, align 1
  %770 = load %struct.DState*, %struct.DState** %3, align 8
  %771 = getelementptr inbounds %struct.DState, %struct.DState* %770, i32 0, i32 2
  store i8 %769, i8* %771, align 4
  %772 = load i32, i32* %7, align 4
  %773 = load %struct.DState*, %struct.DState** %3, align 8
  %774 = getelementptr inbounds %struct.DState, %struct.DState* %773, i32 0, i32 3
  store i32 %772, i32* %774, align 8
  %775 = load i32, i32* %8, align 4
  %776 = load %struct.DState*, %struct.DState** %3, align 8
  %777 = getelementptr inbounds %struct.DState, %struct.DState* %776, i32 0, i32 17
  store i32 %775, i32* %777, align 4
  %778 = load i32, i32* %9, align 4
  %779 = load %struct.DState*, %struct.DState** %3, align 8
  %780 = getelementptr inbounds %struct.DState, %struct.DState* %779, i32 0, i32 15
  store i32 %778, i32* %780, align 8
  %781 = load i32*, i32** %10, align 8
  %782 = load %struct.DState*, %struct.DState** %3, align 8
  %783 = getelementptr inbounds %struct.DState, %struct.DState* %782, i32 0, i32 20
  store i32* %781, i32** %783, align 8
  %784 = load i32, i32* %11, align 4
  %785 = load %struct.DState*, %struct.DState** %3, align 8
  %786 = getelementptr inbounds %struct.DState, %struct.DState* %785, i32 0, i32 14
  store i32 %784, i32* %786, align 4
  %787 = load i8*, i8** %12, align 8
  %788 = load %struct.DState*, %struct.DState** %3, align 8
  %789 = getelementptr inbounds %struct.DState, %struct.DState* %788, i32 0, i32 0
  %790 = load %struct.bz_stream*, %struct.bz_stream** %789, align 8
  %791 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %790, i32 0, i32 4
  store i8* %787, i8** %791, align 8
  %792 = load i32, i32* %13, align 4
  %793 = load %struct.DState*, %struct.DState** %3, align 8
  %794 = getelementptr inbounds %struct.DState, %struct.DState* %793, i32 0, i32 0
  %795 = load %struct.bz_stream*, %struct.bz_stream** %794, align 8
  %796 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %795, i32 0, i32 5
  store i32 %792, i32* %796, align 8
  br label %797

; <label>:797:                                    ; preds = %765
  store i8 0, i8* %2, align 1
  br label %798

; <label>:798:                                    ; preds = %797, %624, %120, %110, %30
  %799 = load i8, i8* %2, align 1
  ret i8 %799
}

declare i32 @BZ2_decompress(%struct.DState*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzDecompressEnd(%struct.bz_stream*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bz_stream*, align 8
  %4 = alloca %struct.DState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %3, align 8
  %5 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %6 = icmp eq %struct.bz_stream* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %82

; <label>:8:                                      ; preds = %1
  %9 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %10 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %9, i32 0, i32 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.DState*
  store %struct.DState* %12, %struct.DState** %4, align 8
  %13 = load %struct.DState*, %struct.DState** %4, align 8
  %14 = icmp eq %struct.DState* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %8
  store i32 -2, i32* %2, align 4
  br label %82

; <label>:16:                                     ; preds = %8
  %17 = load %struct.DState*, %struct.DState** %4, align 8
  %18 = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 0
  %19 = load %struct.bz_stream*, %struct.bz_stream** %18, align 8
  %20 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %21 = icmp ne %struct.bz_stream* %19, %20
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  store i32 -2, i32* %2, align 4
  br label %82

; <label>:23:                                     ; preds = %16
  %24 = load %struct.DState*, %struct.DState** %4, align 8
  %25 = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 20
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %23
  %29 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %30 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 10
  %31 = load void (i8*, i8*)*, void (i8*, i8*)** %30, align 8
  %32 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %33 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 11
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.DState*, %struct.DState** %4, align 8
  %36 = getelementptr inbounds %struct.DState, %struct.DState* %35, i32 0, i32 20
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  call void %31(i8* %34, i8* %38)
  br label %39

; <label>:39:                                     ; preds = %28, %23
  %40 = load %struct.DState*, %struct.DState** %4, align 8
  %41 = getelementptr inbounds %struct.DState, %struct.DState* %40, i32 0, i32 21
  %42 = load i16*, i16** %41, align 8
  %43 = icmp ne i16* %42, null
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %39
  %45 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %46 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %45, i32 0, i32 10
  %47 = load void (i8*, i8*)*, void (i8*, i8*)** %46, align 8
  %48 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %49 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %48, i32 0, i32 11
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.DState*, %struct.DState** %4, align 8
  %52 = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 21
  %53 = load i16*, i16** %52, align 8
  %54 = bitcast i16* %53 to i8*
  call void %47(i8* %50, i8* %54)
  br label %55

; <label>:55:                                     ; preds = %44, %39
  %56 = load %struct.DState*, %struct.DState** %4, align 8
  %57 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 22
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %70

; <label>:60:                                     ; preds = %55
  %61 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %62 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %61, i32 0, i32 10
  %63 = load void (i8*, i8*)*, void (i8*, i8*)** %62, align 8
  %64 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %65 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %64, i32 0, i32 11
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.DState*, %struct.DState** %4, align 8
  %68 = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 22
  %69 = load i8*, i8** %68, align 8
  call void %63(i8* %66, i8* %69)
  br label %70

; <label>:70:                                     ; preds = %60, %55
  %71 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %72 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %71, i32 0, i32 10
  %73 = load void (i8*, i8*)*, void (i8*, i8*)** %72, align 8
  %74 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %75 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %74, i32 0, i32 11
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %78 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %77, i32 0, i32 8
  %79 = load i8*, i8** %78, align 8
  call void %73(i8* %76, i8* %79)
  %80 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %81 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %80, i32 0, i32 8
  store i8* null, i8** %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

; <label>:82:                                     ; preds = %70, %22, %15, %7
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @BZ2_bzWriteOpen(i32*, i32, i32, i32, i32) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.bzFile* null, %struct.bzFile** %13, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %5
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  br label %18

; <label>:18:                                     ; preds = %16, %5
  %19 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %20 = icmp ne %struct.bzFile* %19, null
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %22, i32 0, i32 5
  store i32 0, i32* %23, align 8
  br label %24

; <label>:24:                                     ; preds = %21, %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %45, label %27

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %45, label %30

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 9
  br i1 %32, label %45, label %33

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %45, label %36

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 250
  br i1 %38, label %45, label %39

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %57

; <label>:45:                                     ; preds = %42, %39, %36, %33, %30, %27, %24
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %45
  %49 = load i32*, i32** %7, align 8
  store i32 -2, i32* %49, align 4
  br label %50

; <label>:50:                                     ; preds = %48, %45
  %51 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %52 = icmp ne %struct.bzFile* %51, null
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %50
  %54 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %55 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %54, i32 0, i32 5
  store i32 -2, i32* %55, align 8
  br label %56

; <label>:56:                                     ; preds = %53, %50
  store i8* null, i8** %6, align 8
  br label %140

; <label>:57:                                     ; preds = %42
  %58 = call noalias i8* @malloc(i64 5104) #8
  %59 = bitcast i8* %58 to %struct.bzFile*
  store %struct.bzFile* %59, %struct.bzFile** %13, align 8
  %60 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %61 = icmp eq %struct.bzFile* %60, null
  br i1 %61, label %62, label %74

; <label>:62:                                     ; preds = %57
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %62
  %66 = load i32*, i32** %7, align 8
  store i32 -3, i32* %66, align 4
  br label %67

; <label>:67:                                     ; preds = %65, %62
  %68 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %69 = icmp ne %struct.bzFile* %68, null
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %67
  %71 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %72 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %71, i32 0, i32 5
  store i32 -3, i32* %72, align 8
  br label %73

; <label>:73:                                     ; preds = %70, %67
  store i8* null, i8** %6, align 8
  br label %140

; <label>:74:                                     ; preds = %57
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %74
  %78 = load i32*, i32** %7, align 8
  store i32 0, i32* %78, align 4
  br label %79

; <label>:79:                                     ; preds = %77, %74
  %80 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %81 = icmp ne %struct.bzFile* %80, null
  br i1 %81, label %82, label %85

; <label>:82:                                     ; preds = %79
  %83 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %84 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %83, i32 0, i32 5
  store i32 0, i32* %84, align 8
  br label %85

; <label>:85:                                     ; preds = %82, %79
  %86 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %87 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %86, i32 0, i32 6
  store i8 0, i8* %87, align 4
  %88 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %89 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %88, i32 0, i32 2
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %92 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %94 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %93, i32 0, i32 3
  store i8 1, i8* %94, align 8
  %95 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %96 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %96, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %97, align 8
  %98 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %99 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %99, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %100, align 8
  %101 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %102 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %102, i32 0, i32 11
  store i8* null, i8** %103, align 8
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %85
  store i32 30, i32* %11, align 4
  br label %107

; <label>:107:                                    ; preds = %106, %85
  %108 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %109 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %108, i32 0, i32 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

; <label>:116:                                    ; preds = %107
  %117 = load i32*, i32** %7, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

; <label>:119:                                    ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  br label %122

; <label>:122:                                    ; preds = %119, %116
  %123 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %124 = icmp ne %struct.bzFile* %123, null
  br i1 %124, label %125, label %129

; <label>:125:                                    ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %128 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 8
  br label %129

; <label>:129:                                    ; preds = %125, %122
  %130 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %131 = bitcast %struct.bzFile* %130 to i8*
  call void @free(i8* %131) #8
  store i8* null, i8** %6, align 8
  br label %140

; <label>:132:                                    ; preds = %107
  %133 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %134 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %134, i32 0, i32 1
  store i32 0, i32* %135, align 8
  %136 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %137 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %136, i32 0, i32 6
  store i8 1, i8* %137, align 4
  %138 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %139 = bitcast %struct.bzFile* %138 to i8*
  store i8* %139, i8** %6, align 8
  br label %140

; <label>:140:                                    ; preds = %132, %129, %73, %56
  %141 = load i8*, i8** %6, align 8
  ret i8* %141
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @BZ2_bzWrite(i32*, i8*, i8*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.bzFile*
  store %struct.bzFile* %14, %struct.bzFile** %12, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %4
  %18 = load i32*, i32** %5, align 8
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %17, %4
  %20 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %21 = icmp ne %struct.bzFile* %20, null
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %24 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 0, i32* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %22, %19
  %26 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %27 = icmp eq %struct.bzFile* %26, null
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %46

; <label>:34:                                     ; preds = %31, %28, %25
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = load i32*, i32** %5, align 8
  store i32 -2, i32* %38, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %34
  %40 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %41 = icmp ne %struct.bzFile* %40, null
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %39
  %43 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %44 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %43, i32 0, i32 5
  store i32 -2, i32* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %42, %39
  br label %171

; <label>:46:                                     ; preds = %31
  %47 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 3
  %49 = load i8, i8* %48, align 8
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %63, label %51

; <label>:51:                                     ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %51
  %55 = load i32*, i32** %5, align 8
  store i32 -1, i32* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %54, %51
  %57 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %58 = icmp ne %struct.bzFile* %57, null
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %56
  %60 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %61 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %60, i32 0, i32 5
  store i32 -1, i32* %61, align 8
  br label %62

; <label>:62:                                     ; preds = %59, %56
  br label %171

; <label>:63:                                     ; preds = %46
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

; <label>:66:                                     ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = load i32*, i32** %5, align 8
  store i32 0, i32* %70, align 4
  br label %71

; <label>:71:                                     ; preds = %69, %66
  %72 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %73 = icmp ne %struct.bzFile* %72, null
  br i1 %73, label %74, label %77

; <label>:74:                                     ; preds = %71
  %75 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %76 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %75, i32 0, i32 5
  store i32 0, i32* %76, align 8
  br label %77

; <label>:77:                                     ; preds = %74, %71
  br label %171

; <label>:78:                                     ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %81 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %85 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  br label %87

; <label>:87:                                     ; preds = %78, %170
  %88 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %89 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %89, i32 0, i32 5
  store i32 5000, i32* %90, align 8
  %91 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %92 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %91, i32 0, i32 1
  %93 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i32 0, i32 0
  %94 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %95 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %95, i32 0, i32 4
  store i8* %93, i8** %96, align 8
  %97 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %98 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %97, i32 0, i32 4
  %99 = call i32 @BZ2_bzCompress(%struct.bz_stream* %98, i32 0)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %116

; <label>:102:                                    ; preds = %87
  %103 = load i32*, i32** %5, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** %5, align 8
  store i32 %106, i32* %107, align 4
  br label %108

; <label>:108:                                    ; preds = %105, %102
  %109 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %110 = icmp ne %struct.bzFile* %109, null
  br i1 %110, label %111, label %115

; <label>:111:                                    ; preds = %108
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %114 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 8
  br label %115

; <label>:115:                                    ; preds = %111, %108
  br label %171

; <label>:116:                                    ; preds = %87
  %117 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %118 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = icmp ult i32 %120, 5000
  br i1 %121, label %122, label %152

; <label>:122:                                    ; preds = %116
  %123 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %124 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = sub i32 5000, %126
  store i32 %127, i32* %9, align 4
  %128 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %129 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %128, i32 0, i32 1
  %130 = getelementptr inbounds [5000 x i8], [5000 x i8]* %129, i32 0, i32 0
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %133 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @spec_fwrite(i8* %130, i32 1, i32 %131, i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %151

; <label>:139:                                    ; preds = %122
  %140 = load i32*, i32** %5, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %144

; <label>:142:                                    ; preds = %139
  %143 = load i32*, i32** %5, align 8
  store i32 -6, i32* %143, align 4
  br label %144

; <label>:144:                                    ; preds = %142, %139
  %145 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %146 = icmp ne %struct.bzFile* %145, null
  br i1 %146, label %147, label %150

; <label>:147:                                    ; preds = %144
  %148 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %149 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %148, i32 0, i32 5
  store i32 -6, i32* %149, align 8
  br label %150

; <label>:150:                                    ; preds = %147, %144
  br label %171

; <label>:151:                                    ; preds = %122
  br label %152

; <label>:152:                                    ; preds = %151, %116
  %153 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %154 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %170

; <label>:158:                                    ; preds = %152
  %159 = load i32*, i32** %5, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %163

; <label>:161:                                    ; preds = %158
  %162 = load i32*, i32** %5, align 8
  store i32 0, i32* %162, align 4
  br label %163

; <label>:163:                                    ; preds = %161, %158
  %164 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %165 = icmp ne %struct.bzFile* %164, null
  br i1 %165, label %166, label %169

; <label>:166:                                    ; preds = %163
  %167 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %168 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %167, i32 0, i32 5
  store i32 0, i32* %168, align 8
  br label %169

; <label>:169:                                    ; preds = %166, %163
  br label %171

; <label>:170:                                    ; preds = %152
  br label %87

; <label>:171:                                    ; preds = %169, %150, %115, %77, %62, %45
  ret void
}

declare i32 @spec_fwrite(i8*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @BZ2_bzWriteClose(i32*, i8*, i32, i32*, i32*) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32*, i32** %10, align 8
  call void @BZ2_bzWriteClose64(i32* %11, i8* %12, i32 %13, i32* %14, i32* null, i32* %15, i32* null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.bzFile*
  store %struct.bzFile* %20, %struct.bzFile** %18, align 8
  %21 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %22 = icmp eq %struct.bzFile* %21, null
  br i1 %22, label %23, label %35

; <label>:23:                                     ; preds = %7
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %23
  %27 = load i32*, i32** %8, align 8
  store i32 0, i32* %27, align 4
  br label %28

; <label>:28:                                     ; preds = %26, %23
  %29 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %30 = icmp ne %struct.bzFile* %29, null
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %28
  %32 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %33 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %32, i32 0, i32 5
  store i32 0, i32* %33, align 8
  br label %34

; <label>:34:                                     ; preds = %31, %28
  br label %212

; <label>:35:                                     ; preds = %7
  %36 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %37 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 3
  %38 = load i8, i8* %37, align 8
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %52, label %40

; <label>:40:                                     ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %40
  %44 = load i32*, i32** %8, align 8
  store i32 -1, i32* %44, align 4
  br label %45

; <label>:45:                                     ; preds = %43, %40
  %46 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %47 = icmp ne %struct.bzFile* %46, null
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %45
  %49 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %50 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %49, i32 0, i32 5
  store i32 -1, i32* %50, align 8
  br label %51

; <label>:51:                                     ; preds = %48, %45
  br label %212

; <label>:52:                                     ; preds = %35
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %52
  %56 = load i32*, i32** %11, align 8
  store i32 0, i32* %56, align 4
  br label %57

; <label>:57:                                     ; preds = %55, %52
  %58 = load i32*, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %57
  %61 = load i32*, i32** %12, align 8
  store i32 0, i32* %61, align 4
  br label %62

; <label>:62:                                     ; preds = %60, %57
  %63 = load i32*, i32** %13, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %62
  %66 = load i32*, i32** %13, align 8
  store i32 0, i32* %66, align 4
  br label %67

; <label>:67:                                     ; preds = %65, %62
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %67
  %71 = load i32*, i32** %14, align 8
  store i32 0, i32* %71, align 4
  br label %72

; <label>:72:                                     ; preds = %70, %67
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %155, label %75

; <label>:75:                                     ; preds = %72
  %76 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %77 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %155

; <label>:80:                                     ; preds = %75
  br label %81

; <label>:81:                                     ; preds = %80, %153
  %82 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %83 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %83, i32 0, i32 5
  store i32 5000, i32* %84, align 8
  %85 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %86 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %85, i32 0, i32 1
  %87 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i32 0, i32 0
  %88 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %89 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %89, i32 0, i32 4
  store i8* %87, i8** %90, align 8
  %91 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %92 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %91, i32 0, i32 4
  %93 = call i32 @BZ2_bzCompress(%struct.bz_stream* %92, i32 2)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 3
  br i1 %95, label %96, label %113

; <label>:96:                                     ; preds = %81
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 4
  br i1 %98, label %99, label %113

; <label>:99:                                     ; preds = %96
  %100 = load i32*, i32** %8, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %17, align 4
  %104 = load i32*, i32** %8, align 8
  store i32 %103, i32* %104, align 4
  br label %105

; <label>:105:                                    ; preds = %102, %99
  %106 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %107 = icmp ne %struct.bzFile* %106, null
  br i1 %107, label %108, label %112

; <label>:108:                                    ; preds = %105
  %109 = load i32, i32* %17, align 4
  %110 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %111 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  br label %112

; <label>:112:                                    ; preds = %108, %105
  br label %212

; <label>:113:                                    ; preds = %96, %81
  %114 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %115 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = icmp ult i32 %117, 5000
  br i1 %118, label %119, label %149

; <label>:119:                                    ; preds = %113
  %120 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %121 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = sub i32 5000, %123
  store i32 %124, i32* %15, align 4
  %125 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %126 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %125, i32 0, i32 1
  %127 = getelementptr inbounds [5000 x i8], [5000 x i8]* %126, i32 0, i32 0
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %130 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @spec_fwrite(i8* %127, i32 1, i32 %128, i32 %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %148

; <label>:136:                                    ; preds = %119
  %137 = load i32*, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %141

; <label>:139:                                    ; preds = %136
  %140 = load i32*, i32** %8, align 8
  store i32 -6, i32* %140, align 4
  br label %141

; <label>:141:                                    ; preds = %139, %136
  %142 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %143 = icmp ne %struct.bzFile* %142, null
  br i1 %143, label %144, label %147

; <label>:144:                                    ; preds = %141
  %145 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %146 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %145, i32 0, i32 5
  store i32 -6, i32* %146, align 8
  br label %147

; <label>:147:                                    ; preds = %144, %141
  br label %212

; <label>:148:                                    ; preds = %119
  br label %149

; <label>:149:                                    ; preds = %148, %113
  %150 = load i32, i32* %17, align 4
  %151 = icmp eq i32 %150, 4
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %149
  br label %154

; <label>:153:                                    ; preds = %149
  br label %81

; <label>:154:                                    ; preds = %152
  br label %155

; <label>:155:                                    ; preds = %154, %75, %72
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

; <label>:158:                                    ; preds = %155
  br label %159

; <label>:159:                                    ; preds = %158, %155
  %160 = load i32*, i32** %11, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %168

; <label>:162:                                    ; preds = %159
  %163 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %164 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %11, align 8
  store i32 %166, i32* %167, align 4
  br label %168

; <label>:168:                                    ; preds = %162, %159
  %169 = load i32*, i32** %12, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %177

; <label>:171:                                    ; preds = %168
  %172 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %173 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load i32*, i32** %12, align 8
  store i32 %175, i32* %176, align 4
  br label %177

; <label>:177:                                    ; preds = %171, %168
  %178 = load i32*, i32** %13, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %186

; <label>:180:                                    ; preds = %177
  %181 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %182 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %13, align 8
  store i32 %184, i32* %185, align 4
  br label %186

; <label>:186:                                    ; preds = %180, %177
  %187 = load i32*, i32** %14, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %195

; <label>:189:                                    ; preds = %186
  %190 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %191 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 8
  %194 = load i32*, i32** %14, align 8
  store i32 %193, i32* %194, align 4
  br label %195

; <label>:195:                                    ; preds = %189, %186
  %196 = load i32*, i32** %8, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %200

; <label>:198:                                    ; preds = %195
  %199 = load i32*, i32** %8, align 8
  store i32 0, i32* %199, align 4
  br label %200

; <label>:200:                                    ; preds = %198, %195
  %201 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %202 = icmp ne %struct.bzFile* %201, null
  br i1 %202, label %203, label %206

; <label>:203:                                    ; preds = %200
  %204 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %205 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %204, i32 0, i32 5
  store i32 0, i32* %205, align 8
  br label %206

; <label>:206:                                    ; preds = %203, %200
  %207 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %208 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %207, i32 0, i32 4
  %209 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %208)
  %210 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %211 = bitcast %struct.bzFile* %210 to i8*
  call void @free(i8* %211) #8
  br label %212

; <label>:212:                                    ; preds = %206, %147, %112, %51, %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @BZ2_bzReadOpen(i32*, i32, i32, i32, i8*, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bzFile*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.bzFile* null, %struct.bzFile** %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %6
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %6
  %21 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %22 = icmp ne %struct.bzFile* %21, null
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %20
  %24 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %25 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %24, i32 0, i32 5
  store i32 0, i32* %25, align 8
  br label %26

; <label>:26:                                     ; preds = %23, %20
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %56, label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %56, label %35

; <label>:35:                                     ; preds = %32, %29
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %56, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 4
  br i1 %40, label %56, label %41

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %12, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

; <label>:47:                                     ; preds = %44, %41
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %68

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %54, 5000
  br i1 %55, label %56, label %68

; <label>:56:                                     ; preds = %53, %50, %44, %38, %35, %32, %26
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %56
  %60 = load i32*, i32** %8, align 8
  store i32 -2, i32* %60, align 4
  br label %61

; <label>:61:                                     ; preds = %59, %56
  %62 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %63 = icmp ne %struct.bzFile* %62, null
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %61
  %65 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %66 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %65, i32 0, i32 5
  store i32 -2, i32* %66, align 8
  br label %67

; <label>:67:                                     ; preds = %64, %61
  store i8* null, i8** %7, align 8
  br label %177

; <label>:68:                                     ; preds = %53, %47
  %69 = call noalias i8* @malloc(i64 5104) #8
  %70 = bitcast i8* %69 to %struct.bzFile*
  store %struct.bzFile* %70, %struct.bzFile** %14, align 8
  %71 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %72 = icmp eq %struct.bzFile* %71, null
  br i1 %72, label %73, label %85

; <label>:73:                                     ; preds = %68
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %78

; <label>:76:                                     ; preds = %73
  %77 = load i32*, i32** %8, align 8
  store i32 -3, i32* %77, align 4
  br label %78

; <label>:78:                                     ; preds = %76, %73
  %79 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %80 = icmp ne %struct.bzFile* %79, null
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %78
  %82 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %83 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %82, i32 0, i32 5
  store i32 -3, i32* %83, align 8
  br label %84

; <label>:84:                                     ; preds = %81, %78
  store i8* null, i8** %7, align 8
  br label %177

; <label>:85:                                     ; preds = %68
  %86 = load i32*, i32** %8, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %90

; <label>:88:                                     ; preds = %85
  %89 = load i32*, i32** %8, align 8
  store i32 0, i32* %89, align 4
  br label %90

; <label>:90:                                     ; preds = %88, %85
  %91 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %92 = icmp ne %struct.bzFile* %91, null
  br i1 %92, label %93, label %96

; <label>:93:                                     ; preds = %90
  %94 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %95 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %94, i32 0, i32 5
  store i32 0, i32* %95, align 8
  br label %96

; <label>:96:                                     ; preds = %93, %90
  %97 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %98 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %97, i32 0, i32 6
  store i8 0, i8* %98, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %101 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %103 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %102, i32 0, i32 2
  store i32 0, i32* %103, align 4
  %104 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %105 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %104, i32 0, i32 3
  store i8 0, i8* %105, align 8
  %106 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %107 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %107, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %108, align 8
  %109 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %110 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %110, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %111, align 8
  %112 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %113 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %113, i32 0, i32 11
  store i8* null, i8** %114, align 8
  br label %115

; <label>:115:                                    ; preds = %118, %96
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %136

; <label>:118:                                    ; preds = %115
  %119 = load i8*, i8** %12, align 8
  %120 = load i8, i8* %119, align 1
  %121 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %122 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %121, i32 0, i32 1
  %123 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %124 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [5000 x i8], [5000 x i8]* %122, i64 0, i64 %126
  store i8 %120, i8* %127, align 1
  %128 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %129 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load i8*, i8** %12, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  store i8* %133, i8** %12, align 8
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %13, align 4
  br label %115

; <label>:136:                                    ; preds = %115
  %137 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %138 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %137, i32 0, i32 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %138, i32 %139, i32 %140)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %160

; <label>:144:                                    ; preds = %136
  %145 = load i32*, i32** %8, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

; <label>:147:                                    ; preds = %144
  %148 = load i32, i32* %15, align 4
  %149 = load i32*, i32** %8, align 8
  store i32 %148, i32* %149, align 4
  br label %150

; <label>:150:                                    ; preds = %147, %144
  %151 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %152 = icmp ne %struct.bzFile* %151, null
  br i1 %152, label %153, label %157

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %156 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  br label %157

; <label>:157:                                    ; preds = %153, %150
  %158 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %159 = bitcast %struct.bzFile* %158 to i8*
  call void @free(i8* %159) #8
  store i8* null, i8** %7, align 8
  br label %177

; <label>:160:                                    ; preds = %136
  %161 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %162 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %165 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 8
  %167 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %168 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %167, i32 0, i32 1
  %169 = getelementptr inbounds [5000 x i8], [5000 x i8]* %168, i32 0, i32 0
  %170 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %171 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  %173 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %174 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %173, i32 0, i32 6
  store i8 1, i8* %174, align 4
  %175 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %176 = bitcast %struct.bzFile* %175 to i8*
  store i8* %176, i8** %7, align 8
  br label %177

; <label>:177:                                    ; preds = %160, %157, %84, %67
  %178 = load i8*, i8** %7, align 8
  ret i8* %178
}

; Function Attrs: noinline nounwind optnone uwtable
define void @BZ2_bzReadClose(i32*, i8*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.bzFile*
  store %struct.bzFile* %7, %struct.bzFile** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = load i32*, i32** %3, align 8
  store i32 0, i32* %11, align 4
  br label %12

; <label>:12:                                     ; preds = %10, %2
  %13 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %14 = icmp ne %struct.bzFile* %13, null
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %12
  %16 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %17 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %16, i32 0, i32 5
  store i32 0, i32* %17, align 8
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %20 = icmp eq %struct.bzFile* %19, null
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %21
  %25 = load i32*, i32** %3, align 8
  store i32 0, i32* %25, align 4
  br label %26

; <label>:26:                                     ; preds = %24, %21
  %27 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %28 = icmp ne %struct.bzFile* %27, null
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %26
  %30 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %31 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 5
  store i32 0, i32* %31, align 8
  br label %32

; <label>:32:                                     ; preds = %29, %26
  br label %62

; <label>:33:                                     ; preds = %18
  %34 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %35 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 8
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %50

; <label>:38:                                     ; preds = %33
  %39 = load i32*, i32** %3, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %38
  %42 = load i32*, i32** %3, align 8
  store i32 -1, i32* %42, align 4
  br label %43

; <label>:43:                                     ; preds = %41, %38
  %44 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %45 = icmp ne %struct.bzFile* %44, null
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %43
  %47 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 5
  store i32 -1, i32* %48, align 8
  br label %49

; <label>:49:                                     ; preds = %46, %43
  br label %62

; <label>:50:                                     ; preds = %33
  %51 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %52 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %51, i32 0, i32 6
  %53 = load i8, i8* %52, align 4
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %50
  %56 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %57 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %56, i32 0, i32 4
  %58 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %57)
  br label %59

; <label>:59:                                     ; preds = %55, %50
  %60 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %61 = bitcast %struct.bzFile* %60 to i8*
  call void @free(i8* %61) #8
  br label %62

; <label>:62:                                     ; preds = %59, %49, %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.bzFile*
  store %struct.bzFile* %14, %struct.bzFile** %12, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %4
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %17, %4
  %20 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %21 = icmp ne %struct.bzFile* %20, null
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %24 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 0, i32* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %22, %19
  %26 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %27 = icmp eq %struct.bzFile* %26, null
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %46

; <label>:34:                                     ; preds = %31, %28, %25
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = load i32*, i32** %6, align 8
  store i32 -2, i32* %38, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %34
  %40 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %41 = icmp ne %struct.bzFile* %40, null
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %39
  %43 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %44 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %43, i32 0, i32 5
  store i32 -2, i32* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %42, %39
  store i32 0, i32* %5, align 4
  br label %220

; <label>:46:                                     ; preds = %31
  %47 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 3
  %49 = load i8, i8* %48, align 8
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %63

; <label>:51:                                     ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %51
  %55 = load i32*, i32** %6, align 8
  store i32 -1, i32* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %54, %51
  %57 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %58 = icmp ne %struct.bzFile* %57, null
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %56
  %60 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %61 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %60, i32 0, i32 5
  store i32 -1, i32* %61, align 8
  br label %62

; <label>:62:                                     ; preds = %59, %56
  store i32 0, i32* %5, align 4
  br label %220

; <label>:63:                                     ; preds = %46
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

; <label>:66:                                     ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = load i32*, i32** %6, align 8
  store i32 0, i32* %70, align 4
  br label %71

; <label>:71:                                     ; preds = %69, %66
  %72 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %73 = icmp ne %struct.bzFile* %72, null
  br i1 %73, label %74, label %77

; <label>:74:                                     ; preds = %71
  %75 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %76 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %75, i32 0, i32 5
  store i32 0, i32* %76, align 8
  br label %77

; <label>:77:                                     ; preds = %74, %71
  store i32 0, i32* %5, align 4
  br label %220

; <label>:78:                                     ; preds = %63
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %81 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %81, i32 0, i32 5
  store i32 %79, i32* %82, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %85 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %85, i32 0, i32 4
  store i8* %83, i8** %86, align 8
  br label %87

; <label>:87:                                     ; preds = %78, %219
  %88 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %89 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %122

; <label>:93:                                     ; preds = %87
  %94 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %95 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call zeroext i8 @myfeof(i32 %96)
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %122, label %99

; <label>:99:                                     ; preds = %93
  %100 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %101 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %100, i32 0, i32 1
  %102 = getelementptr inbounds [5000 x i8], [5000 x i8]* %101, i32 0, i32 0
  %103 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %104 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @spec_fread(i8* %102, i32 1, i32 5000, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %109 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %111 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %114 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %117 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %116, i32 0, i32 1
  %118 = getelementptr inbounds [5000 x i8], [5000 x i8]* %117, i32 0, i32 0
  %119 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %120 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %122

; <label>:122:                                    ; preds = %99, %93, %87
  %123 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %124 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %123, i32 0, i32 4
  %125 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

; <label>:128:                                    ; preds = %122
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 4
  br i1 %130, label %131, label %145

; <label>:131:                                    ; preds = %128
  %132 = load i32*, i32** %6, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

; <label>:134:                                    ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = load i32*, i32** %6, align 8
  store i32 %135, i32* %136, align 4
  br label %137

; <label>:137:                                    ; preds = %134, %131
  %138 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %139 = icmp ne %struct.bzFile* %138, null
  br i1 %139, label %140, label %144

; <label>:140:                                    ; preds = %137
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %143 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 8
  br label %144

; <label>:144:                                    ; preds = %140, %137
  store i32 0, i32* %5, align 4
  br label %220

; <label>:145:                                    ; preds = %128, %122
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %179

; <label>:148:                                    ; preds = %145
  %149 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %150 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call zeroext i8 @myfeof(i32 %151)
  %153 = zext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %179

; <label>:155:                                    ; preds = %148
  %156 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %157 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %179

; <label>:161:                                    ; preds = %155
  %162 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %163 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = icmp ugt i32 %165, 0
  br i1 %166, label %167, label %179

; <label>:167:                                    ; preds = %161
  %168 = load i32*, i32** %6, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %172

; <label>:170:                                    ; preds = %167
  %171 = load i32*, i32** %6, align 8
  store i32 -7, i32* %171, align 4
  br label %172

; <label>:172:                                    ; preds = %170, %167
  %173 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %174 = icmp ne %struct.bzFile* %173, null
  br i1 %174, label %175, label %178

; <label>:175:                                    ; preds = %172
  %176 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %177 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %176, i32 0, i32 5
  store i32 -7, i32* %177, align 8
  br label %178

; <label>:178:                                    ; preds = %175, %172
  store i32 0, i32* %5, align 4
  br label %220

; <label>:179:                                    ; preds = %161, %155, %148, %145
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %180, 4
  br i1 %181, label %182, label %200

; <label>:182:                                    ; preds = %179
  %183 = load i32*, i32** %6, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %187

; <label>:185:                                    ; preds = %182
  %186 = load i32*, i32** %6, align 8
  store i32 4, i32* %186, align 4
  br label %187

; <label>:187:                                    ; preds = %185, %182
  %188 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %189 = icmp ne %struct.bzFile* %188, null
  br i1 %189, label %190, label %193

; <label>:190:                                    ; preds = %187
  %191 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %192 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %191, i32 0, i32 5
  store i32 4, i32* %192, align 8
  br label %193

; <label>:193:                                    ; preds = %190, %187
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %196 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = sub i32 %194, %198
  store i32 %199, i32* %5, align 4
  br label %220

; <label>:200:                                    ; preds = %179
  %201 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %202 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %219

; <label>:206:                                    ; preds = %200
  %207 = load i32*, i32** %6, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %211

; <label>:209:                                    ; preds = %206
  %210 = load i32*, i32** %6, align 8
  store i32 0, i32* %210, align 4
  br label %211

; <label>:211:                                    ; preds = %209, %206
  %212 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %213 = icmp ne %struct.bzFile* %212, null
  br i1 %213, label %214, label %217

; <label>:214:                                    ; preds = %211
  %215 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %216 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %215, i32 0, i32 5
  store i32 0, i32* %216, align 8
  br label %217

; <label>:217:                                    ; preds = %214, %211
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %5, align 4
  br label %220

; <label>:219:                                    ; preds = %200
  br label %87

; <label>:220:                                    ; preds = %217, %193, %178, %144, %77, %62, %45
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myfeof(i32) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @spec_getc(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i8 1, i8* %2, align 1
  br label %15

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @spec_ungetc(i8 zeroext %12, i32 %13)
  store i8 0, i8* %2, align 1
  br label %15

; <label>:15:                                     ; preds = %10, %9
  %16 = load i8, i8* %2, align 1
  ret i8 %16
}

declare i32 @spec_fread(i8*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bzFile*
  store %struct.bzFile* %11, %struct.bzFile** %9, align 8
  %12 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %13 = icmp eq %struct.bzFile* %12, null
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %14
  %18 = load i32*, i32** %5, align 8
  store i32 -2, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %17, %14
  %20 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %21 = icmp ne %struct.bzFile* %20, null
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %24 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 -2, i32* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %22, %19
  br label %83

; <label>:26:                                     ; preds = %4
  %27 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %28 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 4
  br i1 %30, label %31, label %43

; <label>:31:                                     ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %31
  %35 = load i32*, i32** %5, align 8
  store i32 -1, i32* %35, align 4
  br label %36

; <label>:36:                                     ; preds = %34, %31
  %37 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %38 = icmp ne %struct.bzFile* %37, null
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %36
  %40 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %41 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %40, i32 0, i32 5
  store i32 -1, i32* %41, align 8
  br label %42

; <label>:42:                                     ; preds = %39, %36
  br label %83

; <label>:43:                                     ; preds = %26
  %44 = load i8**, i8*** %7, align 8
  %45 = icmp eq i8** %44, null
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %43
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %61

; <label>:49:                                     ; preds = %46, %43
  %50 = load i32*, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %49
  %53 = load i32*, i32** %5, align 8
  store i32 -2, i32* %53, align 4
  br label %54

; <label>:54:                                     ; preds = %52, %49
  %55 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %56 = icmp ne %struct.bzFile* %55, null
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %54
  %58 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %59 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %58, i32 0, i32 5
  store i32 -2, i32* %59, align 8
  br label %60

; <label>:60:                                     ; preds = %57, %54
  br label %83

; <label>:61:                                     ; preds = %46
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %61
  %65 = load i32*, i32** %5, align 8
  store i32 0, i32* %65, align 4
  br label %66

; <label>:66:                                     ; preds = %64, %61
  %67 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %68 = icmp ne %struct.bzFile* %67, null
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %66
  %70 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %71 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %70, i32 0, i32 5
  store i32 0, i32* %71, align 8
  br label %72

; <label>:72:                                     ; preds = %69, %66
  %73 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %74 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %79 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %7, align 8
  store i8* %81, i8** %82, align 8
  br label %83

; <label>:83:                                     ; preds = %72, %60, %42, %25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzBuffToBuffCompress(i8*, i32*, i8*, i32, i32, i32, i32) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bz_stream, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %44, label %20

; <label>:20:                                     ; preds = %7
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %44, label %23

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %44, label %26

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %44, label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = icmp sgt i32 %30, 9
  br i1 %31, label %44, label %32

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %44, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = icmp sgt i32 %42, 250
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41, %38, %35, %32, %29, %26, %23, %20, %7
  store i32 -2, i32* %8, align 4
  br label %91

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  store i32 30, i32* %15, align 4
  br label %49

; <label>:49:                                     ; preds = %48, %45
  %50 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %50, align 8
  %51 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %51, align 8
  %52 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 11
  store i8* null, i8** %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %16, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %49
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %8, align 4
  br label %91

; <label>:61:                                     ; preds = %49
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 1
  store i32 %66, i32* %67, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 5
  store i32 %69, i32* %70, align 8
  %71 = call i32 @BZ2_bzCompress(%struct.bz_stream* %16, i32 2)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %61
  br label %86

; <label>:75:                                     ; preds = %61
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 4
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %75
  br label %88

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sub i32 %83, %81
  store i32 %84, i32* %82, align 4
  %85 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %16)
  store i32 0, i32* %8, align 4
  br label %91

; <label>:86:                                     ; preds = %74
  %87 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %16)
  store i32 -8, i32* %8, align 4
  br label %91

; <label>:88:                                     ; preds = %78
  %89 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %16)
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %8, align 4
  br label %91

; <label>:91:                                     ; preds = %88, %86, %79, %59, %44
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzBuffToBuffDecompress(i8*, i32*, i8*, i32, i32, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bz_stream, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %36, label %18

; <label>:18:                                     ; preds = %6
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %36, label %21

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %36, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %27, %24
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33, %30, %27, %21, %18, %6
  store i32 -2, i32* %7, align 4
  br label %84

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %38, align 8
  %39 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %39, align 8
  %40 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 11
  store i8* null, i8** %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %14, i32 %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %37
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %7, align 4
  br label %84

; <label>:48:                                     ; preds = %37
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 5
  store i32 %56, i32* %57, align 8
  %58 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %14)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %48
  br label %73

; <label>:62:                                     ; preds = %48
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 4
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %62
  br label %81

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %14)
  store i32 0, i32* %7, align 4
  br label %84

; <label>:73:                                     ; preds = %61
  %74 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %73
  %78 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %14)
  store i32 -7, i32* %7, align 4
  br label %84

; <label>:79:                                     ; preds = %73
  %80 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %14)
  store i32 -8, i32* %7, align 4
  br label %84

; <label>:81:                                     ; preds = %65
  %82 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %14)
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %7, align 4
  br label %84

; <label>:84:                                     ; preds = %81, %79, %77, %66, %46, %36
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @BZ2_bzopen(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @bzopen_or_bzdopen(i8* %5, i32 -1, i8* %6, i32 0)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bzopen_or_bzdopen(i8*, i32, i8*, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5000 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [10 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 9, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = bitcast [10 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 10, i32 1, i1 false)
  store i32 0, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 30, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %4
  store i8* null, i8** %5, align 8
  br label %125

; <label>:25:                                     ; preds = %4
  br label %26

; <label>:26:                                     ; preds = %55, %25
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %58

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %37 [
    i32 114, label %34
    i32 119, label %35
    i32 115, label %36
  ]

; <label>:34:                                     ; preds = %30
  store i32 0, i32* %13, align 4
  br label %55

; <label>:35:                                     ; preds = %30
  store i32 1, i32* %13, align 4
  br label %55

; <label>:36:                                     ; preds = %30
  store i32 1, i32* %19, align 4
  br label %55

; <label>:37:                                     ; preds = %30
  %38 = call i16** @__ctype_b_loc() #9
  %39 = load i16*, i16** %38, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %39, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 2048
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %37
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = sub nsw i32 %52, 48
  store i32 %53, i32* %12, align 4
  br label %54

; <label>:54:                                     ; preds = %49, %37
  br label %55

; <label>:55:                                     ; preds = %54, %36, %35, %34
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  br label %26

; <label>:58:                                     ; preds = %26
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i32 0, i32 0
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)
  %64 = call i8* @strcat(i8* %59, i8* %63) #8
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i32 0, i32 0
  %66 = call i8* @strcat(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #8
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %83

; <label>:69:                                     ; preds = %58
  %70 = load i8*, i8** %6, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %76, label %72

; <label>:72:                                     ; preds = %69
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

; <label>:76:                                     ; preds = %72, %69
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  store i32 %80, i32* %15, align 4
  br label %82

; <label>:81:                                     ; preds = %72
  store i32 0, i32* %15, align 4
  br label %82

; <label>:82:                                     ; preds = %81, %76
  br label %84

; <label>:83:                                     ; preds = %58
  store i32 0, i32* %15, align 4
  br label %84

; <label>:84:                                     ; preds = %83, %82
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %84
  store i8* null, i8** %5, align 8
  br label %125

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %91
  store i32 1, i32* %12, align 4
  br label %95

; <label>:95:                                     ; preds = %94, %91
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %96, 9
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %95
  store i32 9, i32* %12, align 4
  br label %99

; <label>:99:                                     ; preds = %98, %95
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i8* @BZ2_bzWriteOpen(i32* %10, i32 %100, i32 %101, i32 %102, i32 %103)
  store i8* %104, i8** %16, align 8
  br label %112

; <label>:105:                                    ; preds = %88
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %19, align 4
  %109 = getelementptr inbounds [5000 x i8], [5000 x i8]* %11, i32 0, i32 0
  %110 = load i32, i32* %20, align 4
  %111 = call i8* @BZ2_bzReadOpen(i32* %10, i32 %106, i32 %107, i32 %108, i8* %109, i32 %110)
  store i8* %111, i8** %16, align 8
  br label %112

; <label>:112:                                    ; preds = %105, %99
  %113 = load i8*, i8** %16, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %123

; <label>:115:                                    ; preds = %112
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

; <label>:118:                                    ; preds = %115
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %118
  br label %122

; <label>:122:                                    ; preds = %121, %118, %115
  store i8* null, i8** %5, align 8
  br label %125

; <label>:123:                                    ; preds = %112
  %124 = load i8*, i8** %16, align 8
  store i8* %124, i8** %5, align 8
  br label %125

; <label>:125:                                    ; preds = %123, %122, %87, %24
  %126 = load i8*, i8** %5, align 8
  ret i8* %126
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @BZ2_bzdopen(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @bzopen_or_bzdopen(i8* null, i32 %5, i8* %6, i32 1)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzread(i8*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bzFile*
  %12 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @BZ2_bzRead(i32* %8, i8* %17, i8* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %23, %16
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %29

; <label>:28:                                     ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %26, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzwrite(i8*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  call void @BZ2_bzWrite(i32* %8, i8* %9, i8* %10, i32 %11)
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %4, align 4
  br label %17

; <label>:16:                                     ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %17

; <label>:17:                                     ; preds = %16, %14
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @BZ2_bzflush(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define void @BZ2_bzclose(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bzFile*
  %7 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  br label %34

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.bzFile*
  %15 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %14, i32 0, i32 3
  %16 = load i8, i8* %15, align 8
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %2, align 8
  call void @BZ2_bzWriteClose(i32* %3, i8* %19, i32 0, i32* null, i32* null)
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %2, align 8
  call void @BZ2_bzWriteClose(i32* null, i8* %23, i32 1, i32* null, i32* null)
  br label %24

; <label>:24:                                     ; preds = %22, %18
  br label %27

; <label>:25:                                     ; preds = %12
  %26 = load i8*, i8** %2, align 8
  call void @BZ2_bzReadClose(i32* %3, i8* %26)
  br label %27

; <label>:27:                                     ; preds = %25, %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  br label %34

; <label>:34:                                     ; preds = %11, %33, %30, %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @BZ2_bzerror(i8*, i32*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bzFile*
  %8 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

; <label>:13:                                     ; preds = %12, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i8*], [16 x i8*]* @bzerrorstrings, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @copy_output_until_stop(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  %3 = alloca i8, align 1
  store %struct.EState* %0, %struct.EState** %2, align 8
  store i8 0, i8* %3, align 1
  br label %4

; <label>:4:                                      ; preds = %1, %71
  %5 = load %struct.EState*, %struct.EState** %2, align 8
  %6 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 0
  %7 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %8 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %4
  br label %72

; <label>:12:                                     ; preds = %4
  %13 = load %struct.EState*, %struct.EState** %2, align 8
  %14 = getelementptr inbounds %struct.EState, %struct.EState* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.EState*, %struct.EState** %2, align 8
  %17 = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %12
  br label %72

; <label>:21:                                     ; preds = %12
  store i8 1, i8* %3, align 1
  %22 = load %struct.EState*, %struct.EState** %2, align 8
  %23 = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 11
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.EState*, %struct.EState** %2, align 8
  %26 = getelementptr inbounds %struct.EState, %struct.EState* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.EState*, %struct.EState** %2, align 8
  %32 = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 0
  %33 = load %struct.bz_stream*, %struct.bz_stream** %32, align 8
  %34 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  store i8 %30, i8* %35, align 1
  %36 = load %struct.EState*, %struct.EState** %2, align 8
  %37 = getelementptr inbounds %struct.EState, %struct.EState* %36, i32 0, i32 20
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.EState*, %struct.EState** %2, align 8
  %41 = getelementptr inbounds %struct.EState, %struct.EState* %40, i32 0, i32 0
  %42 = load %struct.bz_stream*, %struct.bz_stream** %41, align 8
  %43 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, -1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.EState*, %struct.EState** %2, align 8
  %47 = getelementptr inbounds %struct.EState, %struct.EState* %46, i32 0, i32 0
  %48 = load %struct.bz_stream*, %struct.bz_stream** %47, align 8
  %49 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %49, align 8
  %52 = load %struct.EState*, %struct.EState** %2, align 8
  %53 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 0
  %54 = load %struct.bz_stream*, %struct.bz_stream** %53, align 8
  %55 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.EState*, %struct.EState** %2, align 8
  %59 = getelementptr inbounds %struct.EState, %struct.EState* %58, i32 0, i32 0
  %60 = load %struct.bz_stream*, %struct.bz_stream** %59, align 8
  %61 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

; <label>:64:                                     ; preds = %21
  %65 = load %struct.EState*, %struct.EState** %2, align 8
  %66 = getelementptr inbounds %struct.EState, %struct.EState* %65, i32 0, i32 0
  %67 = load %struct.bz_stream*, %struct.bz_stream** %66, align 8
  %68 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = add i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

; <label>:71:                                     ; preds = %64, %21
  br label %4

; <label>:72:                                     ; preds = %20, %11
  %73 = load i8, i8* %3, align 1
  ret i8 %73
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @copy_input_until_stop(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.EState* %0, %struct.EState** %2, align 8
  store i8 0, i8* %3, align 1
  %8 = load %struct.EState*, %struct.EState** %2, align 8
  %9 = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %157

; <label>:12:                                     ; preds = %1
  br label %13

; <label>:13:                                     ; preds = %12, %155
  %14 = load %struct.EState*, %struct.EState** %2, align 8
  %15 = getelementptr inbounds %struct.EState, %struct.EState* %14, i32 0, i32 17
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.EState*, %struct.EState** %2, align 8
  %18 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 18
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %13
  br label %156

; <label>:22:                                     ; preds = %13
  %23 = load %struct.EState*, %struct.EState** %2, align 8
  %24 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 0
  %25 = load %struct.bz_stream*, %struct.bz_stream** %24, align 8
  %26 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %22
  br label %156

; <label>:30:                                     ; preds = %22
  store i8 1, i8* %3, align 1
  %31 = load %struct.EState*, %struct.EState** %2, align 8
  %32 = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 0
  %33 = load %struct.bz_stream*, %struct.bz_stream** %32, align 8
  %34 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.EState*, %struct.EState** %2, align 8
  %40 = getelementptr inbounds %struct.EState, %struct.EState* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %93

; <label>:43:                                     ; preds = %30
  %44 = load %struct.EState*, %struct.EState** %2, align 8
  %45 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %93

; <label>:48:                                     ; preds = %43
  %49 = load %struct.EState*, %struct.EState** %2, align 8
  %50 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %5, align 1
  %53 = load %struct.EState*, %struct.EState** %2, align 8
  %54 = getelementptr inbounds %struct.EState, %struct.EState* %53, i32 0, i32 26
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 8
  %57 = load %struct.EState*, %struct.EState** %2, align 8
  %58 = getelementptr inbounds %struct.EState, %struct.EState* %57, i32 0, i32 26
  %59 = load i32, i32* %58, align 8
  %60 = lshr i32 %59, 24
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = xor i32 %60, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %56, %66
  %68 = load %struct.EState*, %struct.EState** %2, align 8
  %69 = getelementptr inbounds %struct.EState, %struct.EState* %68, i32 0, i32 26
  store i32 %67, i32* %69, align 8
  %70 = load %struct.EState*, %struct.EState** %2, align 8
  %71 = getelementptr inbounds %struct.EState, %struct.EState* %70, i32 0, i32 22
  %72 = load %struct.EState*, %struct.EState** %2, align 8
  %73 = getelementptr inbounds %struct.EState, %struct.EState* %72, i32 0, i32 13
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %71, i64 0, i64 %75
  store i8 1, i8* %76, align 1
  %77 = load i8, i8* %5, align 1
  %78 = load %struct.EState*, %struct.EState** %2, align 8
  %79 = getelementptr inbounds %struct.EState, %struct.EState* %78, i32 0, i32 9
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.EState*, %struct.EState** %2, align 8
  %82 = getelementptr inbounds %struct.EState, %struct.EState* %81, i32 0, i32 17
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 %77, i8* %85, align 1
  %86 = load %struct.EState*, %struct.EState** %2, align 8
  %87 = getelementptr inbounds %struct.EState, %struct.EState* %86, i32 0, i32 17
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.EState*, %struct.EState** %2, align 8
  %92 = getelementptr inbounds %struct.EState, %struct.EState* %91, i32 0, i32 13
  store i32 %90, i32* %92, align 4
  br label %123

; <label>:93:                                     ; preds = %43, %30
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.EState*, %struct.EState** %2, align 8
  %96 = getelementptr inbounds %struct.EState, %struct.EState* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %104, label %99

; <label>:99:                                     ; preds = %93
  %100 = load %struct.EState*, %struct.EState** %2, align 8
  %101 = getelementptr inbounds %struct.EState, %struct.EState* %100, i32 0, i32 14
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %104, label %117

; <label>:104:                                    ; preds = %99, %93
  %105 = load %struct.EState*, %struct.EState** %2, align 8
  %106 = getelementptr inbounds %struct.EState, %struct.EState* %105, i32 0, i32 13
  %107 = load i32, i32* %106, align 4
  %108 = icmp ult i32 %107, 256
  br i1 %108, label %109, label %111

; <label>:109:                                    ; preds = %104
  %110 = load %struct.EState*, %struct.EState** %2, align 8
  call void @add_pair_to_block(%struct.EState* %110)
  br label %111

; <label>:111:                                    ; preds = %109, %104
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.EState*, %struct.EState** %2, align 8
  %114 = getelementptr inbounds %struct.EState, %struct.EState* %113, i32 0, i32 13
  store i32 %112, i32* %114, align 4
  %115 = load %struct.EState*, %struct.EState** %2, align 8
  %116 = getelementptr inbounds %struct.EState, %struct.EState* %115, i32 0, i32 14
  store i32 1, i32* %116, align 8
  br label %122

; <label>:117:                                    ; preds = %99
  %118 = load %struct.EState*, %struct.EState** %2, align 8
  %119 = getelementptr inbounds %struct.EState, %struct.EState* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

; <label>:122:                                    ; preds = %117, %111
  br label %123

; <label>:123:                                    ; preds = %122, %48
  %124 = load %struct.EState*, %struct.EState** %2, align 8
  %125 = getelementptr inbounds %struct.EState, %struct.EState* %124, i32 0, i32 0
  %126 = load %struct.bz_stream*, %struct.bz_stream** %125, align 8
  %127 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %127, align 8
  %130 = load %struct.EState*, %struct.EState** %2, align 8
  %131 = getelementptr inbounds %struct.EState, %struct.EState* %130, i32 0, i32 0
  %132 = load %struct.bz_stream*, %struct.bz_stream** %131, align 8
  %133 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = add i32 %134, -1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.EState*, %struct.EState** %2, align 8
  %137 = getelementptr inbounds %struct.EState, %struct.EState* %136, i32 0, i32 0
  %138 = load %struct.bz_stream*, %struct.bz_stream** %137, align 8
  %139 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.EState*, %struct.EState** %2, align 8
  %143 = getelementptr inbounds %struct.EState, %struct.EState* %142, i32 0, i32 0
  %144 = load %struct.bz_stream*, %struct.bz_stream** %143, align 8
  %145 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

; <label>:148:                                    ; preds = %123
  %149 = load %struct.EState*, %struct.EState** %2, align 8
  %150 = getelementptr inbounds %struct.EState, %struct.EState* %149, i32 0, i32 0
  %151 = load %struct.bz_stream*, %struct.bz_stream** %150, align 8
  %152 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = add i32 %153, 1
  store i32 %154, i32* %152, align 8
  br label %155

; <label>:155:                                    ; preds = %148, %123
  br label %13

; <label>:156:                                    ; preds = %29, %21
  br label %312

; <label>:157:                                    ; preds = %1
  br label %158

; <label>:158:                                    ; preds = %157, %306
  %159 = load %struct.EState*, %struct.EState** %2, align 8
  %160 = getelementptr inbounds %struct.EState, %struct.EState* %159, i32 0, i32 17
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.EState*, %struct.EState** %2, align 8
  %163 = getelementptr inbounds %struct.EState, %struct.EState* %162, i32 0, i32 18
  %164 = load i32, i32* %163, align 8
  %165 = icmp sge i32 %161, %164
  br i1 %165, label %166, label %167

; <label>:166:                                    ; preds = %158
  br label %311

; <label>:167:                                    ; preds = %158
  %168 = load %struct.EState*, %struct.EState** %2, align 8
  %169 = getelementptr inbounds %struct.EState, %struct.EState* %168, i32 0, i32 0
  %170 = load %struct.bz_stream*, %struct.bz_stream** %169, align 8
  %171 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

; <label>:174:                                    ; preds = %167
  br label %311

; <label>:175:                                    ; preds = %167
  %176 = load %struct.EState*, %struct.EState** %2, align 8
  %177 = getelementptr inbounds %struct.EState, %struct.EState* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

; <label>:180:                                    ; preds = %175
  br label %311

; <label>:181:                                    ; preds = %175
  store i8 1, i8* %3, align 1
  %182 = load %struct.EState*, %struct.EState** %2, align 8
  %183 = getelementptr inbounds %struct.EState, %struct.EState* %182, i32 0, i32 0
  %184 = load %struct.bz_stream*, %struct.bz_stream** %183, align 8
  %185 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.EState*, %struct.EState** %2, align 8
  %191 = getelementptr inbounds %struct.EState, %struct.EState* %190, i32 0, i32 13
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %244

; <label>:194:                                    ; preds = %181
  %195 = load %struct.EState*, %struct.EState** %2, align 8
  %196 = getelementptr inbounds %struct.EState, %struct.EState* %195, i32 0, i32 14
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %244

; <label>:199:                                    ; preds = %194
  %200 = load %struct.EState*, %struct.EState** %2, align 8
  %201 = getelementptr inbounds %struct.EState, %struct.EState* %200, i32 0, i32 13
  %202 = load i32, i32* %201, align 4
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %7, align 1
  %204 = load %struct.EState*, %struct.EState** %2, align 8
  %205 = getelementptr inbounds %struct.EState, %struct.EState* %204, i32 0, i32 26
  %206 = load i32, i32* %205, align 8
  %207 = shl i32 %206, 8
  %208 = load %struct.EState*, %struct.EState** %2, align 8
  %209 = getelementptr inbounds %struct.EState, %struct.EState* %208, i32 0, i32 26
  %210 = load i32, i32* %209, align 8
  %211 = lshr i32 %210, 24
  %212 = load i8, i8* %7, align 1
  %213 = zext i8 %212 to i32
  %214 = xor i32 %211, %213
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = xor i32 %207, %217
  %219 = load %struct.EState*, %struct.EState** %2, align 8
  %220 = getelementptr inbounds %struct.EState, %struct.EState* %219, i32 0, i32 26
  store i32 %218, i32* %220, align 8
  %221 = load %struct.EState*, %struct.EState** %2, align 8
  %222 = getelementptr inbounds %struct.EState, %struct.EState* %221, i32 0, i32 22
  %223 = load %struct.EState*, %struct.EState** %2, align 8
  %224 = getelementptr inbounds %struct.EState, %struct.EState* %223, i32 0, i32 13
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* %222, i64 0, i64 %226
  store i8 1, i8* %227, align 1
  %228 = load i8, i8* %7, align 1
  %229 = load %struct.EState*, %struct.EState** %2, align 8
  %230 = getelementptr inbounds %struct.EState, %struct.EState* %229, i32 0, i32 9
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.EState*, %struct.EState** %2, align 8
  %233 = getelementptr inbounds %struct.EState, %struct.EState* %232, i32 0, i32 17
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %231, i64 %235
  store i8 %228, i8* %236, align 1
  %237 = load %struct.EState*, %struct.EState** %2, align 8
  %238 = getelementptr inbounds %struct.EState, %struct.EState* %237, i32 0, i32 17
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %6, align 4
  %242 = load %struct.EState*, %struct.EState** %2, align 8
  %243 = getelementptr inbounds %struct.EState, %struct.EState* %242, i32 0, i32 13
  store i32 %241, i32* %243, align 4
  br label %274

; <label>:244:                                    ; preds = %194, %181
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.EState*, %struct.EState** %2, align 8
  %247 = getelementptr inbounds %struct.EState, %struct.EState* %246, i32 0, i32 13
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %245, %248
  br i1 %249, label %255, label %250

; <label>:250:                                    ; preds = %244
  %251 = load %struct.EState*, %struct.EState** %2, align 8
  %252 = getelementptr inbounds %struct.EState, %struct.EState* %251, i32 0, i32 14
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 255
  br i1 %254, label %255, label %268

; <label>:255:                                    ; preds = %250, %244
  %256 = load %struct.EState*, %struct.EState** %2, align 8
  %257 = getelementptr inbounds %struct.EState, %struct.EState* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 4
  %259 = icmp ult i32 %258, 256
  br i1 %259, label %260, label %262

; <label>:260:                                    ; preds = %255
  %261 = load %struct.EState*, %struct.EState** %2, align 8
  call void @add_pair_to_block(%struct.EState* %261)
  br label %262

; <label>:262:                                    ; preds = %260, %255
  %263 = load i32, i32* %6, align 4
  %264 = load %struct.EState*, %struct.EState** %2, align 8
  %265 = getelementptr inbounds %struct.EState, %struct.EState* %264, i32 0, i32 13
  store i32 %263, i32* %265, align 4
  %266 = load %struct.EState*, %struct.EState** %2, align 8
  %267 = getelementptr inbounds %struct.EState, %struct.EState* %266, i32 0, i32 14
  store i32 1, i32* %267, align 8
  br label %273

; <label>:268:                                    ; preds = %250
  %269 = load %struct.EState*, %struct.EState** %2, align 8
  %270 = getelementptr inbounds %struct.EState, %struct.EState* %269, i32 0, i32 14
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  br label %273

; <label>:273:                                    ; preds = %268, %262
  br label %274

; <label>:274:                                    ; preds = %273, %199
  %275 = load %struct.EState*, %struct.EState** %2, align 8
  %276 = getelementptr inbounds %struct.EState, %struct.EState* %275, i32 0, i32 0
  %277 = load %struct.bz_stream*, %struct.bz_stream** %276, align 8
  %278 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %278, align 8
  %281 = load %struct.EState*, %struct.EState** %2, align 8
  %282 = getelementptr inbounds %struct.EState, %struct.EState* %281, i32 0, i32 0
  %283 = load %struct.bz_stream*, %struct.bz_stream** %282, align 8
  %284 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = add i32 %285, -1
  store i32 %286, i32* %284, align 8
  %287 = load %struct.EState*, %struct.EState** %2, align 8
  %288 = getelementptr inbounds %struct.EState, %struct.EState* %287, i32 0, i32 0
  %289 = load %struct.bz_stream*, %struct.bz_stream** %288, align 8
  %290 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %290, align 4
  %293 = load %struct.EState*, %struct.EState** %2, align 8
  %294 = getelementptr inbounds %struct.EState, %struct.EState* %293, i32 0, i32 0
  %295 = load %struct.bz_stream*, %struct.bz_stream** %294, align 8
  %296 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %306

; <label>:299:                                    ; preds = %274
  %300 = load %struct.EState*, %struct.EState** %2, align 8
  %301 = getelementptr inbounds %struct.EState, %struct.EState* %300, i32 0, i32 0
  %302 = load %struct.bz_stream*, %struct.bz_stream** %301, align 8
  %303 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = add i32 %304, 1
  store i32 %305, i32* %303, align 8
  br label %306

; <label>:306:                                    ; preds = %299, %274
  %307 = load %struct.EState*, %struct.EState** %2, align 8
  %308 = getelementptr inbounds %struct.EState, %struct.EState* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = add i32 %309, -1
  store i32 %310, i32* %308, align 8
  br label %158

; <label>:311:                                    ; preds = %180, %174, %166
  br label %312

; <label>:312:                                    ; preds = %311, %156
  %313 = load i8, i8* %3, align 1
  ret i8 %313
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_RL(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  store %struct.EState* %0, %struct.EState** %2, align 8
  %3 = load %struct.EState*, %struct.EState** %2, align 8
  %4 = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 13
  %5 = load i32, i32* %4, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load %struct.EState*, %struct.EState** %2, align 8
  call void @add_pair_to_block(%struct.EState* %8)
  br label %9

; <label>:9:                                      ; preds = %7, %1
  %10 = load %struct.EState*, %struct.EState** %2, align 8
  call void @init_RL(%struct.EState* %10)
  ret void
}

declare void @BZ2_compressBlock(%struct.EState*, i8 zeroext) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pair_to_block(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.EState* %0, %struct.EState** %2, align 8
  %5 = load %struct.EState*, %struct.EState** %2, align 8
  %6 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 13
  %7 = load i32, i32* %6, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %4, align 1
  store i32 0, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %33, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.EState*, %struct.EState** %2, align 8
  %12 = getelementptr inbounds %struct.EState, %struct.EState* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %36

; <label>:15:                                     ; preds = %9
  %16 = load %struct.EState*, %struct.EState** %2, align 8
  %17 = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 26
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 8
  %20 = load %struct.EState*, %struct.EState** %2, align 8
  %21 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 26
  %22 = load i32, i32* %21, align 8
  %23 = lshr i32 %22, 24
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %23, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %19, %29
  %31 = load %struct.EState*, %struct.EState** %2, align 8
  %32 = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 26
  store i32 %30, i32* %32, align 8
  br label %33

; <label>:33:                                     ; preds = %15
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %9

; <label>:36:                                     ; preds = %9
  %37 = load %struct.EState*, %struct.EState** %2, align 8
  %38 = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 22
  %39 = load %struct.EState*, %struct.EState** %2, align 8
  %40 = getelementptr inbounds %struct.EState, %struct.EState* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 %42
  store i8 1, i8* %43, align 1
  %44 = load %struct.EState*, %struct.EState** %2, align 8
  %45 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %128 [
    i32 1, label %47
    i32 2, label %61
    i32 3, label %88
  ]

; <label>:47:                                     ; preds = %36
  %48 = load i8, i8* %4, align 1
  %49 = load %struct.EState*, %struct.EState** %2, align 8
  %50 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 9
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.EState*, %struct.EState** %2, align 8
  %53 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 17
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  store i8 %48, i8* %56, align 1
  %57 = load %struct.EState*, %struct.EState** %2, align 8
  %58 = getelementptr inbounds %struct.EState, %struct.EState* %57, i32 0, i32 17
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %206

; <label>:61:                                     ; preds = %36
  %62 = load i8, i8* %4, align 1
  %63 = load %struct.EState*, %struct.EState** %2, align 8
  %64 = getelementptr inbounds %struct.EState, %struct.EState* %63, i32 0, i32 9
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.EState*, %struct.EState** %2, align 8
  %67 = getelementptr inbounds %struct.EState, %struct.EState* %66, i32 0, i32 17
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8 %62, i8* %70, align 1
  %71 = load %struct.EState*, %struct.EState** %2, align 8
  %72 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 17
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i8, i8* %4, align 1
  %76 = load %struct.EState*, %struct.EState** %2, align 8
  %77 = getelementptr inbounds %struct.EState, %struct.EState* %76, i32 0, i32 9
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.EState*, %struct.EState** %2, align 8
  %80 = getelementptr inbounds %struct.EState, %struct.EState* %79, i32 0, i32 17
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  store i8 %75, i8* %83, align 1
  %84 = load %struct.EState*, %struct.EState** %2, align 8
  %85 = getelementptr inbounds %struct.EState, %struct.EState* %84, i32 0, i32 17
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %206

; <label>:88:                                     ; preds = %36
  %89 = load i8, i8* %4, align 1
  %90 = load %struct.EState*, %struct.EState** %2, align 8
  %91 = getelementptr inbounds %struct.EState, %struct.EState* %90, i32 0, i32 9
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.EState*, %struct.EState** %2, align 8
  %94 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 17
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  store i8 %89, i8* %97, align 1
  %98 = load %struct.EState*, %struct.EState** %2, align 8
  %99 = getelementptr inbounds %struct.EState, %struct.EState* %98, i32 0, i32 17
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i8, i8* %4, align 1
  %103 = load %struct.EState*, %struct.EState** %2, align 8
  %104 = getelementptr inbounds %struct.EState, %struct.EState* %103, i32 0, i32 9
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.EState*, %struct.EState** %2, align 8
  %107 = getelementptr inbounds %struct.EState, %struct.EState* %106, i32 0, i32 17
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  store i8 %102, i8* %110, align 1
  %111 = load %struct.EState*, %struct.EState** %2, align 8
  %112 = getelementptr inbounds %struct.EState, %struct.EState* %111, i32 0, i32 17
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load i8, i8* %4, align 1
  %116 = load %struct.EState*, %struct.EState** %2, align 8
  %117 = getelementptr inbounds %struct.EState, %struct.EState* %116, i32 0, i32 9
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.EState*, %struct.EState** %2, align 8
  %120 = getelementptr inbounds %struct.EState, %struct.EState* %119, i32 0, i32 17
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  store i8 %115, i8* %123, align 1
  %124 = load %struct.EState*, %struct.EState** %2, align 8
  %125 = getelementptr inbounds %struct.EState, %struct.EState* %124, i32 0, i32 17
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %206

; <label>:128:                                    ; preds = %36
  %129 = load %struct.EState*, %struct.EState** %2, align 8
  %130 = getelementptr inbounds %struct.EState, %struct.EState* %129, i32 0, i32 22
  %131 = load %struct.EState*, %struct.EState** %2, align 8
  %132 = getelementptr inbounds %struct.EState, %struct.EState* %131, i32 0, i32 14
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %130, i64 0, i64 %135
  store i8 1, i8* %136, align 1
  %137 = load i8, i8* %4, align 1
  %138 = load %struct.EState*, %struct.EState** %2, align 8
  %139 = getelementptr inbounds %struct.EState, %struct.EState* %138, i32 0, i32 9
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.EState*, %struct.EState** %2, align 8
  %142 = getelementptr inbounds %struct.EState, %struct.EState* %141, i32 0, i32 17
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  store i8 %137, i8* %145, align 1
  %146 = load %struct.EState*, %struct.EState** %2, align 8
  %147 = getelementptr inbounds %struct.EState, %struct.EState* %146, i32 0, i32 17
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load i8, i8* %4, align 1
  %151 = load %struct.EState*, %struct.EState** %2, align 8
  %152 = getelementptr inbounds %struct.EState, %struct.EState* %151, i32 0, i32 9
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.EState*, %struct.EState** %2, align 8
  %155 = getelementptr inbounds %struct.EState, %struct.EState* %154, i32 0, i32 17
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  store i8 %150, i8* %158, align 1
  %159 = load %struct.EState*, %struct.EState** %2, align 8
  %160 = getelementptr inbounds %struct.EState, %struct.EState* %159, i32 0, i32 17
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load i8, i8* %4, align 1
  %164 = load %struct.EState*, %struct.EState** %2, align 8
  %165 = getelementptr inbounds %struct.EState, %struct.EState* %164, i32 0, i32 9
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.EState*, %struct.EState** %2, align 8
  %168 = getelementptr inbounds %struct.EState, %struct.EState* %167, i32 0, i32 17
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %166, i64 %170
  store i8 %163, i8* %171, align 1
  %172 = load %struct.EState*, %struct.EState** %2, align 8
  %173 = getelementptr inbounds %struct.EState, %struct.EState* %172, i32 0, i32 17
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load i8, i8* %4, align 1
  %177 = load %struct.EState*, %struct.EState** %2, align 8
  %178 = getelementptr inbounds %struct.EState, %struct.EState* %177, i32 0, i32 9
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.EState*, %struct.EState** %2, align 8
  %181 = getelementptr inbounds %struct.EState, %struct.EState* %180, i32 0, i32 17
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %179, i64 %183
  store i8 %176, i8* %184, align 1
  %185 = load %struct.EState*, %struct.EState** %2, align 8
  %186 = getelementptr inbounds %struct.EState, %struct.EState* %185, i32 0, i32 17
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.EState*, %struct.EState** %2, align 8
  %190 = getelementptr inbounds %struct.EState, %struct.EState* %189, i32 0, i32 14
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = load %struct.EState*, %struct.EState** %2, align 8
  %195 = getelementptr inbounds %struct.EState, %struct.EState* %194, i32 0, i32 9
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.EState*, %struct.EState** %2, align 8
  %198 = getelementptr inbounds %struct.EState, %struct.EState* %197, i32 0, i32 17
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %196, i64 %200
  store i8 %193, i8* %201, align 1
  %202 = load %struct.EState*, %struct.EState** %2, align 8
  %203 = getelementptr inbounds %struct.EState, %struct.EState* %202, i32 0, i32 17
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  br label %206

; <label>:206:                                    ; preds = %128, %88, %61, %47
  ret void
}

declare i32 @spec_getc(i32) #1

declare i32 @spec_ungetc(i8 zeroext, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
