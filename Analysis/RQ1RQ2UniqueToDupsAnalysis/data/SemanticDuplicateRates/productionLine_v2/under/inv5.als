-- equiv pair start,31
all w:Workstation | no Human & Robot
-- div,1
all x : Workstation | no x.workers & Human & Robot
-- div,1
all w : Workstation | no w.workers & Human & Robot
-- div,4
all h: Human, r: Robot | no h.workers & r.workers
-- div,1
all ws : Workstation.workers | no (ws&Human) & (ws&Robot)
-- div,1
no disj w1, w2: Human + Robot | w1.workers & w2.workers != none
-- div,1
all wt:Workstation | no (wt.workers & Human) & (wt.workers & Robot)
-- div,1
all h:Human, r:Robot, w:Workstation | (h->w in workers implies r->w not in workers)
-- div,1
all h:Human, r:Robot, w:Workstation | h->w in workers implies h->r not in workers
-- div,1
all h : Human, r : Robot, w : Workstation | not (h -> w in workers and r -> w in workers)
-- div,1
all h : Human, r : Robot, w : Workstation | not h -> w in workers and not r -> w in workers
-- div,1
all  wr:Worker | wr in Human implies no Worker-Robot and wr in Robot implies no Worker-Human
-- div,1
all r : Robot, h : Human, w : Workstation | ((r in w) implies (h not in w)) and ((h in w) implies (r not in w))
-- div,1
all w : Workstation, work : Worker | w->work in workers and work in Human implies work not in Robot
-- div,1
all w:Worker | w in Human implies w not in Robot
all w:Worker | w in Robot implies w not in Human
-- div,1
all h :  Human | all r : Robot | all w : Workstation | h -> w in workers implies r->w not in workers
-- div,1
all  w: Workstation, wr:Worker | wr in Human implies no Worker-Robot and wr in Robot implies no Worker-Human
-- div,1
all ws:Workstation, w1,w2:Worker | w1->ws in workers and w2->ws in workers and w1 in Human implies w2 in Robot
-- div,1
all w : Workstation | w.workers not in Human implies w.workers  in Robot
and w.workers not in Robot implies w.workers  in Human
-- div,1
all w : Workstation | w.workers in Human implies w.workers not in Robot
and w.workers in Robot implies w.workers not in Human
-- div,2
all w: Workstation | (Robot in w.workers) implies (Human not in w.workers) and (Human in w.workers) implies (Robot not in w.workers)
-- div,1
all w1,w2 : Worker | all ws1,ws2 :  Workstation | (ws1->w1 in workers and ws2->w2 in workers and w2 in Human) implies (w2 in Human)
-- div,1
all h:Human, r:Robot, w:Workstation | (h->w in workers implies r->w not in workers) or (r->w in workers implies h->w not in workers)
-- div,1
all w : Workstation | some Robot & w.workers implies no Human & w.workers and some Human & w.workers implies no Robot & w.workers
-- div,1
all w : Workstation, wk : Worker | wk in w.workers and wk in Robot implies w.workers in Robot and wk in w.workers and wk in Human implies w.workers in Human
-- div,1
all w : Workstation, work : Worker | (w->work in workers and work in Human implies work not in Robot) and (w->work in workers and work in Robot implies work not in Human)
-- div,1
all w : Workstation | some w.workstation & Robot implies no w.workstation & Human
all w : Workstation | some w.workstation & Human implies no w.workstation & Robot
-- div,1
-- equiv pair end
