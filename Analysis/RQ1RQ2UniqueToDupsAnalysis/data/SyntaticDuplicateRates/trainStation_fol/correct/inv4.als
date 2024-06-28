Track - Track.succs = Entry
-- div,3
Entry = Track - Track.succs
-- div,11
Entry = Track - Track.^succs
-- div,3
Entry = Track - ~succs.Track
-- div,3
Entry = { t : Track | no succs.t}
-- div,1
all t:Track | t in Entry <=> no succs.t
-- div,33
all x : Track | x in Entry iff no succs.x
-- div,1
all e : Track | e in Entry iff no succs.e
-- div,2
all t:Track | no succs.t <=> t in Entry
-- div,18
all x: Track | x in Entry <=> no ^(succs).x
-- div,1
all t:Track | no t.~succs iff t in Entry
-- div,2
Entry = Track-({ t : Track | some succs.t})
-- div,1
all e:Track | e in Entry <=> no ^succs.e
-- div,2
all t: Track | t in Entry <=> no ^succs.t
-- div,8
all t : Track | t in Entry iff no t.~succs
-- div,1
all t: Track | t in Entry iff #succs.t = 0
-- div,3
all t : Track | #succs.t = 0 <=> t in Entry
-- div,5
all t: Track | t not in Track.succs <=> t in Entry
-- div,6
all t1 : Track | (succs.t1)=none iff t1 in Entry
-- div,1
all t:Track | t in Entry iff t not in Track.succs
-- div,14
all t : Track | (t.~succs=none) iff (t in Entry)
-- div,2
all t : Track | not t in Track.succs <=> t in Entry
-- div,1
all t:Track | no t & Track.succs iff t in Entry
-- div,2
all e : Track | e not in Track.(^succs) iff e in Entry
-- div,2
all t : Track | (t not in Track.^(succs) <=> t in Entry)
-- div,1
all t:Track| t in Entry iff t not in Track.^succs
-- div,34
all t1,t2:Track| t1 in Entry iff t1 not in Track.^succs
-- div,1
all x:Track-Entry | some succs.x
no succs.Entry
-- div,1
no succs.Entry
all t: Track | no succs.t => t in Entry
-- div,2
all e : Track | e in Entry iff (all t : Track | t not in succs.e)
-- div,2
all t:Track | t in Entry iff all ts:Track | t not in ts.succs
-- div,4
all t : Track | (all t1 : Track | t not in t1.succs) iff t in Entry
-- div,2
all e : Track| e in Entry iff (not(some t : Track |e in t.succs))
-- div,1
all a:Track | a in Entry iff all a2:Track | a2->a not in succs
-- div,1
no succs.Entry
all t : Track | no t & Track.succs => t in Entry
-- div,1
all t: Track | (t in Entry implies no succs.t) and (no succs.t implies t in Entry)
-- div,1
all t : Track | no t & Track.succs => t in Entry
no Entry & Track.succs
-- div,1
no Entry & Track.succs
all t : Track | no t & Track.succs => t in Entry
-- div,1
all x : Track | (x in Entry implies #(succs.x) = 0) and (#(succs.x) = 0 implies x in Entry )
-- div,1
all t : Track | t not in Track.succs implies t in Entry
all e : Entry | e not in Track.succs
-- div,3
all e : Entry | e not in Track.^succs
all t : Track | t not in Track.^succs implies t in Entry
-- div,2
all t : Entry | t not in Track.^succs
all t : Track | t not in Track.^succs implies t in Entry
-- div,2
all t : Track | t not in Track.^succs implies t in Entry
all e : Entry | e not in Track.^succs
-- div,1
all t: Track | #(succs.t)=0 implies t in Entry
all t: Track |  t in Entry implies #(succs.t)=0
-- div,1
all x : Track | x in Entry implies #(succs.x)=0
all x : Track | #(succs.x)=0 implies x in Entry
-- div,1
all e: Entry | all t: Track | e not in t.succs
all t: Track - Entry | t in Track.succs
-- div,3
all t: Track | t in Entry implies t not in Track.succs
all t: Track | t not in Track.succs implies t in Entry
-- div,1
all t: Track | t in Entry implies t not in Track.^succs
all t: Track | t not in Track.^succs implies t in Entry
-- div,1
all t : Track | all e : Entry | e not in t.^succs
all t : Track | t not in Track.^succs implies t in Entry
-- div,1
all a:Entry | all a2:Track | a2->a not in succs
all a:Track | (all a2:Track | a2->a not in succs) implies a in Entry
-- div,1
all t1,t2:Track | t1 in t2.succs implies no (t1 & Entry)
all t1:Track | no (t1 & Entry) implies (some t2:Track | t1 in t2.^succs)
-- div,5
