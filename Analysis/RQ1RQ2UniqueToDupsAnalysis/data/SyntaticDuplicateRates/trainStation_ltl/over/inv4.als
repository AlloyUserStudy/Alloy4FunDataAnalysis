always one pos.Track
-- div,1
always lone pos.Track
-- div,1
all  t1,t2:Train | always t1.pos!=t2.pos
-- div,4
always all t1,t2:Train | t1.pos!=t2.pos
-- div,2
always all disj t, t2 : Train | t.pos != t2.pos
-- div,1
always (all t1,t2 : Train | no (t1.pos & t2.pos))
-- div,1
all t1,t2 : Train | always no (t1.pos & t2.pos)
-- div,3
always all disj t1,t2:Train |  t1.pos!=t2.pos
-- div,3
all disj t1,t2:Train | always t1.pos!=t2.pos
-- div,3
all t1, t2 : Train | always t1.pos' != t2.pos'
-- div,1
always all t1, t2: Train | always (no t1.pos & t2.pos)
-- div,1
all t1,t2 : Train | always ( no (t1.pos & t2.pos) and t1.prox not in t2.pos)
-- div,1
