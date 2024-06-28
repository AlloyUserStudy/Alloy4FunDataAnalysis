-- equiv pair start,10
all t: Track | no t.succs & Semaphore
-- div,2
all t: Track | not (t in t.succs & Semaphore)
-- div,1
all t:Track,s:Semaphore | t.succs not in Junction implies s not in t
-- div,1
all t:Track | no (Junction & t.succs) implies no (Junction & t.succs)
-- div,1
all t: Track | t.succs not in Junction implies t.*(signals) not in Semaphore
-- div,1
all t: Track | t.*(succs) not in Junction implies t.*(signals) not in Semaphore
-- div,1
all t : Track | all j : Signal - Junction | all s : Semaphore | j in t.succs implies s not in t.signals
-- div,1
all disj t1, t2:Track | t1->t2 not in succs or (t1->t2 not in succs and t2 not in Junction) implies Semaphore not in (t1.signals)
-- div,1
all t:Track,j:Junction |t.succs.next not in Junction implies t.signals.next not in Semaphore
-- div,1
-- equiv pair end
-- equiv pair start,1
no (succs.Track - succs.Junction).signals :> Semaphore
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | no t.succs implies no t.signals&Semaphore
-- div,1
-- equiv pair end
-- equiv pair start,1
no Track.succs & Junction implies no Track.signals & Semaphore
-- div,1
-- equiv pair end
-- equiv pair start,9
all t:Track | no (Junction & t.^succs) => no (Semaphore & t.signals)
-- div,1
all t: Track | no (t.^succs & Junction) => no (t.signals & Semaphore)
-- div,6
all t: Track | no (t.^succs & Junction) => no (t.^signals & Semaphore)
-- div,1
all t:Track | not some (Junction & t.^succs) => not some (Semaphore & t.signals)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | no (Junction & t.*succs) => no (Semaphore & t.signals)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track, s:Semaphore | t not in Junction and no t.succs & Junction => s not in t.signals
-- div,1
-- equiv pair end
-- equiv pair start,4
all disj t,t2:Track, s:Semaphore | (t2 in Junction && t2 in t.succs) || t.succs=none => s not in t.signals
-- div,4
-- equiv pair end
-- equiv pair start,6
all t:Track | some ts:Track | t->ts in succs and ts not in Junction implies all s:Semaphore | t->s not in signals
-- div,5
all t:Track | some ts:Track | t->ts in succs and ts not in Junction implies all s:Signal | t->s in signals implies s not in Semaphore
-- div,1
-- equiv pair end
-- equiv pair start,1
all e : Track | all j : Junction | (not (some j : Junction|j in e.succs)) implies (all s : Semaphore | s not in e.signals)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track, s:Semaphore | (t not in Junction and t.succs = none) or (t not in Junction and no t.succs & Junction) => s not in t.signals
-- div,1
-- equiv pair end
