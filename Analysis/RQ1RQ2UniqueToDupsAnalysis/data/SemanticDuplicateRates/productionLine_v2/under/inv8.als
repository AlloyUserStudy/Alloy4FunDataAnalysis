-- equiv pair start,12
(workstation.Component).workers in Robot
-- div,1
(Workstation.workstation).workers in Robot
-- div,1
no Human&(workstation.Dangerous).workers
-- div,1
all c:Component | c in Dangerous  => workers . workstation . c in Robot
-- div,2
all h : Human | all c : Component | c in Dangerous implies c not in Human
-- div,1
all c: Dangerous | no w: Human | w.workers & c.workstation != none
-- div,1
all c: Component, h:Human | c in Dangerous implies no c.workstation & h.workers
-- div,1
all c: Component, h:Human | c in Dangerous implies no c.workstation & h.workstation
-- div,1
all h : Human | all d : Dangerous | all c : Component | c in Dangerous implies c not in Human
-- div,1
all c:Component, ws:Workstation | c in Dangerous and c->ws in workstation => (not some h:Human| h->ws in workers)
-- div,1
all c:Component, ws:Workstation, w:Worker | c->w in workstation and c in Dangerous and ws->w in workers implies w not in Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component, w: Workstation, h: Human | c in Dangerous and w in c.workstation implies Human not in w.workers
-- div,1
-- equiv pair end
-- equiv pair start,6
all c:Component | some ws:Workstation | c in Dangerous and c->ws in workstation implies all h:Human | ws->h not in workers
-- div,5
all c:Component | some ws:Workstation | c in Dangerous and c->ws in workstation implies all h:Human | h not in ws.^workers
-- div,1
-- equiv pair end
