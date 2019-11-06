; ModuleID = 'readmin.c'
source_filename = "readmin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"read_min(): not enough memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @read_min(%struct.network*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.network*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [201 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.arc*, align 8
  %11 = alloca %struct.node*, align 8
  store %struct.network* %0, %struct.network** %3, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8
  %12 = load %struct.network*, %struct.network** %3, align 8
  %13 = getelementptr inbounds %struct.network, %struct.network* %12, i32 0, i32 0
  %14 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i32 0, i32 0
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %4, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %530

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds [201 x i8], [201 x i8]* %5, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %21 = call i8* @fgets(i8* %19, i32 200, %struct._IO_FILE* %20)
  %22 = getelementptr inbounds [201 x i8], [201 x i8]* %5, i32 0, i32 0
  %23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64* %6, i64* %7) #3
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %18
  store i64 -1, i64* %2, align 8
  br label %530

; <label>:26:                                     ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.network*, %struct.network** %3, align 8
  %29 = getelementptr inbounds %struct.network, %struct.network* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.network*, %struct.network** %3, align 8
  %32 = getelementptr inbounds %struct.network, %struct.network* %31, i32 0, i32 6
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %33, %34
  %36 = add nsw i64 %35, 1
  %37 = load %struct.network*, %struct.network** %3, align 8
  %38 = getelementptr inbounds %struct.network, %struct.network* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.network*, %struct.network** %3, align 8
  %47 = getelementptr inbounds %struct.network, %struct.network* %46, i32 0, i32 5
  store i64 %45, i64* %47, align 8
  %48 = load %struct.network*, %struct.network** %3, align 8
  %49 = getelementptr inbounds %struct.network, %struct.network* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %50, 15000
  br i1 %51, label %52, label %60

; <label>:52:                                     ; preds = %26
  %53 = load %struct.network*, %struct.network** %3, align 8
  %54 = getelementptr inbounds %struct.network, %struct.network* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.network*, %struct.network** %3, align 8
  %57 = getelementptr inbounds %struct.network, %struct.network* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = load %struct.network*, %struct.network** %3, align 8
  %59 = getelementptr inbounds %struct.network, %struct.network* %58, i32 0, i32 9
  store i64 3000000, i64* %59, align 8
  br label %65

; <label>:60:                                     ; preds = %26
  %61 = load %struct.network*, %struct.network** %3, align 8
  %62 = getelementptr inbounds %struct.network, %struct.network* %61, i32 0, i32 4
  store i64 27328512, i64* %62, align 8
  %63 = load %struct.network*, %struct.network** %3, align 8
  %64 = getelementptr inbounds %struct.network, %struct.network* %63, i32 0, i32 9
  store i64 28900000, i64* %64, align 8
  br label %65

; <label>:65:                                     ; preds = %60, %52
  %66 = load %struct.network*, %struct.network** %3, align 8
  %67 = getelementptr inbounds %struct.network, %struct.network* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.network*, %struct.network** %3, align 8
  %70 = getelementptr inbounds %struct.network, %struct.network* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load %struct.network*, %struct.network** %3, align 8
  %74 = getelementptr inbounds %struct.network, %struct.network* %73, i32 0, i32 8
  store i64 %72, i64* %74, align 8
  %75 = load %struct.network*, %struct.network** %3, align 8
  %76 = getelementptr inbounds %struct.network, %struct.network* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  %79 = call noalias i8* @calloc(i64 %78, i64 104) #3
  %80 = bitcast i8* %79 to %struct.node*
  %81 = load %struct.network*, %struct.network** %3, align 8
  %82 = getelementptr inbounds %struct.network, %struct.network* %81, i32 0, i32 21
  store %struct.node* %80, %struct.node** %82, align 8
  %83 = load %struct.network*, %struct.network** %3, align 8
  %84 = getelementptr inbounds %struct.network, %struct.network* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call noalias i8* @calloc(i64 %85, i64 64) #3
  %87 = bitcast i8* %86 to %struct.arc*
  %88 = load %struct.network*, %struct.network** %3, align 8
  %89 = getelementptr inbounds %struct.network, %struct.network* %88, i32 0, i32 25
  store %struct.arc* %87, %struct.arc** %89, align 8
  %90 = load %struct.network*, %struct.network** %3, align 8
  %91 = getelementptr inbounds %struct.network, %struct.network* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = call noalias i8* @calloc(i64 %92, i64 64) #3
  %94 = bitcast i8* %93 to %struct.arc*
  %95 = load %struct.network*, %struct.network** %3, align 8
  %96 = getelementptr inbounds %struct.network, %struct.network* %95, i32 0, i32 23
  store %struct.arc* %94, %struct.arc** %96, align 8
  %97 = load %struct.network*, %struct.network** %3, align 8
  %98 = getelementptr inbounds %struct.network, %struct.network* %97, i32 0, i32 21
  %99 = load %struct.node*, %struct.node** %98, align 8
  %100 = icmp ne %struct.node* %99, null
  br i1 %100, label %101, label %111

; <label>:101:                                    ; preds = %65
  %102 = load %struct.network*, %struct.network** %3, align 8
  %103 = getelementptr inbounds %struct.network, %struct.network* %102, i32 0, i32 23
  %104 = load %struct.arc*, %struct.arc** %103, align 8
  %105 = icmp ne %struct.arc* %104, null
  br i1 %105, label %106, label %111

; <label>:106:                                    ; preds = %101
  %107 = load %struct.network*, %struct.network** %3, align 8
  %108 = getelementptr inbounds %struct.network, %struct.network* %107, i32 0, i32 25
  %109 = load %struct.arc*, %struct.arc** %108, align 8
  %110 = icmp ne %struct.arc* %109, null
  br i1 %110, label %115, label %111

; <label>:111:                                    ; preds = %106, %101, %65
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  %113 = load %struct.network*, %struct.network** %3, align 8
  %114 = call i64 @getfree(%struct.network* %113)
  store i64 -1, i64* %2, align 8
  br label %530

; <label>:115:                                    ; preds = %106
  %116 = load %struct.network*, %struct.network** %3, align 8
  %117 = getelementptr inbounds %struct.network, %struct.network* %116, i32 0, i32 21
  %118 = load %struct.node*, %struct.node** %117, align 8
  %119 = load %struct.network*, %struct.network** %3, align 8
  %120 = getelementptr inbounds %struct.network, %struct.network* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.node, %struct.node* %118, i64 %121
  %123 = getelementptr inbounds %struct.node, %struct.node* %122, i64 1
  %124 = load %struct.network*, %struct.network** %3, align 8
  %125 = getelementptr inbounds %struct.network, %struct.network* %124, i32 0, i32 22
  store %struct.node* %123, %struct.node** %125, align 8
  %126 = load %struct.network*, %struct.network** %3, align 8
  %127 = getelementptr inbounds %struct.network, %struct.network* %126, i32 0, i32 23
  %128 = load %struct.arc*, %struct.arc** %127, align 8
  %129 = load %struct.network*, %struct.network** %3, align 8
  %130 = getelementptr inbounds %struct.network, %struct.network* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.arc, %struct.arc* %128, i64 %131
  %133 = load %struct.network*, %struct.network** %3, align 8
  %134 = getelementptr inbounds %struct.network, %struct.network* %133, i32 0, i32 24
  store %struct.arc* %132, %struct.arc** %134, align 8
  %135 = load %struct.network*, %struct.network** %3, align 8
  %136 = getelementptr inbounds %struct.network, %struct.network* %135, i32 0, i32 25
  %137 = load %struct.arc*, %struct.arc** %136, align 8
  %138 = load %struct.network*, %struct.network** %3, align 8
  %139 = getelementptr inbounds %struct.network, %struct.network* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.arc, %struct.arc* %137, i64 %140
  %142 = load %struct.network*, %struct.network** %3, align 8
  %143 = getelementptr inbounds %struct.network, %struct.network* %142, i32 0, i32 26
  store %struct.arc* %141, %struct.arc** %143, align 8
  %144 = load %struct.network*, %struct.network** %3, align 8
  %145 = getelementptr inbounds %struct.network, %struct.network* %144, i32 0, i32 21
  %146 = load %struct.node*, %struct.node** %145, align 8
  store %struct.node* %146, %struct.node** %11, align 8
  %147 = load %struct.network*, %struct.network** %3, align 8
  %148 = getelementptr inbounds %struct.network, %struct.network* %147, i32 0, i32 23
  %149 = load %struct.arc*, %struct.arc** %148, align 8
  store %struct.arc* %149, %struct.arc** %10, align 8
  store i64 1, i64* %9, align 8
  br label %150

; <label>:150:                                    ; preds = %362, %115
  %151 = load i64, i64* %9, align 8
  %152 = load %struct.network*, %struct.network** %3, align 8
  %153 = getelementptr inbounds %struct.network, %struct.network* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp sle i64 %151, %154
  br i1 %155, label %156, label %365

; <label>:156:                                    ; preds = %150
  %157 = getelementptr inbounds [201 x i8], [201 x i8]* %5, i32 0, i32 0
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %159 = call i8* @fgets(i8* %157, i32 200, %struct._IO_FILE* %158)
  %160 = getelementptr inbounds [201 x i8], [201 x i8]* %5, i32 0, i32 0
  %161 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64* %6, i64* %7) #3
  %162 = icmp ne i32 %161, 2
  br i1 %162, label %167, label %163

; <label>:163:                                    ; preds = %156
  %164 = load i64, i64* %6, align 8
  %165 = load i64, i64* %7, align 8
  %166 = icmp sgt i64 %164, %165
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %163, %156
  store i64 -1, i64* %2, align 8
  br label %530

; <label>:168:                                    ; preds = %163
  %169 = load i64, i64* %9, align 8
  %170 = sub nsw i64 0, %169
  %171 = trunc i64 %170 to i32
  %172 = load %struct.node*, %struct.node** %11, align 8
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds %struct.node, %struct.node* %172, i64 %173
  %175 = getelementptr inbounds %struct.node, %struct.node* %174, i32 0, i32 12
  store i32 %171, i32* %175, align 8
  %176 = load %struct.node*, %struct.node** %11, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds %struct.node, %struct.node* %176, i64 %177
  %179 = getelementptr inbounds %struct.node, %struct.node* %178, i32 0, i32 10
  store i64 -1, i64* %179, align 8
  %180 = load i64, i64* %9, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.node*, %struct.node** %11, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load %struct.network*, %struct.network** %3, align 8
  %185 = getelementptr inbounds %struct.network, %struct.network* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %183, %186
  %188 = getelementptr inbounds %struct.node, %struct.node* %182, i64 %187
  %189 = getelementptr inbounds %struct.node, %struct.node* %188, i32 0, i32 12
  store i32 %181, i32* %189, align 8
  %190 = load %struct.node*, %struct.node** %11, align 8
  %191 = load i64, i64* %9, align 8
  %192 = load %struct.network*, %struct.network** %3, align 8
  %193 = getelementptr inbounds %struct.network, %struct.network* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = getelementptr inbounds %struct.node, %struct.node* %190, i64 %195
  %197 = getelementptr inbounds %struct.node, %struct.node* %196, i32 0, i32 10
  store i64 1, i64* %197, align 8
  %198 = load i64, i64* %6, align 8
  %199 = trunc i64 %198 to i32
  %200 = load %struct.node*, %struct.node** %11, align 8
  %201 = load i64, i64* %9, align 8
  %202 = getelementptr inbounds %struct.node, %struct.node* %200, i64 %201
  %203 = getelementptr inbounds %struct.node, %struct.node* %202, i32 0, i32 13
  store i32 %199, i32* %203, align 4
  %204 = load i64, i64* %7, align 8
  %205 = trunc i64 %204 to i32
  %206 = load %struct.node*, %struct.node** %11, align 8
  %207 = load i64, i64* %9, align 8
  %208 = load %struct.network*, %struct.network** %3, align 8
  %209 = getelementptr inbounds %struct.network, %struct.network* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %207, %210
  %212 = getelementptr inbounds %struct.node, %struct.node* %206, i64 %211
  %213 = getelementptr inbounds %struct.node, %struct.node* %212, i32 0, i32 13
  store i32 %205, i32* %213, align 4
  %214 = load %struct.node*, %struct.node** %11, align 8
  %215 = load %struct.network*, %struct.network** %3, align 8
  %216 = getelementptr inbounds %struct.network, %struct.network* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.node, %struct.node* %214, i64 %217
  %219 = load %struct.arc*, %struct.arc** %10, align 8
  %220 = getelementptr inbounds %struct.arc, %struct.arc* %219, i32 0, i32 1
  store %struct.node* %218, %struct.node** %220, align 8
  %221 = load %struct.node*, %struct.node** %11, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds %struct.node, %struct.node* %221, i64 %222
  %224 = load %struct.arc*, %struct.arc** %10, align 8
  %225 = getelementptr inbounds %struct.arc, %struct.arc* %224, i32 0, i32 2
  store %struct.node* %223, %struct.node** %225, align 8
  %226 = load %struct.network*, %struct.network** %3, align 8
  %227 = getelementptr inbounds %struct.network, %struct.network* %226, i32 0, i32 18
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 15
  %230 = load %struct.arc*, %struct.arc** %10, align 8
  %231 = getelementptr inbounds %struct.arc, %struct.arc* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  %232 = load %struct.arc*, %struct.arc** %10, align 8
  %233 = getelementptr inbounds %struct.arc, %struct.arc* %232, i32 0, i32 7
  store i64 %229, i64* %233, align 8
  %234 = load %struct.arc*, %struct.arc** %10, align 8
  %235 = getelementptr inbounds %struct.arc, %struct.arc* %234, i32 0, i32 1
  %236 = load %struct.node*, %struct.node** %235, align 8
  %237 = getelementptr inbounds %struct.node, %struct.node* %236, i32 0, i32 7
  %238 = load %struct.arc*, %struct.arc** %237, align 8
  %239 = load %struct.arc*, %struct.arc** %10, align 8
  %240 = getelementptr inbounds %struct.arc, %struct.arc* %239, i32 0, i32 4
  store %struct.arc* %238, %struct.arc** %240, align 8
  %241 = load %struct.arc*, %struct.arc** %10, align 8
  %242 = load %struct.arc*, %struct.arc** %10, align 8
  %243 = getelementptr inbounds %struct.arc, %struct.arc* %242, i32 0, i32 1
  %244 = load %struct.node*, %struct.node** %243, align 8
  %245 = getelementptr inbounds %struct.node, %struct.node* %244, i32 0, i32 7
  store %struct.arc* %241, %struct.arc** %245, align 8
  %246 = load %struct.arc*, %struct.arc** %10, align 8
  %247 = getelementptr inbounds %struct.arc, %struct.arc* %246, i32 0, i32 2
  %248 = load %struct.node*, %struct.node** %247, align 8
  %249 = getelementptr inbounds %struct.node, %struct.node* %248, i32 0, i32 8
  %250 = load %struct.arc*, %struct.arc** %249, align 8
  %251 = load %struct.arc*, %struct.arc** %10, align 8
  %252 = getelementptr inbounds %struct.arc, %struct.arc* %251, i32 0, i32 5
  store %struct.arc* %250, %struct.arc** %252, align 8
  %253 = load %struct.arc*, %struct.arc** %10, align 8
  %254 = load %struct.arc*, %struct.arc** %10, align 8
  %255 = getelementptr inbounds %struct.arc, %struct.arc* %254, i32 0, i32 2
  %256 = load %struct.node*, %struct.node** %255, align 8
  %257 = getelementptr inbounds %struct.node, %struct.node* %256, i32 0, i32 8
  store %struct.arc* %253, %struct.arc** %257, align 8
  %258 = load %struct.arc*, %struct.arc** %10, align 8
  %259 = getelementptr inbounds %struct.arc, %struct.arc* %258, i32 1
  store %struct.arc* %259, %struct.arc** %10, align 8
  %260 = load %struct.node*, %struct.node** %11, align 8
  %261 = load i64, i64* %9, align 8
  %262 = load %struct.network*, %struct.network** %3, align 8
  %263 = getelementptr inbounds %struct.network, %struct.network* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %261, %264
  %266 = getelementptr inbounds %struct.node, %struct.node* %260, i64 %265
  %267 = load %struct.arc*, %struct.arc** %10, align 8
  %268 = getelementptr inbounds %struct.arc, %struct.arc* %267, i32 0, i32 1
  store %struct.node* %266, %struct.node** %268, align 8
  %269 = load %struct.node*, %struct.node** %11, align 8
  %270 = load %struct.network*, %struct.network** %3, align 8
  %271 = getelementptr inbounds %struct.network, %struct.network* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.node, %struct.node* %269, i64 %272
  %274 = load %struct.arc*, %struct.arc** %10, align 8
  %275 = getelementptr inbounds %struct.arc, %struct.arc* %274, i32 0, i32 2
  store %struct.node* %273, %struct.node** %275, align 8
  %276 = load %struct.arc*, %struct.arc** %10, align 8
  %277 = getelementptr inbounds %struct.arc, %struct.arc* %276, i32 0, i32 0
  store i64 15, i64* %277, align 8
  %278 = load %struct.arc*, %struct.arc** %10, align 8
  %279 = getelementptr inbounds %struct.arc, %struct.arc* %278, i32 0, i32 7
  store i64 15, i64* %279, align 8
  %280 = load %struct.arc*, %struct.arc** %10, align 8
  %281 = getelementptr inbounds %struct.arc, %struct.arc* %280, i32 0, i32 1
  %282 = load %struct.node*, %struct.node** %281, align 8
  %283 = getelementptr inbounds %struct.node, %struct.node* %282, i32 0, i32 7
  %284 = load %struct.arc*, %struct.arc** %283, align 8
  %285 = load %struct.arc*, %struct.arc** %10, align 8
  %286 = getelementptr inbounds %struct.arc, %struct.arc* %285, i32 0, i32 4
  store %struct.arc* %284, %struct.arc** %286, align 8
  %287 = load %struct.arc*, %struct.arc** %10, align 8
  %288 = load %struct.arc*, %struct.arc** %10, align 8
  %289 = getelementptr inbounds %struct.arc, %struct.arc* %288, i32 0, i32 1
  %290 = load %struct.node*, %struct.node** %289, align 8
  %291 = getelementptr inbounds %struct.node, %struct.node* %290, i32 0, i32 7
  store %struct.arc* %287, %struct.arc** %291, align 8
  %292 = load %struct.arc*, %struct.arc** %10, align 8
  %293 = getelementptr inbounds %struct.arc, %struct.arc* %292, i32 0, i32 2
  %294 = load %struct.node*, %struct.node** %293, align 8
  %295 = getelementptr inbounds %struct.node, %struct.node* %294, i32 0, i32 8
  %296 = load %struct.arc*, %struct.arc** %295, align 8
  %297 = load %struct.arc*, %struct.arc** %10, align 8
  %298 = getelementptr inbounds %struct.arc, %struct.arc* %297, i32 0, i32 5
  store %struct.arc* %296, %struct.arc** %298, align 8
  %299 = load %struct.arc*, %struct.arc** %10, align 8
  %300 = load %struct.arc*, %struct.arc** %10, align 8
  %301 = getelementptr inbounds %struct.arc, %struct.arc* %300, i32 0, i32 2
  %302 = load %struct.node*, %struct.node** %301, align 8
  %303 = getelementptr inbounds %struct.node, %struct.node* %302, i32 0, i32 8
  store %struct.arc* %299, %struct.arc** %303, align 8
  %304 = load %struct.arc*, %struct.arc** %10, align 8
  %305 = getelementptr inbounds %struct.arc, %struct.arc* %304, i32 1
  store %struct.arc* %305, %struct.arc** %10, align 8
  %306 = load %struct.node*, %struct.node** %11, align 8
  %307 = load i64, i64* %9, align 8
  %308 = getelementptr inbounds %struct.node, %struct.node* %306, i64 %307
  %309 = load %struct.arc*, %struct.arc** %10, align 8
  %310 = getelementptr inbounds %struct.arc, %struct.arc* %309, i32 0, i32 1
  store %struct.node* %308, %struct.node** %310, align 8
  %311 = load %struct.node*, %struct.node** %11, align 8
  %312 = load i64, i64* %9, align 8
  %313 = load %struct.network*, %struct.network** %3, align 8
  %314 = getelementptr inbounds %struct.network, %struct.network* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %312, %315
  %317 = getelementptr inbounds %struct.node, %struct.node* %311, i64 %316
  %318 = load %struct.arc*, %struct.arc** %10, align 8
  %319 = getelementptr inbounds %struct.arc, %struct.arc* %318, i32 0, i32 2
  store %struct.node* %317, %struct.node** %319, align 8
  %320 = load %struct.network*, %struct.network** %3, align 8
  %321 = getelementptr inbounds %struct.network, %struct.network* %320, i32 0, i32 18
  %322 = load i64, i64* %321, align 8
  %323 = icmp sgt i64 %322, 10000000
  br i1 %323, label %324, label %328

; <label>:324:                                    ; preds = %168
  %325 = load %struct.network*, %struct.network** %3, align 8
  %326 = getelementptr inbounds %struct.network, %struct.network* %325, i32 0, i32 18
  %327 = load i64, i64* %326, align 8
  br label %329

; <label>:328:                                    ; preds = %168
  br label %329

; <label>:329:                                    ; preds = %328, %324
  %330 = phi i64 [ %327, %324 ], [ 10000000, %328 ]
  %331 = mul nsw i64 2, %330
  %332 = load %struct.arc*, %struct.arc** %10, align 8
  %333 = getelementptr inbounds %struct.arc, %struct.arc* %332, i32 0, i32 0
  store i64 %331, i64* %333, align 8
  %334 = load %struct.arc*, %struct.arc** %10, align 8
  %335 = getelementptr inbounds %struct.arc, %struct.arc* %334, i32 0, i32 7
  store i64 %331, i64* %335, align 8
  %336 = load %struct.arc*, %struct.arc** %10, align 8
  %337 = getelementptr inbounds %struct.arc, %struct.arc* %336, i32 0, i32 1
  %338 = load %struct.node*, %struct.node** %337, align 8
  %339 = getelementptr inbounds %struct.node, %struct.node* %338, i32 0, i32 7
  %340 = load %struct.arc*, %struct.arc** %339, align 8
  %341 = load %struct.arc*, %struct.arc** %10, align 8
  %342 = getelementptr inbounds %struct.arc, %struct.arc* %341, i32 0, i32 4
  store %struct.arc* %340, %struct.arc** %342, align 8
  %343 = load %struct.arc*, %struct.arc** %10, align 8
  %344 = load %struct.arc*, %struct.arc** %10, align 8
  %345 = getelementptr inbounds %struct.arc, %struct.arc* %344, i32 0, i32 1
  %346 = load %struct.node*, %struct.node** %345, align 8
  %347 = getelementptr inbounds %struct.node, %struct.node* %346, i32 0, i32 7
  store %struct.arc* %343, %struct.arc** %347, align 8
  %348 = load %struct.arc*, %struct.arc** %10, align 8
  %349 = getelementptr inbounds %struct.arc, %struct.arc* %348, i32 0, i32 2
  %350 = load %struct.node*, %struct.node** %349, align 8
  %351 = getelementptr inbounds %struct.node, %struct.node* %350, i32 0, i32 8
  %352 = load %struct.arc*, %struct.arc** %351, align 8
  %353 = load %struct.arc*, %struct.arc** %10, align 8
  %354 = getelementptr inbounds %struct.arc, %struct.arc* %353, i32 0, i32 5
  store %struct.arc* %352, %struct.arc** %354, align 8
  %355 = load %struct.arc*, %struct.arc** %10, align 8
  %356 = load %struct.arc*, %struct.arc** %10, align 8
  %357 = getelementptr inbounds %struct.arc, %struct.arc* %356, i32 0, i32 2
  %358 = load %struct.node*, %struct.node** %357, align 8
  %359 = getelementptr inbounds %struct.node, %struct.node* %358, i32 0, i32 8
  store %struct.arc* %355, %struct.arc** %359, align 8
  %360 = load %struct.arc*, %struct.arc** %10, align 8
  %361 = getelementptr inbounds %struct.arc, %struct.arc* %360, i32 1
  store %struct.arc* %361, %struct.arc** %10, align 8
  br label %362

; <label>:362:                                    ; preds = %329
  %363 = load i64, i64* %9, align 8
  %364 = add nsw i64 %363, 1
  store i64 %364, i64* %9, align 8
  br label %150

; <label>:365:                                    ; preds = %150
  %366 = load i64, i64* %9, align 8
  %367 = load %struct.network*, %struct.network** %3, align 8
  %368 = getelementptr inbounds %struct.network, %struct.network* %367, i32 0, i32 3
  %369 = load i64, i64* %368, align 8
  %370 = add nsw i64 %369, 1
  %371 = icmp ne i64 %366, %370
  br i1 %371, label %372, label %373

; <label>:372:                                    ; preds = %365
  store i64 -1, i64* %2, align 8
  br label %530

; <label>:373:                                    ; preds = %365
  store i64 0, i64* %9, align 8
  br label %374

; <label>:374:                                    ; preds = %433, %373
  %375 = load i64, i64* %9, align 8
  %376 = load %struct.network*, %struct.network** %3, align 8
  %377 = getelementptr inbounds %struct.network, %struct.network* %376, i32 0, i32 6
  %378 = load i64, i64* %377, align 8
  %379 = icmp slt i64 %375, %378
  br i1 %379, label %380, label %438

; <label>:380:                                    ; preds = %374
  %381 = getelementptr inbounds [201 x i8], [201 x i8]* %5, i32 0, i32 0
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %383 = call i8* @fgets(i8* %381, i32 200, %struct._IO_FILE* %382)
  %384 = getelementptr inbounds [201 x i8], [201 x i8]* %5, i32 0, i32 0
  %385 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i64* %6, i64* %7, i64* %8) #3
  %386 = icmp ne i32 %385, 3
  br i1 %386, label %387, label %388

; <label>:387:                                    ; preds = %380
  store i64 -1, i64* %2, align 8
  br label %530

; <label>:388:                                    ; preds = %380
  %389 = load %struct.node*, %struct.node** %11, align 8
  %390 = load i64, i64* %6, align 8
  %391 = load %struct.network*, %struct.network** %3, align 8
  %392 = getelementptr inbounds %struct.network, %struct.network* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = add nsw i64 %390, %393
  %395 = getelementptr inbounds %struct.node, %struct.node* %389, i64 %394
  %396 = load %struct.arc*, %struct.arc** %10, align 8
  %397 = getelementptr inbounds %struct.arc, %struct.arc* %396, i32 0, i32 1
  store %struct.node* %395, %struct.node** %397, align 8
  %398 = load %struct.node*, %struct.node** %11, align 8
  %399 = load i64, i64* %7, align 8
  %400 = getelementptr inbounds %struct.node, %struct.node* %398, i64 %399
  %401 = load %struct.arc*, %struct.arc** %10, align 8
  %402 = getelementptr inbounds %struct.arc, %struct.arc* %401, i32 0, i32 2
  store %struct.node* %400, %struct.node** %402, align 8
  %403 = load i64, i64* %8, align 8
  %404 = load %struct.arc*, %struct.arc** %10, align 8
  %405 = getelementptr inbounds %struct.arc, %struct.arc* %404, i32 0, i32 7
  store i64 %403, i64* %405, align 8
  %406 = load i64, i64* %8, align 8
  %407 = load %struct.arc*, %struct.arc** %10, align 8
  %408 = getelementptr inbounds %struct.arc, %struct.arc* %407, i32 0, i32 0
  store i64 %406, i64* %408, align 8
  %409 = load %struct.arc*, %struct.arc** %10, align 8
  %410 = getelementptr inbounds %struct.arc, %struct.arc* %409, i32 0, i32 1
  %411 = load %struct.node*, %struct.node** %410, align 8
  %412 = getelementptr inbounds %struct.node, %struct.node* %411, i32 0, i32 7
  %413 = load %struct.arc*, %struct.arc** %412, align 8
  %414 = load %struct.arc*, %struct.arc** %10, align 8
  %415 = getelementptr inbounds %struct.arc, %struct.arc* %414, i32 0, i32 4
  store %struct.arc* %413, %struct.arc** %415, align 8
  %416 = load %struct.arc*, %struct.arc** %10, align 8
  %417 = load %struct.arc*, %struct.arc** %10, align 8
  %418 = getelementptr inbounds %struct.arc, %struct.arc* %417, i32 0, i32 1
  %419 = load %struct.node*, %struct.node** %418, align 8
  %420 = getelementptr inbounds %struct.node, %struct.node* %419, i32 0, i32 7
  store %struct.arc* %416, %struct.arc** %420, align 8
  %421 = load %struct.arc*, %struct.arc** %10, align 8
  %422 = getelementptr inbounds %struct.arc, %struct.arc* %421, i32 0, i32 2
  %423 = load %struct.node*, %struct.node** %422, align 8
  %424 = getelementptr inbounds %struct.node, %struct.node* %423, i32 0, i32 8
  %425 = load %struct.arc*, %struct.arc** %424, align 8
  %426 = load %struct.arc*, %struct.arc** %10, align 8
  %427 = getelementptr inbounds %struct.arc, %struct.arc* %426, i32 0, i32 5
  store %struct.arc* %425, %struct.arc** %427, align 8
  %428 = load %struct.arc*, %struct.arc** %10, align 8
  %429 = load %struct.arc*, %struct.arc** %10, align 8
  %430 = getelementptr inbounds %struct.arc, %struct.arc* %429, i32 0, i32 2
  %431 = load %struct.node*, %struct.node** %430, align 8
  %432 = getelementptr inbounds %struct.node, %struct.node* %431, i32 0, i32 8
  store %struct.arc* %428, %struct.arc** %432, align 8
  br label %433

; <label>:433:                                    ; preds = %388
  %434 = load i64, i64* %9, align 8
  %435 = add nsw i64 %434, 1
  store i64 %435, i64* %9, align 8
  %436 = load %struct.arc*, %struct.arc** %10, align 8
  %437 = getelementptr inbounds %struct.arc, %struct.arc* %436, i32 1
  store %struct.arc* %437, %struct.arc** %10, align 8
  br label %374

; <label>:438:                                    ; preds = %374
  %439 = load %struct.network*, %struct.network** %3, align 8
  %440 = getelementptr inbounds %struct.network, %struct.network* %439, i32 0, i32 24
  %441 = load %struct.arc*, %struct.arc** %440, align 8
  %442 = load %struct.arc*, %struct.arc** %10, align 8
  %443 = icmp ne %struct.arc* %441, %442
  br i1 %443, label %444, label %473

; <label>:444:                                    ; preds = %438
  %445 = load %struct.arc*, %struct.arc** %10, align 8
  %446 = load %struct.network*, %struct.network** %3, align 8
  %447 = getelementptr inbounds %struct.network, %struct.network* %446, i32 0, i32 24
  store %struct.arc* %445, %struct.arc** %447, align 8
  %448 = load %struct.network*, %struct.network** %3, align 8
  %449 = getelementptr inbounds %struct.network, %struct.network* %448, i32 0, i32 23
  %450 = load %struct.arc*, %struct.arc** %449, align 8
  store %struct.arc* %450, %struct.arc** %10, align 8
  %451 = load %struct.network*, %struct.network** %3, align 8
  %452 = getelementptr inbounds %struct.network, %struct.network* %451, i32 0, i32 5
  store i64 0, i64* %452, align 8
  br label %453

; <label>:453:                                    ; preds = %464, %444
  %454 = load %struct.arc*, %struct.arc** %10, align 8
  %455 = load %struct.network*, %struct.network** %3, align 8
  %456 = getelementptr inbounds %struct.network, %struct.network* %455, i32 0, i32 24
  %457 = load %struct.arc*, %struct.arc** %456, align 8
  %458 = icmp ult %struct.arc* %454, %457
  br i1 %458, label %459, label %467

; <label>:459:                                    ; preds = %453
  %460 = load %struct.network*, %struct.network** %3, align 8
  %461 = getelementptr inbounds %struct.network, %struct.network* %460, i32 0, i32 5
  %462 = load i64, i64* %461, align 8
  %463 = add nsw i64 %462, 1
  store i64 %463, i64* %461, align 8
  br label %464

; <label>:464:                                    ; preds = %459
  %465 = load %struct.arc*, %struct.arc** %10, align 8
  %466 = getelementptr inbounds %struct.arc, %struct.arc* %465, i32 1
  store %struct.arc* %466, %struct.arc** %10, align 8
  br label %453

; <label>:467:                                    ; preds = %453
  %468 = load %struct.network*, %struct.network** %3, align 8
  %469 = getelementptr inbounds %struct.network, %struct.network* %468, i32 0, i32 5
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.network*, %struct.network** %3, align 8
  %472 = getelementptr inbounds %struct.network, %struct.network* %471, i32 0, i32 6
  store i64 %470, i64* %472, align 8
  br label %473

; <label>:473:                                    ; preds = %467, %438
  %474 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %475 = call i32 @fclose(%struct._IO_FILE* %474)
  %476 = load %struct.network*, %struct.network** %3, align 8
  %477 = getelementptr inbounds %struct.network, %struct.network* %476, i32 0, i32 1
  %478 = getelementptr inbounds [200 x i8], [200 x i8]* %477, i64 0, i64 0
  store i8 0, i8* %478, align 8
  store i64 1, i64* %9, align 8
  br label %479

; <label>:479:                                    ; preds = %526, %473
  %480 = load i64, i64* %9, align 8
  %481 = load %struct.network*, %struct.network** %3, align 8
  %482 = getelementptr inbounds %struct.network, %struct.network* %481, i32 0, i32 3
  %483 = load i64, i64* %482, align 8
  %484 = icmp sle i64 %480, %483
  br i1 %484, label %485, label %529

; <label>:485:                                    ; preds = %479
  %486 = load %struct.network*, %struct.network** %3, align 8
  %487 = getelementptr inbounds %struct.network, %struct.network* %486, i32 0, i32 18
  %488 = load i64, i64* %487, align 8
  %489 = icmp sgt i64 %488, 10000000
  br i1 %489, label %490, label %494

; <label>:490:                                    ; preds = %485
  %491 = load %struct.network*, %struct.network** %3, align 8
  %492 = getelementptr inbounds %struct.network, %struct.network* %491, i32 0, i32 18
  %493 = load i64, i64* %492, align 8
  br label %495

; <label>:494:                                    ; preds = %485
  br label %495

; <label>:495:                                    ; preds = %494, %490
  %496 = phi i64 [ %493, %490 ], [ 10000000, %494 ]
  %497 = mul nsw i64 -2, %496
  %498 = load %struct.network*, %struct.network** %3, align 8
  %499 = getelementptr inbounds %struct.network, %struct.network* %498, i32 0, i32 23
  %500 = load %struct.arc*, %struct.arc** %499, align 8
  %501 = load i64, i64* %9, align 8
  %502 = mul nsw i64 3, %501
  %503 = sub nsw i64 %502, 1
  %504 = getelementptr inbounds %struct.arc, %struct.arc* %500, i64 %503
  %505 = getelementptr inbounds %struct.arc, %struct.arc* %504, i32 0, i32 0
  store i64 %497, i64* %505, align 8
  %506 = load %struct.network*, %struct.network** %3, align 8
  %507 = getelementptr inbounds %struct.network, %struct.network* %506, i32 0, i32 18
  %508 = load i64, i64* %507, align 8
  %509 = icmp sgt i64 %508, 10000000
  br i1 %509, label %510, label %514

; <label>:510:                                    ; preds = %495
  %511 = load %struct.network*, %struct.network** %3, align 8
  %512 = getelementptr inbounds %struct.network, %struct.network* %511, i32 0, i32 18
  %513 = load i64, i64* %512, align 8
  br label %515

; <label>:514:                                    ; preds = %495
  br label %515

; <label>:515:                                    ; preds = %514, %510
  %516 = phi i64 [ %513, %510 ], [ 10000000, %514 ]
  %517 = mul nsw i64 -2, %516
  %518 = load %struct.network*, %struct.network** %3, align 8
  %519 = getelementptr inbounds %struct.network, %struct.network* %518, i32 0, i32 23
  %520 = load %struct.arc*, %struct.arc** %519, align 8
  %521 = load i64, i64* %9, align 8
  %522 = mul nsw i64 3, %521
  %523 = sub nsw i64 %522, 1
  %524 = getelementptr inbounds %struct.arc, %struct.arc* %520, i64 %523
  %525 = getelementptr inbounds %struct.arc, %struct.arc* %524, i32 0, i32 7
  store i64 %517, i64* %525, align 8
  br label %526

; <label>:526:                                    ; preds = %515
  %527 = load i64, i64* %9, align 8
  %528 = add nsw i64 %527, 1
  store i64 %528, i64* %9, align 8
  br label %479

; <label>:529:                                    ; preds = %479
  store i64 0, i64* %2, align 8
  br label %530

; <label>:530:                                    ; preds = %529, %387, %372, %167, %111, %25, %17
  %531 = load i64, i64* %2, align 8
  ret i64 %531
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @printf(i8*, ...) #1

declare i64 @getfree(%struct.network*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
