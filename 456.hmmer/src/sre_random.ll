; ModuleID = 'sre_random.c'
source_filename = "sre_random.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@sre_random.rnd1 = internal global i64 0, align 8
@sre_random.rnd2 = internal global i64 0, align 8
@sre_random.rnd = internal global i64 0, align 8
@sre_random.tbl = internal global [64 x i64] zeroinitializer, align 16
@sre_randseed = internal global i32 42, align 4
@Gaussrandom.a = internal global [32 x double] [double 0.000000e+00, double 0x3FA40EE372AB9920, double 0x3FB412D5F08CF069, double 1.177700e-01, double 0x3FC422C1CBE7CA7F, double 0x3FC93A8B164917A1, double 0x3FCE5CA36F057159, double 0x3FD1C5ADF49A7130, double 0x3FD46496828DE45A, double 3.601300e-01, double 0x3FD9BE77341403C3, double 0x3FDC7C7607C419A0, double 0x3FDF481CCF439F92, double 0x3FE111B1381BD040, double 0x3FE288404061EFDF, double 6.260990e-01, double 0x3FE5956BA20F89E1, double 0x3FE72F38D2AF64DD, double 0x3FE8D87287DCD8B4, double 0x3FEA938B984F16BF, double 0x3FEC638144383E35, double 0x3FEE4C09586E561F, double 1.009990e+00, double 0x3FF13D816ACEAAF3, double 0x3FF267D45A5FC7E7, double 0x3FF3AD80A17B0F6B, double 0x3FF51692B3CC4AC7, double 0x3FF6AF4BE835DEDF, double 0x3FF88BC27631B585, double 1.675940e+00, double 0x3FFDCDC011D3671B, double 0x40013B22D0E56042], align 16
@Gaussrandom.d = internal global [31 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3FD0E0341D3DFE68, double 0x3FCF0A84BE40420F, double 0x3FCCDF647F05999D, double 0x3FCB16D457DB8928, double 0x3FC9971E95167D1A, double 0x3FC84EFF41941F06, double 0x3FC73263299B03FD, double 0x3FC6389217C518A3, double 0x3FC55B134C0D1ECC, double 0x3FC494FC7BE7012B, double 0x3FC3E27FBC78C1B3, double 0x3FC3409D7F0167DF, double 0x3FC2ACEFB7B36014, double 1.417700e-01, double 0x3FC1A8C7340697CA, double 0x3FC135638F1B9156, double 0x3FC0CA402A927AC1, double 1.281260e-01, double 0x3FC0092542AFA7F9, double 0x3FBF636D8DA21492, double 0x3FBEBF1C0A21C1F2, double 0x3FBE2451EEE01D0C, double 0x3FBD923018CC7FA0, double 0x3FBD07EEE1CA8AD3, double 0x3FBC84E3292FA432, double 0x3FBC08729548D201], align 16
@Gaussrandom.t = internal global [31 x double] [double 0x3F49254603C71439, double 2.306870e-03, double 0x3F6FA04D81ACD7A9, double 0x3F7646A1E121FF95, double 7.050700e-03, double 0x3F81D5B5202A395C, double 0x3F8558F3E20F7F24, double 0x3F89014F60657072, double 0x3F8CD6A161E4F766, double 0x3F9070EDD3D884BC, double 1.815290e-02, double 0x3F94E29E454FEB50, double 0x3F975BF7F8749B5D, double 0x3F9A0B638B6AACC7, double 0x3F9CFB737E51EA83, double 0x3FA01C9A3F86D399, double 0x3FA1EA83C1EBF32E, double 0x3FA3F1E331BE1321, double 0x3FA6403AADA5EB0C, double 0x3FA8E76351083050, double 0x3FABFF7469DF41C4, double 0x3FAFA9C890D2F688, double 0x3FB20AF754E0ACFE, double 0x3FB4C5103FE9241B, double 0x3FB8394EAB33CADE, double 0x3FBCBFB308D66857, double 1.364980e-01, double 0x3FC5F9E45D0C4A91, double 0x3FCD22C958A40604, double 3.304980e-01, double 0x3FE2B5E3468BD58C], align 16
@Gaussrandom.h = internal global [31 x double] [double 0x3FA412D4C3E7200A, double 0x3FA422ACD332419C, double 3.951000e-02, double 0x3FA45B088F45ADB4, double 0x3FA4842D4BBD98A7, double 0x3FA4B68F9E9907CE, double 0x3FA4F2C935BE7DD5, double 0x3FA5399953CE893A, double 0x3FA58BEADA53F3F3, double 0x3FA5EADCAD3F93BF, double 0x3FA657CD71626DDE, double 0x3FA6D4694E4D3FFA, double 0x3FA762BE662CAFB6, double 0x3FA80556003CBBC8, double 0x3FA8BF591BD0152C, double 0x3FA994BF6A38ADF1, double 0x3FAA8A967171067D, double 0x3FABA7612D6C74C8, double 0x3FACF3ABB3CD776D, double 5.953130e-02, double 0x3FB02654D36BF84C, double 0x3FB13F7D6E6AC1C0, double 0x3FB298E43D00E75C, double 0x3FB44AB1292D4AE7, double 0x3FB67B5205DC37FA, double 0x3FB96BFC52766F73, double 1.155600e-01, double 0x3FC1F9C1219DDF79, double 0x3FC780AB8C0A64DE, double 0x3FD1DB2986E206F1, double 0x3FE66EFAF4FE443E], align 16
@Gaussrandom.i = internal global i64 0, align 8
@Gaussrandom.snorm = internal global double 0.000000e+00, align 8
@Gaussrandom.u = internal global double 0.000000e+00, align 8
@Gaussrandom.s = internal global double 0.000000e+00, align 8
@Gaussrandom.ustar = internal global double 0.000000e+00, align 8
@Gaussrandom.aa = internal global double 0.000000e+00, align 8
@Gaussrandom.w = internal global double 0.000000e+00, align 8
@Gaussrandom.y = internal global double 0.000000e+00, align 8
@Gaussrandom.tt = internal global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define double @sre_random() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 40014, i64* %4, align 8
  store i64 2147483563, i64* %5, align 8
  store i64 53668, i64* %6, align 8
  store i64 12211, i64* %7, align 8
  store i64 40692, i64* %8, align 8
  store i64 2147483399, i64* %9, align 8
  store i64 52774, i64* %10, align 8
  store i64 3791, i64* %11, align 8
  %12 = load i32, i32* @sre_randseed, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %86

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* @sre_randseed, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* @sre_random.rnd1, align 8
  %17 = load i32, i32* @sre_randseed, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* @sre_random.rnd2, align 8
  store i32 0, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %82, %14
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %85

; <label>:22:                                     ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @sre_random.rnd1, align 8
  %25 = load i64, i64* %6, align 8
  %26 = srem i64 %24, %25
  %27 = mul nsw i64 %23, %26
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @sre_random.rnd1, align 8
  %30 = load i64, i64* %6, align 8
  %31 = sdiv i64 %29, %30
  %32 = mul nsw i64 %28, %31
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* %2, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* @sre_random.rnd1, align 8
  %36 = load i64, i64* @sre_random.rnd1, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %22
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @sre_random.rnd1, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* @sre_random.rnd1, align 8
  br label %42

; <label>:42:                                     ; preds = %38, %22
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @sre_random.rnd2, align 8
  %45 = load i64, i64* %10, align 8
  %46 = srem i64 %44, %45
  %47 = mul nsw i64 %43, %46
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @sre_random.rnd2, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sdiv i64 %49, %50
  %52 = mul nsw i64 %48, %51
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* %2, align 8
  %55 = sub nsw i64 %53, %54
  store i64 %55, i64* @sre_random.rnd2, align 8
  %56 = load i64, i64* @sre_random.rnd2, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %42
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @sre_random.rnd2, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* @sre_random.rnd2, align 8
  br label %62

; <label>:62:                                     ; preds = %58, %42
  %63 = load i64, i64* @sre_random.rnd1, align 8
  %64 = load i64, i64* @sre_random.rnd2, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i64 0, i64 %67
  store i64 %65, i64* %68, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i64 0, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %81

; <label>:74:                                     ; preds = %62
  %75 = load i64, i64* %5, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %75
  store i64 %80, i64* %78, align 8
  br label %81

; <label>:81:                                     ; preds = %74, %62
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %19

; <label>:85:                                     ; preds = %19
  store i32 0, i32* @sre_randseed, align 4
  br label %86

; <label>:86:                                     ; preds = %85, %0
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @sre_random.rnd1, align 8
  %89 = load i64, i64* %6, align 8
  %90 = srem i64 %88, %89
  %91 = mul nsw i64 %87, %90
  store i64 %91, i64* %1, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @sre_random.rnd1, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sdiv i64 %93, %94
  %96 = mul nsw i64 %92, %95
  store i64 %96, i64* %2, align 8
  %97 = load i64, i64* %1, align 8
  %98 = load i64, i64* %2, align 8
  %99 = sub nsw i64 %97, %98
  store i64 %99, i64* @sre_random.rnd1, align 8
  %100 = load i64, i64* @sre_random.rnd1, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %106

; <label>:102:                                    ; preds = %86
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @sre_random.rnd1, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* @sre_random.rnd1, align 8
  br label %106

; <label>:106:                                    ; preds = %102, %86
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @sre_random.rnd2, align 8
  %109 = load i64, i64* %10, align 8
  %110 = srem i64 %108, %109
  %111 = mul nsw i64 %107, %110
  store i64 %111, i64* %1, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* @sre_random.rnd2, align 8
  %114 = load i64, i64* %10, align 8
  %115 = sdiv i64 %113, %114
  %116 = mul nsw i64 %112, %115
  store i64 %116, i64* %2, align 8
  %117 = load i64, i64* %1, align 8
  %118 = load i64, i64* %2, align 8
  %119 = sub nsw i64 %117, %118
  store i64 %119, i64* @sre_random.rnd2, align 8
  %120 = load i64, i64* @sre_random.rnd2, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %126

; <label>:122:                                    ; preds = %106
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @sre_random.rnd2, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* @sre_random.rnd2, align 8
  br label %126

; <label>:126:                                    ; preds = %122, %106
  %127 = load i64, i64* @sre_random.rnd, align 8
  %128 = sitofp i64 %127 to double
  %129 = load i64, i64* %5, align 8
  %130 = sitofp i64 %129 to double
  %131 = fdiv double %128, %130
  %132 = fmul double %131, 6.400000e+01
  %133 = fptosi double %132 to i32
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* @sre_random.rnd, align 8
  %138 = load i64, i64* @sre_random.rnd1, align 8
  %139 = load i64, i64* @sre_random.rnd2, align 8
  %140 = sub nsw i64 %138, %139
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i64 0, i64 %142
  store i64 %140, i64* %143, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i64 0, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %156

; <label>:149:                                    ; preds = %126
  %150 = load i64, i64* %5, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [64 x i64], [64 x i64]* @sre_random.tbl, i64 0, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, %150
  store i64 %155, i64* %153, align 8
  br label %156

; <label>:156:                                    ; preds = %149, %126
  %157 = load i64, i64* @sre_random.rnd, align 8
  %158 = sitofp i64 %157 to double
  %159 = load i64, i64* %5, align 8
  %160 = sitofp i64 %159 to double
  %161 = fdiv double %158, %160
  ret double %161
}

; Function Attrs: noinline nounwind optnone uwtable
define void @sre_srandom(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 -1, %6
  store i32 %7, i32* %2, align 4
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  store i32 42, i32* %2, align 4
  br label %12

; <label>:12:                                     ; preds = %11, %8
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* @sre_randseed, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define double @sre_random_positive() #0 {
  %1 = alloca double, align 8
  br label %2

; <label>:2:                                      ; preds = %4, %0
  %3 = call double @sre_random()
  store double %3, double* %1, align 8
  br label %4

; <label>:4:                                      ; preds = %2
  %5 = load double, double* %1, align 8
  %6 = fcmp oeq double %5, 0.000000e+00
  br i1 %6, label %2, label %7

; <label>:7:                                      ; preds = %4
  %8 = load double, double* %1, align 8
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define double @ExponentialRandom() #0 {
  %1 = alloca double, align 8
  br label %2

; <label>:2:                                      ; preds = %4, %0
  %3 = call double @sre_random()
  store double %3, double* %1, align 8
  br label %4

; <label>:4:                                      ; preds = %2
  %5 = load double, double* %1, align 8
  %6 = fcmp oeq double %5, 0.000000e+00
  br i1 %6, label %2, label %7

; <label>:7:                                      ; preds = %4
  %8 = load double, double* %1, align 8
  %9 = call double @log(double %8) #2
  %10 = fsub double -0.000000e+00, %9
  ret double %10
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define double @Gaussrandom(double, double) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = call double @sre_random()
  store double %5, double* @Gaussrandom.u, align 8
  store double 0.000000e+00, double* @Gaussrandom.s, align 8
  %6 = load double, double* @Gaussrandom.u, align 8
  %7 = fcmp ogt double %6, 5.000000e-01
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  store double 1.000000e+00, double* @Gaussrandom.s, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load double, double* @Gaussrandom.u, align 8
  %11 = load double, double* @Gaussrandom.s, align 8
  %12 = fsub double %10, %11
  %13 = load double, double* @Gaussrandom.u, align 8
  %14 = fadd double %13, %12
  store double %14, double* @Gaussrandom.u, align 8
  %15 = load double, double* @Gaussrandom.u, align 8
  %16 = fmul double 3.200000e+01, %15
  store double %16, double* @Gaussrandom.u, align 8
  %17 = load double, double* @Gaussrandom.u, align 8
  %18 = fptosi double %17 to i64
  store i64 %18, i64* @Gaussrandom.i, align 8
  %19 = load i64, i64* @Gaussrandom.i, align 8
  %20 = icmp eq i64 %19, 32
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %9
  store i64 31, i64* @Gaussrandom.i, align 8
  br label %22

; <label>:22:                                     ; preds = %21, %9
  %23 = load i64, i64* @Gaussrandom.i, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %22
  br label %102

; <label>:26:                                     ; preds = %22
  %27 = load double, double* @Gaussrandom.u, align 8
  %28 = load i64, i64* @Gaussrandom.i, align 8
  %29 = sitofp i64 %28 to double
  %30 = fsub double %27, %29
  store double %30, double* @Gaussrandom.ustar, align 8
  %31 = load i64, i64* @Gaussrandom.i, align 8
  %32 = getelementptr inbounds double, double* getelementptr inbounds ([32 x double], [32 x double]* @Gaussrandom.a, i32 0, i32 0), i64 %31
  %33 = getelementptr inbounds double, double* %32, i64 -1
  %34 = load double, double* %33, align 8
  store double %34, double* @Gaussrandom.aa, align 8
  br label %35

; <label>:35:                                     ; preds = %100, %26
  %36 = load double, double* @Gaussrandom.ustar, align 8
  %37 = load i64, i64* @Gaussrandom.i, align 8
  %38 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.t, i32 0, i32 0), i64 %37
  %39 = getelementptr inbounds double, double* %38, i64 -1
  %40 = load double, double* %39, align 8
  %41 = fcmp ole double %36, %40
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %35
  br label %71

; <label>:43:                                     ; preds = %35
  %44 = load double, double* @Gaussrandom.ustar, align 8
  %45 = load i64, i64* @Gaussrandom.i, align 8
  %46 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.t, i32 0, i32 0), i64 %45
  %47 = getelementptr inbounds double, double* %46, i64 -1
  %48 = load double, double* %47, align 8
  %49 = fsub double %44, %48
  %50 = load i64, i64* @Gaussrandom.i, align 8
  %51 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.h, i32 0, i32 0), i64 %50
  %52 = getelementptr inbounds double, double* %51, i64 -1
  %53 = load double, double* %52, align 8
  %54 = fmul double %49, %53
  store double %54, double* @Gaussrandom.w, align 8
  br label %55

; <label>:55:                                     ; preds = %143, %93, %43
  %56 = load double, double* @Gaussrandom.aa, align 8
  %57 = load double, double* @Gaussrandom.w, align 8
  %58 = fadd double %56, %57
  store double %58, double* @Gaussrandom.y, align 8
  %59 = load double, double* @Gaussrandom.y, align 8
  store double %59, double* @Gaussrandom.snorm, align 8
  %60 = load double, double* @Gaussrandom.s, align 8
  %61 = fcmp oeq double %60, 1.000000e+00
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %55
  %63 = load double, double* @Gaussrandom.y, align 8
  %64 = fsub double -0.000000e+00, %63
  store double %64, double* @Gaussrandom.snorm, align 8
  br label %65

; <label>:65:                                     ; preds = %62, %55
  %66 = load double, double* %4, align 8
  %67 = load double, double* @Gaussrandom.snorm, align 8
  %68 = fmul double %66, %67
  %69 = load double, double* %3, align 8
  %70 = fadd double %68, %69
  ret double %70

; <label>:71:                                     ; preds = %42
  %72 = call double @sre_random()
  store double %72, double* @Gaussrandom.u, align 8
  %73 = load double, double* @Gaussrandom.u, align 8
  %74 = load i64, i64* @Gaussrandom.i, align 8
  %75 = getelementptr inbounds double, double* getelementptr inbounds ([32 x double], [32 x double]* @Gaussrandom.a, i32 0, i32 0), i64 %74
  %76 = load double, double* %75, align 8
  %77 = load double, double* @Gaussrandom.aa, align 8
  %78 = fsub double %76, %77
  %79 = fmul double %73, %78
  store double %79, double* @Gaussrandom.w, align 8
  %80 = load double, double* @Gaussrandom.w, align 8
  %81 = fmul double 5.000000e-01, %80
  %82 = load double, double* @Gaussrandom.aa, align 8
  %83 = fadd double %81, %82
  %84 = load double, double* @Gaussrandom.w, align 8
  %85 = fmul double %83, %84
  store double %85, double* @Gaussrandom.tt, align 8
  br label %89

; <label>:86:                                     ; preds = %99
  %87 = load double, double* @Gaussrandom.u, align 8
  store double %87, double* @Gaussrandom.tt, align 8
  %88 = call double @sre_random()
  store double %88, double* @Gaussrandom.ustar, align 8
  br label %89

; <label>:89:                                     ; preds = %86, %71
  %90 = load double, double* @Gaussrandom.ustar, align 8
  %91 = load double, double* @Gaussrandom.tt, align 8
  %92 = fcmp ogt double %90, %91
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %89
  br label %55

; <label>:94:                                     ; preds = %89
  %95 = call double @sre_random()
  store double %95, double* @Gaussrandom.u, align 8
  %96 = load double, double* @Gaussrandom.ustar, align 8
  %97 = load double, double* @Gaussrandom.u, align 8
  %98 = fcmp oge double %96, %97
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %94
  br label %86

; <label>:100:                                    ; preds = %94
  %101 = call double @sre_random()
  store double %101, double* @Gaussrandom.ustar, align 8
  br label %35

; <label>:102:                                    ; preds = %25
  store i64 6, i64* @Gaussrandom.i, align 8
  %103 = load double, double* getelementptr inbounds ([32 x double], [32 x double]* @Gaussrandom.a, i32 0, i64 31), align 8
  store double %103, double* @Gaussrandom.aa, align 8
  br label %113

; <label>:104:                                    ; preds = %119
  %105 = load i64, i64* @Gaussrandom.i, align 8
  %106 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.d, i32 0, i32 0), i64 %105
  %107 = getelementptr inbounds double, double* %106, i64 -1
  %108 = load double, double* %107, align 8
  %109 = load double, double* @Gaussrandom.aa, align 8
  %110 = fadd double %109, %108
  store double %110, double* @Gaussrandom.aa, align 8
  %111 = load i64, i64* @Gaussrandom.i, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* @Gaussrandom.i, align 8
  br label %113

; <label>:113:                                    ; preds = %104, %102
  %114 = load double, double* @Gaussrandom.u, align 8
  %115 = load double, double* @Gaussrandom.u, align 8
  %116 = fadd double %115, %114
  store double %116, double* @Gaussrandom.u, align 8
  %117 = load double, double* @Gaussrandom.u, align 8
  %118 = fcmp olt double %117, 1.000000e+00
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %113
  br label %104

; <label>:120:                                    ; preds = %113
  %121 = load double, double* @Gaussrandom.u, align 8
  %122 = fsub double %121, 1.000000e+00
  store double %122, double* @Gaussrandom.u, align 8
  br label %123

; <label>:123:                                    ; preds = %150, %120
  %124 = load double, double* @Gaussrandom.u, align 8
  %125 = load i64, i64* @Gaussrandom.i, align 8
  %126 = getelementptr inbounds double, double* getelementptr inbounds ([31 x double], [31 x double]* @Gaussrandom.d, i32 0, i32 0), i64 %125
  %127 = getelementptr inbounds double, double* %126, i64 -1
  %128 = load double, double* %127, align 8
  %129 = fmul double %124, %128
  store double %129, double* @Gaussrandom.w, align 8
  %130 = load double, double* @Gaussrandom.w, align 8
  %131 = fmul double 5.000000e-01, %130
  %132 = load double, double* @Gaussrandom.aa, align 8
  %133 = fadd double %131, %132
  %134 = load double, double* @Gaussrandom.w, align 8
  %135 = fmul double %133, %134
  store double %135, double* @Gaussrandom.tt, align 8
  br label %138

; <label>:136:                                    ; preds = %149
  %137 = load double, double* @Gaussrandom.u, align 8
  store double %137, double* @Gaussrandom.tt, align 8
  br label %138

; <label>:138:                                    ; preds = %136, %123
  %139 = call double @sre_random()
  store double %139, double* @Gaussrandom.ustar, align 8
  %140 = load double, double* @Gaussrandom.ustar, align 8
  %141 = load double, double* @Gaussrandom.tt, align 8
  %142 = fcmp ogt double %140, %141
  br i1 %142, label %143, label %144

; <label>:143:                                    ; preds = %138
  br label %55

; <label>:144:                                    ; preds = %138
  %145 = call double @sre_random()
  store double %145, double* @Gaussrandom.u, align 8
  %146 = load double, double* @Gaussrandom.ustar, align 8
  %147 = load double, double* @Gaussrandom.u, align 8
  %148 = fcmp oge double %146, %147
  br i1 %148, label %149, label %150

; <label>:149:                                    ; preds = %144
  br label %136

; <label>:150:                                    ; preds = %144
  %151 = call double @sre_random()
  store double %151, double* @Gaussrandom.u, align 8
  br label %123
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @DChoose(double*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call double @sre_random()
  store double %9, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

; <label>:10:                                     ; preds = %28, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

; <label>:14:                                     ; preds = %10
  %15 = load double*, double** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, double* %15, i64 %17
  %19 = load double, double* %18, align 8
  %20 = load double, double* %7, align 8
  %21 = fadd double %20, %19
  store double %21, double* %7, align 8
  %22 = load double, double* %6, align 8
  %23 = load double, double* %7, align 8
  %24 = fcmp olt double %22, %23
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %14
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %37

; <label>:27:                                     ; preds = %14
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %10

; <label>:31:                                     ; preds = %10
  %32 = call double @sre_random()
  %33 = load i32, i32* %5, align 4
  %34 = sitofp i32 %33 to double
  %35 = fmul double %32, %34
  %36 = fptosi double %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

; <label>:37:                                     ; preds = %31, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FChoose(float*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call double @sre_random()
  %10 = fptrunc double %9 to float
  store float %10, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

; <label>:11:                                     ; preds = %29, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

; <label>:15:                                     ; preds = %11
  %16 = load float*, float** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %16, i64 %18
  %20 = load float, float* %19, align 4
  %21 = load float, float* %7, align 4
  %22 = fadd float %21, %20
  store float %22, float* %7, align 4
  %23 = load float, float* %6, align 4
  %24 = load float, float* %7, align 4
  %25 = fcmp olt float %23, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %38

; <label>:28:                                     ; preds = %15
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %11

; <label>:32:                                     ; preds = %11
  %33 = call double @sre_random()
  %34 = load i32, i32* %5, align 4
  %35 = sitofp i32 %34 to double
  %36 = fmul double %33, %35
  %37 = fptosi double %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

; <label>:38:                                     ; preds = %32, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
