; ModuleID = 'eps.c'
source_filename = "eps.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"No EPS fmt if alignment is >50 columns\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Alignment too wide to write in EPS\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Too many seqs to write in EPS\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%%!PS-Adobe-3.0 EPSF-3.0\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%%%%Pages: 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%%%%EndComments\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"/%s findfont\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%d scalefont\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"setfont\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"newpath\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"%d %d moveto\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"(%s) show\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"(%c) show\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @EPSWriteSmallMSA(%struct._IO_FILE*, %struct.msa_struct*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.msa_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.msa_struct* %1, %struct.msa_struct** %4, align 8
  store i32 8, i32* %6, align 4
  store i32 9, i32* %7, align 4
  store i32 15, i32* %8, align 4
  %18 = call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 -1)
  store i8* %18, i8** %9, align 8
  store i32 12, i32* %10, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %19

; <label>:19:                                     ; preds = %40, %2
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %22 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %43

; <label>:25:                                     ; preds = %19
  %26 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %27 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32) #4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %25
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %19

; <label>:43:                                     ; preds = %19
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %50 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 50
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %43
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0))
  br label %54

; <label>:54:                                     ; preds = %53, %43
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %58 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %56, %59
  %61 = add nsw i32 %55, %60
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %62, 612
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %54
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %65

; <label>:65:                                     ; preds = %64, %54
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %68 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp sgt i32 %71, 792
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %65
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %74

; <label>:74:                                     ; preds = %73, %65
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 %78, i32 %79)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %86)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %89)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %11, align 4
  br label %95

; <label>:95:                                     ; preds = %155, %74
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %98 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %158

; <label>:101:                                    ; preds = %95
  %102 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %103 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %107, %108
  store i32 %109, i32* %17, align 4
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %111 = load i32, i32* %17, align 4
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 %111)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %114 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %115 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* %120)
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %123

; <label>:123:                                    ; preds = %151, %101
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %126 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %154

; <label>:129:                                    ; preds = %123
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %131, i32 %132)
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %135 = load %struct.msa_struct*, %struct.msa_struct** %4, align 8
  %136 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 %146)
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %16, align 4
  br label %151

; <label>:151:                                    ; preds = %129
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %123

; <label>:154:                                    ; preds = %123
  br label %155

; <label>:155:                                    ; preds = %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %95

; <label>:158:                                    ; preds = %95
  %159 = load i8*, i8** %9, align 8
  call void @free(i8* %159) #5
  ret void
}

declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @Die(i8*, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
