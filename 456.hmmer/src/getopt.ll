; ModuleID = 'getopt.c'
source_filename = "getopt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opt_s = type { i8*, i32, i32 }

@Getopt.optind = internal global i32 1, align 4
@Getopt.optptr = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Option \22%s\22 is ambiguous; please be more specific.\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"No such option \22%s\22.\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Option %s requires an argument\0A%s\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Option %s does not take an argument\0A%s\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"No such option \22%c\22.\0A%s\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Option %s requires an integer argument\0A%s\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Option %s requires a numerical argument\0A%s\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Option %s requires a single-character argument\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.opt_s*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8** %1, i8*** %11, align 8
  store %struct.opt_s* %2, %struct.opt_s** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i8** %7, i8*** %17, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @Getopt.optind, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %43, label %25

; <label>:25:                                     ; preds = %8
  %26 = load i8**, i8*** %11, align 8
  %27 = load i32, i32* @Getopt.optind, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %43, label %35

; <label>:35:                                     ; preds = %25
  %36 = load i8**, i8*** %11, align 8
  %37 = load i32, i32* @Getopt.optind, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %35, %25, %8
  %44 = load i32, i32* @Getopt.optind, align 4
  %45 = load i32*, i32** %15, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i8**, i8*** %17, align 8
  store i8* null, i8** %46, align 8
  %47 = load i8**, i8*** %16, align 8
  store i8* null, i8** %47, align 8
  store i32 0, i32* %9, align 4
  br label %432

; <label>:48:                                     ; preds = %35
  %49 = load i8**, i8*** %11, align 8
  %50 = load i32, i32* @Getopt.optind, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

; <label>:56:                                     ; preds = %48
  %57 = load i32, i32* @Getopt.optind, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @Getopt.optind, align 4
  %59 = load i32, i32* @Getopt.optind, align 4
  %60 = load i32*, i32** %15, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i8**, i8*** %16, align 8
  store i8* null, i8** %61, align 8
  %62 = load i8**, i8*** %17, align 8
  store i8* null, i8** %62, align 8
  store i32 0, i32* %9, align 4
  br label %432

; <label>:63:                                     ; preds = %48
  %64 = load i8*, i8** @Getopt.optptr, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %237

; <label>:66:                                     ; preds = %63
  %67 = load i8**, i8*** %11, align 8
  %68 = load i32, i32* @Getopt.optind, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 2) #3
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %237

; <label>:74:                                     ; preds = %66
  %75 = load i8**, i8*** %11, align 8
  %76 = load i32, i32* @Getopt.optind, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @strchr(i8* %79, i32 61) #3
  store i8* %80, i8** @Getopt.optptr, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %74
  %83 = load i8*, i8** @Getopt.optptr, align 8
  store i8 0, i8* %83, align 1
  %84 = load i8*, i8** @Getopt.optptr, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** @Getopt.optptr, align 8
  br label %86

; <label>:86:                                     ; preds = %82, %74
  %87 = load i8**, i8*** %11, align 8
  %88 = load i32, i32* @Getopt.optind, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strlen(i8* %91) #3
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %94

; <label>:94:                                     ; preds = %139, %86
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %142

; <label>:98:                                     ; preds = %94
  %99 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %99, i64 %101
  %103 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %138

; <label>:106:                                    ; preds = %98
  %107 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %107, i64 %109
  %111 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8**, i8*** %11, align 8
  %114 = load i32, i32* @Getopt.optind, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = call i32 @strncmp(i8* %112, i8* %117, i64 %119) #3
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %138

; <label>:122:                                    ; preds = %106
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %18, align 4
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %128, i64 %130
  %132 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @strlen(i8* %133) #3
  %135 = icmp eq i64 %127, %134
  br i1 %135, label %136, label %137

; <label>:136:                                    ; preds = %122
  br label %142

; <label>:137:                                    ; preds = %122
  br label %138

; <label>:138:                                    ; preds = %137, %106, %98
  br label %139

; <label>:139:                                    ; preds = %138
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %94

; <label>:142:                                    ; preds = %136, %94
  %143 = load i32, i32* %20, align 4
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %163

; <label>:145:                                    ; preds = %142
  %146 = load i32, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %148, i64 %150
  %152 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strlen(i8* %153) #3
  %155 = icmp ne i64 %147, %154
  br i1 %155, label %156, label %163

; <label>:156:                                    ; preds = %145
  %157 = load i8**, i8*** %11, align 8
  %158 = load i32, i32* @Getopt.optind, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** %14, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* %161, i8* %162)
  br label %163

; <label>:163:                                    ; preds = %156, %145, %142
  %164 = load i32, i32* %20, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %173

; <label>:166:                                    ; preds = %163
  %167 = load i8**, i8*** %11, align 8
  %168 = load i32, i32* @Getopt.optind, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load i8*, i8** %14, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* %171, i8* %172)
  br label %173

; <label>:173:                                    ; preds = %166, %163
  %174 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %174, i64 %176
  %178 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i8**, i8*** %16, align 8
  store i8* %179, i8** %180, align 8
  %181 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %181, i64 %183
  %185 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %221

; <label>:188:                                    ; preds = %173
  %189 = load i8*, i8** @Getopt.optptr, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %196

; <label>:191:                                    ; preds = %188
  %192 = load i8*, i8** @Getopt.optptr, align 8
  %193 = load i8**, i8*** %17, align 8
  store i8* %192, i8** %193, align 8
  store i8* null, i8** @Getopt.optptr, align 8
  %194 = load i32, i32* @Getopt.optind, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* @Getopt.optind, align 4
  br label %220

; <label>:196:                                    ; preds = %188
  %197 = load i32, i32* @Getopt.optind, align 4
  %198 = add nsw i32 %197, 1
  %199 = load i32, i32* %10, align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %209

; <label>:201:                                    ; preds = %196
  %202 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %202, i64 %204
  %206 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i8*, i8** %14, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* %207, i8* %208)
  br label %219

; <label>:209:                                    ; preds = %196
  %210 = load i8**, i8*** %11, align 8
  %211 = load i32, i32* @Getopt.optind, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %210, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = load i8**, i8*** %17, align 8
  store i8* %215, i8** %216, align 8
  %217 = load i32, i32* @Getopt.optind, align 4
  %218 = add nsw i32 %217, 2
  store i32 %218, i32* @Getopt.optind, align 4
  br label %219

; <label>:219:                                    ; preds = %209, %201
  br label %220

; <label>:220:                                    ; preds = %219, %191
  br label %236

; <label>:221:                                    ; preds = %173
  %222 = load i8*, i8** @Getopt.optptr, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %232

; <label>:224:                                    ; preds = %221
  %225 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %226 = load i32, i32* %21, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %225, i64 %227
  %229 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** %14, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* %230, i8* %231)
  br label %232

; <label>:232:                                    ; preds = %224, %221
  %233 = load i8**, i8*** %17, align 8
  store i8* null, i8** %233, align 8
  %234 = load i32, i32* @Getopt.optind, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* @Getopt.optind, align 4
  br label %236

; <label>:236:                                    ; preds = %232, %220
  br label %355

; <label>:237:                                    ; preds = %66, %63
  %238 = load i8*, i8** @Getopt.optptr, align 8
  %239 = icmp eq i8* %238, null
  br i1 %239, label %240, label %247

; <label>:240:                                    ; preds = %237
  %241 = load i8**, i8*** %11, align 8
  %242 = load i32, i32* @Getopt.optind, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  store i8* %246, i8** @Getopt.optptr, align 8
  br label %247

; <label>:247:                                    ; preds = %240, %237
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %18, align 4
  br label %248

; <label>:248:                                    ; preds = %277, %247
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %280

; <label>:252:                                    ; preds = %248
  %253 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %254 = load i32, i32* %18, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %253, i64 %255
  %257 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %276

; <label>:260:                                    ; preds = %252
  %261 = load i8*, i8** @Getopt.optptr, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %265 = load i32, i32* %18, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %264, i64 %266
  %268 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %263, %272
  br i1 %273, label %274, label %276

; <label>:274:                                    ; preds = %260
  %275 = load i32, i32* %18, align 4
  store i32 %275, i32* %21, align 4
  br label %280

; <label>:276:                                    ; preds = %260, %252
  br label %277

; <label>:277:                                    ; preds = %276
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  br label %248

; <label>:280:                                    ; preds = %274, %248
  %281 = load i32, i32* %21, align 4
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %288

; <label>:283:                                    ; preds = %280
  %284 = load i8*, i8** @Getopt.optptr, align 8
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = load i8*, i8** %14, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %286, i8* %287)
  br label %288

; <label>:288:                                    ; preds = %283, %280
  %289 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %289, i64 %291
  %293 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load i8**, i8*** %16, align 8
  store i8* %294, i8** %295, align 8
  %296 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %297 = load i32, i32* %21, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %296, i64 %298
  %300 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %340

; <label>:303:                                    ; preds = %288
  %304 = load i8*, i8** @Getopt.optptr, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 1
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

; <label>:309:                                    ; preds = %303
  %310 = load i8*, i8** @Getopt.optptr, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 1
  %312 = load i8**, i8*** %17, align 8
  store i8* %311, i8** %312, align 8
  %313 = load i32, i32* @Getopt.optind, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* @Getopt.optind, align 4
  br label %339

; <label>:315:                                    ; preds = %303
  %316 = load i32, i32* @Getopt.optind, align 4
  %317 = add nsw i32 %316, 1
  %318 = load i32, i32* %10, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %330

; <label>:320:                                    ; preds = %315
  %321 = load i8**, i8*** %11, align 8
  %322 = load i32, i32* @Getopt.optind, align 4
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8*, i8** %321, i64 %324
  %326 = load i8*, i8** %325, align 8
  %327 = load i8**, i8*** %17, align 8
  store i8* %326, i8** %327, align 8
  %328 = load i32, i32* @Getopt.optind, align 4
  %329 = add nsw i32 %328, 2
  store i32 %329, i32* @Getopt.optind, align 4
  br label %338

; <label>:330:                                    ; preds = %315
  %331 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %332 = load i32, i32* %21, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %331, i64 %333
  %335 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = load i8*, i8** %14, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* %336, i8* %337)
  br label %338

; <label>:338:                                    ; preds = %330, %320
  br label %339

; <label>:339:                                    ; preds = %338, %309
  store i8* null, i8** @Getopt.optptr, align 8
  br label %354

; <label>:340:                                    ; preds = %288
  %341 = load i8**, i8*** %17, align 8
  store i8* null, i8** %341, align 8
  %342 = load i8*, i8** @Getopt.optptr, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 1
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %350

; <label>:347:                                    ; preds = %340
  %348 = load i8*, i8** @Getopt.optptr, align 8
  %349 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %349, i8** @Getopt.optptr, align 8
  br label %353

; <label>:350:                                    ; preds = %340
  %351 = load i32, i32* @Getopt.optind, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* @Getopt.optind, align 4
  store i8* null, i8** @Getopt.optptr, align 8
  br label %353

; <label>:353:                                    ; preds = %350, %347
  br label %354

; <label>:354:                                    ; preds = %353, %339
  br label %355

; <label>:355:                                    ; preds = %354, %236
  %356 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %357 = load i32, i32* %21, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %356, i64 %358
  %360 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %429

; <label>:363:                                    ; preds = %355
  %364 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %365 = load i32, i32* %21, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %364, i64 %366
  %368 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %384

; <label>:371:                                    ; preds = %363
  %372 = load i8**, i8*** %17, align 8
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @IsInt(i8* %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %384, label %376

; <label>:376:                                    ; preds = %371
  %377 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %378 = load i32, i32* %21, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %377, i64 %379
  %381 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = load i8*, i8** %14, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i8* %382, i8* %383)
  br label %428

; <label>:384:                                    ; preds = %371, %363
  %385 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %386 = load i32, i32* %21, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %385, i64 %387
  %389 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 2
  br i1 %391, label %392, label %405

; <label>:392:                                    ; preds = %384
  %393 = load i8**, i8*** %17, align 8
  %394 = load i8*, i8** %393, align 8
  %395 = call i32 @IsReal(i8* %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %405, label %397

; <label>:397:                                    ; preds = %392
  %398 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %399 = load i32, i32* %21, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %398, i64 %400
  %402 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %401, i32 0, i32 0
  %403 = load i8*, i8** %402, align 8
  %404 = load i8*, i8** %14, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i8* %403, i8* %404)
  br label %427

; <label>:405:                                    ; preds = %392, %384
  %406 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %407 = load i32, i32* %21, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %406, i64 %408
  %410 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 4
  %412 = icmp eq i32 %411, 3
  br i1 %412, label %413, label %426

; <label>:413:                                    ; preds = %405
  %414 = load i8**, i8*** %17, align 8
  %415 = load i8*, i8** %414, align 8
  %416 = call i64 @strlen(i8* %415) #3
  %417 = icmp ne i64 %416, 1
  br i1 %417, label %418, label %426

; <label>:418:                                    ; preds = %413
  %419 = load %struct.opt_s*, %struct.opt_s** %12, align 8
  %420 = load i32, i32* %21, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %419, i64 %421
  %423 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %422, i32 0, i32 0
  %424 = load i8*, i8** %423, align 8
  %425 = load i8*, i8** %14, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i8* %424, i8* %425)
  br label %426

; <label>:426:                                    ; preds = %418, %413, %405
  br label %427

; <label>:427:                                    ; preds = %426, %397
  br label %428

; <label>:428:                                    ; preds = %427, %376
  br label %429

; <label>:429:                                    ; preds = %428, %355
  %430 = load i32, i32* @Getopt.optind, align 4
  %431 = load i32*, i32** %15, align 8
  store i32 %430, i32* %431, align 4
  store i32 1, i32* %9, align 4
  br label %432

; <label>:432:                                    ; preds = %429, %56, %43
  %433 = load i32, i32* %9, align 4
  ret i32 %433
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare void @Die(i8*, ...) #2

declare i32 @IsInt(i8*) #2

declare i32 @IsReal(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
