; ModuleID = 'rcfile.c'
source_filename = "rcfile.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@TTSize = common global i32 0, align 4
@ECacheSize = common global i32 0, align 4
@PBSize = common global i32 0, align 4
@cfg_devscale = common global i32 0, align 4
@cfg_scalefac = common global float 0.000000e+00, align 4
@cfg_razordrop = common global i32 0, align 4
@cfg_cutdrop = common global i32 0, align 4
@cfg_futprune = common global i32 0, align 4
@cfg_smarteval = common global i32 0, align 4
@cfg_attackeval = common global i32 0, align 4
@cfg_onerep = common global i32 0, align 4
@cfg_recap = common global i32 0, align 4
@havercfile = common global i32 0, align 4
@setcode = external global [30 x i8], align 16
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@rcfile = common global %struct._IO_FILE* null, align 8
@line = common global [256 x i8] zeroinitializer, align 16
@cfg_booklearn = common global i32 0, align 4
@cfg_ksafety = common global [15 x [9 x i32]] zeroinitializer, align 16
@cfg_tropism = common global [5 x [7 x i32]] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define void @read_rcfile() #0 {
  %1 = alloca i32, align 4
  store i32 3000000, i32* @TTSize, align 4
  store i32 1000000, i32* @ECacheSize, align 4
  store i32 200000, i32* @PBSize, align 4
  store i32 1, i32* @cfg_devscale, align 4
  store float 1.000000e+00, float* @cfg_scalefac, align 4
  store i32 1, i32* @cfg_razordrop, align 4
  store i32 0, i32* @cfg_cutdrop, align 4
  store i32 1, i32* @cfg_futprune, align 4
  store i32 1, i32* @cfg_smarteval, align 4
  store i32 0, i32* @cfg_attackeval, align 4
  store i32 1, i32* @cfg_onerep, align 4
  store i32 0, i32* @cfg_recap, align 4
  store i32 0, i32* @havercfile, align 4
  %2 = load i32, i32* @havercfile, align 4
  %3 = load i32, i32* @cfg_devscale, align 4
  %4 = shl i32 %3, 1
  %5 = add nsw i32 %2, %4
  %6 = add nsw i32 %5, 4
  %7 = load i32, i32* @cfg_razordrop, align 4
  %8 = shl i32 %7, 3
  %9 = add nsw i32 %6, %8
  %10 = load i32, i32* @cfg_cutdrop, align 4
  %11 = shl i32 %10, 4
  %12 = add nsw i32 %9, %11
  %13 = load i32, i32* @cfg_futprune, align 4
  %14 = shl i32 %13, 5
  %15 = add nsw i32 %12, %14
  %16 = load i32, i32* @cfg_smarteval, align 4
  %17 = shl i32 %16, 6
  %18 = add nsw i32 %15, %17
  %19 = load i32, i32* @cfg_attackeval, align 4
  %20 = shl i32 %19, 7
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @setcode, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %22) #3
  call void @initialize_eval()
  call void @alloc_hash()
  call void @alloc_ecache()
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare void @initialize_eval() #2

declare void @alloc_hash() #2

declare void @alloc_ecache() #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
