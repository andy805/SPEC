; ModuleID = 'dayhoff.c'
source_filename = "dayhoff.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@squid_errno = external global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"BLOSUM Clustered Scoring Matrix\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"substitution matrix,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Failed to parse PAM matrix scale factor. Defaulting to ln(2)/2!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ParsePAMFile(%struct._IO_FILE*, i32***, float*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32***, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca [27 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i32*** %1, i32**** %6, align 8
  store float* %2, float** %7, align 8
  store i32 0, i32* %17, align 4
  store float 0.000000e+00, float* %16, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %3
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %4, align 4
  br label %233

; <label>:21:                                     ; preds = %3
  br label %22

; <label>:22:                                     ; preds = %89, %21
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %25 = call i8* @fgets(i8* %23, i32 512, %struct._IO_FILE* %24)
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %22
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %4, align 4
  br label %233

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i32 0, i32 0
  %30 = call i8* @strstr(i8* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0)) #5
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %57

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i32 0, i32 0
  %34 = call i8* @strchr(i8* %33, i32 47) #5
  store i8* %34, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %57

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %12, align 8
  %39 = call i16** @__ctype_b_loc() #6
  %40 = load i16*, i16** %39, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %40, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 2048
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

; <label>:50:                                     ; preds = %36
  store i32 5, i32* @squid_errno, align 4
  store i32 0, i32* %4, align 4
  br label %233

; <label>:51:                                     ; preds = %36
  %52 = call double @log(double 2.000000e+00) #7
  %53 = load i8*, i8** %12, align 8
  %54 = call double @atof(i8* %53) #5
  %55 = fdiv double %52, %54
  %56 = fptrunc double %55 to float
  store float %56, float* %16, align 4
  store i32 1, i32* %17, align 4
  br label %79

; <label>:57:                                     ; preds = %32, %28
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i32 0, i32 0
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #5
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %78

; <label>:61:                                     ; preds = %57
  br label %62

; <label>:62:                                     ; preds = %76, %61
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i32 0, i32 0
  %64 = call i8* @strrchr(i8* %63, i32 61) #5
  store i8* %64, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %77

; <label>:66:                                     ; preds = %62
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @IsReal(i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %66
  %73 = load i8*, i8** %12, align 8
  %74 = call double @atof(i8* %73) #5
  %75 = fptrunc double %74 to float
  store float %75, float* %16, align 4
  store i32 1, i32* %17, align 4
  br label %77

; <label>:76:                                     ; preds = %66
  br label %62

; <label>:77:                                     ; preds = %72, %62
  br label %78

; <label>:78:                                     ; preds = %77, %57
  br label %79

; <label>:79:                                     ; preds = %78, %51
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i32 0, i32 0
  %82 = call i8* @strtok(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  store i8* %82, i8** %12, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %89, label %84

; <label>:84:                                     ; preds = %80
  %85 = load i8*, i8** %12, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 35
  br label %89

; <label>:89:                                     ; preds = %84, %80
  %90 = phi i1 [ true, %80 ], [ %88, %84 ]
  br i1 %90, label %22, label %91

; <label>:91:                                     ; preds = %89
  store i32 0, i32* %13, align 4
  br label %92

; <label>:92:                                     ; preds = %118, %91
  %93 = load i8*, i8** %12, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 %95, 65
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [27 x i32], [27 x i32]* %10, i64 0, i64 %98
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [27 x i32], [27 x i32]* %10, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %111, label %105

; <label>:105:                                    ; preds = %92
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [27 x i32], [27 x i32]* %10, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 25
  br i1 %110, label %111, label %115

; <label>:111:                                    ; preds = %105, %92
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [27 x i32], [27 x i32]* %10, i64 0, i64 %113
  store i32 26, i32* %114, align 4
  br label %115

; <label>:115:                                    ; preds = %111, %105
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %118

; <label>:118:                                    ; preds = %115
  %119 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  store i8* %119, i8** %12, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %92, label %121

; <label>:121:                                    ; preds = %118
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %11, align 4
  %123 = call noalias i8* @calloc(i64 27, i64 8) #7
  %124 = bitcast i8* %123 to i32**
  store i32** %124, i32*** %8, align 8
  %125 = icmp eq i32** %124, null
  br i1 %125, label %126, label %127

; <label>:126:                                    ; preds = %121
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %127

; <label>:127:                                    ; preds = %126, %121
  store i32 0, i32* %13, align 4
  br label %128

; <label>:128:                                    ; preds = %141, %127
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %129, 27
  br i1 %130, label %131, label %144

; <label>:131:                                    ; preds = %128
  %132 = call noalias i8* @calloc(i64 27, i64 4) #7
  %133 = bitcast i8* %132 to i32*
  %134 = load i32**, i32*** %8, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  store i32* %133, i32** %137, align 8
  %138 = icmp eq i32* %133, null
  br i1 %138, label %139, label %140

; <label>:139:                                    ; preds = %131
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %140

; <label>:140:                                    ; preds = %139, %131
  br label %141

; <label>:141:                                    ; preds = %140
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %128

; <label>:144:                                    ; preds = %128
  store i32 0, i32* %14, align 4
  br label %145

; <label>:145:                                    ; preds = %212, %144
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %215

; <label>:149:                                    ; preds = %145
  %150 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i32 0, i32 0
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %152 = call i8* @fgets(i8* %150, i32 512, %struct._IO_FILE* %151)
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %155

; <label>:154:                                    ; preds = %149
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %4, align 4
  br label %233

; <label>:155:                                    ; preds = %149
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i32 0, i32 0
  %157 = call i8* @strtok(i8* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  store i8* %157, i8** %12, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %155
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %4, align 4
  br label %233

; <label>:160:                                    ; preds = %155
  store i32 0, i32* %15, align 4
  br label %161

; <label>:161:                                    ; preds = %208, %160
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %211

; <label>:165:                                    ; preds = %161
  %166 = load i8*, i8** %12, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %165
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %4, align 4
  br label %233

; <label>:169:                                    ; preds = %165
  %170 = load i8*, i8** %12, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 42
  br i1 %173, label %186, label %174

; <label>:174:                                    ; preds = %169
  %175 = call i16** @__ctype_b_loc() #6
  %176 = load i16*, i16** %175, align 8
  %177 = load i8*, i8** %12, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i16, i16* %176, i64 %180
  %182 = load i16, i16* %181, align 2
  %183 = zext i16 %182 to i32
  %184 = and i32 %183, 1024
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

; <label>:186:                                    ; preds = %174, %169
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %15, align 4
  br label %206

; <label>:189:                                    ; preds = %174
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 @atoi(i8* %190) #5
  %192 = load i32**, i32*** %8, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [27 x i32], [27 x i32]* %10, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %192, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [27 x i32], [27 x i32]* %10, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %199, i64 %204
  store i32 %191, i32* %205, align 4
  br label %206

; <label>:206:                                    ; preds = %189, %186
  %207 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  store i8* %207, i8** %12, align 8
  br label %208

; <label>:208:                                    ; preds = %206
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %15, align 4
  br label %161

; <label>:211:                                    ; preds = %161
  br label %212

; <label>:212:                                    ; preds = %211
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %145

; <label>:215:                                    ; preds = %145
  %216 = load float*, float** %7, align 8
  %217 = icmp ne float* %216, null
  br i1 %217, label %218, label %230

; <label>:218:                                    ; preds = %215
  %219 = load i32, i32* %17, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

; <label>:221:                                    ; preds = %218
  %222 = load float, float* %16, align 4
  %223 = load float*, float** %7, align 8
  store float %222, float* %223, align 4
  br label %229

; <label>:224:                                    ; preds = %218
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0))
  %225 = call double @log(double 2.000000e+00) #7
  %226 = fdiv double %225, 2.000000e+00
  %227 = fptrunc double %226 to float
  %228 = load float*, float** %7, align 8
  store float %227, float* %228, align 4
  br label %229

; <label>:229:                                    ; preds = %224, %221
  br label %230

; <label>:230:                                    ; preds = %229, %215
  %231 = load i32**, i32*** %8, align 8
  %232 = load i32***, i32**** %6, align 8
  store i32** %231, i32*** %232, align 8
  store i32 1, i32* %4, align 4
  br label %233

; <label>:233:                                    ; preds = %230, %168, %159, %154, %50, %27, %20
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare i32 @IsReal(i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

declare void @Die(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare void @Warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
