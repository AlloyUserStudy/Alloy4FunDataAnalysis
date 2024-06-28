-- equiv pair start,2
all t, t1: Track | t in (Track-t1).succs && t in t1.succs <=> t in Junction
-- div,2
-- equiv pair end
-- equiv pair start,6
all t1,t2,t3 : Track | t2!=t3 and t1 in t2.succs&t2.succs <=> t1 in Junction
-- div,6
-- equiv pair end
-- equiv pair start,4
all t, t1, t2: Track | t in t1.succs && t in t2.succs && t1!=t2 <=> t in Junction
-- div,1
all t1,t2,t3:Track | t2 != t3 and t1 in t2.succs and t1 in t3.succs iff t1 in Junction
-- div,1
all t, t1: Track | t!=t1 && t in (Track-t1).succs && t in t1.succs <=> t in Junction
-- div,1
all t1,t2,t3:Track | t1 != t2 and t2 != t3 and t1 in t2.succs and t1 in t3.succs iff t1 in Junction
-- div,1
-- equiv pair end
-- equiv pair start,8
all t1,t2,t3 : Track | t2!=t3 and t1!=t2 and t1 in t2.succs&t2.succs <=> t1 in Junction
-- div,2
all t1,t2,t3 : Track | t2!=t3 and t1!=t2 and t1 in t2.succs&t2.succs <=> t1 in Junction
all j : Junction | j not in j.succs
-- div,1
all t1,t2,t3 : Track | t2!=t3 and t1!=t2 and t1 in t2.succs&t2.succs <=> t1 in Junction
all j : Junction | j not in Track.succs&j
-- div,1
all t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t1!=t2 and t1!=t3 implies one (Junction & t1)
all t1:Track | lone (t1 & Track.succs) implies no (Junction & t1)
-- div,3
all t1,t2,t3 : Track | t2!=t3 and t1!=t2 and t1 in t2.succs&t2.succs implies t1 in Junction
all t1,t2 : Track | all j : Junction | j in t1.succs implies j in t2.succs and t1!=t2
all t: Track | t not in Track.succs implies t not in Junction
-- div,1
-- equiv pair end
-- equiv pair start,6
all t1,t2,t3 : Track | t2!=t3 and t1 in t2.succs&t2.succs <=> t1 in Junction
no Track.succs
-- div,1
all t1:Track | lone (t1 & Track.succs) implies no (Junction & t1)
all t1:Track | some (t1 & Track.succs) implies one (Junction & t1)
-- div,2
all t1,t2,t3 : Track | t2!=t3 and t1!=t2 and t1 in t2.succs&t2.succs <=> t1 in Junction
all j : Track | j not in j.succs
-- div,1
all t1:Track | lone (t1 & Track.succs) implies no (Junction & t1)
all t1:Track | some (t1 & Track.succs-1) implies one (Junction & t1)
-- div,1
all t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs implies one (Junction & t1)
all t1:Track | lone (t1 & Track.succs) implies no (Junction & t1)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2,t3 : Track | t2!=t3 and t1 in t2.succs&t2.succs <=> t1 in Junction
one Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Track-Junction| one succs.x
some x,z:Track|all y:Track| y in Junction implies x->y in succs and z->y in succs and x!=z
-- div,1
-- equiv pair end
