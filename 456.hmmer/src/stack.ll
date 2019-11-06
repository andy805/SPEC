; ModuleID = 'stack.c'
source_filename = "stack.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.intstack_s = type { i32, %struct.intstack_s* }

@.str = private unnamed_addr constant [40 x i8] c"Memory allocation failure at %s line %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stack.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.intstack_s* @InitIntStack() #0 {
  %1 = alloca %struct.intstack_s*, align 8
  %2 = call noalias i8* @malloc(i64 16) #3
  %3 = bitcast i8* %2 to %struct.intstack_s*
  store %struct.intstack_s* %3, %struct.intstack_s** %1, align 8
  %4 = icmp eq %struct.intstack_s* %3, null
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %0
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 42)
  br label %6

; <label>:6:                                      ; preds = %5, %0
  %7 = load %struct.intstack_s*, %struct.intstack_s** %1, align 8
  %8 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %7, i32 0, i32 1
  store %struct.intstack_s* null, %struct.intstack_s** %8, align 8
  %9 = load %struct.intstack_s*, %struct.intstack_s** %1, align 8
  ret %struct.intstack_s* %9
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @Die(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @PushIntStack(%struct.intstack_s*, i32) #0 {
  %3 = alloca %struct.intstack_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intstack_s*, align 8
  store %struct.intstack_s* %0, %struct.intstack_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call noalias i8* @malloc(i64 16) #3
  %7 = bitcast i8* %6 to %struct.intstack_s*
  store %struct.intstack_s* %7, %struct.intstack_s** %5, align 8
  %8 = icmp eq %struct.intstack_s* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 52)
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.intstack_s*, %struct.intstack_s** %5, align 8
  %13 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.intstack_s*, %struct.intstack_s** %3, align 8
  %15 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %14, i32 0, i32 1
  %16 = load %struct.intstack_s*, %struct.intstack_s** %15, align 8
  %17 = load %struct.intstack_s*, %struct.intstack_s** %5, align 8
  %18 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %17, i32 0, i32 1
  store %struct.intstack_s* %16, %struct.intstack_s** %18, align 8
  %19 = load %struct.intstack_s*, %struct.intstack_s** %5, align 8
  %20 = load %struct.intstack_s*, %struct.intstack_s** %3, align 8
  %21 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %20, i32 0, i32 1
  store %struct.intstack_s* %19, %struct.intstack_s** %21, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @PopIntStack(%struct.intstack_s*, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intstack_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.intstack_s*, align 8
  store %struct.intstack_s* %0, %struct.intstack_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.intstack_s*, %struct.intstack_s** %4, align 8
  %8 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %7, i32 0, i32 1
  %9 = load %struct.intstack_s*, %struct.intstack_s** %8, align 8
  %10 = icmp eq %struct.intstack_s* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

; <label>:12:                                     ; preds = %2
  %13 = load %struct.intstack_s*, %struct.intstack_s** %4, align 8
  %14 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %13, i32 0, i32 1
  %15 = load %struct.intstack_s*, %struct.intstack_s** %14, align 8
  store %struct.intstack_s* %15, %struct.intstack_s** %6, align 8
  %16 = load %struct.intstack_s*, %struct.intstack_s** %6, align 8
  %17 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %16, i32 0, i32 1
  %18 = load %struct.intstack_s*, %struct.intstack_s** %17, align 8
  %19 = load %struct.intstack_s*, %struct.intstack_s** %4, align 8
  %20 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %19, i32 0, i32 1
  store %struct.intstack_s* %18, %struct.intstack_s** %20, align 8
  %21 = load %struct.intstack_s*, %struct.intstack_s** %6, align 8
  %22 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.intstack_s*, %struct.intstack_s** %6, align 8
  %26 = bitcast %struct.intstack_s* %25 to i8*
  call void @free(i8* %26) #3
  store i32 1, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %12, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @ReverseIntStack(%struct.intstack_s*) #0 {
  %2 = alloca %struct.intstack_s*, align 8
  %3 = alloca %struct.intstack_s*, align 8
  %4 = alloca %struct.intstack_s*, align 8
  store %struct.intstack_s* %0, %struct.intstack_s** %2, align 8
  %5 = load %struct.intstack_s*, %struct.intstack_s** %2, align 8
  %6 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %5, i32 0, i32 1
  %7 = load %struct.intstack_s*, %struct.intstack_s** %6, align 8
  store %struct.intstack_s* %7, %struct.intstack_s** %3, align 8
  %8 = load %struct.intstack_s*, %struct.intstack_s** %2, align 8
  %9 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %8, i32 0, i32 1
  store %struct.intstack_s* null, %struct.intstack_s** %9, align 8
  br label %10

; <label>:10:                                     ; preds = %13, %1
  %11 = load %struct.intstack_s*, %struct.intstack_s** %3, align 8
  %12 = icmp ne %struct.intstack_s* %11, null
  br i1 %12, label %13, label %26

; <label>:13:                                     ; preds = %10
  %14 = load %struct.intstack_s*, %struct.intstack_s** %3, align 8
  store %struct.intstack_s* %14, %struct.intstack_s** %4, align 8
  %15 = load %struct.intstack_s*, %struct.intstack_s** %3, align 8
  %16 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %15, i32 0, i32 1
  %17 = load %struct.intstack_s*, %struct.intstack_s** %16, align 8
  store %struct.intstack_s* %17, %struct.intstack_s** %3, align 8
  %18 = load %struct.intstack_s*, %struct.intstack_s** %2, align 8
  %19 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %18, i32 0, i32 1
  %20 = load %struct.intstack_s*, %struct.intstack_s** %19, align 8
  %21 = load %struct.intstack_s*, %struct.intstack_s** %4, align 8
  %22 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %21, i32 0, i32 1
  store %struct.intstack_s* %20, %struct.intstack_s** %22, align 8
  %23 = load %struct.intstack_s*, %struct.intstack_s** %4, align 8
  %24 = load %struct.intstack_s*, %struct.intstack_s** %2, align 8
  %25 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %24, i32 0, i32 1
  store %struct.intstack_s* %23, %struct.intstack_s** %25, align 8
  br label %10

; <label>:26:                                     ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FreeIntStack(%struct.intstack_s*) #0 {
  %2 = alloca %struct.intstack_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intstack_s* %0, %struct.intstack_s** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %9, %1
  %6 = load %struct.intstack_s*, %struct.intstack_s** %2, align 8
  %7 = call i32 @PopIntStack(%struct.intstack_s* %6, i32* %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  br label %5

; <label>:12:                                     ; preds = %5
  %13 = load %struct.intstack_s*, %struct.intstack_s** %2, align 8
  %14 = bitcast %struct.intstack_s* %13 to i8*
  call void @free(i8* %14) #3
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
