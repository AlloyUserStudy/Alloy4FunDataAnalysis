-- equiv pair start,95
begin.(^succ - (^succ :> end)) = end
-- div,1
no end.succ



all ws : Workstation | one ws.succ
-- div,1
all w: Workstation | one (w.succ) and (w not in w.^succ)
-- div,1
all w: Workstation | some w.succ and w not in w.^succ
-- div,1
all w : Workstation | one w.succ
no iden & ^succ
-- div,1
all w, w1 : Workstation | not w in w.^succ and w -> w1 in succ
-- div,1
all w : Workstation | w in begin.^succ
no ^succ & iden
-- div,1
all w: Workstation | Workstation in w.succ and w not in w.^succ
-- div,1
all w : Workstation | one w.succ
no iden & ^succ
no end.succ
-- div,1
all w, w1 : Workstation | not w in w.^succ and w -> w1 in succ and w != w1
-- div,1
all w : Workstation | w in begin.^succ and w not in w.^succ
no end.succ
-- div,1
all w : Workstation | w in begin.^succ
no ^succ & iden
no end.succ
-- div,1
succ in Workstation one -> one Workstation
all w : Workstation | w not in (w . ^succ)
-- div,1
end in begin.*succ
all w : Workstation | w not in w.^succ && some succ.w
-- div,1
all w : Workstation | one w.succ
all w : Workstation | w not in w.^succ
-- div,1
all w : Workstation | some w.succ
all w : Workstation | w not in w.^(succ)
-- div,1
all w : Workstation | lone w.succ
Workstation in begin.^succ
no end.succ
-- div,1
begin not in Workstation.succ
no end.succ


all ws : Workstation | end in ws.^succ
-- div,1
all w : Workstation | lone w.succ
Workstation in begin.^succ
no end.succ
begin not in end
-- div,1
all w : Workstation | one wb, we : Workstation | wb in w.^workstation and we in w.^workstation
-- div,1
all w : Workstation | one w.succ and w not in w.succ
(Workstation in begin.*succ) and (no end.succ)
-- div,1
begin not in begin.^succ
end in begin.^succ
no end.succ
all w : Workstation | one w.succ
-- div,1
all w : Workstation | one wb, we : Workstation | wb in w.~^workstation and we in w.^workstation
-- div,1
all w : Workstation | one w.succ
all w : Workstation | w not in w.^succ
one begin
one end
-- div,1
all ws:Workstation-end | one ws.succ
no end.succ
no succ.begin
Workstation in begin.(^succ)
-- div,1
succ in Workstation one -> one Workstation
(begin . *succ) in Workstation
all w : Workstation | w not in (w . ^succ)
-- div,1
all w : Workstation | all wb, we : Workstation | wb != w and w in wb.^succ and we in w.^succ and wb!=we
-- div,1
all w: Workstation | (no Workstation-w or w in end or some w.succ) and w not in w.^succ and w.succ not in begin
-- div,1
all w1,w2: Workstation | (w1 in begin and w2 in end) implies (some w1.succ and w1 not in succ.Workstation and no w2.succ)
-- div,2
Workstation - begin = Workstation.succ
all w : Workstation | one w.succ
no iden & ^succ
no end.succ
-- div,1
succ in Workstation one -> one Workstation
no (end . succ)
no (succ . begin)
all w : Workstation | w not in (w . ^succ)
-- div,1
all x : Workstation | one x.succ
no end.succ
no begin & (Workstation-begin).succ
end in begin.^succ
-- div,3
begin not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | end in ws.^succ
-- div,2
begin not in Workstation.succ

no end.succ

all ws : Workstation | one ws.succ


Workstation-begin in begin.^succ
-- div,1
all w : Workstation | one w.succ
all w : Workstation | w not in w.^succ
one begin
one end
no end.succ
-- div,1
succ in Workstation one -> one Workstation
(begin . *succ) in Workstation
all w : Workstation | w not in (w . ^succ)
end not in begin
-- div,1
succ in Workstation one -> one Workstation
Workstation in (begin . *succ)
no (end . succ)
all w : Workstation | w not in (w . ^succ)
-- div,5
all b : begin | all e : end | Workstation-b in b.^(succ) and no e.^(succ)
all w : Workstation | one w.succ
-- div,1
begin != end
begin not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | end in ws.^succ
-- div,1
begin not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | one e : end | e in ws.^succ
-- div,1
no end.succ

all ws : Workstation | one ws.succ


Workstation-begin in begin.^succ

all ws : Workstation | ws not in ws.succ
-- div,1
all w : Workstation | w in begin.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
succ in Workstation one -> one Workstation
Workstation in (begin . *succ)
no (end . succ)
no (succ . begin)
all w : Workstation | w not in (w . ^succ)
-- div,2
succ in Workstation one -> one Workstation
Workstation in (begin . *succ)
no end & begin
no (end . succ)
all w : Workstation | w not in (w . ^succ)
-- div,1
all w : Workstation | one w.succ
all w : Workstation | w not in w.^succ
one begin
one end
no end.succ
no begin & Workstation.succ
-- div,1
all w : Workstation | no succ.w <=> w in begin
all w : Workstation | no w.succ <=> w in end
all w : Workstation | w in begin.^succ
-- div,2
one b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | one e : end | e in ws.^succ
-- div,1
all b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | all e : end | e in ws.^succ
-- div,2
all b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | one e : end | e in ws.^succ
-- div,1
begin not in Workstation.succ
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | end in ws.^succ
-- div,1
all w,wb : Workstation | (wb in begin) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
all w:Workstation | begin->w in *succ
all w1:Workstation | some w2:Workstation | w1->w2 in succ
all w:Workstation | not end->w in succ
-- div,1
all w : Workstation | w in begin implies Workstation in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
all w : Workstation | one w.succ
all w : Workstation | w not in w.^succ
one begin
one end
no end.succ
no begin & Workstation.succ
no begin & end
-- div,1
Workstation in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
all ws : Workstation | one ws.succ
-- div,1
begin not in Workstation.succ
no end.succ
Workstation in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
-- div,1
begin not in Workstation.succ
no end.succ
Workstation-begin in begin.^succ

all ws : Workstation-end | end in ws.succ
all ws : Workstation | one ws.succ
-- div,1
all w : Workstation | no succ.w <=> w in begin
all w : Workstation | no w.succ <=> w in end
all w : Workstation | w in begin.^succ
no (^succ & iden)
-- div,1
all w : Workstation | no succ.w iff w = begin
all w : Workstation | no w.succ iff w = end
all w : Workstation | end in w.^succ and begin in w.^~succ
-- div,1
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
all ws : Workstation | one ws.succ
-- div,1
one w : Workstation | w in end and no w.succ
one w : Workstation | w in begin and w not in Workstation.succ
all w : Workstation | one wb : begin | w in wb.^(succ)
-- div,1
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w in end implies no (Workstation-{w} & w.^(succ))
-- div,1
all w : Workstation | no succ.w iff w = begin
all w : Workstation | no w.succ iff w = end
all w : Workstation | end in w.^succ and begin in w.^~succ
end != begin
-- div,1
all w : Workstation | no succ.w iff w = begin
all w : Workstation | no w.succ iff w = end
all w : Workstation | end in w.^succ and begin in w.^~succ
no end & begin
-- div,1
one w : Workstation | w in end and no w.succ
one w : Workstation | w in begin and w not in Workstation.succ
all w : Workstation | one wb : begin | w!=wb and w in wb.^(succ)
-- div,1
all w : Workstation | one w.succ
all w : Workstation | w not in w.^succ
one begin
one end
no end.succ
no begin & Workstation.succ

all w : Workstation | w in begin.^succ
-- div,1
all w : Workstation-end | one w.succ
all w : Workstation | w not in w.^succ


no end.succ
no begin & Workstation.succ
no begin & end
all w : Workstation | w in begin.^succ
-- div,1
all b : begin | all e : end | e != b
all b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | all e : end | e in ws.^succ
-- div,2
all w : Workstation-end | one w.succ
all w : Workstation | w not in w.^succ
one begin
one end
no end.succ
no begin & Workstation.succ

all w : Workstation | w in begin.^succ
-- div,1
all ws : Workstation | ws in begin implies ws not in end
all b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | all e : end | e in ws.^succ
-- div,1
begin not in Workstation.succ
no end.succ
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.succ
all ws : Workstation-end | end in ws.succ
all ws : Workstation | one ws.succ
-- div,1
begin not in Workstation.succ

no end.succ

all ws : Workstation | one ws.succ

Workstation-begin in begin.^succ

all ws : Workstation | ws not in ws.succ

all ws : Workstation-end | end in ws.succ
-- div,2
all w : Workstation | one w.succ
all w : Workstation | w not in w.^succ
one begin
one end
no end.succ
no begin & Workstation.succ
no begin & end
all w : Workstation | w in begin.^succ
-- div,2
begin not in Workstation.succ

no end.succ

all ws : Workstation | one ws.succ

Workstation-begin in begin.^succ

all ws : Workstation | ws not in ws.succ

all ws : Workstation-end | end in ws.^succ
-- div,1
begin not in Workstation.succ
no end.succ
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
all ws : Workstation | one ws.succ
-- div,1
all w : Workstation-end | one w.succ
all w : Workstation | w not in w.^succ
one begin
one end
no end.succ
no begin & Workstation.succ
no begin & end
all w : Workstation | w in begin.^succ
-- div,2
begin not in Workstation.succ

no end.succ

all ws : Workstation | one ws.succ

Workstation-begin in begin.^succ

all ws : Workstation | ws not in ws.succ

all ws : Workstation-end | end in ws.succ
begin != end
-- div,1
all ws : Workstation | ws=begin implies ws!=end
all ws : Workstation | ws = end implies ws != begin
all b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | all e : end | e in ws.^succ
-- div,1
all ws : Workstation | ws=begin implies ws!=end
all ws : Workstation | ws in end implies ws not in begin
all b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | all e : end | e in ws.^succ
-- div,1
all ws : Workstation | ws in begin implies ws not in end
all ws : Workstation | ws in end implies ws not in begin
all b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | all e : end | e in ws.^succ
-- div,1
-- equiv pair end
-- equiv pair start,18
all w: Workstation | w in begin && w.^(succ) in end && w not in w.^(succ)
-- div,1
all w: Workstation | (no Workstation-w or w in begin and some w.succ) and w not in w.^succ
-- div,2
all w:Workstation | w not in w.^succ
one w:Workstation | w.^succ in Workstation - w
-- div,3
all w : Workstation | some w.succ or one Workstation
all w : Workstation | w not in w.^(succ)
-- div,2
all w : Workstation | no succ.w && w in begin and (no w.succ <=> w in end) and lone w.succ and w not in w.^succ
-- div,1
all w:Workstation | w not in w.^succ
one w:Workstation | w in begin implies w.^succ in Workstation - begin
-- div,1
all w:Workstation | w not in w.^succ
one w:Workstation | w.^succ in Workstation - w
one w:Workstation | no w.succ
-- div,1
all w:Workstation | w not in w.^succ
one w:Workstation | w in begin implies w.^succ in Workstation - w
one w:Workstation | no w.succ
-- div,1
all w0, w1 : Workstation | w0 in begin and w0!=w1 implies w1 in w0.^parts
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one w.succ
-- div,1
all w0, w1 : Workstation | w0 in begin and w0!=w1 implies w1 in w0.^parts
all w : Workstation | w not in w.^succ
all w0, w1 : Workstation | w0 in end and w0!=w1 implies w0->w1 not in succ
-- div,1
all w0, w1 : Workstation | w0 in begin and w0!=w1 implies w1 in w0.^parts
all w : Workstation | w not in w.^succ
all w0 : Workstation | w0 in end implies all w1 : Workstation | w0->w1 not in succ
-- div,1
one w : Workstation | w in end and no w.succ
one w : Workstation | w in begin and w not in Workstation.succ
all w : Workstation | one wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
-- div,1
all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one we : Workstation | some ws : Workstation| we in w.^succ and we in end and ws in w.succ and we in ws.^succ and w != we
-- div,1
all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one we : Workstation | some ws : Workstation| we in w.^succ and we in end and ws in w.succ and we in ws.^succ and w != we and ws != we and w != ws
-- div,1
-- equiv pair end
-- equiv pair start,3
no end.succ+succ.begin
one succ.end
one begin.succ
begin != end
all w : Workstation-end-begin | one w.succ && one succ.w && w.succ != succ.w
-- div,1
no end.succ+succ.begin
one succ.end
one begin.succ
all w : Workstation | w != begin&end
all w : Workstation-end-begin | one w.succ && one succ.w && w.succ != succ.w
-- div,1
no end.succ+succ.begin
one succ.end
one begin.succ
all w : Workstation | w not in begin&end
all w : Workstation-end-begin | one w.succ && one succ.w && w.succ != succ.w
-- div,1
-- equiv pair end
-- equiv pair start,2
begin not in Workstation.succ

no end.succ

all ws : Workstation | lone ws.succ


Workstation-begin in begin.^succ



all ws : Workstation-end | end in ws.succ
-- div,1
begin not in Workstation.succ

no end.succ

all ws : Workstation | lone ws.succ


Workstation-begin in begin.^succ

all ws : Workstation | ws not in ws.succ

all ws : Workstation-end | end in ws.succ
-- div,1
-- equiv pair end
