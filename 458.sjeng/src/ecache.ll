; ModuleID = 'ecache.c'
source_filename = "ecache.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ECacheType = type { i32, i32, i32 }

@hash = external global i32, align 4
@ECacheSize = external global i32, align 4
@ECache = common global %struct.ECacheType* null, align 8
@hold_hash = external global i32, align 4
@ECacheProbes = common global i32 0, align 4
@ECacheHits = common global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Out of memory allocating ECache.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @storeECache(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @hash, align 4
  %5 = load i32, i32* @ECacheSize, align 4
  %6 = urem i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @hash, align 4
  %8 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %8, i64 %10
  %12 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %11, i32 0, i32 0
  store i32 %7, i32* %12, align 4
  %13 = load i32, i32* @hold_hash, align 4
  %14 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %14, i64 %16
  %18 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %17, i32 0, i32 1
  store i32 %13, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %20, i64 %22
  %24 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %23, i32 0, i32 2
  store i32 %19, i32* %24, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @checkECache(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @ECacheProbes, align 4
  %7 = add i32 %6, 1
  store i32 %7, i32* @ECacheProbes, align 4
  %8 = load i32, i32* @hash, align 4
  %9 = load i32, i32* @ECacheSize, align 4
  %10 = urem i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %11, i64 %13
  %15 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @hash, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %39

; <label>:19:                                     ; preds = %2
  %20 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %20, i64 %22
  %24 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @hold_hash, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* @ECacheHits, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* @ECacheHits, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 1, i32* %31, align 4
  %32 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %32, i64 %34
  %36 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %3, align 8
  store i32 %37, i32* %38, align 4
  br label %39

; <label>:39:                                     ; preds = %28, %19, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @reset_ecache() #0 {
  %1 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %2 = bitcast %struct.ECacheType* %1 to i8*
  %3 = load i32, i32* @ECacheSize, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 12, %4
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %5, i32 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @alloc_ecache() #0 {
  %1 = load i32, i32* @ECacheSize, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 12, %2
  %4 = call noalias i8* @malloc(i64 %3) #5
  %5 = bitcast i8* %4 to %struct.ECacheType*
  store %struct.ECacheType* %5, %struct.ECacheType** @ECache, align 8
  %6 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %7 = icmp eq %struct.ECacheType* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:10:                                     ; preds = %0
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @free_ecache() #0 {
  %1 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %2 = bitcast %struct.ECacheType* %1 to i8*
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
