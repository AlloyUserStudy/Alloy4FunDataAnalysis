succs.Junction in signals.Semaphore
-- div,1
Junction.succs not in Semaphore.signals
-- div,1
no Semaphore & (succs.Junction).signals
-- div,1
Semaphore not in Junction.~succs.signals
-- div,1
no (succs :> Junction).signals.Semaphore
-- div,1
no (succs.Junction).signals :> Semaphore
-- div,1
no Junction.~succs.signals & Semaphore
-- div,1
(Track - succs.Junction) not in signals.Semaphore
-- div,1
(Track - Junction.succs) not in Semaphore.signals
-- div,1
all t1:Track |  Semaphore not in (t1.signals)
-- div,1
no succs.(Track - Junction) & signals.Semaphore
-- div,1
no signals.Semaphore & succs.(Track - Junction)
-- div,1
no succs.(Track - Junction).signals & Semaphore
-- div,1
no succs.(Track - Junction).signals :> Semaphore
-- div,2
all x: Junction | x->Semaphore not in signals
-- div,1
no (succs :> (Track - Junction)).signals.Semaphore
-- div,1
all t: Track |  not (some t.^(succs) & Junction)
-- div,1
all t: Junction | t.succs.signals not in Semaphore
-- div,1
all t1:Track, s:Semaphore |  t1->s in (signals)
-- div,1
all x: Track-Junction | x->Semaphore not in signals
-- div,1
all e : Junction | no e.~succs.signals & Semaphore
-- div,1
all t: Track| t.succs not in Junction implies no t.signals
-- div,1
all t : Track | no succs.t & Junction implies no t.signals
-- div,1
all t:Track | one (Exit & t) implies (Semaphore not in t.signals)
-- div,1
all t:Track | no Junction&t.~succs implies no t.signals
-- div,1
all t : Track <: Junction.succs | some t.signals&Semaphore
-- div,1
all t: Track | Junction in t.succs implies Semaphore in t.signals
-- div,1
all t: Track | t.succs != Junction implies t.signals != Semaphore
-- div,1
all t: Track | t in succs.Junction implies t not in signals.Semaphore
-- div,2
all t:Track | Junction in t.succs implies Semaphore not in t.signals
-- div,1
all t : Track | Junction in succs.t => Semaphore not in t.signals
-- div,2
all t: Track| Semaphore in t.signals => t.succs not in Junction
-- div,1
all t: Track | t in Junction.succs implies t not in signals.Semaphore
-- div,2
all t : Track | t not in succs.Junction implies Semaphore not in t.signals
-- div,3
all t: Track | Junction not in t.succs => Semaphore not in t.signals
-- div,10
all t: Track | Junction not in t.succs implies t.signals not in Semaphore
-- div,1
all t : Track | t not in Junction.succs implies Semaphore not in t.signals
-- div,1
all t : Track, j : Junction| j not in t.succs implies no t.signals
-- div,2
all t: Track| Junction not in t.succs implies Semaphore not in signals.t
-- div,1
all t : Track | t.succs !in Junction => Semaphore !in t.signals
-- div,2
all t : Track | t.succs not in Junction => t.signals not in Semaphore
-- div,7
all t : Track | (succs.t not in Junction) <=> (t.signals not in Semaphore)
-- div,1
all t:Track-Exit | no Junction&t.succs implies no t.signals
-- div,1
all t:Track | Junction not in t.succs iff Semaphore not in t.signals
-- div,1
all t : Track | t not in succs.Junction iff Semaphore not in t.signals
-- div,2
all t: Track | t.succs in Junction => not (Semaphore in t.signals)
-- div,1
all t:Track | t.succs not in Junction iff t.signals not in Semaphore
-- div,1
all x : Track | x.^succs in Junction implies x.signals in Semaphore
-- div,1
all t: Track | t.succs != Junction implies no t.signals&Semaphore
-- div,1
all t : Track | Junction in succs.t => no (Semaphore & t.signals)
-- div,1
all t : Track | Junction in t.succs => no (Semaphore & t.signals)
-- div,2
all t: Track | no (t.succs & Junction) => no (t.signals & Speed)
-- div,2
all t:Track | Junction not in t.succs => not Semaphore in t.signals
-- div,1
all t: Track | t in Junction.*succs implies t not in signals.Semaphore
-- div,1
all t1:Track | Junction not in t1.succs implies Semaphore not in (t1.signals)
-- div,3
all t : Track | t.succs not in Junction => no t.signals & Semaphore
-- div,4
all t : Track | succs.t not in Junction implies no (t.signals & Semaphore)
-- div,2
all t : Track | t not in (*succs).Junction implies Semaphore not in t.signals
-- div,1
all t : Track | (t.*succs not in Junction) => (t.signals not in Semaphore)
-- div,2
all t : Track | (t.^succs not in Junction) => (t.signals not in Semaphore)
-- div,2
all t : Track | t not in (^succs).Junction implies Semaphore not in t.signals
-- div,1
all t : Track | Junction in t.succs <=> no (Semaphore & t.signals)
-- div,1
all t: Track| Junction not in t.succs implies Semaphore not in t.*signals
-- div,1
all t:Track, s:Semaphore | s not in t.signals implies t not in Junction
-- div,1
all t:Track, s:Semaphore | t not in Junction implies s not in t.signals
-- div,1
all t : Track | no (Junction & t.succs) implies Semaphore not in t.signals
-- div,1
all t: Track | no (t.succs & Junction) <=> no (t.signals & Speed)
-- div,2
all t : Track | (t.*succs not in Junction) <=> (t.signals not in Semaphore)
-- div,1
all t: Track | t.^succs in Junction => not (Semaphore in t.signals)
-- div,1
all t : Track | no (Junction & t.succs) <=> Semaphore not in t.signals
-- div,1
all t : Track | (t.^succs not in Junction) <=> (t.signals not in Semaphore)
-- div,1
all t : Track | t.succs not in Junction iff no t.signals & Semaphore
-- div,1
all t : Track | lone t & succs.Junction implies Semaphore not in t.signals
-- div,1
all t: Track | no (t.^succs & Junction) <=> no (t.signals & Speed)
-- div,1
all x : Track | no Junction & x.succs or one Semaphore & x.signals
-- div,1
all x : Track | no Junction & x.succs implies some Semaphore & x.signals
-- div,1
all x : Track | no Junction & x.succs or some Semaphore & x.signals
-- div,1
all t : Track | some Junction & t.succs implies no Semaphore & t.signals
-- div,1
all t:Track | t in Exit or no Junction&t.succs implies no t.signals
-- div,1
all disj t, t2 : Track | no (t2 & t.succs) <=> no (Semaphore & t.signals)
-- div,1
all t: Track| some (t.succs & Junction) <=> no (t.signals & Semaphore)
-- div,1
all t : Track | some Junction <: t.succs implies no Semaphore & t.signals
-- div,1
all t: Track | Junction not in t.succs implies Semaphore not in (t+Exit).signals
-- div,1
all t: Track | no (t.^succs & Junction) <=> no (t.signals & Semaphore)
-- div,1
all t : Track, j : Junction | j in t.succs => Semaphore not in t.signals
-- div,1
all t: Track | no (t.*succs & Junction) <=> no (t.signals & Semaphore)
-- div,1
all t : Track | all j :Junction | j not in t.succs implies no t.signals
-- div,1
all t : Track, j : Junction | j in t.succs implies t not in signals.Semaphore
-- div,1
all t : Track | all j :Junction | j not in succs.t implies no t.signals
-- div,1
all t : Track, j : Junction | t in succs.j implies t not in signals.Semaphore
-- div,1
all t : Track, j : Junction | j in succs.t => Semaphore not in t.signals
-- div,1
all disj t1, t2:Track | Junction not in t1.succs implies Semaphore not in (t1.signals)
-- div,1
all t: Track, j: Junction |  j not in t.succs implies Semaphore not in t.signals
-- div,1
all t : Track, s: Semaphore | t.succs not in Junction => s not in t.signals
-- div,3
all j : Junction, t : succs.j | no s:Semaphore | s in t.signals
-- div,1
all t : Track, s : Semaphore | Junction not in succs.t implies s not in t.signals
-- div,2
all t : Track, j : Junction | t not in succs.j implies t not in signals.Semaphore
-- div,1
all t : Track, j : Junction | j in succs.t <=> Semaphore not in t.signals
-- div,1
all t : Track, j : Junction | j not in t.succs implies t not in signals.Semaphore
-- div,1
all t : Track | all s : Semaphore | t->s in signals implies t in Junction
-- div,1
all t : Track, s: Semaphore | not t.succs in Junction => s not in t.signals
-- div,1
all t:Track | one (Exit & t) implies (all s:Semaphore | s not in t.signals)
-- div,1
all j : Junction,  t : succs.j | some s:Semaphore | s in t.signals
-- div,1
all t : Track, j : Junction | j not in t.succs => no t.signals & Semaphore
-- div,2
all t : univ | t in Track <: Junction.succs implies some t.signals&Semaphore
-- div,1
all x : Track, y : Junction-x | y in x.succs => Semaphore in x.signals
-- div,1
all t: Track, s:Semaphore | no succs.t & Junction <=> s not in t.signals
-- div,1
all t : Track | all s : Semaphore | t in Entry.succs implies s not in t.signals
-- div,3
all x : Track, y : Junction-x | y not in x.succs => Semaphore not in x.signals
-- div,1
all t, t1: Track | all s: Semaphore | t1 not in t.succs implies s not in t.signals
-- div,1
all t:Track | all j:Junction | j not in t.succs implies no signals.Semaphore
-- div,1
all t:Track | Junction not in t.succs implies (no s:Semaphore | s in t.signals)
-- div,1
all t: Track | t.succs not in Junction implies no s: Semaphore | s in t.signals
-- div,1
all t : Track | some s : Semaphore | t in Junction.succs implies s in t.signals
-- div,1
all x : Track, y : Junction-x | y not in x.^succs => Semaphore not in x.signals
-- div,1
all t: Track | some j: Junction | j in t.succs => Semaphore in t.signals
-- div,1
all t : Track | all j : Track - Junction | j not in t.succs implies no t.signals
-- div,1
all t: Track | some s: Semaphore |  Junction in t.succs implies s in t.signals
-- div,1
all t: Track | all x: t.succs | x not in Junction => no (t.signals & Speed)
-- div,1
all t : Track | some s : Semaphore | t in Junction.succs implies s not in t.signals
-- div,1
all t: Track | t.succs not in Junction implies all s: t.signals | s not in Semaphore
-- div,1
all t: Track | some s: Semaphore |  Junction in t.succs implies s not in t.signals
-- div,1
all t:Track, j:Junction, s:Semaphore | j in t.succs <=> s in t.signals
-- div,1
all t: Track | one j: Junction | j not in t.succs => Semaphore not in t.signals
-- div,1
all t: Track| Junction not in t.succs implies all s: Semaphore| s not in t.signals
-- div,1
all t : Track | all s : Semaphore | t not in Junction.succs implies s not in t.signals
-- div,1
all t : Track | all s : Semaphore | t.succs not in Junction implies (s not in t.signals)
-- div,2
all t:Track|all s: t.signals| t.succs not in Junction implies s not in Semaphore
-- div,1
all t : Track | (t.succs not in Junction) implies (all s : Semaphore | s not in t.signals)
-- div,1
all t : Track | some j : Junction | j in t.succs implies Semaphore not in t.signals
-- div,1
all t:Track | one (Exit & t) implies (Semaphore not in t.signals and Signal not in t.signals)
-- div,1
all t: Track| Junction not in t.^succs implies no s: Semaphore| s in t.signals
-- div,1
all t: Track | some j: Junction | j not in t.succs => Semaphore not in t.signals
-- div,1
all t : Track | some s : Semaphore | t not in Junction.succs implies s not in t.signals
-- div,1
all t: Track | all j: Junction | j in t.succs => not (Semaphore in t.signals)
-- div,1
all t : Track, j : Junction, s : Semaphore| (j not in succs.t) implies (s not in t.signals)
-- div,1
all t:Track, s:Semaphore, j:Junction | j not in t.succs => s not in t.signals
-- div,1
all t:Track, j:Junction, s:Semaphore | j not in t.succs => s not in t.signals
-- div,15
all t: Track| Junction not in t.succs implies no s: Semaphore| s in t.*signals
-- div,1
all t: Track| Junction not in t.^succs implies no s: Semaphore| s not in t.signals
-- div,2
all t:Track, s:Semaphore, j:Junction | j not in t.succs <=> s not in t.signals
-- div,2
all t:Track, s:Semaphore, j:Junction | t not in t.succs <=> s not in t.signals
-- div,1
all t:Track, j:Junction, s:Semaphore | j not in t.succs <=> s not in t.signals
-- div,3
all t: Track | all j: Junction | j in t.succs => no Semaphore & t.signals
-- div,1
all x : Track, y : Junction-x | y not in x.^succs => Semaphore not in x.^signals
-- div,2
all t1, t2:Track| t1->t2 in succs and t2 not in Junction implies Semaphore not in (t1.signals)
-- div,1
all t: Track | some j: Junction | j not in t.succs <=> Semaphore not in t.signals
-- div,1
all t:Track | not some j:Junction | j in t.succs => Semaphore not in t.signals
-- div,1
all t: Track| Junction not in t.succs implies all s: Semaphore| s not in t.^signals
-- div,1
all f:Track, t:Junction, s:Semaphore|f->t not in succs implies f->s not in signals
-- div,1
all t: Track| Junction not in t.succs implies all s: Semaphore| s not in t.*signals
-- div,2
all t : Track | t.succs not in Junction and t.succs!=none  implies t.signals not in Semaphore
-- div,1
all t1,t2 : Track | t2 in t1.succs and t1 not in Junction implies no t1.signals&Semaphore
-- div,3
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
-- div,1
all t1,t2 : Track | t2 in t1.succs and t1 not in Junction implies no t2.signals&Semaphore
-- div,2
all t: Track| Junction not in t.^succs implies no s: Semaphore| s in t.*signals
-- div,3
all f:Track, t:Junction, s:Semaphore|f in t.^succs implies f->s not in signals
-- div,1
all t: Track | all j: Junction | j in t.^succs => not (Semaphore in t.signals)
-- div,1
all t: Track | all j: Junction | not j in t.succs => no Semaphore & t.signals
-- div,2
all t1,t2 : Track | t2 in t1.succs and t2 in Junction implies some t1.signals&Semaphore
-- div,1
all f:Track, t:Junction, s:Semaphore|f not in t.^succs implies f->s not in signals
-- div,1
all t:Track, j:Junction, s:Semaphore | j not in t.^(succs) <=> s not in t.signals
-- div,1
all t1:Track, t2:Track-Junction | t1->t2 in succs implies Semaphore not in (t1.signals)
-- div,1
all t: Track | Junction not in t.succs implies Semaphore not in t.signals and Semaphore not in Exit
-- div,1
all t1,t2 : Track | t2 in t1.succs and t1 not in Junction implies some t2.signals&Semaphore
-- div,4
all t: Track| some (Junction & t.^succs) implies no s: Semaphore| s in t.signals
-- div,1
all t1,t2 : Track | t2 in t1.succs and t1 not in Junction implies some t1.signals&Semaphore
-- div,1
all t : Track | all j : Junction | j not in t.succs implies # (t.signals & Semaphore) = 0
-- div,2
all t : Track ,j : Junction | j not in t.succs implies (all s : Signal | s not in t.signals)
-- div,1
all t : Track | t not in succs.Junction implies Semaphore not in t.signals and Speed not in t.signals
-- div,1
all t:Track, j:Junction | j not in t.succs implies no s:Semaphore | s in t.signals
-- div,1
all t : Track | succs.t not in Junction and succs.t not in Entry implies no (t.signals & Semaphore)
-- div,1
all t : Track | all s : Signal | s in Semaphore and t->s in signals implies t in Junction
-- div,3
all t : Track - Exit , j : Junction, s : Semaphore | j not in t.succs implies s not in t.signals
-- div,1
all disj t, t2 : Track | no (t2 & t.succs) and t2 in Junction <=> no (Semaphore & t.signals)
-- div,1
all t : Track | one s : Signal | s in Semaphore and t->s in signals implies t in Junction
-- div,1
all t:Track, j:Junction | j not in t.succs implies all s:Semaphore | s not in t.signals
-- div,2
all t: Track | some s: Semaphore, j:Junction |  j in t.succs implies s not in t.signals
-- div,1
all t : Track ,j : Junction | j not in t.^(succs) implies (all s : Signal | s not in t.signals)
-- div,1
all t : Track, j : Junction | all s : Semaphore | j not in t.succs => s not in t.signals
-- div,1
all t : Track | some s : Signal | s in Semaphore and t->s in signals implies t in Junction
-- div,1
all t: Track | some x: Junction | no (t.succs & Junction) <=> no (t.signals & Speed)
-- div,1
all disj t,t2:Track, s:Semaphore | t2 in Junction && t2 not in t.succs && s not in t.signals
-- div,6
all t: Track, j: Junction | some s:Semaphore| j not in t.succs implies s not in t.signals
-- div,1
all t: Track | some s: Semaphore, j:Junction |  j not in t.succs implies s not in t.signals
-- div,1
all t:Track, s:Semaphore | s not in t.signals iff (some j:Junction | j in t.succs)
-- div,1
all t:Track, j:Junction, s:Semaphore | j not in Track.^(succs) => s not in Track.signals
-- div,1
all t : Track, j : Junction | all s : Semaphore | j not in t.succs <=> s not in t.signals
-- div,1
all t:Track, s:Signal | Junction not in t.^succs implies (s not in t.signals and s in Semaphore)
-- div,1
all t : Track,s : Semaphore|all t2:t.succs| (t2 not in Junction) implies (s not in t.signals)
-- div,1
all t:Track, s:Semaphore | s not in t.signals iff (some j:Junction | j not in t.succs)
-- div,1
all t:Track, j:Junction, s:Semaphore | j not in Track.^(succs) <=> s not in Track.signals
-- div,1
all disj t,t2:Track, s:Semaphore | t2 in Junction && t2 not in t.succs => s not in t.signals
-- div,7
all t:Junction, x:Track| some s:Semaphore| t in x.^succs implies x->s in signals
-- div,1
all x : Track, y : Junction-x | y not in x.^(succs) => Semaphore not in x.^(signals):> Signal
-- div,1
all t:Track, s:Semaphore | t in Junction && t not in Track.^(succs) => s not in Track.signals
-- div,1
all t: Track | some j: Junction | j not in t.^(succs) => Semaphore not in t.^(succs).signals
-- div,1
all t:Track, s:Semaphore | t in Junction && t not in Track.^(succs) <=> s not in Track.signals
-- div,1
all a,b:Track|b in Junction and b->a in succs implies all s:Semaphore| a->s in signals
-- div,1
all t,k : Track | t->k in succs and t in Junction implies (some s : Semaphore | k->s in signals)
-- div,1
all t, t1: Track| t1 in Junction and t1 not in t.succs implies no s: Semaphore | s in t.signals
-- div,5
all t : Track | no j : Junction | j in t.succs implies (no s : Semaphore| s in t.signals)
-- div,1
all t:Track, j:Junction | not j in t.succs => (not some s:Semaphore | t->s in signals)
-- div,1
all t:Track, j:Junction | not t->j in succs => (all s:Semaphore | not t->s in signals)
-- div,1
all a,b:Track|b in Junction and a->b not in succs implies all s:Semaphore| a->s not in signals
-- div,3
all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)
-- div,7
all t:Track, j:Junction | j not in t.^succs => (not some s:Semaphore | t->s in signals)
-- div,1
all a,b:Track|b in Junction and b->a not in succs implies all s:Semaphore| a->s not in signals
-- div,1
all t : Track | all j : Junction | all s : Semaphore | j in t.succs implies s in t.signals
-- div,1
all t:Track, j:Junction | not t->j in succs <=> (not some s:Semaphore | t->s in signals)
-- div,1
all t : Track - Exit - Entry , j : Junction, s : Semaphore | j not in t.succs implies s not in t.signals
-- div,1
all t: Track, j: Junction | some s:Semaphore| j not in t.succs implies Semaphore not in t.signals
-- div,1
all t:Track, ts:Track-Junction | ts in t.succs implies no s:Semaphore | s in t.signals
-- div,1
all x:Track | all y : Junction | some z:Semaphore| x in y.succs or z not in x.signals
-- div,1
all e : Track | all j : Junction | e not in j.succs implies (all s : Semaphore | s not in e.signals)
-- div,1
all x:Track | all y : Junction | some z:Semaphore| x in succs.y or z not in x.signals
-- div,1
all t:Track | all j:Junction | t not in j.succs implies(all s:Semaphore | s not in t.signals)
-- div,1
all x:Track | all z:Semaphore| all y : Junction | y not in x.succs implies z not in x.signals
-- div,1
all t:Track | all j:Junction | j not in t.succs implies all s:Semaphore | s not in t.signals
-- div,8
all t : Track | all j : Junction | all s : Semaphore | (t not in j.succs) implies (s not in t.signals)
-- div,1
all j : Junction | all t : Track | all s : Semaphore | j not in t.succs implies s not in t.signals
-- div,2
all t : Track | all j : Junction | all s : Semaphore | j not in succs.t implies s not in t.signals
-- div,1
all x : Track | all y : Junction | all z : Semaphore | y not in x.succs implies z not in x.signals
-- div,1
all t : Track | all j : Junction | all s : Semaphore | j not in t.succs implies s not in t.signals
-- div,12
all t:Track, j:Junction | not t->j in ^succs => (not some s:Semaphore | t->s in signals)
-- div,1
all t: Track | all t1: Junction | t1 not in t.succs implies no s: Semaphore | s in t.signals
-- div,1
all e : Track | all j : Junction | j not in e.succs implies (all s : Semaphore | s not in e.signals)
-- div,1
all x:Track | some y : Junction | all z:Semaphore| y in succs.x implies z not in x.signals
-- div,1
all t1,t2 : Track | all s : Semaphore | t2 in t1.succs and t1 not in Junction implies s not in t2.signals
-- div,1
all t : Track | all j : Junction | all s : Semaphore | (j not in t.succs) iff (s not in t.signals)
-- div,1
all j : Junction | all t : Track | some s : Semaphore | j not in t.succs implies s not in t.signals
-- div,2
all t: Track | all t1: Junction | t1 in t.succs implies some s: Semaphore | s in t.signals
-- div,1
all t: Track | some j: Junction | j not in t.succs => one s: Semaphore | s not in t.signals
-- div,2
all t: Track| some x : Junction |some s:Semaphore | x in succs.t implies s not in t.signals
-- div,1
all t : Track | some k : Junction | t->k in succs implies (some s : Semaphore | t->s in signals)
-- div,1
all t: Track | all t1: t.succs | t1 not in Junction implies all s: Semaphore | s not in t.signals
-- div,1
all t : Track | all k : Junction | all s : Semaphore | t->k not in succs implies t->s not in signals
-- div,1
all x : Track | all y : Junction | all y : Semaphore | y not in x.^succs implies y in x.signals
-- div,1
all t: Track | all t1: t.succs | t1 not in Junction implies all s: t.signals | s not in Semaphore
-- div,1
all t:Track | all j:Junction | t->j not in succs implies all s:Semaphore | t->s not in signals
-- div,2
all t : Track | all s : Semaphore | some j : Junction | s in t.signals implies j in t.^succs
-- div,1
all t: Track | all t1: Junction | t1 in t.succs iff some s: Semaphore | s in t.signals
-- div,1
all t: Track | some t1: Junction | t1 in t.succs implies some s: Semaphore | s in t.signals
-- div,1
all t : Track | one k : Junction | one s : Semaphore | t->k not in succs implies t->s not in signals
-- div,1
all j : Junction | all t : Track | all s : Semaphore | j not in t.^succs implies s not in t.signals
-- div,1
all t:Track | all j:Junction | no t.succs & j  implies(all s:Semaphore | s not in t.signals)
-- div,1
all x,y:Track, s:Signal|x->y in succs and y in Junction and x->s in signals implies s not in Semaphore
-- div,1
all x : Track | all y : Junction | all y : Semaphore | y not in x.^succs implies y not in x.signals
-- div,1
all t : Track | all s : Semaphore | all j : Junction | j not in t.^succs implies s not in t.signals
-- div,1
all x,y:Track, s:Signal|x->y in succs and x in Junction and y->s in signals implies s not in Semaphore
-- div,1
all x:Track | all y : Junction | some z:Semaphore| z in x.signals implies x not in y.^succs
-- div,1
all j : Junction | all t : Track | all s : Semaphore | (no t.succs & j )implies s not in t.signals
-- div,1
all x:Track | all y : Junction | some z:Semaphore| x in y.^succs or z not in x.signals
-- div,1
all x:Track | some z:Semaphore| all y : Junction | z in x.signals implies x not in y.^succs
-- div,1
all t : Track,s : Semaphore|all t2:t.succs| (t2 not in Junction) implies no (Semaphore & t.signals)
-- div,1
all t:Track | all j:Junction | t->j not in succs implies some s:Semaphore | t->s not in signals
-- div,1
all x:Track | all z:Semaphore| all y : Junction | y not in x.^succs implies z not in x.signals
-- div,1
all t : Track | all j : Junction | all s : Semaphore | j not in t.^succs implies s not in t.signals
-- div,1
all t:Track | all j:Junction | j not in t.^(succs) implies(all s:Semaphore | s not in t.signals)
-- div,2
all x : Track | all y : Junction | all z : Semaphore | y not in x.^succs implies z not in x.signals
-- div,2
all t : Track | some k : Junction | some s : Semaphore | t->k not in succs implies t->s not in signals
-- div,1
all t : Track | all s : Semaphore | some j : Junction | j not in t.^succs implies s not in t.signals
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies (all s:Semaphore | s not in t1.signals)
-- div,1
all x,y:Track, s:Signal|x->y in succs and y in Junction implies x->s in signals and s not in Semaphore
-- div,1
all t1,t2:Track | t2 in t1.succs and one (Junction & t2) implies (some s:Semaphore | s in t1.signals)
-- div,1
not some t:Track | all j:Junction | t->j in succs and some s:Semaphore | t->s in signals
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies (some s:Semaphore | s not in t1.signals)
-- div,1
all x,y:Track, s:Signal|x->y in succs and x in Junction implies y->s in signals and s not in Semaphore
-- div,1
all j : Junction | all t : Track | all s : Semaphore | (j not in t.succs & j )implies s not in t.signals
-- div,1
all x : Track | all y : Junction | all z : Semaphore | y not in x.^succs implies z not in x.^signals
-- div,1
not some t:Track | some j:Junction | t->j in succs and some s:Semaphore | t->s in signals
-- div,1
all x,y:Track, s:Signal|x->y in succs and x not in Junction implies y->s in signals and s not in Semaphore
-- div,3
all x,y:Track, s:Signal|x->y in succs and y not in Junction implies x->s in signals and s not in Semaphore
-- div,1
all t1:Track | some t2:Track | t2 in t1.succs and one (Junction & t2) implies Semaphore in t1.signals
-- div,1
all disj t1:Track, t2:Track, s:Semaphore | (t2 not in Junction and t2 in t1.^(succs)) implies (s not in t1.signals)
-- div,1
all t:Track | not some j:Junction | j in t.succs => (not some s:Semaphore | t->s in signals)
-- div,1
all t1:Track | some t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
-- div,1
all t1:Track | some t2:Track | t2 in t1.succs and one (Junction & t2) implies Semaphore not in t1.signals
-- div,1
all t : Track | all j : Junction | all s : Semaphore | j not in t.succs implies s not in t.succs.signals
-- div,1
all t:Track| not some j:Junction | t->j in succs => (not some s:Semaphore | t->s in signals)
-- div,2
not some t:Track | some j:Junction | j in t.^succs and some s:Semaphore | t->s in signals
-- div,1
all t : Track | all j : Track - Junction | all s : Semaphore | j in t.succs implies s not in t.signals
-- div,1
all disj t1,t2:Track | t2 in Junction and t2 not in t1.^(succs) implies(all s:Semaphore | s not in t1.signals)
-- div,1
not some t:Track | some j:Junction | not t->j in succs and some s:Semaphore | t->s in signals
-- div,1
some t:Track| some j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)
-- div,1
all disj t,t2:Track, s:Semaphore, j:Junction | t2 in Junction && t2 not in t.succs => s not in t.signals
-- div,1
all t:Track, ts:Track | ts not in Junction and ts in t.succs implies all s:Semaphore | s not in t.signals
-- div,1
all disj t1, t2:Track | t1->t2 not in succs or (t1->t2 in succs and t2 not in Junction) implies Semaphore not in (t1.signals)
-- div,2
all t:Track, ts:Track | ts not in Junction and ts in t.^succs implies all s:Semaphore | s not in t.signals
-- div,1
all x:Track | all z:Semaphore| all y : Junction | (x not in y.succs and x!=y)implies z not in x.signals
-- div,1
all x:Track | some y : Junction | all z:Semaphore| (y in succs.x and x!=y)implies z not in x.signals
-- div,1
all x:Track | all z:Semaphore| some y : Junction | (x in y.succs and x!=y)implies z not in x.signals
-- div,1
all t1,t2 : Track | all s : Semaphore| t2 in t1.succs and t1!=t2 and t1 not in Junction implies s not in t2.signals
-- div,1
all x:Track | all z:Semaphore| some y : Junction | (x not in y.succs and x!=y)implies z not in x.signals
-- div,1
all x,y:Track |some s:Signal| x->y in succs and y in Junction implies x->s in signals and s in Semaphore
-- div,1
(all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals))

or no Junction
-- div,3
all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)

or no Junction
-- div,1
all x,y:Track|some s:Signal|x->y in succs and y in Junction implies x->s in signals and s not in Semaphore
-- div,1
all x,y:Track |some s:Signal| x->y not in succs and y in Junction implies x->s not in signals and s in Semaphore
-- div,1
all x:Track | some y : Junction | all z:Semaphore| (x in y.^succs and x!=y)implies z not in x.signals
-- div,1
all t : Track | all disj j1,j2 : Junction | all s : Semaphore | j1+j2 not in t.succs implies s not in t.signals
-- div,1
all x:Track | all z:Semaphore| some y : Junction | (x in y.^succs and x!=y)implies z not in x.signals
-- div,1
all t: Track | (all t1: Track | t1 in t.succs => (t1 in Junction)) =>  no s: Semaphore | s in t.signals
-- div,1
all disj t,t2:Track, s:Semaphore | t2 in Junction && t2 not in t.succs && t not in Entry + Exit => s not in t.signals
-- div,2
all t: Track | (t.succs not in Junction implies t.signals not in Semaphore) and (t.signals not in Semaphore implies t.succs not in Junction)
-- div,1
all t : Track | all s : Semaphore | all j : Junction | j not in t.^succs and t not in Exit implies s not in t.signals
-- div,1
all disj t,t2:Track, s:Semaphore | t2 in Junction && t2 not in t.succs && !(t in Entry + Exit) => s not in t.signals
-- div,2
all t:Track | some ts:Track | t->ts in succs and ts not in Junction implies all s:Signal | t->s not in signals
-- div,1
all t:Track | all ts:Track | t->ts in succs and ts not in Junction implies all s:Semaphore | t->s not in signals
-- div,1
all x1,x2 : Track | x2 in x1.^succs and x1.^succs in Junction implies x1.signals in Semaphore or x2.signals in Semaphore
-- div,1
all disj t,t2:Track, s:Semaphore | t2 in Junction && t2 not in t.succs && t not in Entry && t not in Exit => s not in t.signals
-- div,1
(all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals))

or (no Junction and no signals)
-- div,1
(all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals))

or (no Junction and no Semaphore)
-- div,1
all track : Track | all junction : Junction | junction not in track.succs implies all signal : Semaphore | signal not in track.signals
-- div,1
all t:Track | some ts:Track | t->ts in succs and ts not in Junction implies all s:Signal | t->s in signals implies s in Speed
-- div,1
all track : Track | all junction : Junction | junction not in track.succs implies all signal : Semaphore | signal not in track.^signals
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies no (Signal & t1)
-- div,1
all x1,x2 : Track | all y : Junction | all z : Semaphore | x2 in x1.^succs and y not in x1.^succs implies z not in x1.signals and z not in x2.signals
-- div,1
all t:Track | no (Junction & t.succs) implies Semaphore not in t.signals



all t:Track | one (Exit & t) implies (all s:Semaphore | s not in t.signals)
-- div,2
all t:Track | no (Junction & t.succs) implies no (Junction & t.succs)



all t:Track | one (Exit & t) implies (all s:Semaphore | s not in t.signals)
-- div,1
all t:Track | no (Junction & t.succs) implies Semaphore not in t.signals



all t:Track | one (Exit & t) implies (some s:Semaphore | s not in t.signals)
-- div,2
all t:Track | no (Junction & t.succs) implies no (Junction & t.succs)



all t:Track | one (Exit & t) implies (some s:Semaphore | s not in t.signals)
-- div,1
all t1,t2 : Track | t2 in t1.succs and t1 not in Junction implies no t1.signals&Semaphore
all t : Track | no t.succs implies no t.signals&Semaphore
-- div,3
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | no t1.succs implies Semaphore not in t1.signals
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies Semaphore not in t1.signals
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | t1.succs=none implies Semaphore not in t1.signals
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies (all s:Signal | s not in t1)
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies (all s:Semaphore | s not in t1.signals)
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies (one s:Semaphore | s not in t1.signals)
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies (some s:Semaphore | s not in t1.signals)
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies (one s:Signal | s not in t1.signals and s in Semaphore)
-- div,1
