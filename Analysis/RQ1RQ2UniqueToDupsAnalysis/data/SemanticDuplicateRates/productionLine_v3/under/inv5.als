-- equiv pair start,25
all h : Human | all r : Robot | no (h & r)
-- div,1
all w: Workstation | no (w.workers & Robot & Human)
-- div,1
all w: Workstation | no (w.workers & Human & Robot)
-- div,1
all wh : Workstation | #(wh.workers & Human & Robot) = 0
-- div,1
all w:Workstation | (Human.workers + Robot.workers) in w
-- div,1
all w:Workstation, wo:Worker | no (w.workers & Human & Robot)
-- div,1
all w:Workstation, wo:Worker | no ((w.workers & Human) & (w.workers & Robot))
-- div,1
all w:Worker, ws:Workstation | w in ws.workers and w in Human implies w not in Robot
-- div,2
all w:Worker, ws:Workstation | w in ws.workers implies (w not in Human) or (w not in Robot)
-- div,1
all x:Worker, y:Workstation| x in workers.y implies (not x in Human or not x in Robot)
-- div,1
all ws : Workstation, w,w1 : Worker | w in ws && w in Robot && w1 in ws implies w1 in Robot
-- div,1
all w:Worker, ws:Workstation | w in ws.workers implies no (w & Human) or no (w & Robot)
-- div,1
all ws : Workstation | all w : Worker | w in Human and w in ws.workers implies w not in Robot
-- div,1
all ws : Workstation , w : Worker | (w in ws.workers and w in Robot) implies ws.workers not in Human
-- div,1
all ws: Workstation, w: Worker | w in Human and w in ws.workers => ws.workers not in Robot
-- div,1
all w: Workstation | all wo: Worker|wo not in (w.workers & Robot) or wo not in (w.workers & Human)
-- div,1
all w: Workstation |all tr: Worker| (tr not in (w.workers & Robot)) or (tr not in (w.workers & Human))
-- div,1
all x, y: Worker, z, w: Workstation | x in Human and y in Robot and x in workers.z and y in workers.w implies z != w
-- div,1
all ws : Workstation | (Human in ws.workers implies (Robot in ws.workers)) or
(Robot in ws.workers implies (Human in ws.workers))
-- div,1
all ws: Workstation | Human in ws.workers => Robot not in ws.workers and Robot in ws.workers => Human not in ws.workers
-- div,1
all ws : Workstation | ws.workers in Human implies not ws.workers in Robot and
ws.workers in Robot implies not ws.workers in Human
-- div,1
all ws : Workstation, w : Worker | ws.workers in Human implies not ws.workers in Robot and
ws.workers in Robot implies not ws.workers in Human
-- div,1
all w : Workstation | all h : Human | all r : Robot | (h in w.workers) iff (r not in w.workers) and (r in w.workers) iff (h not in w.workers)
-- div,1
all ws: Workstation, w: Worker | w in Human and w in ws.workers => ws.workers not in Robot
all ws: Workstation, w: Worker | w in Robot and w in ws.workers => ws.workers not in Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all h: Human| all r: Robot| some w: Workstation| (h in w.workers implies r not in w.workers) && (r in w.workers implies h not in w.workers)
-- div,1
-- equiv pair end