succs.Junction in signals.Semaphore
-- div,3
(succs.Junction) <: signals.Semaphore  = succs.Junction
-- div,1
all t : succs.Junction | some t.signals & Semaphore
-- div,2
all t : succs.Junction | some Semaphore & t.signals
-- div,2
all t: Track | t in succs.Junction implies t in signals.Semaphore
-- div,3
all t: Track | t in succs.Junction implies some t.signals & Semaphore
-- div,4
all t : Track | some t.succs&Junction implies some t.signals&Semaphore
-- div,15
all t: Track | some t & succs.Junction implies some t.signals & Semaphore
-- div,1
all t:Track | some Junction & t.succs => some t.signals & Semaphore
-- div,4
all t: Track | some t.succs&Junction implies some Semaphore&t.signals
-- div,2
all t: Track | some Junction & t.succs => some Semaphore & t.signals
-- div,13
all x : Track | some Junction & x.succs implies some Semaphore & x.signals
-- div,2
all t:Track | not no Junction&t.succs implies not no t.signals&Semaphore
-- div,1
all t:Track|  #(t.succs & Junction)>0 implies some (t.signals & Semaphore)
-- div,1
all j : Junction, t : succs.j| some s:Semaphore | s in t.signals
-- div,2
all t : Track | #(t.succs & Junction) > 0 implies # (t.signals & Semaphore) > 0
-- div,3
all t : Track, j : Junction | j in t.succs implies some (Semaphore & t.signals)
-- div,1
all t:Track, j:Junction | t in succs.j => some Semaphore & t.signals
-- div,1
all j : Junction, t : Track | j in t.succs => some Semaphore & t.signals
-- div,1
all t1,t2 : Track | t2 in t1.succs and t2 in Junction implies some t1.signals&Semaphore
-- div,2
all t: Track, j: Junction | j in t.succs => some s: Semaphore | s in t.signals
-- div,6
all j : Junction, t : succs.j| some s:Signal | s in t.signals and s in Semaphore
-- div,1
all j:Junction, t:Track | t in succs.j => (some s:Semaphore | t->s in signals)
-- div,4
all t:Track | all j:Junction | j in t.succs implies some s:Semaphore | s in t.signals
-- div,6
all t : Track | (some j : Junction | j in t.succs) implies (some s : Semaphore | s in t.signals)
-- div,3
all t:Track | all j:Junction | t->j in succs implies some s:Semaphore | t->s in signals
-- div,3
all t1,t2:Track | t2 in t1.succs and one (Junction & t2) implies (some s:Semaphore | s in t1.signals)
-- div,8
all t1:Track,t2:Track | t2 in t1.succs and one (Junction & t2) implies (some s:Semaphore | s in t1.signals)
-- div,1
all t:Track | (some t2:Track | t->t2 in succs and t2 in Junction) implies (some s:Signal | t->s in signals and s in Semaphore)
-- div,1
