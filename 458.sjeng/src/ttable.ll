; ModuleID = 'ttable.c'
source_filename = "ttable.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TType = type { i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.QTType = type { i8, i8, i16, i32, i32, i32 }

@DP_TTable = common global %struct.TType* null, align 8
@TTSize = external global i32, align 4
@AS_TTable = common global %struct.TType* null, align 8
@QS_TTable = common global %struct.QTType* null, align 8
@zobrist = common global [14 x [144 x i32]] zeroinitializer, align 16
@hash = common global i32 0, align 4
@hold_hash = external global i32, align 4
@board = external global [144 x i32], align 16
@TTStores = common global i32 0, align 4
@white_to_move = external global i32, align 4
@is_pondering = external global i32, align 4
@ply = external global i32, align 4
@Variant = external global i32, align 4
@TTProbes = common global i32 0, align 4
@TTHits = common global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Out of memory allocating hashtables.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @clear_tt() #0 {
  %1 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %2 = bitcast %struct.TType* %1 to i8*
  %3 = load i32, i32* @TTSize, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 20, %4
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %5, i32 4, i1 false)
  %6 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %7 = bitcast %struct.TType* %6 to i8*
  %8 = load i32, i32* @TTSize, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 20, %9
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %10, i32 4, i1 false)
  %11 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %12 = bitcast %struct.QTType* %11 to i8*
  %13 = load i32, i32* @TTSize, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 16, %14
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 %15, i32 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @clear_dp_tt() #0 {
  %1 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %2 = bitcast %struct.TType* %1 to i8*
  %3 = load i32, i32* @TTSize, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 20, %4
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %5, i32 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @initialize_zobrist() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @seedMT(i32 31657)
  store i32 0, i32* %1, align 4
  br label %3

; <label>:3:                                      ; preds = %22, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 14
  br i1 %5, label %6, label %25

; <label>:6:                                      ; preds = %3
  store i32 0, i32* %2, align 4
  br label %7

; <label>:7:                                      ; preds = %18, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 144
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %7
  %11 = call i32 @randomMT()
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %13
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [144 x i32], [144 x i32]* %14, i64 0, i64 %16
  store i32 %11, i32* %17, align 4
  br label %18

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %7

; <label>:21:                                     ; preds = %7
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %3

; <label>:25:                                     ; preds = %3
  store i32 -559038737, i32* @hash, align 4
  store i32 -1056969216, i32* @hold_hash, align 4
  ret void
}

declare void @seedMT(i32) #2

declare i32 @randomMT() #2

; Function Attrs: noinline nounwind optnone uwtable
define void @initialize_hash() #0 {
  %1 = alloca i32, align 4
  store i32 -559038737, i32* @hash, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %31, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 144
  br i1 %4, label %5, label %34

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 13
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* @hash, align 4
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i64 0, i64 %23
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [144 x i32], [144 x i32]* %24, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %18, %28
  store i32 %29, i32* @hash, align 4
  br label %30

; <label>:30:                                     ; preds = %17, %11, %5
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %2

; <label>:34:                                     ; preds = %2
  store i32 -1056969216, i32* @hold_hash, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @QStoreTT(i32, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @TTStores, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* @TTStores, align 4
  %12 = load i32, i32* @hash, align 4
  %13 = load i32, i32* @TTSize, align 4
  %14 = urem i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %4
  %19 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.QTType, %struct.QTType* %19, i64 %21
  %23 = getelementptr inbounds %struct.QTType, %struct.QTType* %22, i32 0, i32 1
  store i8 1, i8* %23, align 1
  br label %41

; <label>:24:                                     ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %24
  %29 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.QTType, %struct.QTType* %29, i64 %31
  %33 = getelementptr inbounds %struct.QTType, %struct.QTType* %32, i32 0, i32 1
  store i8 2, i8* %33, align 1
  br label %40

; <label>:34:                                     ; preds = %24
  %35 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.QTType, %struct.QTType* %35, i64 %37
  %39 = getelementptr inbounds %struct.QTType, %struct.QTType* %38, i32 0, i32 1
  store i8 3, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %34, %28
  br label %41

; <label>:41:                                     ; preds = %40, %18
  %42 = load i32, i32* @hash, align 4
  %43 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.QTType, %struct.QTType* %43, i64 %45
  %47 = getelementptr inbounds %struct.QTType, %struct.QTType* %46, i32 0, i32 3
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* @hold_hash, align 4
  %49 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.QTType, %struct.QTType* %49, i64 %51
  %53 = getelementptr inbounds %struct.QTType, %struct.QTType* %52, i32 0, i32 4
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = trunc i32 %54 to i16
  %56 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.QTType, %struct.QTType* %56, i64 %58
  %60 = getelementptr inbounds %struct.QTType, %struct.QTType* %59, i32 0, i32 2
  store i16 %55, i16* %60, align 2
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.QTType, %struct.QTType* %62, i64 %64
  %66 = getelementptr inbounds %struct.QTType, %struct.QTType* %65, i32 0, i32 5
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* @white_to_move, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 0, i32 1
  %71 = trunc i32 %70 to i8
  %72 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.QTType, %struct.QTType* %72, i64 %74
  %76 = getelementptr inbounds %struct.QTType, %struct.QTType* %75, i32 0, i32 0
  store i8 %71, i8* %76, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @StoreTT(i32, i32, i32, i32, i32, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @TTStores, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* @TTStores, align 4
  %16 = load i32, i32* @hash, align 4
  %17 = load i32, i32* @TTSize, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %20 = load i32, i32* %13, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TType, %struct.TType* %19, i64 %21
  %23 = getelementptr inbounds %struct.TType, %struct.TType* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 4
  %25 = sext i8 %24 to i32
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %59, label %28

; <label>:28:                                     ; preds = %6
  %29 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %30 = load i32, i32* %13, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TType, %struct.TType* %29, i64 %31
  %33 = getelementptr inbounds %struct.TType, %struct.TType* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 4
  %35 = sext i8 %34 to i32
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %162

; <label>:38:                                     ; preds = %28
  %39 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TType, %struct.TType* %39, i64 %41
  %43 = getelementptr inbounds %struct.TType, %struct.TType* %42, i32 0, i32 3
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %59, label %51

; <label>:51:                                     ; preds = %47, %38
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %162

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %162

; <label>:59:                                     ; preds = %55, %47, %6
  %60 = load i32, i32* @is_pondering, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %162, label %62

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %76

; <label>:66:                                     ; preds = %62
  %67 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %68 = load i32, i32* %13, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TType, %struct.TType* %67, i64 %69
  %71 = getelementptr inbounds %struct.TType, %struct.TType* %70, i32 0, i32 3
  store i8 1, i8* %71, align 1
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, -999500
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %66
  store i32 -999500, i32* %7, align 4
  br label %75

; <label>:75:                                     ; preds = %74, %66
  br label %112

; <label>:76:                                     ; preds = %62
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %90

; <label>:80:                                     ; preds = %76
  %81 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TType, %struct.TType* %81, i64 %83
  %85 = getelementptr inbounds %struct.TType, %struct.TType* %84, i32 0, i32 3
  store i8 2, i8* %85, align 1
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %86, 999500
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %80
  store i32 999500, i32* %7, align 4
  br label %89

; <label>:89:                                     ; preds = %88, %80
  br label %111

; <label>:90:                                     ; preds = %76
  %91 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TType, %struct.TType* %91, i64 %93
  %95 = getelementptr inbounds %struct.TType, %struct.TType* %94, i32 0, i32 3
  store i8 3, i8* %95, align 1
  %96 = load i32, i32* %7, align 4
  %97 = icmp sgt i32 %96, 999500
  br i1 %97, label %98, label %102

; <label>:98:                                     ; preds = %90
  %99 = load i32, i32* @ply, align 4
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %110

; <label>:102:                                    ; preds = %90
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, -999500
  br i1 %104, label %105, label %109

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* @ply, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %109

; <label>:109:                                    ; preds = %105, %102
  br label %110

; <label>:110:                                    ; preds = %109, %98
  br label %111

; <label>:111:                                    ; preds = %110, %89
  br label %112

; <label>:112:                                    ; preds = %111, %75
  %113 = load i32, i32* @hash, align 4
  %114 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TType, %struct.TType* %114, i64 %116
  %118 = getelementptr inbounds %struct.TType, %struct.TType* %117, i32 0, i32 5
  store i32 %113, i32* %118, align 4
  %119 = load i32, i32* @hold_hash, align 4
  %120 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %121 = load i32, i32* %13, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TType, %struct.TType* %120, i64 %122
  %124 = getelementptr inbounds %struct.TType, %struct.TType* %123, i32 0, i32 6
  store i32 %119, i32* %124, align 4
  %125 = load i32, i32* %12, align 4
  %126 = trunc i32 %125 to i8
  %127 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %128 = load i32, i32* %13, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TType, %struct.TType* %127, i64 %129
  %131 = getelementptr inbounds %struct.TType, %struct.TType* %130, i32 0, i32 0
  store i8 %126, i8* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = trunc i32 %132 to i16
  %134 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %135 = load i32, i32* %13, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TType, %struct.TType* %134, i64 %136
  %138 = getelementptr inbounds %struct.TType, %struct.TType* %137, i32 0, i32 4
  store i16 %133, i16* %138, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %141 = load i32, i32* %13, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TType, %struct.TType* %140, i64 %142
  %144 = getelementptr inbounds %struct.TType, %struct.TType* %143, i32 0, i32 7
  store i32 %139, i32* %144, align 4
  %145 = load i32, i32* @white_to_move, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 0, i32 1
  %149 = trunc i32 %148 to i8
  %150 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %151 = load i32, i32* %13, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TType, %struct.TType* %150, i64 %152
  %154 = getelementptr inbounds %struct.TType, %struct.TType* %153, i32 0, i32 1
  store i8 %149, i8* %154, align 1
  %155 = load i32, i32* %11, align 4
  %156 = trunc i32 %155 to i8
  %157 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %158 = load i32, i32* %13, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TType, %struct.TType* %157, i64 %159
  %161 = getelementptr inbounds %struct.TType, %struct.TType* %160, i32 0, i32 2
  store i8 %156, i8* %161, align 2
  br label %262

; <label>:162:                                    ; preds = %59, %55, %51, %28
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp sle i32 %163, %164
  br i1 %165, label %166, label %176

; <label>:166:                                    ; preds = %162
  %167 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %168 = load i32, i32* %13, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TType, %struct.TType* %167, i64 %169
  %171 = getelementptr inbounds %struct.TType, %struct.TType* %170, i32 0, i32 3
  store i8 1, i8* %171, align 1
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %172, -999500
  br i1 %173, label %174, label %175

; <label>:174:                                    ; preds = %166
  store i32 -999500, i32* %7, align 4
  br label %175

; <label>:175:                                    ; preds = %174, %166
  br label %212

; <label>:176:                                    ; preds = %162
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %190

; <label>:180:                                    ; preds = %176
  %181 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %182 = load i32, i32* %13, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TType, %struct.TType* %181, i64 %183
  %185 = getelementptr inbounds %struct.TType, %struct.TType* %184, i32 0, i32 3
  store i8 2, i8* %185, align 1
  %186 = load i32, i32* %7, align 4
  %187 = icmp sgt i32 %186, 999500
  br i1 %187, label %188, label %189

; <label>:188:                                    ; preds = %180
  store i32 999500, i32* %7, align 4
  br label %189

; <label>:189:                                    ; preds = %188, %180
  br label %211

; <label>:190:                                    ; preds = %176
  %191 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %192 = load i32, i32* %13, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TType, %struct.TType* %191, i64 %193
  %195 = getelementptr inbounds %struct.TType, %struct.TType* %194, i32 0, i32 3
  store i8 3, i8* %195, align 1
  %196 = load i32, i32* %7, align 4
  %197 = icmp sgt i32 %196, 999500
  br i1 %197, label %198, label %202

; <label>:198:                                    ; preds = %190
  %199 = load i32, i32* @ply, align 4
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %7, align 4
  br label %210

; <label>:202:                                    ; preds = %190
  %203 = load i32, i32* %7, align 4
  %204 = icmp slt i32 %203, -999500
  br i1 %204, label %205, label %209

; <label>:205:                                    ; preds = %202
  %206 = load i32, i32* @ply, align 4
  %207 = load i32, i32* %7, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %7, align 4
  br label %209

; <label>:209:                                    ; preds = %205, %202
  br label %210

; <label>:210:                                    ; preds = %209, %198
  br label %211

; <label>:211:                                    ; preds = %210, %189
  br label %212

; <label>:212:                                    ; preds = %211, %175
  %213 = load i32, i32* @hash, align 4
  %214 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %215 = load i32, i32* %13, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TType, %struct.TType* %214, i64 %216
  %218 = getelementptr inbounds %struct.TType, %struct.TType* %217, i32 0, i32 5
  store i32 %213, i32* %218, align 4
  %219 = load i32, i32* @hold_hash, align 4
  %220 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %221 = load i32, i32* %13, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TType, %struct.TType* %220, i64 %222
  %224 = getelementptr inbounds %struct.TType, %struct.TType* %223, i32 0, i32 6
  store i32 %219, i32* %224, align 4
  %225 = load i32, i32* %12, align 4
  %226 = trunc i32 %225 to i8
  %227 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %228 = load i32, i32* %13, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TType, %struct.TType* %227, i64 %229
  %231 = getelementptr inbounds %struct.TType, %struct.TType* %230, i32 0, i32 0
  store i8 %226, i8* %231, align 4
  %232 = load i32, i32* %10, align 4
  %233 = trunc i32 %232 to i16
  %234 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %235 = load i32, i32* %13, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TType, %struct.TType* %234, i64 %236
  %238 = getelementptr inbounds %struct.TType, %struct.TType* %237, i32 0, i32 4
  store i16 %233, i16* %238, align 4
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %241 = load i32, i32* %13, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TType, %struct.TType* %240, i64 %242
  %244 = getelementptr inbounds %struct.TType, %struct.TType* %243, i32 0, i32 7
  store i32 %239, i32* %244, align 4
  %245 = load i32, i32* @white_to_move, align 4
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 0, i32 1
  %249 = trunc i32 %248 to i8
  %250 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %251 = load i32, i32* %13, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TType, %struct.TType* %250, i64 %252
  %254 = getelementptr inbounds %struct.TType, %struct.TType* %253, i32 0, i32 1
  store i8 %249, i8* %254, align 1
  %255 = load i32, i32* %11, align 4
  %256 = trunc i32 %255 to i8
  %257 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %258 = load i32, i32* %13, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TType, %struct.TType* %257, i64 %259
  %261 = getelementptr inbounds %struct.TType, %struct.TType* %260, i32 0, i32 2
  store i8 %256, i8* %261, align 2
  br label %262

; <label>:262:                                    ; preds = %212, %112
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @LearnStoreTT(i32, i32, i32, i32, i32, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @TTSize, align 4
  %16 = urem i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = trunc i32 %17 to i8
  %19 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %20 = load i32, i32* %13, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TType, %struct.TType* %19, i64 %21
  %23 = getelementptr inbounds %struct.TType, %struct.TType* %22, i32 0, i32 0
  store i8 %18, i8* %23, align 4
  %24 = load i32, i32* @Variant, align 4
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %35

; <label>:26:                                     ; preds = %6
  %27 = load i32, i32* @Variant, align 4
  %28 = icmp ne i32 %27, 4
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %26
  %30 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %31 = load i32, i32* %13, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TType, %struct.TType* %30, i64 %32
  %34 = getelementptr inbounds %struct.TType, %struct.TType* %33, i32 0, i32 3
  store i8 3, i8* %34, align 1
  br label %41

; <label>:35:                                     ; preds = %26, %6
  %36 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TType, %struct.TType* %36, i64 %38
  %40 = getelementptr inbounds %struct.TType, %struct.TType* %39, i32 0, i32 3
  store i8 1, i8* %40, align 1
  br label %41

; <label>:41:                                     ; preds = %35, %29
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TType, %struct.TType* %43, i64 %45
  %47 = getelementptr inbounds %struct.TType, %struct.TType* %46, i32 0, i32 5
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TType, %struct.TType* %49, i64 %51
  %53 = getelementptr inbounds %struct.TType, %struct.TType* %52, i32 0, i32 6
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = trunc i32 %54 to i16
  %56 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TType, %struct.TType* %56, i64 %58
  %60 = getelementptr inbounds %struct.TType, %struct.TType* %59, i32 0, i32 4
  store i16 %55, i16* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TType, %struct.TType* %62, i64 %64
  %66 = getelementptr inbounds %struct.TType, %struct.TType* %65, i32 0, i32 7
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = trunc i32 %67 to i8
  %69 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TType, %struct.TType* %69, i64 %71
  %73 = getelementptr inbounds %struct.TType, %struct.TType* %72, i32 0, i32 1
  store i8 %68, i8* %73, align 1
  %74 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TType, %struct.TType* %74, i64 %76
  %78 = getelementptr inbounds %struct.TType, %struct.TType* %77, i32 0, i32 2
  store i8 0, i8* %78, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ProbeTT(i32*, i32, i32*, i32*, i32*, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %12, align 8
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @TTProbes, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* @TTProbes, align 4
  %18 = load i32, i32* @hash, align 4
  %19 = load i32, i32* @TTSize, align 4
  %20 = urem i32 %18, %19
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %22 = load i32, i32* %14, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TType, %struct.TType* %21, i64 %23
  %25 = getelementptr inbounds %struct.TType, %struct.TType* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @hash, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %175

; <label>:29:                                     ; preds = %6
  %30 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %31 = load i32, i32* %14, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TType, %struct.TType* %30, i64 %32
  %34 = getelementptr inbounds %struct.TType, %struct.TType* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @hold_hash, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %175

; <label>:38:                                     ; preds = %29
  %39 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TType, %struct.TType* %39, i64 %41
  %43 = getelementptr inbounds %struct.TType, %struct.TType* %42, i32 0, i32 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i32, i32* @white_to_move, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 1
  %50 = trunc i32 %49 to i8
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %45, %51
  br i1 %52, label %53, label %175

; <label>:53:                                     ; preds = %38
  %54 = load i32, i32* @TTHits, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* @TTHits, align 4
  %56 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %57 = load i32, i32* %14, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TType, %struct.TType* %56, i64 %58
  %60 = getelementptr inbounds %struct.TType, %struct.TType* %59, i32 0, i32 3
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %87

; <label>:64:                                     ; preds = %53
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %65, 2
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %69 = load i32, i32* %14, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TType, %struct.TType* %68, i64 %70
  %72 = getelementptr inbounds %struct.TType, %struct.TType* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 4
  %74 = sext i8 %73 to i32
  %75 = icmp sle i32 %67, %74
  br i1 %75, label %76, label %87

; <label>:76:                                     ; preds = %64
  %77 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TType, %struct.TType* %77, i64 %79
  %81 = getelementptr inbounds %struct.TType, %struct.TType* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %76
  %86 = load i32*, i32** %12, align 8
  store i32 0, i32* %86, align 4
  br label %87

; <label>:87:                                     ; preds = %85, %76, %64, %53
  %88 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TType, %struct.TType* %88, i64 %90
  %92 = getelementptr inbounds %struct.TType, %struct.TType* %91, i32 0, i32 2
  %93 = load i8, i8* %92, align 2
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %98

; <label>:95:                                     ; preds = %87
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %98

; <label>:98:                                     ; preds = %95, %87
  %99 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %100 = load i32, i32* %14, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TType, %struct.TType* %99, i64 %101
  %103 = getelementptr inbounds %struct.TType, %struct.TType* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 4
  %105 = sext i8 %104 to i32
  %106 = load i32, i32* %13, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %158

; <label>:108:                                    ; preds = %98
  %109 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %110 = load i32, i32* %14, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TType, %struct.TType* %109, i64 %111
  %113 = getelementptr inbounds %struct.TType, %struct.TType* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 999500
  br i1 %118, label %119, label %124

; <label>:119:                                    ; preds = %108
  %120 = load i32, i32* @ply, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %134

; <label>:124:                                    ; preds = %108
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %126, -999500
  br i1 %127, label %128, label %133

; <label>:128:                                    ; preds = %124
  %129 = load i32, i32* @ply, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %129
  store i32 %132, i32* %130, align 4
  br label %133

; <label>:133:                                    ; preds = %128, %124
  br label %134

; <label>:134:                                    ; preds = %133, %119
  %135 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %136 = load i32, i32* %14, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TType, %struct.TType* %135, i64 %137
  %139 = getelementptr inbounds %struct.TType, %struct.TType* %138, i32 0, i32 4
  %140 = load i16, i16* %139, align 4
  %141 = zext i16 %140 to i32
  %142 = load i32*, i32** %10, align 8
  store i32 %141, i32* %142, align 4
  %143 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TType, %struct.TType* %143, i64 %145
  %147 = getelementptr inbounds %struct.TType, %struct.TType* %146, i32 0, i32 2
  %148 = load i8, i8* %147, align 2
  %149 = sext i8 %148 to i32
  %150 = load i32*, i32** %11, align 8
  store i32 %149, i32* %150, align 4
  %151 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %152 = load i32, i32* %14, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TType, %struct.TType* %151, i64 %153
  %155 = getelementptr inbounds %struct.TType, %struct.TType* %154, i32 0, i32 3
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  store i32 %157, i32* %7, align 4
  br label %331

; <label>:158:                                    ; preds = %98
  %159 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %160 = load i32, i32* %14, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TType, %struct.TType* %159, i64 %161
  %163 = getelementptr inbounds %struct.TType, %struct.TType* %162, i32 0, i32 4
  %164 = load i16, i16* %163, align 4
  %165 = zext i16 %164 to i32
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  %167 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %168 = load i32, i32* %14, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TType, %struct.TType* %167, i64 %169
  %171 = getelementptr inbounds %struct.TType, %struct.TType* %170, i32 0, i32 2
  %172 = load i8, i8* %171, align 2
  %173 = sext i8 %172 to i32
  %174 = load i32*, i32** %11, align 8
  store i32 %173, i32* %174, align 4
  store i32 0, i32* %7, align 4
  br label %331

; <label>:175:                                    ; preds = %38, %29, %6
  %176 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %177 = load i32, i32* %14, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TType, %struct.TType* %176, i64 %178
  %180 = getelementptr inbounds %struct.TType, %struct.TType* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @hash, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %330

; <label>:184:                                    ; preds = %175
  %185 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %186 = load i32, i32* %14, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TType, %struct.TType* %185, i64 %187
  %189 = getelementptr inbounds %struct.TType, %struct.TType* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @hold_hash, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %330

; <label>:193:                                    ; preds = %184
  %194 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %195 = load i32, i32* %14, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TType, %struct.TType* %194, i64 %196
  %198 = getelementptr inbounds %struct.TType, %struct.TType* %197, i32 0, i32 1
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = load i32, i32* @white_to_move, align 4
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 0, i32 1
  %205 = trunc i32 %204 to i8
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %200, %206
  br i1 %207, label %208, label %330

; <label>:208:                                    ; preds = %193
  %209 = load i32, i32* @TTHits, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* @TTHits, align 4
  %211 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %212 = load i32, i32* %14, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TType, %struct.TType* %211, i64 %213
  %215 = getelementptr inbounds %struct.TType, %struct.TType* %214, i32 0, i32 3
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %242

; <label>:219:                                    ; preds = %208
  %220 = load i32, i32* %13, align 4
  %221 = sub nsw i32 %220, 2
  %222 = sub nsw i32 %221, 1
  %223 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %224 = load i32, i32* %14, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TType, %struct.TType* %223, i64 %225
  %227 = getelementptr inbounds %struct.TType, %struct.TType* %226, i32 0, i32 0
  %228 = load i8, i8* %227, align 4
  %229 = sext i8 %228 to i32
  %230 = icmp sle i32 %222, %229
  br i1 %230, label %231, label %242

; <label>:231:                                    ; preds = %219
  %232 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %233 = load i32, i32* %14, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TType, %struct.TType* %232, i64 %234
  %236 = getelementptr inbounds %struct.TType, %struct.TType* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %242

; <label>:240:                                    ; preds = %231
  %241 = load i32*, i32** %12, align 8
  store i32 0, i32* %241, align 4
  br label %242

; <label>:242:                                    ; preds = %240, %231, %219, %208
  %243 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %244 = load i32, i32* %14, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TType, %struct.TType* %243, i64 %245
  %247 = getelementptr inbounds %struct.TType, %struct.TType* %246, i32 0, i32 2
  %248 = load i8, i8* %247, align 2
  %249 = icmp ne i8 %248, 0
  br i1 %249, label %250, label %253

; <label>:250:                                    ; preds = %242
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %13, align 4
  br label %253

; <label>:253:                                    ; preds = %250, %242
  %254 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %255 = load i32, i32* %14, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TType, %struct.TType* %254, i64 %256
  %258 = getelementptr inbounds %struct.TType, %struct.TType* %257, i32 0, i32 0
  %259 = load i8, i8* %258, align 4
  %260 = sext i8 %259 to i32
  %261 = load i32, i32* %13, align 4
  %262 = icmp sge i32 %260, %261
  br i1 %262, label %263, label %313

; <label>:263:                                    ; preds = %253
  %264 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %265 = load i32, i32* %14, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TType, %struct.TType* %264, i64 %266
  %268 = getelementptr inbounds %struct.TType, %struct.TType* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %8, align 8
  store i32 %269, i32* %270, align 4
  %271 = load i32*, i32** %8, align 8
  %272 = load i32, i32* %271, align 4
  %273 = icmp sgt i32 %272, 999500
  br i1 %273, label %274, label %279

; <label>:274:                                    ; preds = %263
  %275 = load i32, i32* @ply, align 4
  %276 = load i32*, i32** %8, align 8
  %277 = load i32, i32* %276, align 4
  %278 = sub nsw i32 %277, %275
  store i32 %278, i32* %276, align 4
  br label %289

; <label>:279:                                    ; preds = %263
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %280, align 4
  %282 = icmp slt i32 %281, -999500
  br i1 %282, label %283, label %288

; <label>:283:                                    ; preds = %279
  %284 = load i32, i32* @ply, align 4
  %285 = load i32*, i32** %8, align 8
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, %284
  store i32 %287, i32* %285, align 4
  br label %288

; <label>:288:                                    ; preds = %283, %279
  br label %289

; <label>:289:                                    ; preds = %288, %274
  %290 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %291 = load i32, i32* %14, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TType, %struct.TType* %290, i64 %292
  %294 = getelementptr inbounds %struct.TType, %struct.TType* %293, i32 0, i32 4
  %295 = load i16, i16* %294, align 4
  %296 = zext i16 %295 to i32
  %297 = load i32*, i32** %10, align 8
  store i32 %296, i32* %297, align 4
  %298 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %299 = load i32, i32* %14, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TType, %struct.TType* %298, i64 %300
  %302 = getelementptr inbounds %struct.TType, %struct.TType* %301, i32 0, i32 2
  %303 = load i8, i8* %302, align 2
  %304 = sext i8 %303 to i32
  %305 = load i32*, i32** %11, align 8
  store i32 %304, i32* %305, align 4
  %306 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %307 = load i32, i32* %14, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TType, %struct.TType* %306, i64 %308
  %310 = getelementptr inbounds %struct.TType, %struct.TType* %309, i32 0, i32 3
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  store i32 %312, i32* %7, align 4
  br label %331

; <label>:313:                                    ; preds = %253
  %314 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %315 = load i32, i32* %14, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TType, %struct.TType* %314, i64 %316
  %318 = getelementptr inbounds %struct.TType, %struct.TType* %317, i32 0, i32 4
  %319 = load i16, i16* %318, align 4
  %320 = zext i16 %319 to i32
  %321 = load i32*, i32** %10, align 8
  store i32 %320, i32* %321, align 4
  %322 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %323 = load i32, i32* %14, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TType, %struct.TType* %322, i64 %324
  %326 = getelementptr inbounds %struct.TType, %struct.TType* %325, i32 0, i32 2
  %327 = load i8, i8* %326, align 2
  %328 = sext i8 %327 to i32
  %329 = load i32*, i32** %11, align 8
  store i32 %328, i32* %329, align 4
  store i32 0, i32* %7, align 4
  br label %331

; <label>:330:                                    ; preds = %193, %184, %175
  store i32 4, i32* %7, align 4
  br label %331

; <label>:331:                                    ; preds = %330, %313, %289, %158, %134
  %332 = load i32, i32* %7, align 4
  ret i32 %332
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @QProbeTT(i32*, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @TTProbes, align 4
  %8 = add i32 %7, 1
  store i32 %8, i32* @TTProbes, align 4
  %9 = load i32, i32* @hash, align 4
  %10 = load i32, i32* @TTSize, align 4
  %11 = urem i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.QTType, %struct.QTType* %12, i64 %14
  %16 = getelementptr inbounds %struct.QTType, %struct.QTType* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @hash, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %69

; <label>:20:                                     ; preds = %2
  %21 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.QTType, %struct.QTType* %21, i64 %23
  %25 = getelementptr inbounds %struct.QTType, %struct.QTType* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @hold_hash, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %69

; <label>:29:                                     ; preds = %20
  %30 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.QTType, %struct.QTType* %30, i64 %32
  %34 = getelementptr inbounds %struct.QTType, %struct.QTType* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  %36 = sext i8 %35 to i32
  %37 = load i32, i32* @white_to_move, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 1
  %41 = trunc i32 %40 to i8
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %44, label %69

; <label>:44:                                     ; preds = %29
  %45 = load i32, i32* @TTHits, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* @TTHits, align 4
  %47 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.QTType, %struct.QTType* %47, i64 %49
  %51 = getelementptr inbounds %struct.QTType, %struct.QTType* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.QTType, %struct.QTType* %54, i64 %56
  %58 = getelementptr inbounds %struct.QTType, %struct.QTType* %57, i32 0, i32 2
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.QTType, %struct.QTType* %62, i64 %64
  %66 = getelementptr inbounds %struct.QTType, %struct.QTType* %65, i32 0, i32 1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %70

; <label>:69:                                     ; preds = %29, %20, %2
  store i32 4, i32* %3, align 4
  br label %70

; <label>:70:                                     ; preds = %69, %44
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define void @alloc_hash() #0 {
  %1 = load i32, i32* @TTSize, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 20, %2
  %4 = call noalias i8* @malloc(i64 %3) #5
  %5 = bitcast i8* %4 to %struct.TType*
  store %struct.TType* %5, %struct.TType** @AS_TTable, align 8
  %6 = load i32, i32* @TTSize, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 20, %7
  %9 = call noalias i8* @malloc(i64 %8) #5
  %10 = bitcast i8* %9 to %struct.TType*
  store %struct.TType* %10, %struct.TType** @DP_TTable, align 8
  %11 = load i32, i32* @TTSize, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 16, %12
  %14 = call noalias i8* @malloc(i64 %13) #5
  %15 = bitcast i8* %14 to %struct.QTType*
  store %struct.QTType* %15, %struct.QTType** @QS_TTable, align 8
  %16 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %17 = icmp eq %struct.TType* %16, null
  br i1 %17, label %24, label %18

; <label>:18:                                     ; preds = %0
  %19 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %20 = icmp eq %struct.TType* %19, null
  br i1 %20, label %24, label %21

; <label>:21:                                     ; preds = %18
  %22 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %23 = icmp eq %struct.QTType* %22, null
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %21, %18, %0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:26:                                     ; preds = %21
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @free_hash() #0 {
  %1 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %2 = bitcast %struct.TType* %1 to i8*
  call void @free(i8* %2) #5
  %3 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %4 = bitcast %struct.TType* %3 to i8*
  call void @free(i8* %4) #5
  %5 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %6 = bitcast %struct.QTType* %5 to i8*
  call void @free(i8* %6) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
