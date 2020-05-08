; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -verify-machineinstrs -mtriple=powerpc64le-unknown-gnu-linux -mcpu=pwr9 < %s | FileCheck %s -check-prefix=CHECK-LE
; RUN: llc -verify-machineinstrs -mtriple=powerpc64-unknown-gnu-linux -mcpu=pwr9 < %s | FileCheck %s -check-prefix=CHECK-BE

define zeroext i8 @test1(<16 x i8> %a, i32 signext %index) {
; CHECK-LE-LABEL: test1:
; CHECK-LE:       # %bb.0: # %entry
; CHECK-LE-NEXT:    vextubrx 3, 5, 2
; CHECK-LE-NEXT:    clrldi 3, 3, 56
; CHECK-LE-NEXT:    blr
; CHECK-BE-LABEL: test1:
; CHECK-BE:       # %bb.0: # %entry
; CHECK-BE-NEXT:    vextublx 3, 5, 2
; CHECK-BE-NEXT:    clrldi 3, 3, 56
; CHECK-BE-NEXT:    blr

entry:
  %vecext = extractelement <16 x i8> %a, i32 %index
  ret i8 %vecext
}

define signext i8 @test2(<16 x i8> %a, i32 signext %index) {
; CHECK-LE-LABEL: test2:
; CHECK-LE:       # %bb.0: # %entry
; CHECK-LE-NEXT:    vextubrx 3, 5, 2
; CHECK-LE-NEXT:    extsb 3, 3
; CHECK-LE-NEXT:    blr
; CHECK-BE-LABEL: test2:
; CHECK-BE:       # %bb.0: # %entry
; CHECK-BE-NEXT:    vextublx 3, 5, 2
; CHECK-BE-NEXT:    extsb 3, 3
; CHECK-BE-NEXT:    blr

entry:
  %vecext = extractelement <16 x i8> %a, i32 %index
  ret i8 %vecext
}

define zeroext i16 @test3(<8 x i16> %a, i32 signext %index) {
; CHECK-LE-LABEL: test3:
; CHECK-LE:       # %bb.0: # %entry
; CHECK-LE-NEXT:    rlwinm 3, 5, 1, 28, 30
; CHECK-LE-NEXT:    vextuhrx 3, 3, 2
; CHECK-LE-NEXT:    clrldi 3, 3, 48
; CHECK-LE-NEXT:    blr
; CHECK-BE-LABEL: test3:
; CHECK-BE:       # %bb.0: # %entry
; CHECK-BE-NEXT:    rlwinm 3, 5, 1, 28, 30
; CHECK-BE-NEXT:    vextuhlx 3, 3, 2
; CHECK-BE-NEXT:    clrldi 3, 3, 48
; CHECK-BE-NEXT:    blr

entry:
  %vecext = extractelement <8 x i16> %a, i32 %index
  ret i16 %vecext
}

define signext i16 @test4(<8 x i16> %a, i32 signext %index) {
; CHECK-LE-LABEL: test4:
; CHECK-LE:       # %bb.0: # %entry
; CHECK-LE-NEXT:    rlwinm 3, 5, 1, 28, 30
; CHECK-LE-NEXT:    vextuhrx 3, 3, 2
; CHECK-LE-NEXT:    extsh 3, 3
; CHECK-LE-NEXT:    blr
; CHECK-BE-LABEL: test4:
; CHECK-BE:       # %bb.0: # %entry
; CHECK-BE-NEXT:    rlwinm 3, 5, 1, 28, 30
; CHECK-BE-NEXT:    vextuhlx 3, 3, 2
; CHECK-BE-NEXT:    extsh 3, 3
; CHECK-BE-NEXT:    blr

entry:
  %vecext = extractelement <8 x i16> %a, i32 %index
  ret i16 %vecext
}

define zeroext i32 @test5(<4 x i32> %a, i32 signext %index) {
; CHECK-LE-LABEL: test5:
; CHECK-LE:       # %bb.0: # %entry
; CHECK-LE-NEXT:    rlwinm 3, 5, 2, 28, 29
; CHECK-LE-NEXT:    vextuwrx 3, 3, 2
; CHECK-LE-NEXT:    blr
; CHECK-BE-LABEL: test5:
; CHECK-BE:       # %bb.0: # %entry
; CHECK-BE-NEXT:    rlwinm 3, 5, 2, 28, 29
; CHECK-BE-NEXT:    vextuwlx 3, 3, 2
; CHECK-BE-NEXT:    blr

entry:
  %vecext = extractelement <4 x i32> %a, i32 %index
  ret i32 %vecext
}

define signext i32 @test6(<4 x i32> %a, i32 signext %index) {
; CHECK-LE-LABEL: test6:
; CHECK-LE:       # %bb.0: # %entry
; CHECK-LE-NEXT:    rlwinm 3, 5, 2, 28, 29
; CHECK-LE-NEXT:    vextuwrx 3, 3, 2
; CHECK-LE-NEXT:    extsw 3, 3
; CHECK-LE-NEXT:    blr
; CHECK-BE-LABEL: test6:
; CHECK-BE:       # %bb.0: # %entry
; CHECK-BE-NEXT:    rlwinm 3, 5, 2, 28, 29
; CHECK-BE-NEXT:    vextuwlx 3, 3, 2
; CHECK-BE-NEXT:    extsw 3, 3
; CHECK-BE-NEXT:    blr

entry:
  %vecext = extractelement <4 x i32> %a, i32 %index
  ret i32 %vecext
}

; Test with immediate index
define zeroext i8 @test7(<16 x i8> %a) {
; CHECK-LE-LABEL: test7:
; CHECK-LE:       # %bb.0: # %entry
; CHECK-LE-NEXT:    li 3, 1
; CHECK-LE-NEXT:    vextubrx 3, 3, 2
; CHECK-LE-NEXT:    clrldi 3, 3, 56
; CHECK-LE-NEXT:    blr
; CHECK-BE-LABEL: test7:
; CHECK-BE:       # %bb.0: # %entry
; CHECK-BE-NEXT:    li 3, 1
; CHECK-BE-NEXT:    vextublx 3, 3, 2
; CHECK-BE-NEXT:    clrldi 3, 3, 56
; CHECK-BE-NEXT:    blr

entry:
  %vecext = extractelement <16 x i8> %a, i32 1
  ret i8 %vecext
}

define zeroext i16 @test8(<8 x i16> %a) {
; CHECK-LE-LABEL: test8:
; CHECK-LE:       # %bb.0: # %entry
; CHECK-LE-NEXT:    li 3, 2
; CHECK-LE-NEXT:    vextuhrx 3, 3, 2
; CHECK-LE-NEXT:    clrldi 3, 3, 48
; CHECK-LE-NEXT:    blr
; CHECK-BE-LABEL: test8:
; CHECK-BE:       # %bb.0: # %entry
; CHECK-BE-NEXT:    li 3, 2
; CHECK-BE-NEXT:    vextuhlx 3, 3, 2
; CHECK-BE-NEXT:    clrldi 3, 3, 48
; CHECK-BE-NEXT:    blr

entry:
  %vecext = extractelement <8 x i16> %a, i32 1
  ret i16 %vecext
}

define zeroext i32 @test9(<4 x i32> %a) {
; CHECK-LE-LABEL: test9:
; CHECK-LE:       # %bb.0: # %entry
; CHECK-LE-NEXT:    li 3, 12
; CHECK-LE-NEXT:    vextuwrx 3, 3, 2
; CHECK-LE-NEXT:    blr
; CHECK-BE-LABEL: test9:
; CHECK-BE:       # %bb.0: # %entry
; CHECK-BE-NEXT:    li 3, 12
; CHECK-BE-NEXT:    vextuwlx 3, 3, 2
; CHECK-BE-NEXT:    blr

entry:
  %vecext = extractelement <4 x i32> %a, i32 3
  ret i32 %vecext
}
