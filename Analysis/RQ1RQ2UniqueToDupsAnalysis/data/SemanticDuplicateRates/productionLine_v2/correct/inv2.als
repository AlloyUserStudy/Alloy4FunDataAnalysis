-- equiv pair start,178
workers in Workstation one -> some Worker
-- div,21
all w:Worker | one workers.w
Workstation = workers.Worker
-- div,4
Workstation in workers.Worker and all w : Worker | one workers.w
-- div,1
all w: Workstation | some w.workers and
all w: Worker | one workers.w
-- div,3
all w:Workstation | some w.workers
all w:Worker | one workers.w
-- div,21
(all w : Workstation | some w.workers) and (all t : Worker | one workers.t)
-- div,2
all w:Worker | one workers.w
all w:Workstation | some w.workers
-- div,7
all x : Workstation | some x.workers
all x : Worker | one workers.x
-- div,1
all w : Workstation | some w.workers
and
all t : Worker | one workers.t
-- div,1
all ws:Workstation | some ws.workers
all w:Worker | one workers.w
-- div,4
all w : Workstation | some w.workers
all wr : Worker | one workers.wr
-- div,1
all w:Worker | one w.~workers
all w:Workstation | some w.workers
-- div,2
all w:Workstation | some w.workers
all w:Worker | one w.~workers
-- div,4
all ws: Workstation| some ws.workers
all w: Worker | one w.~workers
-- div,5
Workstation in workers.Worker
all w : Worker | one ww : Workstation | w in ww.workers
-- div,1
Worker.~workers = Workstation
all w : Worker | one ww : Workstation | w in ww.workers
-- div,1
all w: Workstation | some w.workers
all w: Workstation, wo: Worker | one workers.wo
-- div,1
all ws : Workstation | some w : Worker | ws->w in workers
workers in Workstation one -> set Worker
-- div,1
workers in Workstation one -> some Worker
all w,x : Workstation | w != x implies no (w.workers & x.workers)
-- div,2
all w: Workstation | some w.workers
all w: Worker | one ww: Workstation | w in ww.workers
-- div,2
all w:Workstation | some w.workers
all w:Worker | one ws:Workstation| w in ws.workers
-- div,4
all w : Workstation | w.workers!=none
all t : Worker | one w : Workstation | t in w.workers
-- div,1
all wk:Workstation | some wk.workers
all w:Worker | one wk:Workstation | w in wk.workers
-- div,4
all w:Worker | one ww:Workstation | w in ww.workers
all ww:Workstation | some (ww.workers)
-- div,2
all ws: Workstation | some ws.workers
all w: Worker | one ws: Workstation | w in ws.workers
-- div,5
all w : Workstation | some w.workers
all w : Worker | one wor : Workstation | w in wor.workers
-- div,2
all wb : Workstation | some wb.workers
all w : Worker | one wb : Workstation | w in wb.workers
-- div,1
all ws: Workstation | some ws.workers
all w: Worker | one ws: Workstation | ws->w in workers
-- div,1
(all ws : Workstation | ws.workers != none) and (all w : Worker | one ws : Workstation | w in ws.workers)
-- div,1
all ws : Workstation | ws.workers != none and (all w : Worker | one ws : Workstation | w in ws.workers)
-- div,1
all wtt : Workstation | some wtt.workers
all w : Worker | one wtt : Workstation | w in wtt.workers
-- div,2
all ws: Workstation | ws.workers != none and (all w: Worker | one wks: Workstation | w in wks.workers)
-- div,1
all ws: Workstation | not no ws.workers
all worker: Worker | one ws: Workstation | worker in ws.workers
-- div,1
all s : Workstation | some w : Worker | w in s.workers
all w : Worker | one s : Workstation | w in s.workers
-- div,1
all s: Workstation | some w: Worker | w in s.workers
all w: Worker | one s: Workstation | s in workers.w
-- div,2
(all w : Workstation | some t : Worker | w->t in workers) and (all t : Worker | one w : Workstation | w->t in workers)
-- div,2
all w: Workstation | some x : Worker | w->x in workers
all w: Worker | one x: Workstation | x->w in workers
-- div,1
all w: Workstation | some wo : Worker | wo in w.workers
and
all wo : Worker | one w: Workstation | wo in w.workers
-- div,2
all w : Workstation | some wk : Worker | wk in w.workers
all wk : Worker | one w : Workstation | wk in w.workers
-- div,1
all ws:Workstation | some w:Worker | w in ws.workers
all w:Worker | one ws:Workstation | w in ws.workers
-- div,15
all ws : Workstation | some w : Worker | w in ws.workers
and
all w : Worker | one ws:Workstation | w in ws.workers
-- div,1
all wk:Workstation | some w:Worker | w in wk.workers
all w:Worker | one wk:Workstation | w in wk.workers
-- div,1
all wt:Workstation | some w:Worker | (w in wt.workers)
all w:Worker | one wt:Workstation | (w in wt.workers)
-- div,2
all w : Workstation | w.workers != none and (all worker : Worker | one workstation : Workstation | worker in workstation.workers)
-- div,1
all w:Worker | one ws : Workstation | ws->w in workers
all ws: Workstation | some w:Worker | ws->w in workers
-- div,1
all ws:Workstation | some w:Worker | ws->w in workers
all w:Worker | one ws:Workstation | ws->w in workers
-- div,15
all ws:Workstation |some w1:Worker | ws->w1 in workers
all w:Worker | one ws:Workstation | ws->w in workers
-- div,2
all w1,w2 : Workstation | w1.workers!=none and w2.workers!=none
all t : Worker | one w : Workstation | t in w.workers
-- div,1
all w : Workstation | some wo : Worker | w -> wo in workers and all wwo : Worker | one ww : Workstation | ww -> wwo in workers
-- div,1
all w: Workstation | some wo: Worker | w->wo in workers

all w: Worker | one work: Workstation | work->w in workers
-- div,1
all wks : Workstation | some w : Worker | wks->w in workers
all w : Worker | one wks: Workstation | wks->w in workers
-- div,1
(all ws : Workstation | some w1 : Worker | ws->w1 in workers)
(all w1 : Worker | one ws : Workstation | ws -> w1 in workers)
-- div,2
all w : Workstation | some wor : Worker | wor in w.workers and
all worker : Worker | one ws : Workstation | worker in ws.workers
-- div,1
all x : Workstation | some x.workers
all x : Worker | some y : Workstation | one (x & y.workers) - (x & (Workstation-y).workers)
-- div,1
all x : Workstation | some x.workers
all x : Worker | some y : Workstation | one x & y.workers and no x & (Workstation-y).workers
-- div,3
all ws: Workstation| some ws.workers
all w: Worker | one w.~workers
all ws: Workstation, w: Worker | some ws.workers and one w.~workers
-- div,1
all w : Workstation | some w.workers
Workstation.workers = Worker
all w : Worker | all disj w1,w2 : Workstation | w in w1.workers and w in w2.workers implies w1=w2
-- div,1
all ws : Workstation | some w : Worker | ws->w in workers
all w : Worker | some ws1 : Workstation | ws1->w in workers and all ws2 : Workstation | ws2->w in workers implies ws1 = ws2
-- div,1
all ws1,ws2 : Workstation | all w1 : Worker | w1 in ws1.workers and w1 in ws2.workers implies ws1=ws2
all ws : Workstation | some ws.workers
all w : Worker | w in Workstation.workers
-- div,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1!=w2
all ws : Workstation | some ws.workers
all w : Worker | w in Workstation.workers
-- div,2
all ws : Workstation | some ws.workers
all w : Worker | w in Workstation.workers
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1!=w2
-- div,1
all a1,a2:Workstation | (some b:Worker | a1->b in workers and a2->b in workers) implies a1 = a2
all b:Worker | some a:Workstation | a->b in workers
all a:Workstation | some b:Worker | a->b in workers
-- div,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1!=w2
all ws : Workstation | some w : Worker | w in ws.workers
all w : Worker | w in Workstation.workers
-- div,1
-- equiv pair end
