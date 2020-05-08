; ModuleID = 'DwConv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define void @DW0Conv(i32 %isize, i32 %osize, i32 %inputchannel, i32 %outputchannel, i32 %stride) #0 {
entry:
  switch i32 %stride, label %for.end88 [
    i32 1, label %for.cond.preheader
    i32 2, label %if.end
  ]

if.end:                                           ; preds = %entry
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.end
  %i.1.ph = phi i16 [ 0, %entry ], [ 1, %if.end ]
  %cmp520 = icmp eq i32 %outputchannel, 0
  br i1 %cmp520, label %for.end88, label %for.cond6.preheader.lr.ph

for.cond6.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %sub = add i32 %isize, -2
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc86, %for.cond6.preheader.lr.ph
  %ch.024 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc87, %for.inc86 ]
  %op.023 = phi i16 [ 0, %for.cond6.preheader.lr.ph ], [ %op.1.lcssa, %for.inc86 ]
  %j.122 = phi i16 [ %i.1.ph, %for.cond6.preheader.lr.ph ], [ %j.2.lcssa, %for.inc86 ]
  %i.121 = phi i16 [ %i.1.ph, %for.cond6.preheader.lr.ph ], [ %i.4, %for.inc86 ]
  %conv12 = zext i16 %i.121 to i32
  %cmp713 = icmp ult i32 %conv12, %sub
  br i1 %cmp713, label %for.cond10.preheader.lr.ph, label %for.end76

for.cond10.preheader.lr.ph:                       ; preds = %for.cond6.preheader
  %mul24 = mul i32 %ch.024, %isize
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond10.preheader.lr.ph, %for.inc72
  %conv16 = phi i32 [ %conv12, %for.cond10.preheader.lr.ph ], [ %conv, %for.inc72 ]
  %op.115 = phi i16 [ %op.023, %for.cond10.preheader.lr.ph ], [ %op.2.lcssa, %for.inc72 ]
  %j.214 = phi i16 [ %j.122, %for.cond10.preheader.lr.ph ], [ %j.5, %for.inc72 ]
  %conv117 = zext i16 %j.214 to i32
  %cmp138 = icmp ult i32 %conv117, %sub
  br i1 %cmp138, label %for.cond16.preheader.lr.ph, label %for.end62

for.cond16.preheader.lr.ph:                       ; preds = %for.cond10.preheader
  %tmp = add i32 %conv16, %mul24
  %tmp2 = mul i32 %tmp, %isize
  %tmp1.1 = add i32 %tmp, 1
  %tmp2.1 = mul i32 %tmp1.1, %isize
  %tmp1.2 = add i32 %tmp, 2
  %tmp2.2 = mul i32 %tmp1.2, %isize
  br label %for.body23.2

for.end62.loopexit:                               ; preds = %for.body23.2
  %add60.lcssa = phi i32 [ %add60, %for.body23.2 ]
  %inc57.lcssa = phi i16 [ %inc57, %for.body23.2 ]
  %conv61 = trunc i32 %add60.lcssa to i16
  br label %for.end62

for.end62:                                        ; preds = %for.end62.loopexit, %for.cond10.preheader
  %op.2.lcssa = phi i16 [ %op.115, %for.cond10.preheader ], [ %inc57.lcssa, %for.end62.loopexit ]
  %j.3.lcssa = phi i16 [ %j.214, %for.cond10.preheader ], [ %conv61, %for.end62.loopexit ]
  switch i32 %stride, label %if.end70 [
    i32 1, label %for.inc72
    i32 2, label %if.then69
  ]

if.then69:                                        ; preds = %for.end62
  br label %if.end70

if.end70:                                         ; preds = %for.end62, %if.then69
  %j.4 = phi i16 [ 1, %if.then69 ], [ %j.3.lcssa, %for.end62 ]
  br label %for.inc72

for.inc72:                                        ; preds = %if.end70, %for.end62
  %j.5 = phi i16 [ %j.4, %if.end70 ], [ 0, %for.end62 ]
  %add74 = add i32 %conv16, %stride
  %conv = and i32 %add74, 65535
  %cmp7 = icmp ult i32 %conv, %sub
  br i1 %cmp7, label %for.cond10.preheader, label %for.end76.loopexit

for.end76.loopexit:                               ; preds = %for.inc72
  %add74.lcssa = phi i32 [ %add74, %for.inc72 ]
  %j.5.lcssa = phi i16 [ %j.5, %for.inc72 ]
  %op.2.lcssa.lcssa = phi i16 [ %op.2.lcssa, %for.inc72 ]
  %conv75 = trunc i32 %add74.lcssa to i16
  br label %for.end76

for.end76:                                        ; preds = %for.end76.loopexit, %for.cond6.preheader
  %op.1.lcssa = phi i16 [ %op.023, %for.cond6.preheader ], [ %op.2.lcssa.lcssa, %for.end76.loopexit ]
  %j.2.lcssa = phi i16 [ %j.122, %for.cond6.preheader ], [ %j.5.lcssa, %for.end76.loopexit ]
  %i.2.lcssa = phi i16 [ %i.121, %for.cond6.preheader ], [ %conv75, %for.end76.loopexit ]
  switch i32 %stride, label %if.end84 [
    i32 1, label %for.inc86
    i32 2, label %if.then83
  ]

if.then83:                                        ; preds = %for.end76
  br label %if.end84

if.end84:                                         ; preds = %for.end76, %if.then83
  %i.3 = phi i16 [ 1, %if.then83 ], [ %i.2.lcssa, %for.end76 ]
  br label %for.inc86

for.inc86:                                        ; preds = %if.end84, %for.end76
  %i.4 = phi i16 [ %i.3, %if.end84 ], [ 0, %for.end76 ]
  %inc87 = add nuw i32 %ch.024, 1
  %exitcond29 = icmp eq i32 %inc87, %outputchannel
  br i1 %exitcond29, label %for.end88.loopexit, label %for.cond6.preheader

for.end88.loopexit:                               ; preds = %for.inc86
  br label %for.end88

for.end88:                                        ; preds = %for.end88.loopexit, %for.cond.preheader, %entry
  ret void

for.body23.2:                                     ; preds = %for.cond16.preheader.lr.ph, %for.body23.2
  %conv1110 = phi i32 [ %conv117, %for.cond16.preheader.lr.ph ], [ %conv11, %for.body23.2 ]
  %op.29 = phi i16 [ %op.115, %for.cond16.preheader.lr.ph ], [ %inc57, %for.body23.2 ]
  %add28 = add nuw nsw i32 %conv1110, 1
  %add31 = add i32 %add28, %tmp2
  %idxprom = zext i32 %add31 to i64
  %arrayidx = getelementptr inbounds i32, i32* inttoptr (i64 788533562 to i32*), i64 %idxprom
  %0 = load volatile i32, i32* %arrayidx, align 4
  %1 = load volatile i32, i32* inttoptr (i64 788533598 to i32*), align 4
  %2 = load volatile i32, i32* %arrayidx, align 4
  %3 = load volatile i32, i32* inttoptr (i64 788533598 to i32*), align 4
  %4 = load volatile i32, i32* %arrayidx, align 4
  %5 = load volatile i32, i32* inttoptr (i64 788533598 to i32*), align 4
  %add31.1 = add i32 %add28, %tmp2.1
  %idxprom.1 = zext i32 %add31.1 to i64
  %arrayidx.1 = getelementptr inbounds i32, i32* inttoptr (i64 788533562 to i32*), i64 %idxprom.1
  %6 = load volatile i32, i32* %arrayidx.1, align 4
  %7 = load volatile i32, i32* inttoptr (i64 788533610 to i32*), align 4
  %8 = load volatile i32, i32* %arrayidx.1, align 4
  %9 = load volatile i32, i32* inttoptr (i64 788533610 to i32*), align 4
  %10 = load volatile i32, i32* %arrayidx.1, align 4
  %11 = load volatile i32, i32* inttoptr (i64 788533610 to i32*), align 4
  %add31.2 = add i32 %add28, %tmp2.2
  %idxprom.2 = zext i32 %add31.2 to i64
  %arrayidx.2 = getelementptr inbounds i32, i32* inttoptr (i64 788533562 to i32*), i64 %idxprom.2
  %mul36.131 = mul i32 %7, %6
  %mul36.2 = mul i32 %5, %4
  %mul36.1 = mul i32 %3, %2
  %mul36 = mul i32 %1, %0
  %add38.1 = add i32 %mul36.1, %mul36
  %add38.2 = add i32 %mul36.2, %add38.1
  %add38.132 = add i32 %mul36.131, %add38.2
  %mul36.2.1 = mul i32 %11, %10
  %mul36.1.1 = mul i32 %9, %8
  %add38.1.1 = add i32 %mul36.1.1, %add38.132
  %add38.2.1 = add i32 %mul36.2.1, %add38.1.1
  %12 = load volatile i32, i32* %arrayidx.2, align 4
  %13 = load volatile i32, i32* inttoptr (i64 788533622 to i32*), align 4
  %mul36.234 = mul i32 %13, %12
  %add38.235 = add i32 %mul36.234, %add38.2.1
  %14 = load volatile i32, i32* %arrayidx.2, align 4
  %15 = load volatile i32, i32* inttoptr (i64 788533622 to i32*), align 4
  %mul36.1.2 = mul i32 %15, %14
  %add38.1.2 = add i32 %mul36.1.2, %add38.235
  %16 = load volatile i32, i32* %arrayidx.2, align 4
  %17 = load volatile i32, i32* inttoptr (i64 788533622 to i32*), align 4
  %fold36 = add i32 %add38.235, %mul36.1.2
  %mul36.2.2 = mul i32 %17, %16
  %add38.2.2 = add i32 %mul36.2.2, %fold36
  %conv39.2.2 = trunc i32 %add38.2.2 to i16
  %cmp44 = icmp ugt i16 %conv39.2.2, 255
  %fold = add i32 %add38.1.2, %mul36.2.2
  %add38.op = and i32 %fold, 65535
  %conv54 = select i1 %cmp44, i32 255, i32 %add38.op
  %idxprom55 = zext i16 %op.29 to i64
  %arrayidx56 = getelementptr inbounds i32, i32* inttoptr (i64 788533596 to i32*), i64 %idxprom55
  store volatile i32 %conv54, i32* %arrayidx56, align 4
  %inc57 = add i16 %op.29, 1
  %add60 = add i32 %conv1110, %stride
  %conv11 = and i32 %add60, 65535
  %cmp13 = icmp ult i32 %conv11, %sub
  br i1 %cmp13, label %for.body23.2, label %for.end62.loopexit
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
