; ModuleID = 'top.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define void @top(i8 zeroext %stage, i64 %feat_rd_addr, i64 %feat_wr_addr, i64 %pw0_weights, i64 %dw0_weights, i64 %pw1_weights) #0 {
entry:
  %conv = zext i8 %stage to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb10
    i32 11, label %sw.bb11
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 14, label %sw.bb14
    i32 15, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  store volatile i32 80, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 80, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 16, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 96, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 40, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 80, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 96, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 96, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 2, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 40, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 40, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 96, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store volatile i32 40, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 40, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 40, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 40, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 40, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 40, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store volatile i32 40, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 40, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 40, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 2, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 20, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store volatile i32 20, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 20, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store volatile i32 20, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 20, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store volatile i32 20, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 24, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 20, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 2, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 10, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 144, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 48, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store volatile i32 10, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 48, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 10, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 48, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store volatile i32 10, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 48, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 10, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 48, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store volatile i32 10, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 48, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 10, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 48, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store volatile i32 10, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 48, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 10, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 288, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 72, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store volatile i32 10, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 72, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 10, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 72, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store volatile i32 10, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 72, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 10, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 72, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store volatile i32 10, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 72, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 10, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 2, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 5, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 432, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 120, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store volatile i32 5, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 120, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 5, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 120, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store volatile i32 5, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 120, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 5, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 120, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  store volatile i32 5, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 120, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 5, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 5, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 720, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 240, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store volatile i32 0, i32* inttoptr (i64 788533393 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533389 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533397 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533401 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533407 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533403 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533411 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533415 to i32*), align 4
  store volatile i8 0, i8* inttoptr (i64 788533419 to i8*), align 1
  store volatile i32 0, i32* inttoptr (i64 788533425 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533421 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533429 to i32*), align 4
  store volatile i32 0, i32* inttoptr (i64 788533433 to i32*), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %InputSize.0 = phi i32 [ 0, %sw.default ], [ 3000, %sw.bb15 ], [ 3000, %sw.bb14 ], [ 3000, %sw.bb13 ], [ 7200, %sw.bb12 ], [ 7200, %sw.bb11 ], [ 7200, %sw.bb10 ], [ 4800, %sw.bb9 ], [ 4800, %sw.bb8 ], [ 4800, %sw.bb7 ], [ 4800, %sw.bb6 ], [ 9600, %sw.bb5 ], [ 9600, %sw.bb4 ], [ 9600, %sw.bb3 ], [ 38400, %sw.bb2 ], [ 38400, %sw.bb1 ], [ 102400, %sw.bb ]
  %OutputSize.0 = phi i32 [ 0, %sw.default ], [ 18000, %sw.bb15 ], [ 18000, %sw.bb14 ], [ 18000, %sw.bb13 ], [ 43200, %sw.bb12 ], [ 43200, %sw.bb11 ], [ 43200, %sw.bb10 ], [ 28800, %sw.bb9 ], [ 28800, %sw.bb8 ], [ 28800, %sw.bb7 ], [ 28800, %sw.bb6 ], [ 57600, %sw.bb5 ], [ 57600, %sw.bb4 ], [ 57600, %sw.bb3 ], [ 230400, %sw.bb2 ], [ 230400, %sw.bb1 ], [ 614400, %sw.bb ]
  store volatile i8 1, i8* inttoptr (i64 788533388 to i8*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533402 to i8*), align 2
  store volatile i8 1, i8* inttoptr (i64 788533420 to i8*), align 4
  store volatile i64 %feat_rd_addr, i64* inttoptr (i64 788533294 to i64*), align 8
  store volatile i32 %InputSize.0, i32* inttoptr (i64 788533310 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533314 to i8*), align 2
  store volatile i8 1, i8* inttoptr (i64 788533315 to i8*), align 1
  store volatile i64 788533363, i64* inttoptr (i64 788533302 to i64*), align 8
  store volatile i32 %OutputSize.0, i32* inttoptr (i64 788533316 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533320 to i8*), align 8
  store volatile i8 1, i8* inttoptr (i64 788533321 to i8*), align 1
  store volatile i8 3, i8* inttoptr (i64 788533290 to i8*), align 2
  store volatile i64 %pw0_weights, i64* inttoptr (i64 788533371 to i64*), align 8
  store volatile i64 788533530, i64* inttoptr (i64 788533379 to i64*), align 8
  store volatile i32 1, i32* inttoptr (i64 788533387 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533370 to i8*), align 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %sw.epilog
  %0 = load volatile i8, i8* inttoptr (i64 788533370 to i8*), align 2
  %and = and i8 %0, 4
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  store volatile i64 %dw0_weights, i64* inttoptr (i64 788533371 to i64*), align 8
  store volatile i64 788533594, i64* inttoptr (i64 788533379 to i64*), align 8
  store volatile i32 3, i32* inttoptr (i64 788533387 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533370 to i8*), align 2
  br label %while.cond18

while.cond18:                                     ; preds = %while.cond18, %while.end
  %1 = load volatile i8, i8* inttoptr (i64 788533370 to i8*), align 2
  %and20 = and i8 %1, 4
  %cmp21 = icmp eq i8 %and20, 0
  br i1 %cmp21, label %while.cond18, label %while.end24

while.end24:                                      ; preds = %while.cond18
  store volatile i64 %pw1_weights, i64* inttoptr (i64 788533371 to i64*), align 8
  store volatile i64 788533628, i64* inttoptr (i64 788533379 to i64*), align 8
  store volatile i32 1, i32* inttoptr (i64 788533387 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 788533370 to i8*), align 2
  br label %while.cond25

while.cond25:                                     ; preds = %while.cond25, %while.end24
  %2 = load volatile i8, i8* inttoptr (i64 788533370 to i8*), align 2
  %and27 = and i8 %2, 4
  %cmp28 = icmp eq i8 %and27, 0
  br i1 %cmp28, label %while.cond25, label %while.end31

while.end31:                                      ; preds = %while.cond25
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
