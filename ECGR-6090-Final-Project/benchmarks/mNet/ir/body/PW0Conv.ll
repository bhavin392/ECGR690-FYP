; ModuleID = 'PW0Conv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define void @PW0Conv(i32 %isize, i32 %osize, i32 %inputchannel, i32 %outputchannel) #0 {
entry:
  %cmp9 = icmp eq i32 %outputchannel, 0
  br i1 %cmp9, label %for.end29, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp24 = icmp eq i32 %isize, 0
  %cmp51 = icmp eq i32 %inputchannel, 0
  %0 = add i32 %isize, 65535
  %1 = trunc i32 %0 to i16
  %2 = add i16 %1, 1
  %xtraiter = and i32 %inputchannel, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  %3 = icmp eq i32 %inputchannel, 1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc27, %for.cond1.preheader.lr.ph
  %indvars.iv13 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next14, %for.inc27 ]
  %t.010 = phi i16 [ 0, %for.cond1.preheader.lr.ph ], [ %t.1.lcssa, %for.inc27 ]
  br i1 %cmp24, label %for.inc27, label %for.cond4.preheader.lr.ph

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx8 = getelementptr inbounds i32, i32* inttoptr (i64 788533530 to i32*), i64 %indvars.iv13
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %if.else, %for.cond4.preheader.lr.ph
  %i.06 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc25, %if.else ]
  %t.15 = phi i16 [ %t.010, %for.cond4.preheader.lr.ph ], [ %inc23, %if.else ]
  br i1 %cmp51, label %if.else, label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.cond4.preheader
  br i1 %lcmp.mod, label %for.body6.preheader.split, label %for.body6.prol

for.body6.prol:                                   ; preds = %for.body6.preheader
  %idxprom.prol = zext i32 %i.06 to i64
  %arrayidx.prol = getelementptr inbounds i32, i32* inttoptr (i64 788533498 to i32*), i64 %idxprom.prol
  %4 = load volatile i32, i32* %arrayidx.prol, align 4
  %5 = load volatile i32, i32* %arrayidx8, align 4
  %mul9.prol = mul i32 %5, %4
  br label %for.body6.preheader.split

for.body6.preheader.split:                        ; preds = %for.body6.preheader, %for.body6.prol
  %add10.lcssa.unr = phi i32 [ undef, %for.body6.preheader ], [ %mul9.prol, %for.body6.prol ]
  %indvars.iv.unr = phi i64 [ 0, %for.body6.preheader ], [ 1, %for.body6.prol ]
  %sum.22.unr = phi i32 [ 0, %for.body6.preheader ], [ %mul9.prol, %for.body6.prol ]
  br i1 %3, label %if.else.loopexit, label %for.body6.preheader17

for.body6.preheader17:                            ; preds = %for.body6.preheader.split
  br label %for.body6

for.body6:                                        ; preds = %for.body6.preheader17, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body6 ], [ %indvars.iv.unr, %for.body6.preheader17 ]
  %sum.22 = phi i32 [ %add10.1, %for.body6 ], [ %sum.22.unr, %for.body6.preheader17 ]
  %6 = trunc i64 %indvars.iv to i32
  %mul = mul i32 %6, %isize
  %add = add i32 %mul, %i.06
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* inttoptr (i64 788533498 to i32*), i64 %idxprom
  %7 = load volatile i32, i32* %arrayidx, align 4
  %8 = load volatile i32, i32* %arrayidx8, align 4
  %mul9 = mul i32 %8, %7
  %add10 = add i32 %mul9, %sum.22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %mul.1 = mul i32 %9, %isize
  %add.1 = add i32 %mul.1, %i.06
  %idxprom.1 = zext i32 %add.1 to i64
  %arrayidx.1 = getelementptr inbounds i32, i32* inttoptr (i64 788533498 to i32*), i64 %idxprom.1
  %10 = load volatile i32, i32* %arrayidx.1, align 4
  %11 = load volatile i32, i32* %arrayidx8, align 4
  %conv.1 = and i32 %add10, 65535
  %mul9.1 = mul i32 %11, %10
  %add10.1 = add i32 %mul9.1, %conv.1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %inputchannel
  br i1 %exitcond.1, label %if.else.loopexit.loopexit, label %for.body6

if.else.loopexit.loopexit:                        ; preds = %for.body6
  %add10.1.lcssa = phi i32 [ %add10.1, %for.body6 ]
  br label %if.else.loopexit

if.else.loopexit:                                 ; preds = %if.else.loopexit.loopexit, %for.body6.preheader.split
  %add10.lcssa = phi i32 [ %add10.lcssa.unr, %for.body6.preheader.split ], [ %add10.1.lcssa, %if.else.loopexit.loopexit ]
  %conv11 = trunc i32 %add10.lcssa to i16
  br label %if.else

if.else:                                          ; preds = %if.else.loopexit, %for.cond4.preheader
  %sum.2.lcssa = phi i16 [ 0, %for.cond4.preheader ], [ %conv11, %if.else.loopexit ]
  %cmp16 = icmp ugt i16 %sum.2.lcssa, 255
  %.sum.2 = select i1 %cmp16, i16 255, i16 %sum.2.lcssa
  %conv20 = zext i16 %.sum.2 to i32
  %idxprom21 = zext i16 %t.15 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* inttoptr (i64 788533562 to i32*), i64 %idxprom21
  store volatile i32 %conv20, i32* %arrayidx22, align 4
  %inc23 = add i16 %t.15, 1
  %inc25 = add nuw i32 %i.06, 1
  %exitcond12 = icmp eq i32 %inc25, %isize
  br i1 %exitcond12, label %for.inc27.loopexit, label %for.cond4.preheader

for.inc27.loopexit:                               ; preds = %if.else
  %12 = add i16 %2, %t.010
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond1.preheader
  %t.1.lcssa = phi i16 [ %t.010, %for.cond1.preheader ], [ %12, %for.inc27.loopexit ]
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %lftr.wideiv15 = trunc i64 %indvars.iv.next14 to i32
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %outputchannel
  br i1 %exitcond16, label %for.end29.loopexit, label %for.cond1.preheader, !llvm.loop !1

for.end29.loopexit:                               ; preds = %for.inc27
  br label %for.end29

for.end29:                                        ; preds = %for.end29.loopexit, %entry
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.full"}
