; ModuleID = 'eval.c'
source_filename = "eval.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@std_material = global [14 x i32] [i32 0, i32 100, i32 -100, i32 310, i32 -310, i32 4000, i32 -4000, i32 500, i32 -500, i32 900, i32 -900, i32 325, i32 -325, i32 0], align 16
@zh_material = global [14 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 4000, i32 -4000, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230, i32 0], align 16
@suicide_material = global [14 x i32] [i32 0, i32 15, i32 -15, i32 150, i32 -150, i32 500, i32 -500, i32 150, i32 -150, i32 50, i32 -50, i32 0, i32 0, i32 0], align 16
@losers_material = global [14 x i32] [i32 0, i32 80, i32 -80, i32 320, i32 -320, i32 1000, i32 -1000, i32 350, i32 -350, i32 400, i32 -400, i32 270, i32 -270, i32 0], align 16
@material = global [14 x i32] zeroinitializer, align 16
@Xfile = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xrank = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xdiagl = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xdiagr = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sqcolor = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@pcsqbishop = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 10, i32 5, i32 10, i32 10, i32 5, i32 10, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 5, i32 6, i32 15, i32 15, i32 6, i32 5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 3, i32 15, i32 10, i32 10, i32 15, i32 3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 3, i32 15, i32 10, i32 10, i32 15, i32 3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 5, i32 6, i32 15, i32 15, i32 6, i32 5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 10, i32 5, i32 10, i32 10, i32 5, i32 10, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_knight = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 25, i32 25, i32 25, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 35, i32 35, i32 35, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 10, i32 25, i32 20, i32 25, i32 25, i32 10, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 20, i32 20, i32 20, i32 20, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -35, i32 -10, i32 -10, i32 -10, i32 -10, i32 -35, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_knight = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -35, i32 -10, i32 -10, i32 -10, i32 -10, i32 -35, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 20, i32 20, i32 20, i32 20, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 10, i32 25, i32 20, i32 25, i32 25, i32 10, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 35, i32 35, i32 35, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 25, i32 25, i32 25, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_pawn = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 25, i32 35, i32 5, i32 5, i32 50, i32 45, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 20, i32 20, i32 10, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 12, i32 18, i32 18, i32 27, i32 27, i32 18, i32 18, i32 18, i32 0, i32 0, i32 0, i32 0, i32 25, i32 30, i32 30, i32 35, i32 35, i32 35, i32 30, i32 25, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_pawn = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 30, i32 30, i32 30, i32 35, i32 35, i32 35, i32 30, i32 25, i32 0, i32 0, i32 0, i32 0, i32 12, i32 18, i32 18, i32 27, i32 27, i32 18, i32 18, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 20, i32 20, i32 10, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 25, i32 35, i32 5, i32 5, i32 50, i32 45, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_king = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -100, i32 7, i32 4, i32 0, i32 10, i32 4, i32 7, i32 -100, i32 0, i32 0, i32 0, i32 0, i32 -250, i32 -200, i32 -150, i32 -100, i32 -100, i32 -150, i32 -200, i32 -250, i32 0, i32 0, i32 0, i32 0, i32 -350, i32 -300, i32 -300, i32 -250, i32 -250, i32 -300, i32 -300, i32 -350, i32 0, i32 0, i32 0, i32 0, i32 -400, i32 -400, i32 -400, i32 -350, i32 -350, i32 -400, i32 -400, i32 -400, i32 0, i32 0, i32 0, i32 0, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_king = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 0, i32 0, i32 0, i32 0, i32 -400, i32 -400, i32 -400, i32 -350, i32 -350, i32 -400, i32 -400, i32 -400, i32 0, i32 0, i32 0, i32 0, i32 -350, i32 -300, i32 -300, i32 -250, i32 -250, i32 -300, i32 -300, i32 -350, i32 0, i32 0, i32 0, i32 0, i32 -250, i32 -200, i32 -150, i32 -100, i32 -100, i32 -150, i32 -200, i32 -250, i32 0, i32 0, i32 0, i32 0, i32 -100, i32 7, i32 4, i32 0, i32 10, i32 4, i32 7, i32 -100, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_queen = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 10, i32 10, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 0, i32 0, i32 0, i32 0, i32 -60, i32 -40, i32 -40, i32 -60, i32 -60, i32 -40, i32 -40, i32 -60, i32 0, i32 0, i32 0, i32 0, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_queen = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 0, i32 0, i32 0, i32 0, i32 -60, i32 -40, i32 -40, i32 -60, i32 -60, i32 -40, i32 -40, i32 -60, i32 0, i32 0, i32 0, i32 0, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 10, i32 10, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_rook = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 25, i32 25, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -30, i32 -30, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_rook = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -30, i32 -30, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 25, i32 25, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@upscale = constant [64 x i32] [i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117], align 16
@pre_p_tropism = global [9 x i32] [i32 9999, i32 40, i32 20, i32 10, i32 3, i32 1, i32 1, i32 0, i32 9999], align 16
@pre_r_tropism = global [9 x i32] [i32 9999, i32 50, i32 40, i32 15, i32 5, i32 1, i32 1, i32 0, i32 9999], align 16
@pre_n_tropism = global [9 x i32] [i32 9999, i32 50, i32 70, i32 35, i32 10, i32 2, i32 1, i32 0, i32 9999], align 16
@pre_q_tropism = global [9 x i32] [i32 9999, i32 100, i32 60, i32 20, i32 5, i32 2, i32 0, i32 0, i32 9999], align 16
@pre_b_tropism = global [9 x i32] [i32 9999, i32 50, i32 25, i32 15, i32 5, i32 2, i32 2, i32 2, i32 9999], align 16
@ksafety_scaled = global [15 x [9 x i32]] [[9 x i32] [i32 -5, i32 5, i32 10, i32 15, i32 50, i32 80, i32 150, i32 150, i32 150], [9 x i32] [i32 -5, i32 15, i32 20, i32 25, i32 70, i32 150, i32 200, i32 200, i32 200], [9 x i32] [i32 -5, i32 15, i32 30, i32 30, i32 100, i32 200, i32 300, i32 300, i32 300], [9 x i32] [i32 -10, i32 20, i32 40, i32 40, i32 100, i32 200, i32 300, i32 300, i32 400], [9 x i32] [i32 -10, i32 30, i32 50, i32 80, i32 150, i32 300, i32 400, i32 400, i32 500], [9 x i32] [i32 -10, i32 35, i32 60, i32 100, i32 200, i32 250, i32 400, i32 400, i32 500], [9 x i32] [i32 -10, i32 40, i32 70, i32 110, i32 210, i32 300, i32 500, i32 500, i32 600], [9 x i32] [i32 -10, i32 45, i32 75, i32 125, i32 215, i32 300, i32 500, i32 600, i32 700], [9 x i32] [i32 -10, i32 60, i32 90, i32 130, i32 240, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 95, i32 145, i32 260, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 100, i32 150, i32 270, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 110, i32 160, i32 280, i32 400, i32 600, i32 700, i32 800], [9 x i32] [i32 -20, i32 70, i32 115, i32 165, i32 290, i32 400, i32 600, i32 700, i32 800], [9 x i32] [i32 -20, i32 80, i32 120, i32 170, i32 300, i32 450, i32 700, i32 800, i32 900], [9 x i32] [i32 -20, i32 80, i32 125, i32 175, i32 310, i32 450, i32 700, i32 800, i32 900]], align 16
@rookdistance = external global [144 x [144 x i32]], align 16
@distance = external global [144 x [144 x i32]], align 16
@p_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@b_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@n_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@r_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@q_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@Variant = external global i32, align 4
@white_to_move = external global i32, align 4
@cfg_devscale = external global i32, align 4
@comp_color = external global i32, align 4
@white_hand_eval = external global i32, align 4
@black_hand_eval = external global i32, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@board = external global [144 x i32], align 16
@bking_loc = external global i32, align 4
@wking_loc = external global i32, align 4
@white_castled = external global i32, align 4
@moved = external global [144 x i32], align 16
@black_castled = external global i32, align 4
@cfg_smarteval = external global i32, align 4
@cfg_attackeval = external global i32, align 4
@Material = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define void @initialize_eval() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

; <label>:5:                                      ; preds = %65, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 64
  br i1 %7, label %8, label %68

; <label>:8:                                      ; preds = %5
  store i32 0, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %61, %8
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 64
  br i1 %11, label %12, label %64

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = and i32 %13, 7
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 7
  %17 = sub nsw i32 %14, %16
  %18 = call i32 @abs(i32 %17) #3
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %1, align 4
  %20 = ashr i32 %19, 3
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 3
  %23 = sub nsw i32 %20, %22
  %24 = call i32 @abs(i32 %23) #3
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* @upscale, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @rookdistance, i64 0, i64 %32
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* @upscale, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [144 x i32], [144 x i32]* %33, i64 0, i64 %38
  store i32 %27, i32* %39, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %12
  %44 = load i32, i32* %3, align 4
  br label %47

; <label>:45:                                     ; preds = %12
  %46 = load i32, i32* %4, align 4
  br label %47

; <label>:47:                                     ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* @upscale, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i64 0, i64 %53
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* @upscale, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [144 x i32], [144 x i32]* %54, i64 0, i64 %59
  store i32 %48, i32* %60, align 4
  br label %61

; <label>:61:                                     ; preds = %47
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %9

; <label>:64:                                     ; preds = %9
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %5

; <label>:68:                                     ; preds = %5
  store i32 0, i32* %1, align 4
  br label %69

; <label>:69:                                     ; preds = %356, %68
  %70 = load i32, i32* %1, align 4
  %71 = icmp slt i32 %70, 144
  br i1 %71, label %72, label %359

; <label>:72:                                     ; preds = %69
  store i32 0, i32* %2, align 4
  br label %73

; <label>:73:                                     ; preds = %352, %72
  %74 = load i32, i32* %2, align 4
  %75 = icmp slt i32 %74, 144
  br i1 %75, label %76, label %355

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %80, %84
  %86 = call i32 @abs(i32 %85) #3
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %90, %94
  %96 = call i32 @abs(i32 %95) #3
  %97 = icmp sgt i32 %86, %96
  br i1 %97, label %98, label %109

; <label>:98:                                     ; preds = %76
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %102, %106
  %108 = call i32 @abs(i32 %107) #3
  br label %120

; <label>:109:                                    ; preds = %76
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %113, %117
  %119 = call i32 @abs(i32 %118) #3
  br label %120

; <label>:120:                                    ; preds = %109, %98
  %121 = phi i32 [ %108, %98 ], [ %119, %109 ]
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_p_tropism, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = trunc i32 %124 to i8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @p_tropism, i64 0, i64 %127
  %129 = load i32, i32* %2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [144 x i8], [144 x i8]* %128, i64 0, i64 %130
  store i8 %125, i8* %131, align 1
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %135, %139
  %141 = call i32 @abs(i32 %140) #3
  %142 = load i32, i32* %1, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %2, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %145, %149
  %151 = call i32 @abs(i32 %150) #3
  %152 = icmp sgt i32 %141, %151
  br i1 %152, label %153, label %164

; <label>:153:                                    ; preds = %120
  %154 = load i32, i32* %1, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %157, %161
  %163 = call i32 @abs(i32 %162) #3
  br label %175

; <label>:164:                                    ; preds = %120
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %168, %172
  %174 = call i32 @abs(i32 %173) #3
  br label %175

; <label>:175:                                    ; preds = %164, %153
  %176 = phi i32 [ %163, %153 ], [ %174, %164 ]
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_b_tropism, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = trunc i32 %179 to i8
  %181 = load i32, i32* %1, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @b_tropism, i64 0, i64 %182
  %184 = load i32, i32* %2, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [144 x i8], [144 x i8]* %183, i64 0, i64 %185
  store i8 %180, i8* %186, align 1
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %190, %194
  %196 = call i32 @abs(i32 %195) #3
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %2, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %200, %204
  %206 = call i32 @abs(i32 %205) #3
  %207 = icmp sgt i32 %196, %206
  br i1 %207, label %208, label %219

; <label>:208:                                    ; preds = %175
  %209 = load i32, i32* %1, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %2, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %212, %216
  %218 = call i32 @abs(i32 %217) #3
  br label %230

; <label>:219:                                    ; preds = %175
  %220 = load i32, i32* %1, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %2, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %223, %227
  %229 = call i32 @abs(i32 %228) #3
  br label %230

; <label>:230:                                    ; preds = %219, %208
  %231 = phi i32 [ %218, %208 ], [ %229, %219 ]
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_n_tropism, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = trunc i32 %234 to i8
  %236 = load i32, i32* %1, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @n_tropism, i64 0, i64 %237
  %239 = load i32, i32* %2, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [144 x i8], [144 x i8]* %238, i64 0, i64 %240
  store i8 %235, i8* %241, align 1
  %242 = load i32, i32* %1, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %2, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %245, %249
  %251 = call i32 @abs(i32 %250) #3
  %252 = load i32, i32* %1, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %2, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %255, %259
  %261 = call i32 @abs(i32 %260) #3
  %262 = icmp sgt i32 %251, %261
  br i1 %262, label %263, label %274

; <label>:263:                                    ; preds = %230
  %264 = load i32, i32* %1, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %2, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %267, %271
  %273 = call i32 @abs(i32 %272) #3
  br label %285

; <label>:274:                                    ; preds = %230
  %275 = load i32, i32* %1, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %2, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 %278, %282
  %284 = call i32 @abs(i32 %283) #3
  br label %285

; <label>:285:                                    ; preds = %274, %263
  %286 = phi i32 [ %273, %263 ], [ %284, %274 ]
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_r_tropism, i64 0, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = trunc i32 %289 to i8
  %291 = load i32, i32* %1, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @r_tropism, i64 0, i64 %292
  %294 = load i32, i32* %2, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [144 x i8], [144 x i8]* %293, i64 0, i64 %295
  store i8 %290, i8* %296, align 1
  %297 = load i32, i32* %1, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %2, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = sub nsw i32 %300, %304
  %306 = call i32 @abs(i32 %305) #3
  %307 = load i32, i32* %1, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %2, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = sub nsw i32 %310, %314
  %316 = call i32 @abs(i32 %315) #3
  %317 = icmp sgt i32 %306, %316
  br i1 %317, label %318, label %329

; <label>:318:                                    ; preds = %285
  %319 = load i32, i32* %1, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %2, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %322, %326
  %328 = call i32 @abs(i32 %327) #3
  br label %340

; <label>:329:                                    ; preds = %285
  %330 = load i32, i32* %1, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %2, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i64 0, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = sub nsw i32 %333, %337
  %339 = call i32 @abs(i32 %338) #3
  br label %340

; <label>:340:                                    ; preds = %329, %318
  %341 = phi i32 [ %328, %318 ], [ %339, %329 ]
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_q_tropism, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = trunc i32 %344 to i8
  %346 = load i32, i32* %1, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @q_tropism, i64 0, i64 %347
  %349 = load i32, i32* %2, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [144 x i8], [144 x i8]* %348, i64 0, i64 %350
  store i8 %345, i8* %351, align 1
  br label %352

; <label>:352:                                    ; preds = %340
  %353 = load i32, i32* %2, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %2, align 4
  br label %73

; <label>:355:                                    ; preds = %73
  br label %356

; <label>:356:                                    ; preds = %355
  %357 = load i32, i32* %1, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %1, align 4
  br label %69

; <label>:359:                                    ; preds = %69
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @eval(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @Variant, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @std_eval(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %1213

; <label>:23:                                     ; preds = %2
  %24 = load i32, i32* @Variant, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %23
  %27 = call i32 @suicide_eval()
  store i32 %27, i32* %3, align 4
  br label %1213

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* @Variant, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %28
  %32 = call i32 @losers_eval()
  store i32 %32, i32* %3, align 4
  br label %1213

; <label>:33:                                     ; preds = %28
  br label %34

; <label>:34:                                     ; preds = %33
  br label %35

; <label>:35:                                     ; preds = %34
  store i32 0, i32* %10, align 4
  call void @checkECache(i32* %9, i32* %10)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* @white_to_move, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %1213

; <label>:43:                                     ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %1213

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* @cfg_devscale, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %90

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* @white_to_move, align 4
  %51 = load i32, i32* @comp_color, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %67

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* @white_hand_eval, align 4
  %55 = icmp sle i32 %54, 200
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* @Variant, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %56
  store i32 2, i32* %15, align 4
  br label %66

; <label>:60:                                     ; preds = %56, %53
  %61 = load i32, i32* @white_hand_eval, align 4
  %62 = icmp sge i32 %61, 700
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %60
  store i32 0, i32* %15, align 4
  br label %65

; <label>:64:                                     ; preds = %60
  store i32 1, i32* %15, align 4
  br label %65

; <label>:65:                                     ; preds = %64, %63
  br label %66

; <label>:66:                                     ; preds = %65, %59
  br label %68

; <label>:67:                                     ; preds = %49
  store i32 0, i32* %15, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %66
  %69 = load i32, i32* @white_to_move, align 4
  %70 = load i32, i32* @comp_color, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %88

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* @black_hand_eval, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp sle i32 %74, 200
  br i1 %75, label %76, label %80

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* @Variant, align 4
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %76
  store i32 2, i32* %16, align 4
  br label %87

; <label>:80:                                     ; preds = %76, %72
  %81 = load i32, i32* @black_hand_eval, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp sge i32 %82, 700
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %80
  store i32 0, i32* %16, align 4
  br label %86

; <label>:85:                                     ; preds = %80
  store i32 1, i32* %16, align 4
  br label %86

; <label>:86:                                     ; preds = %85, %84
  br label %87

; <label>:87:                                     ; preds = %86, %79
  br label %89

; <label>:88:                                     ; preds = %68
  store i32 0, i32* %16, align 4
  br label %89

; <label>:89:                                     ; preds = %88, %87
  br label %91

; <label>:90:                                     ; preds = %46
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %91

; <label>:91:                                     ; preds = %90, %89
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %92

; <label>:92:                                     ; preds = %323, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @piece_count, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %326

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

; <label>:103:                                    ; preds = %96
  br label %323

; <label>:104:                                    ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %107

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %322 [
    i32 1, label %112
    i32 2, label %133
    i32 7, label %154
    i32 8, label %175
    i32 11, label %196
    i32 12, label %217
    i32 3, label %238
    i32 4, label %259
    i32 9, label %280
    i32 10, label %301
  ]

; <label>:112:                                    ; preds = %107
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 100
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [144 x i32], [144 x i32]* @white_pawn, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %15, align 4
  %120 = ashr i32 %118, %119
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @p_tropism, i64 0, i64 %124
  %126 = load i32, i32* @bking_loc, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [144 x i8], [144 x i8]* %125, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %322

; <label>:133:                                    ; preds = %107
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %134, 100
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [144 x i32], [144 x i32]* @black_pawn, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %16, align 4
  %141 = ashr i32 %139, %140
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @p_tropism, i64 0, i64 %145
  %147 = load i32, i32* @wking_loc, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [144 x i8], [144 x i8]* %146, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %9, align 4
  br label %322

; <label>:154:                                    ; preds = %107
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 250
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [144 x i32], [144 x i32]* @white_rook, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %15, align 4
  %162 = ashr i32 %160, %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @r_tropism, i64 0, i64 %166
  %168 = load i32, i32* @bking_loc, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [144 x i8], [144 x i8]* %167, i64 0, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %9, align 4
  br label %322

; <label>:175:                                    ; preds = %107
  %176 = load i32, i32* %9, align 4
  %177 = sub nsw i32 %176, 250
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [144 x i32], [144 x i32]* @black_rook, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %16, align 4
  %183 = ashr i32 %181, %182
  %184 = load i32, i32* %9, align 4
  %185 = sub nsw i32 %184, %183
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @r_tropism, i64 0, i64 %187
  %189 = load i32, i32* @wking_loc, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [144 x i8], [144 x i8]* %188, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = load i32, i32* %9, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %9, align 4
  br label %322

; <label>:196:                                    ; preds = %107
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 230
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [144 x i32], [144 x i32]* @pcsqbishop, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %15, align 4
  %204 = ashr i32 %202, %203
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @b_tropism, i64 0, i64 %208
  %210 = load i32, i32* @bking_loc, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [144 x i8], [144 x i8]* %209, i64 0, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %9, align 4
  br label %322

; <label>:217:                                    ; preds = %107
  %218 = load i32, i32* %9, align 4
  %219 = sub nsw i32 %218, 230
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [144 x i32], [144 x i32]* @pcsqbishop, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %16, align 4
  %225 = ashr i32 %223, %224
  %226 = load i32, i32* %9, align 4
  %227 = sub nsw i32 %226, %225
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @b_tropism, i64 0, i64 %229
  %231 = load i32, i32* @wking_loc, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [144 x i8], [144 x i8]* %230, i64 0, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = load i32, i32* %9, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* %9, align 4
  br label %322

; <label>:238:                                    ; preds = %107
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 210
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [144 x i32], [144 x i32]* @white_knight, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %15, align 4
  %246 = ashr i32 %244, %245
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @n_tropism, i64 0, i64 %250
  %252 = load i32, i32* @bking_loc, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [144 x i8], [144 x i8]* %251, i64 0, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = load i32, i32* %9, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %9, align 4
  br label %322

; <label>:259:                                    ; preds = %107
  %260 = load i32, i32* %9, align 4
  %261 = sub nsw i32 %260, 210
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [144 x i32], [144 x i32]* @black_knight, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %16, align 4
  %267 = ashr i32 %265, %266
  %268 = load i32, i32* %9, align 4
  %269 = sub nsw i32 %268, %267
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @n_tropism, i64 0, i64 %271
  %273 = load i32, i32* @wking_loc, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [144 x i8], [144 x i8]* %272, i64 0, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = load i32, i32* %9, align 4
  %279 = sub nsw i32 %278, %277
  store i32 %279, i32* %9, align 4
  br label %322

; <label>:280:                                    ; preds = %107
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 450
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [144 x i32], [144 x i32]* @white_queen, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %15, align 4
  %288 = ashr i32 %286, %287
  %289 = load i32, i32* %9, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* %9, align 4
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @q_tropism, i64 0, i64 %292
  %294 = load i32, i32* @bking_loc, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [144 x i8], [144 x i8]* %293, i64 0, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = load i32, i32* %9, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %9, align 4
  br label %322

; <label>:301:                                    ; preds = %107
  %302 = load i32, i32* %9, align 4
  %303 = sub nsw i32 %302, 450
  store i32 %303, i32* %9, align 4
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [144 x i32], [144 x i32]* @black_queen, i64 0, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %16, align 4
  %309 = ashr i32 %307, %308
  %310 = load i32, i32* %9, align 4
  %311 = sub nsw i32 %310, %309
  store i32 %311, i32* %9, align 4
  %312 = load i32, i32* %6, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @q_tropism, i64 0, i64 %313
  %315 = load i32, i32* @wking_loc, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [144 x i8], [144 x i8]* %314, i64 0, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = load i32, i32* %9, align 4
  %321 = sub nsw i32 %320, %319
  store i32 %321, i32* %9, align 4
  br label %322

; <label>:322:                                    ; preds = %107, %301, %280, %259, %238, %217, %196, %175, %154, %133, %112
  br label %323

; <label>:323:                                    ; preds = %322, %103
  %324 = load i32, i32* %8, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %8, align 4
  br label %92

; <label>:326:                                    ; preds = %92
  %327 = load i32, i32* @wking_loc, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [144 x i32], [144 x i32]* @white_king, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %16, align 4
  %332 = ashr i32 %330, %331
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %333, %332
  store i32 %334, i32* %9, align 4
  %335 = load i32, i32* @bking_loc, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [144 x i32], [144 x i32]* @black_king, i64 0, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %15, align 4
  %340 = ashr i32 %338, %339
  %341 = load i32, i32* %9, align 4
  %342 = sub nsw i32 %341, %340
  store i32 %342, i32* %9, align 4
  %343 = load i32, i32* @white_castled, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %351, label %345

; <label>:345:                                    ; preds = %326
  %346 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 30), align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

; <label>:348:                                    ; preds = %345
  %349 = load i32, i32* %9, align 4
  %350 = sub nsw i32 %349, 30
  store i32 %350, i32* %9, align 4
  br label %351

; <label>:351:                                    ; preds = %348, %345, %326
  %352 = load i32, i32* @black_castled, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %360, label %354

; <label>:354:                                    ; preds = %351
  %355 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 114), align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

; <label>:357:                                    ; preds = %354
  %358 = load i32, i32* %9, align 4
  %359 = add nsw i32 %358, 30
  store i32 %359, i32* %9, align 4
  br label %360

; <label>:360:                                    ; preds = %357, %354, %351
  %361 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 41), align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %369, label %363

; <label>:363:                                    ; preds = %360
  %364 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 53), align 4
  %365 = icmp ne i32 %364, 13
  br i1 %365, label %366, label %369

; <label>:366:                                    ; preds = %363
  %367 = load i32, i32* %9, align 4
  %368 = sub nsw i32 %367, 15
  store i32 %368, i32* %9, align 4
  br label %369

; <label>:369:                                    ; preds = %366, %363, %360
  %370 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 42), align 8
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %378, label %372

; <label>:372:                                    ; preds = %369
  %373 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 54), align 8
  %374 = icmp ne i32 %373, 13
  br i1 %374, label %375, label %378

; <label>:375:                                    ; preds = %372
  %376 = load i32, i32* %9, align 4
  %377 = sub nsw i32 %376, 15
  store i32 %377, i32* %9, align 4
  br label %378

; <label>:378:                                    ; preds = %375, %372, %369
  %379 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 101), align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %387, label %381

; <label>:381:                                    ; preds = %378
  %382 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 89), align 4
  %383 = icmp ne i32 %382, 13
  br i1 %383, label %384, label %387

; <label>:384:                                    ; preds = %381
  %385 = load i32, i32* %9, align 4
  %386 = add nsw i32 %385, 15
  store i32 %386, i32* %9, align 4
  br label %387

; <label>:387:                                    ; preds = %384, %381, %378
  %388 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 102), align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %396, label %390

; <label>:390:                                    ; preds = %387
  %391 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 90), align 8
  %392 = icmp ne i32 %391, 13
  br i1 %392, label %393, label %396

; <label>:393:                                    ; preds = %390
  %394 = load i32, i32* %9, align 4
  %395 = add nsw i32 %394, 15
  store i32 %395, i32* %9, align 4
  br label %396

; <label>:396:                                    ; preds = %393, %390, %387
  %397 = load i32, i32* @cfg_smarteval, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %911

; <label>:399:                                    ; preds = %396
  %400 = load i32, i32* @wking_loc, align 4
  %401 = icmp ne i32 %400, 30
  br i1 %401, label %402, label %470

; <label>:402:                                    ; preds = %399
  %403 = load i32, i32* @wking_loc, align 4
  %404 = icmp ne i32 %403, 29
  br i1 %404, label %405, label %470

; <label>:405:                                    ; preds = %402
  %406 = load i32, i32* @wking_loc, align 4
  %407 = add nsw i32 %406, 11
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = icmp ne i32 %410, 1
  br i1 %411, label %412, label %415

; <label>:412:                                    ; preds = %405
  %413 = load i32, i32* %9, align 4
  %414 = sub nsw i32 %413, 24
  store i32 %414, i32* %9, align 4
  br label %415

; <label>:415:                                    ; preds = %412, %405
  %416 = load i32, i32* @wking_loc, align 4
  %417 = add nsw i32 %416, 12
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 1
  br i1 %421, label %422, label %425

; <label>:422:                                    ; preds = %415
  %423 = load i32, i32* %9, align 4
  %424 = sub nsw i32 %423, 35
  store i32 %424, i32* %9, align 4
  br label %425

; <label>:425:                                    ; preds = %422, %415
  %426 = load i32, i32* @wking_loc, align 4
  %427 = add nsw i32 %426, 13
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %430, 1
  br i1 %431, label %432, label %435

; <label>:432:                                    ; preds = %425
  %433 = load i32, i32* %9, align 4
  %434 = sub nsw i32 %433, 24
  store i32 %434, i32* %9, align 4
  br label %435

; <label>:435:                                    ; preds = %432, %425
  %436 = load i32, i32* @white_castled, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %469

; <label>:438:                                    ; preds = %435
  %439 = load i32, i32* @bking_loc, align 4
  %440 = sub nsw i32 %439, 25
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = icmp eq i32 %443, 2
  br i1 %444, label %445, label %448

; <label>:445:                                    ; preds = %438
  %446 = load i32, i32* %9, align 4
  %447 = add nsw i32 %446, 11
  store i32 %447, i32* %9, align 4
  br label %448

; <label>:448:                                    ; preds = %445, %438
  %449 = load i32, i32* @bking_loc, align 4
  %450 = sub nsw i32 %449, 24
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = icmp eq i32 %453, 2
  br i1 %454, label %455, label %458

; <label>:455:                                    ; preds = %448
  %456 = load i32, i32* %9, align 4
  %457 = add nsw i32 %456, 15
  store i32 %457, i32* %9, align 4
  br label %458

; <label>:458:                                    ; preds = %455, %448
  %459 = load i32, i32* @bking_loc, align 4
  %460 = sub nsw i32 %459, 23
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = icmp eq i32 %463, 2
  br i1 %464, label %465, label %468

; <label>:465:                                    ; preds = %458
  %466 = load i32, i32* %9, align 4
  %467 = add nsw i32 %466, 11
  store i32 %467, i32* %9, align 4
  br label %468

; <label>:468:                                    ; preds = %465, %458
  br label %469

; <label>:469:                                    ; preds = %468, %435
  br label %470

; <label>:470:                                    ; preds = %469, %402, %399
  %471 = load i32, i32* @bking_loc, align 4
  %472 = icmp ne i32 %471, 114
  br i1 %472, label %473, label %541

; <label>:473:                                    ; preds = %470
  %474 = load i32, i32* @bking_loc, align 4
  %475 = icmp ne i32 %474, 113
  br i1 %475, label %476, label %541

; <label>:476:                                    ; preds = %473
  %477 = load i32, i32* @bking_loc, align 4
  %478 = sub nsw i32 %477, 13
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = icmp ne i32 %481, 2
  br i1 %482, label %483, label %486

; <label>:483:                                    ; preds = %476
  %484 = load i32, i32* %9, align 4
  %485 = add nsw i32 %484, 24
  store i32 %485, i32* %9, align 4
  br label %486

; <label>:486:                                    ; preds = %483, %476
  %487 = load i32, i32* @bking_loc, align 4
  %488 = sub nsw i32 %487, 12
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = icmp ne i32 %491, 2
  br i1 %492, label %493, label %496

; <label>:493:                                    ; preds = %486
  %494 = load i32, i32* %9, align 4
  %495 = add nsw i32 %494, 35
  store i32 %495, i32* %9, align 4
  br label %496

; <label>:496:                                    ; preds = %493, %486
  %497 = load i32, i32* @bking_loc, align 4
  %498 = sub nsw i32 %497, 11
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = icmp ne i32 %501, 2
  br i1 %502, label %503, label %506

; <label>:503:                                    ; preds = %496
  %504 = load i32, i32* %9, align 4
  %505 = add nsw i32 %504, 24
  store i32 %505, i32* %9, align 4
  br label %506

; <label>:506:                                    ; preds = %503, %496
  %507 = load i32, i32* @black_castled, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %540

; <label>:509:                                    ; preds = %506
  %510 = load i32, i32* @bking_loc, align 4
  %511 = sub nsw i32 %510, 25
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = icmp eq i32 %514, 2
  br i1 %515, label %516, label %519

; <label>:516:                                    ; preds = %509
  %517 = load i32, i32* %9, align 4
  %518 = sub nsw i32 %517, 11
  store i32 %518, i32* %9, align 4
  br label %519

; <label>:519:                                    ; preds = %516, %509
  %520 = load i32, i32* @bking_loc, align 4
  %521 = sub nsw i32 %520, 24
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = icmp eq i32 %524, 2
  br i1 %525, label %526, label %529

; <label>:526:                                    ; preds = %519
  %527 = load i32, i32* %9, align 4
  %528 = sub nsw i32 %527, 15
  store i32 %528, i32* %9, align 4
  br label %529

; <label>:529:                                    ; preds = %526, %519
  %530 = load i32, i32* @bking_loc, align 4
  %531 = sub nsw i32 %530, 23
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = icmp eq i32 %534, 2
  br i1 %535, label %536, label %539

; <label>:536:                                    ; preds = %529
  %537 = load i32, i32* %9, align 4
  %538 = sub nsw i32 %537, 11
  store i32 %538, i32* %9, align 4
  br label %539

; <label>:539:                                    ; preds = %536, %529
  br label %540

; <label>:540:                                    ; preds = %539, %506
  br label %541

; <label>:541:                                    ; preds = %540, %473, %470
  %542 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 42), align 8
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %571

; <label>:544:                                    ; preds = %541
  %545 = load i32, i32* %9, align 4
  %546 = add nsw i32 %545, 30
  store i32 %546, i32* %9, align 4
  %547 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 41), align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %552

; <label>:549:                                    ; preds = %544
  %550 = load i32, i32* %9, align 4
  %551 = add nsw i32 %550, 25
  store i32 %551, i32* %9, align 4
  br label %552

; <label>:552:                                    ; preds = %549, %544
  %553 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 32), align 16
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %558

; <label>:555:                                    ; preds = %552
  %556 = load i32, i32* %9, align 4
  %557 = add nsw i32 %556, 20
  store i32 %557, i32* %9, align 4
  br label %558

; <label>:558:                                    ; preds = %555, %552
  %559 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 27), align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %564

; <label>:561:                                    ; preds = %558
  %562 = load i32, i32* %9, align 4
  %563 = add nsw i32 %562, 15
  store i32 %563, i32* %9, align 4
  br label %564

; <label>:564:                                    ; preds = %561, %558
  %565 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 28), align 16
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %570

; <label>:567:                                    ; preds = %564
  %568 = load i32, i32* %9, align 4
  %569 = add nsw i32 %568, 10
  store i32 %569, i32* %9, align 4
  br label %570

; <label>:570:                                    ; preds = %567, %564
  br label %571

; <label>:571:                                    ; preds = %570, %541
  %572 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 102), align 8
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %601

; <label>:574:                                    ; preds = %571
  %575 = load i32, i32* %9, align 4
  %576 = sub nsw i32 %575, 30
  store i32 %576, i32* %9, align 4
  %577 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 101), align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %582

; <label>:579:                                    ; preds = %574
  %580 = load i32, i32* %9, align 4
  %581 = sub nsw i32 %580, 25
  store i32 %581, i32* %9, align 4
  br label %582

; <label>:582:                                    ; preds = %579, %574
  %583 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 116), align 16
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %588

; <label>:585:                                    ; preds = %582
  %586 = load i32, i32* %9, align 4
  %587 = sub nsw i32 %586, 20
  store i32 %587, i32* %9, align 4
  br label %588

; <label>:588:                                    ; preds = %585, %582
  %589 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 111), align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %594

; <label>:591:                                    ; preds = %588
  %592 = load i32, i32* %9, align 4
  %593 = sub nsw i32 %592, 15
  store i32 %593, i32* %9, align 4
  br label %594

; <label>:594:                                    ; preds = %591, %588
  %595 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i64 0, i64 112), align 16
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %600

; <label>:597:                                    ; preds = %594
  %598 = load i32, i32* %9, align 4
  %599 = sub nsw i32 %598, 10
  store i32 %599, i32* %9, align 4
  br label %600

; <label>:600:                                    ; preds = %597, %594
  br label %601

; <label>:601:                                    ; preds = %600, %571
  %602 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 44), align 16
  %603 = icmp ne i32 %602, 1
  br i1 %603, label %604, label %613

; <label>:604:                                    ; preds = %601
  %605 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 55), align 4
  %606 = icmp eq i32 %605, 2
  br i1 %606, label %610, label %607

; <label>:607:                                    ; preds = %604
  %608 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 66), align 8
  %609 = icmp eq i32 %608, 2
  br i1 %609, label %610, label %613

; <label>:610:                                    ; preds = %607, %604
  %611 = load i32, i32* %9, align 4
  %612 = sub nsw i32 %611, 30
  store i32 %612, i32* %9, align 4
  br label %613

; <label>:613:                                    ; preds = %610, %607, %601
  %614 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 104), align 16
  %615 = icmp ne i32 %614, 2
  br i1 %615, label %616, label %625

; <label>:616:                                    ; preds = %613
  %617 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 91), align 4
  %618 = icmp eq i32 %617, 1
  br i1 %618, label %622, label %619

; <label>:619:                                    ; preds = %616
  %620 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 78), align 8
  %621 = icmp eq i32 %620, 1
  br i1 %621, label %622, label %625

; <label>:622:                                    ; preds = %619, %616
  %623 = load i32, i32* %9, align 4
  %624 = add nsw i32 %623, 30
  store i32 %624, i32* %9, align 4
  br label %625

; <label>:625:                                    ; preds = %622, %619, %613
  %626 = load i32, i32* @wking_loc, align 4
  %627 = add nsw i32 %626, 12
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %628
  %630 = load i32, i32* %629, align 4
  %631 = icmp eq i32 %630, 2
  br i1 %631, label %639, label %632

; <label>:632:                                    ; preds = %625
  %633 = load i32, i32* @wking_loc, align 4
  %634 = add nsw i32 %633, 12
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %635
  %637 = load i32, i32* %636, align 4
  %638 = icmp eq i32 %637, 12
  br i1 %638, label %639, label %660

; <label>:639:                                    ; preds = %632, %625
  %640 = load i32, i32* %9, align 4
  %641 = sub nsw i32 %640, 35
  store i32 %641, i32* %9, align 4
  %642 = load i32, i32* @wking_loc, align 4
  %643 = add nsw i32 %642, 12
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %644
  %646 = load i32, i32* %645, align 4
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %649

; <label>:648:                                    ; preds = %639
  br i1 false, label %654, label %659

; <label>:649:                                    ; preds = %639
  %650 = load i32, i32* @wking_loc, align 4
  %651 = add nsw i32 %650, 12
  %652 = call i32 @is_attacked(i32 %651, i32 0)
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %659

; <label>:654:                                    ; preds = %649, %648
  %655 = load i32, i32* %16, align 4
  %656 = ashr i32 150, %655
  %657 = load i32, i32* %9, align 4
  %658 = sub nsw i32 %657, %656
  store i32 %658, i32* %9, align 4
  br label %659

; <label>:659:                                    ; preds = %654, %649, %648
  br label %660

; <label>:660:                                    ; preds = %659, %632
  %661 = load i32, i32* @bking_loc, align 4
  %662 = sub nsw i32 %661, 12
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %663
  %665 = load i32, i32* %664, align 4
  %666 = icmp eq i32 %665, 1
  br i1 %666, label %674, label %667

; <label>:667:                                    ; preds = %660
  %668 = load i32, i32* @bking_loc, align 4
  %669 = sub nsw i32 %668, 12
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %670
  %672 = load i32, i32* %671, align 4
  %673 = icmp eq i32 %672, 11
  br i1 %673, label %674, label %695

; <label>:674:                                    ; preds = %667, %660
  %675 = load i32, i32* %9, align 4
  %676 = add nsw i32 %675, 35
  store i32 %676, i32* %9, align 4
  %677 = load i32, i32* @bking_loc, align 4
  %678 = sub nsw i32 %677, 12
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %679
  %681 = load i32, i32* %680, align 4
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %683, label %684

; <label>:683:                                    ; preds = %674
  br i1 false, label %689, label %694

; <label>:684:                                    ; preds = %674
  %685 = load i32, i32* @bking_loc, align 4
  %686 = sub nsw i32 %685, 12
  %687 = call i32 @is_attacked(i32 %686, i32 1)
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %694

; <label>:689:                                    ; preds = %684, %683
  %690 = load i32, i32* %15, align 4
  %691 = ashr i32 150, %690
  %692 = load i32, i32* %9, align 4
  %693 = add nsw i32 %692, %691
  store i32 %693, i32* %9, align 4
  br label %694

; <label>:694:                                    ; preds = %689, %684, %683
  br label %695

; <label>:695:                                    ; preds = %694, %667
  %696 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 43), align 4
  %697 = icmp eq i32 %696, 1
  br i1 %697, label %704, label %698

; <label>:698:                                    ; preds = %695
  %699 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 54), align 8
  %700 = icmp eq i32 %699, 1
  br i1 %700, label %704, label %701

; <label>:701:                                    ; preds = %698
  %702 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 54), align 8
  %703 = icmp eq i32 %702, 2
  br i1 %703, label %704, label %731

; <label>:704:                                    ; preds = %701, %698, %695
  %705 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 54), align 8
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %707, label %708

; <label>:707:                                    ; preds = %704
  br i1 false, label %711, label %731

; <label>:708:                                    ; preds = %704
  %709 = call i32 @is_attacked(i32 54, i32 0)
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %731

; <label>:711:                                    ; preds = %708, %707
  %712 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 43), align 4
  %713 = icmp eq i32 %712, 1
  br i1 %713, label %714, label %717

; <label>:714:                                    ; preds = %711
  %715 = load i32, i32* %9, align 4
  %716 = add nsw i32 %715, 10
  store i32 %716, i32* %9, align 4
  br label %717

; <label>:717:                                    ; preds = %714, %711
  %718 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 54), align 8
  %719 = icmp eq i32 %718, 1
  br i1 %719, label %720, label %723

; <label>:720:                                    ; preds = %717
  %721 = load i32, i32* %9, align 4
  %722 = add nsw i32 %721, 20
  store i32 %722, i32* %9, align 4
  br label %730

; <label>:723:                                    ; preds = %717
  %724 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 54), align 8
  %725 = icmp eq i32 %724, 2
  br i1 %725, label %726, label %729

; <label>:726:                                    ; preds = %723
  %727 = load i32, i32* %9, align 4
  %728 = sub nsw i32 %727, 15
  store i32 %728, i32* %9, align 4
  br label %729

; <label>:729:                                    ; preds = %726, %723
  br label %730

; <label>:730:                                    ; preds = %729, %720
  br label %731

; <label>:731:                                    ; preds = %730, %708, %707, %701
  %732 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 103), align 4
  %733 = icmp eq i32 %732, 2
  br i1 %733, label %740, label %734

; <label>:734:                                    ; preds = %731
  %735 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 90), align 8
  %736 = icmp eq i32 %735, 2
  br i1 %736, label %740, label %737

; <label>:737:                                    ; preds = %734
  %738 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 90), align 8
  %739 = icmp eq i32 %738, 1
  br i1 %739, label %740, label %767

; <label>:740:                                    ; preds = %737, %734, %731
  %741 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 90), align 8
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %743, label %744

; <label>:743:                                    ; preds = %740
  br i1 false, label %747, label %767

; <label>:744:                                    ; preds = %740
  %745 = call i32 @is_attacked(i32 90, i32 1)
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %767

; <label>:747:                                    ; preds = %744, %743
  %748 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 103), align 4
  %749 = icmp eq i32 %748, 2
  br i1 %749, label %750, label %753

; <label>:750:                                    ; preds = %747
  %751 = load i32, i32* %9, align 4
  %752 = sub nsw i32 %751, 10
  store i32 %752, i32* %9, align 4
  br label %753

; <label>:753:                                    ; preds = %750, %747
  %754 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 90), align 8
  %755 = icmp eq i32 %754, 2
  br i1 %755, label %756, label %759

; <label>:756:                                    ; preds = %753
  %757 = load i32, i32* %9, align 4
  %758 = sub nsw i32 %757, 20
  store i32 %758, i32* %9, align 4
  br label %766

; <label>:759:                                    ; preds = %753
  %760 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 90), align 8
  %761 = icmp eq i32 %760, 1
  br i1 %761, label %762, label %765

; <label>:762:                                    ; preds = %759
  %763 = load i32, i32* %9, align 4
  %764 = add nsw i32 %763, 15
  store i32 %764, i32* %9, align 4
  br label %765

; <label>:765:                                    ; preds = %762, %759
  br label %766

; <label>:766:                                    ; preds = %765, %756
  br label %767

; <label>:767:                                    ; preds = %766, %744, %743, %737
  %768 = load i32, i32* @bking_loc, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %769
  %771 = load i32, i32* %770, align 4
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %773, label %774

; <label>:773:                                    ; preds = %767
  br i1 false, label %778, label %783

; <label>:774:                                    ; preds = %767
  %775 = load i32, i32* @bking_loc, align 4
  %776 = call i32 @is_attacked(i32 %775, i32 1)
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %778, label %783

; <label>:778:                                    ; preds = %774, %773
  %779 = load i32, i32* %15, align 4
  %780 = ashr i32 50, %779
  %781 = load i32, i32* %9, align 4
  %782 = add nsw i32 %781, %780
  store i32 %782, i32* %9, align 4
  br label %800

; <label>:783:                                    ; preds = %774, %773
  %784 = load i32, i32* @wking_loc, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %785
  %787 = load i32, i32* %786, align 4
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %790

; <label>:789:                                    ; preds = %783
  br i1 false, label %794, label %799

; <label>:790:                                    ; preds = %783
  %791 = load i32, i32* @wking_loc, align 4
  %792 = call i32 @is_attacked(i32 %791, i32 0)
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %794, label %799

; <label>:794:                                    ; preds = %790, %789
  %795 = load i32, i32* %16, align 4
  %796 = ashr i32 50, %795
  %797 = load i32, i32* %9, align 4
  %798 = sub nsw i32 %797, %796
  store i32 %798, i32* %9, align 4
  br label %799

; <label>:799:                                    ; preds = %794, %790, %789
  br label %800

; <label>:800:                                    ; preds = %799, %778
  %801 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 44), align 16
  %802 = icmp eq i32 %801, 4
  br i1 %802, label %803, label %828

; <label>:803:                                    ; preds = %800
  %804 = load i32, i32* %9, align 4
  %805 = sub nsw i32 %804, 20
  store i32 %805, i32* %9, align 4
  %806 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 44), align 16
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %808, label %809

; <label>:808:                                    ; preds = %803
  br i1 false, label %812, label %815

; <label>:809:                                    ; preds = %803
  %810 = call i32 @is_attacked(i32 44, i32 0)
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %812, label %815

; <label>:812:                                    ; preds = %809, %808
  %813 = load i32, i32* %9, align 4
  %814 = sub nsw i32 %813, 40
  store i32 %814, i32* %9, align 4
  br label %815

; <label>:815:                                    ; preds = %812, %809, %808
  %816 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 32), align 16
  %817 = icmp eq i32 %816, 7
  br i1 %817, label %818, label %821

; <label>:818:                                    ; preds = %815
  %819 = load i32, i32* %9, align 4
  %820 = add nsw i32 %819, 10
  store i32 %820, i32* %9, align 4
  br label %821

; <label>:821:                                    ; preds = %818, %815
  %822 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 31), align 4
  %823 = icmp eq i32 %822, 11
  br i1 %823, label %824, label %827

; <label>:824:                                    ; preds = %821
  %825 = load i32, i32* %9, align 4
  %826 = add nsw i32 %825, 10
  store i32 %826, i32* %9, align 4
  br label %827

; <label>:827:                                    ; preds = %824, %821
  br label %828

; <label>:828:                                    ; preds = %827, %800
  %829 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 104), align 16
  %830 = icmp eq i32 %829, 3
  br i1 %830, label %831, label %856

; <label>:831:                                    ; preds = %828
  %832 = load i32, i32* %9, align 4
  %833 = add nsw i32 %832, 20
  store i32 %833, i32* %9, align 4
  %834 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 104), align 16
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %837

; <label>:836:                                    ; preds = %831
  br i1 false, label %840, label %843

; <label>:837:                                    ; preds = %831
  %838 = call i32 @is_attacked(i32 104, i32 1)
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %840, label %843

; <label>:840:                                    ; preds = %837, %836
  %841 = load i32, i32* %9, align 4
  %842 = add nsw i32 %841, 40
  store i32 %842, i32* %9, align 4
  br label %843

; <label>:843:                                    ; preds = %840, %837, %836
  %844 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 116), align 16
  %845 = icmp eq i32 %844, 8
  br i1 %845, label %846, label %849

; <label>:846:                                    ; preds = %843
  %847 = load i32, i32* %9, align 4
  %848 = sub nsw i32 %847, 10
  store i32 %848, i32* %9, align 4
  br label %849

; <label>:849:                                    ; preds = %846, %843
  %850 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 115), align 4
  %851 = icmp eq i32 %850, 12
  br i1 %851, label %852, label %855

; <label>:852:                                    ; preds = %849
  %853 = load i32, i32* %9, align 4
  %854 = sub nsw i32 %853, 10
  store i32 %854, i32* %9, align 4
  br label %855

; <label>:855:                                    ; preds = %852, %849
  br label %856

; <label>:856:                                    ; preds = %855, %828
  %857 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 57), align 4
  %858 = icmp eq i32 %857, 12
  br i1 %858, label %859, label %883

; <label>:859:                                    ; preds = %856
  %860 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 44), align 16
  %861 = icmp ne i32 %860, 1
  br i1 %861, label %862, label %883

; <label>:862:                                    ; preds = %859
  %863 = load i32, i32* %9, align 4
  %864 = sub nsw i32 %863, 20
  store i32 %864, i32* %9, align 4
  %865 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 44), align 16
  %866 = icmp eq i32 %865, 4
  br i1 %866, label %867, label %882

; <label>:867:                                    ; preds = %862
  %868 = load i32, i32* %9, align 4
  %869 = sub nsw i32 %868, 40
  store i32 %869, i32* %9, align 4
  %870 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 31), align 4
  %871 = icmp eq i32 %870, 5
  br i1 %871, label %878, label %872

; <label>:872:                                    ; preds = %867
  %873 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 32), align 16
  %874 = icmp eq i32 %873, 5
  br i1 %874, label %878, label %875

; <label>:875:                                    ; preds = %872
  %876 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 33), align 4
  %877 = icmp eq i32 %876, 5
  br i1 %877, label %878, label %881

; <label>:878:                                    ; preds = %875, %872, %867
  %879 = load i32, i32* %9, align 4
  %880 = sub nsw i32 %879, 80
  store i32 %880, i32* %9, align 4
  br label %881

; <label>:881:                                    ; preds = %878, %875
  br label %882

; <label>:882:                                    ; preds = %881, %862
  br label %883

; <label>:883:                                    ; preds = %882, %859, %856
  %884 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 93), align 4
  %885 = icmp eq i32 %884, 11
  br i1 %885, label %886, label %910

; <label>:886:                                    ; preds = %883
  %887 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 104), align 16
  %888 = icmp ne i32 %887, 2
  br i1 %888, label %889, label %910

; <label>:889:                                    ; preds = %886
  %890 = load i32, i32* %9, align 4
  %891 = add nsw i32 %890, 20
  store i32 %891, i32* %9, align 4
  %892 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 104), align 16
  %893 = icmp eq i32 %892, 3
  br i1 %893, label %894, label %909

; <label>:894:                                    ; preds = %889
  %895 = load i32, i32* %9, align 4
  %896 = add nsw i32 %895, 40
  store i32 %896, i32* %9, align 4
  %897 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 115), align 4
  %898 = icmp eq i32 %897, 6
  br i1 %898, label %905, label %899

; <label>:899:                                    ; preds = %894
  %900 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 116), align 16
  %901 = icmp eq i32 %900, 6
  br i1 %901, label %905, label %902

; <label>:902:                                    ; preds = %899
  %903 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i64 0, i64 117), align 4
  %904 = icmp eq i32 %903, 6
  br i1 %904, label %905, label %908

; <label>:905:                                    ; preds = %902, %899, %894
  %906 = load i32, i32* %9, align 4
  %907 = add nsw i32 %906, 80
  store i32 %907, i32* %9, align 4
  br label %908

; <label>:908:                                    ; preds = %905, %902
  br label %909

; <label>:909:                                    ; preds = %908, %889
  br label %910

; <label>:910:                                    ; preds = %909, %886, %883
  br label %911

; <label>:911:                                    ; preds = %910, %396
  %912 = load i32, i32* @cfg_attackeval, align 4
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %1199

; <label>:914:                                    ; preds = %911
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %915 = load i32, i32* @wking_loc, align 4
  %916 = sub nsw i32 %915, 13
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %917
  %919 = load i32, i32* %918, align 4
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %921, label %922

; <label>:921:                                    ; preds = %914
  br label %926

; <label>:922:                                    ; preds = %914
  %923 = load i32, i32* @wking_loc, align 4
  %924 = sub nsw i32 %923, 13
  %925 = call i32 @nk_attacked(i32 %924, i32 0)
  br label %926

; <label>:926:                                    ; preds = %922, %921
  %927 = phi i32 [ 0, %921 ], [ %925, %922 ]
  %928 = load i32, i32* %12, align 4
  %929 = add i32 %928, %927
  store i32 %929, i32* %12, align 4
  %930 = load i32, i32* @wking_loc, align 4
  %931 = sub nsw i32 %930, 12
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %932
  %934 = load i32, i32* %933, align 4
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %936, label %937

; <label>:936:                                    ; preds = %926
  br label %941

; <label>:937:                                    ; preds = %926
  %938 = load i32, i32* @wking_loc, align 4
  %939 = sub nsw i32 %938, 12
  %940 = call i32 @nk_attacked(i32 %939, i32 0)
  br label %941

; <label>:941:                                    ; preds = %937, %936
  %942 = phi i32 [ 0, %936 ], [ %940, %937 ]
  %943 = load i32, i32* %12, align 4
  %944 = add i32 %943, %942
  store i32 %944, i32* %12, align 4
  %945 = load i32, i32* @wking_loc, align 4
  %946 = sub nsw i32 %945, 11
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %947
  %949 = load i32, i32* %948, align 4
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %952

; <label>:951:                                    ; preds = %941
  br label %956

; <label>:952:                                    ; preds = %941
  %953 = load i32, i32* @wking_loc, align 4
  %954 = sub nsw i32 %953, 11
  %955 = call i32 @nk_attacked(i32 %954, i32 0)
  br label %956

; <label>:956:                                    ; preds = %952, %951
  %957 = phi i32 [ 0, %951 ], [ %955, %952 ]
  %958 = load i32, i32* %12, align 4
  %959 = add i32 %958, %957
  store i32 %959, i32* %12, align 4
  %960 = load i32, i32* @wking_loc, align 4
  %961 = sub nsw i32 %960, 1
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %962
  %964 = load i32, i32* %963, align 4
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %967

; <label>:966:                                    ; preds = %956
  br label %971

; <label>:967:                                    ; preds = %956
  %968 = load i32, i32* @wking_loc, align 4
  %969 = sub nsw i32 %968, 1
  %970 = call i32 @nk_attacked(i32 %969, i32 0)
  br label %971

; <label>:971:                                    ; preds = %967, %966
  %972 = phi i32 [ 0, %966 ], [ %970, %967 ]
  %973 = load i32, i32* %12, align 4
  %974 = add i32 %973, %972
  store i32 %974, i32* %12, align 4
  %975 = load i32, i32* @wking_loc, align 4
  %976 = add nsw i32 %975, 1
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %977
  %979 = load i32, i32* %978, align 4
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %982

; <label>:981:                                    ; preds = %971
  br label %986

; <label>:982:                                    ; preds = %971
  %983 = load i32, i32* @wking_loc, align 4
  %984 = add nsw i32 %983, 1
  %985 = call i32 @nk_attacked(i32 %984, i32 0)
  br label %986

; <label>:986:                                    ; preds = %982, %981
  %987 = phi i32 [ 0, %981 ], [ %985, %982 ]
  %988 = load i32, i32* %12, align 4
  %989 = add i32 %988, %987
  store i32 %989, i32* %12, align 4
  %990 = load i32, i32* @wking_loc, align 4
  %991 = add nsw i32 %990, 11
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %992
  %994 = load i32, i32* %993, align 4
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %996, label %997

; <label>:996:                                    ; preds = %986
  br label %1001

; <label>:997:                                    ; preds = %986
  %998 = load i32, i32* @wking_loc, align 4
  %999 = add nsw i32 %998, 11
  %1000 = call i32 @nk_attacked(i32 %999, i32 0)
  br label %1001

; <label>:1001:                                   ; preds = %997, %996
  %1002 = phi i32 [ 0, %996 ], [ %1000, %997 ]
  %1003 = load i32, i32* %12, align 4
  %1004 = add i32 %1003, %1002
  store i32 %1004, i32* %12, align 4
  %1005 = load i32, i32* @wking_loc, align 4
  %1006 = add nsw i32 %1005, 12
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1007
  %1009 = load i32, i32* %1008, align 4
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1011, label %1012

; <label>:1011:                                   ; preds = %1001
  br label %1016

; <label>:1012:                                   ; preds = %1001
  %1013 = load i32, i32* @wking_loc, align 4
  %1014 = add nsw i32 %1013, 12
  %1015 = call i32 @nk_attacked(i32 %1014, i32 0)
  br label %1016

; <label>:1016:                                   ; preds = %1012, %1011
  %1017 = phi i32 [ 0, %1011 ], [ %1015, %1012 ]
  %1018 = load i32, i32* %12, align 4
  %1019 = add i32 %1018, %1017
  store i32 %1019, i32* %12, align 4
  %1020 = load i32, i32* @wking_loc, align 4
  %1021 = add nsw i32 %1020, 13
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1022
  %1024 = load i32, i32* %1023, align 4
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1027

; <label>:1026:                                   ; preds = %1016
  br label %1031

; <label>:1027:                                   ; preds = %1016
  %1028 = load i32, i32* @wking_loc, align 4
  %1029 = add nsw i32 %1028, 13
  %1030 = call i32 @nk_attacked(i32 %1029, i32 0)
  br label %1031

; <label>:1031:                                   ; preds = %1027, %1026
  %1032 = phi i32 [ 0, %1026 ], [ %1030, %1027 ]
  %1033 = load i32, i32* %12, align 4
  %1034 = add i32 %1033, %1032
  store i32 %1034, i32* %12, align 4
  %1035 = load i32, i32* @black_hand_eval, align 4
  %1036 = sub nsw i32 0, %1035
  %1037 = sdiv i32 %1036, 100
  store i32 %1037, i32* %14, align 4
  %1038 = load i32, i32* %14, align 4
  %1039 = icmp sgt i32 %1038, 14
  br i1 %1039, label %1040, label %1041

; <label>:1040:                                   ; preds = %1031
  store i32 14, i32* %14, align 4
  br label %1046

; <label>:1041:                                   ; preds = %1031
  %1042 = load i32, i32* %14, align 4
  %1043 = icmp slt i32 %1042, 0
  br i1 %1043, label %1044, label %1045

; <label>:1044:                                   ; preds = %1041
  store i32 0, i32* %14, align 4
  br label %1045

; <label>:1045:                                   ; preds = %1044, %1041
  br label %1046

; <label>:1046:                                   ; preds = %1045, %1040
  %1047 = load i32, i32* %14, align 4
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds [15 x [9 x i32]], [15 x [9 x i32]]* @ksafety_scaled, i64 0, i64 %1048
  %1050 = load i32, i32* %12, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds [9 x i32], [9 x i32]* %1049, i64 0, i64 %1051
  %1053 = load i32, i32* %1052, align 4
  %1054 = load i32, i32* %11, align 4
  %1055 = sub nsw i32 %1054, %1053
  store i32 %1055, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %1056 = load i32, i32* @bking_loc, align 4
  %1057 = sub nsw i32 %1056, 13
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1058
  %1060 = load i32, i32* %1059, align 4
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1062, label %1063

; <label>:1062:                                   ; preds = %1046
  br label %1067

; <label>:1063:                                   ; preds = %1046
  %1064 = load i32, i32* @bking_loc, align 4
  %1065 = sub nsw i32 %1064, 13
  %1066 = call i32 @nk_attacked(i32 %1065, i32 1)
  br label %1067

; <label>:1067:                                   ; preds = %1063, %1062
  %1068 = phi i32 [ 0, %1062 ], [ %1066, %1063 ]
  %1069 = load i32, i32* %12, align 4
  %1070 = add i32 %1069, %1068
  store i32 %1070, i32* %12, align 4
  %1071 = load i32, i32* @bking_loc, align 4
  %1072 = sub nsw i32 %1071, 12
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1073
  %1075 = load i32, i32* %1074, align 4
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1077, label %1078

; <label>:1077:                                   ; preds = %1067
  br label %1082

; <label>:1078:                                   ; preds = %1067
  %1079 = load i32, i32* @bking_loc, align 4
  %1080 = sub nsw i32 %1079, 12
  %1081 = call i32 @nk_attacked(i32 %1080, i32 1)
  br label %1082

; <label>:1082:                                   ; preds = %1078, %1077
  %1083 = phi i32 [ 0, %1077 ], [ %1081, %1078 ]
  %1084 = load i32, i32* %12, align 4
  %1085 = add i32 %1084, %1083
  store i32 %1085, i32* %12, align 4
  %1086 = load i32, i32* @bking_loc, align 4
  %1087 = sub nsw i32 %1086, 11
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1088
  %1090 = load i32, i32* %1089, align 4
  %1091 = icmp eq i32 %1090, 0
  br i1 %1091, label %1092, label %1093

; <label>:1092:                                   ; preds = %1082
  br label %1097

; <label>:1093:                                   ; preds = %1082
  %1094 = load i32, i32* @bking_loc, align 4
  %1095 = sub nsw i32 %1094, 11
  %1096 = call i32 @nk_attacked(i32 %1095, i32 1)
  br label %1097

; <label>:1097:                                   ; preds = %1093, %1092
  %1098 = phi i32 [ 0, %1092 ], [ %1096, %1093 ]
  %1099 = load i32, i32* %12, align 4
  %1100 = add i32 %1099, %1098
  store i32 %1100, i32* %12, align 4
  %1101 = load i32, i32* @bking_loc, align 4
  %1102 = sub nsw i32 %1101, 1
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1103
  %1105 = load i32, i32* %1104, align 4
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1107, label %1108

; <label>:1107:                                   ; preds = %1097
  br label %1112

; <label>:1108:                                   ; preds = %1097
  %1109 = load i32, i32* @bking_loc, align 4
  %1110 = sub nsw i32 %1109, 1
  %1111 = call i32 @nk_attacked(i32 %1110, i32 1)
  br label %1112

; <label>:1112:                                   ; preds = %1108, %1107
  %1113 = phi i32 [ 0, %1107 ], [ %1111, %1108 ]
  %1114 = load i32, i32* %12, align 4
  %1115 = add i32 %1114, %1113
  store i32 %1115, i32* %12, align 4
  %1116 = load i32, i32* @bking_loc, align 4
  %1117 = add nsw i32 %1116, 1
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1118
  %1120 = load i32, i32* %1119, align 4
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1122, label %1123

; <label>:1122:                                   ; preds = %1112
  br label %1127

; <label>:1123:                                   ; preds = %1112
  %1124 = load i32, i32* @bking_loc, align 4
  %1125 = add nsw i32 %1124, 1
  %1126 = call i32 @nk_attacked(i32 %1125, i32 1)
  br label %1127

; <label>:1127:                                   ; preds = %1123, %1122
  %1128 = phi i32 [ 0, %1122 ], [ %1126, %1123 ]
  %1129 = load i32, i32* %12, align 4
  %1130 = add i32 %1129, %1128
  store i32 %1130, i32* %12, align 4
  %1131 = load i32, i32* @bking_loc, align 4
  %1132 = add nsw i32 %1131, 11
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1133
  %1135 = load i32, i32* %1134, align 4
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1137, label %1138

; <label>:1137:                                   ; preds = %1127
  br label %1142

; <label>:1138:                                   ; preds = %1127
  %1139 = load i32, i32* @bking_loc, align 4
  %1140 = add nsw i32 %1139, 11
  %1141 = call i32 @nk_attacked(i32 %1140, i32 1)
  br label %1142

; <label>:1142:                                   ; preds = %1138, %1137
  %1143 = phi i32 [ 0, %1137 ], [ %1141, %1138 ]
  %1144 = load i32, i32* %12, align 4
  %1145 = add i32 %1144, %1143
  store i32 %1145, i32* %12, align 4
  %1146 = load i32, i32* @bking_loc, align 4
  %1147 = add nsw i32 %1146, 12
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1148
  %1150 = load i32, i32* %1149, align 4
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1152, label %1153

; <label>:1152:                                   ; preds = %1142
  br label %1157

; <label>:1153:                                   ; preds = %1142
  %1154 = load i32, i32* @bking_loc, align 4
  %1155 = add nsw i32 %1154, 12
  %1156 = call i32 @nk_attacked(i32 %1155, i32 1)
  br label %1157

; <label>:1157:                                   ; preds = %1153, %1152
  %1158 = phi i32 [ 0, %1152 ], [ %1156, %1153 ]
  %1159 = load i32, i32* %12, align 4
  %1160 = add i32 %1159, %1158
  store i32 %1160, i32* %12, align 4
  %1161 = load i32, i32* @bking_loc, align 4
  %1162 = add nsw i32 %1161, 13
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i64 0, i64 %1163
  %1165 = load i32, i32* %1164, align 4
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1167, label %1168

; <label>:1167:                                   ; preds = %1157
  br label %1172

; <label>:1168:                                   ; preds = %1157
  %1169 = load i32, i32* @bking_loc, align 4
  %1170 = add nsw i32 %1169, 13
  %1171 = call i32 @nk_attacked(i32 %1170, i32 1)
  br label %1172

; <label>:1172:                                   ; preds = %1168, %1167
  %1173 = phi i32 [ 0, %1167 ], [ %1171, %1168 ]
  %1174 = load i32, i32* %12, align 4
  %1175 = add i32 %1174, %1173
  store i32 %1175, i32* %12, align 4
  %1176 = load i32, i32* @white_hand_eval, align 4
  %1177 = sdiv i32 %1176, 100
  store i32 %1177, i32* %13, align 4
  %1178 = load i32, i32* %13, align 4
  %1179 = icmp sgt i32 %1178, 14
  br i1 %1179, label %1180, label %1181

; <label>:1180:                                   ; preds = %1172
  store i32 14, i32* %13, align 4
  br label %1186

; <label>:1181:                                   ; preds = %1172
  %1182 = load i32, i32* %13, align 4
  %1183 = icmp slt i32 %1182, 0
  br i1 %1183, label %1184, label %1185

; <label>:1184:                                   ; preds = %1181
  store i32 0, i32* %13, align 4
  br label %1185

; <label>:1185:                                   ; preds = %1184, %1181
  br label %1186

; <label>:1186:                                   ; preds = %1185, %1180
  %1187 = load i32, i32* %13, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds [15 x [9 x i32]], [15 x [9 x i32]]* @ksafety_scaled, i64 0, i64 %1188
  %1190 = load i32, i32* %12, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds [9 x i32], [9 x i32]* %1189, i64 0, i64 %1191
  %1193 = load i32, i32* %1192, align 4
  %1194 = load i32, i32* %11, align 4
  %1195 = add nsw i32 %1194, %1193
  store i32 %1195, i32* %11, align 4
  %1196 = load i32, i32* %11, align 4
  %1197 = load i32, i32* %9, align 4
  %1198 = add nsw i32 %1197, %1196
  store i32 %1198, i32* %9, align 4
  br label %1199

; <label>:1199:                                   ; preds = %1186, %911
  %1200 = load i32, i32* @white_hand_eval, align 4
  %1201 = load i32, i32* @black_hand_eval, align 4
  %1202 = add nsw i32 %1200, %1201
  %1203 = load i32, i32* %9, align 4
  %1204 = add nsw i32 %1203, %1202
  store i32 %1204, i32* %9, align 4
  %1205 = load i32, i32* %9, align 4
  call void @storeECache(i32 %1205)
  %1206 = load i32, i32* @white_to_move, align 4
  %1207 = icmp eq i32 %1206, 1
  br i1 %1207, label %1208, label %1210

; <label>:1208:                                   ; preds = %1199
  %1209 = load i32, i32* %9, align 4
  store i32 %1209, i32* %3, align 4
  br label %1213

; <label>:1210:                                   ; preds = %1199
  %1211 = load i32, i32* %9, align 4
  %1212 = sub nsw i32 0, %1211
  store i32 %1212, i32* %3, align 4
  br label %1213

; <label>:1213:                                   ; preds = %1210, %1208, %43, %41, %31, %26, %19
  %1214 = load i32, i32* %3, align 4
  ret i32 %1214
}

declare i32 @std_eval(i32, i32) #2

declare i32 @suicide_eval() #2

declare i32 @losers_eval() #2

declare void @checkECache(i32*, i32*) #2

declare i32 @is_attacked(i32, i32) #2

declare i32 @nk_attacked(i32, i32) #2

declare void @storeECache(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
