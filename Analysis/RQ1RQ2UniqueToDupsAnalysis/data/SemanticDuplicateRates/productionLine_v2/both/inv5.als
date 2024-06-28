-- equiv pair start,1
workers . ~workers in iden
-- div,1
-- equiv pair end
-- equiv pair start,2
no workers.Human - workers.Robot
-- div,1
all w: Workstation | some w.workers & Robot or no w.workers &Human
-- div,1
-- equiv pair end
-- equiv pair start,1
Human + Robot not in workers.Worker
-- div,1
-- equiv pair end
-- equiv pair start,2
workers.Worker not in Human & Robot
-- div,1
workers.Worker not in Human + Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
(Human+Robot) not in Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
Workstation = workers.Human + workers.Robot
-- div,1
all x : Workstation | some x.workers & Human or some x.workers & Robot
-- div,1
-- equiv pair end
-- equiv pair start,7
all w:Workstation | w.workers in Human + Robot
-- div,1
no (Workstation.workers-Human) & (Workstation.workers-Robot)
-- div,1
all w : Workstation, ww : w.workers | ww in Human or ww in Robot
-- div,1
all wt:Workstation | no (wt.workers-Human) & (wt.workers-Robot)
-- div,2
all wt:Workstation | (wt.workers-Human) & (wt.workers-Robot) = none
-- div,1
all ws: Workstation, w: Worker | w in ws.workers implies ((w in Human and w not in Robot) or (w in Robot and w not in Human))
-- div,1
-- equiv pair end
-- equiv pair start,4
all w : Workstation | w.workers not in (Robot & Human)
-- div,1
all w: Workstation | w.workers not in Human&Robot
-- div,1
all w:Workstation | w.workers in Human implies w.workers not in Robot
-- div,2
-- equiv pair end
-- equiv pair start,16
all ws : Workstation | (Human+Robot) not in ws.workers
-- div,1
all w: Workstation | Robot in w.workers implies Human not in w.workers
-- div,4
all ws : Workstation | Human in ws.workers implies Robot not in ws.workers
-- div,1
all wb : Workstation | (Robot in wb.workers) implies (Human not in wb.workers)
-- div,2
all w: Workstation | (Robot in w.workers) implies (Human not in w.workers) or (Human in w.workers) implies (Robot not in w.workers)
-- div,1
all w : Workstation | Robot in w.workers implies Human not in w.workers
all w : Workstation | Human in w.workers implies Robot not in w.workers
-- div,5
all ws : Workstation | Human in ws.workers implies Robot not in ws.workers
all ws : Workstation | Robot in ws.workers implies Human not in ws.workers
-- div,1
all wb : Workstation | (Robot in wb.workers) implies (Human not in wb.workers)
all wb : Workstation | (Human in wb.workers) implies (Robot not in wb.workers)
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation | w.workers not in (Robot + Human)
-- div,1
all w : Workstation | (w.workers - Human) not in Robot and (w.workers - Robot) not in Human
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Worker | all w1 :  Workstation | w1->w in workers
-- div,1
all w1,w2 : Worker | all ws : Workstation | (ws->w1 in workers and ws->w2 in workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
Robot in Workstation.workers <=> Human in Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
Robot in Workstation.workers <=> not Human in Workstation.workers
-- div,1
Robot in Workstation.workers <=> not Human in Workstation.workers
not Robot in Workstation.workers <=>  Human in Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
all wk:Workstation | Human in wk.workers <=> Robot not in wk.workers
-- div,1
all ws : Workstation | Human in ws.workers iff Robot not in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
one wk:Workstation | Human in wk.workers <=> Robot not in wk.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Workstation | c.workers in Human implies no Robot - c.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
all w: Workstation, wk: w.workers | Robot in wk implies Human not in wk
-- div,1
all w: Workstation, wk: w.workers | (Robot in wk implies Human not in wk) and (Human in wk implies Robot not in wk)
-- div,1
-- equiv pair end
-- equiv pair start,1
all h: Human, r: Robot| one s: Workstation | h in s.workers or r in s.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | some h : Human | h in ws.workers implies no ws.workers&Robot
-- div,1
-- equiv pair end
-- equiv pair start,2
all h : Human | all r : Robot | all w : Workstation | r not in w.workers implies h in w.workers
-- div,1
all w: Workstation |  (Robot not in w.workers) implies (Human in w.workers)
all w: Workstation |  (Human not in w.workers) implies (Robot in w.workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | some h : Human | some r : Robot | h in ws.workers iff r not in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation, wk: w.workers | (Robot in wk implies Human != wk) and (Human in wk implies Robot != wk)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | all w1, w2 : Worker | (w1 in ws.workers and w2 in ws.workers and w1 = Human) implies w2 = Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Workstation | c.workers in Human implies no Robot - c.workers and c.workers in Robot implies no Human-c.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Workstation | some w1, w2 : Worker | w1 in s.workers and w2 in s.workers and w1 in Human implies w2 not in Robot
-- div,1
all ws : Workstation | some w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | some w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
iff (w2 in Human)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | some w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
iff (w2 not in Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all wb : Workstation | one r : Robot | one h : Human  | (r in wb.workers) implies (h not in wb.workers)
all wb : Workstation | one r : Robot | one h : Human  | (h in wb.workers) implies (r not in wb.workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
all wb : Workstation | some r : Robot | some h : Human  | (r in wb.workers) implies (h not in wb.workers)
all wb : Workstation | some r : Robot | some h : Human  | (h in wb.workers) implies (r not in wb.workers)
-- div,1
-- equiv pair end
