all t : Train | t.pos' != t.pos | no Green
-- div,1
always (all t:pos.Track | (t.pos)' in t.pos.next
-- div,1
all t:Train {
t.pos in Exit => no t.pos'
t.pos not in Exit => t.pos' = one (t.pos).prox
}
-- div,1
all t:Train {
t.pos in Exit => no t.pos'
t.pos not in Exit => t.pos' = some ((t.pos).prox)
}
-- div,1
always (all t:Train|(one t.pos:> Exit => no t.pos)  or (one t.pos  => t.pos' in t.pos.prox  )
-- div,2
all t : Train | some (t.pos & Exit) implies  Train' = (Train - t)  else( t.pos' & t.pos.prox))
-- div,1
all t : Train | some (t.pos & Exit) implies  Train' = (Train - t) ( else( t.pos' & t.pos.prox))
-- div,1
all t:Train {
t.pos in Exit => Train' = Train - t
t.pos not in Exit => t.pos' = one (t.pos).prox
}
-- div,2
always (all t:Train |t.pos in Entry  implies  (t.pos'in  (t.pos.^prox)  or  t.pos in Exit implies no t.pos')
-- div,1
always (all t:Train |t.pos in Entry  implies  (t.pos'in  (t.pos.^prox)<:Exit   or  t.pos in Exit implies no t.pos')
-- div,1
all t:Train |{
always (t.pos in Exit implies no t.pos')
always (t.pos in Entry  implies  (t.pos'in  (t.pos.prox) )
}
-- div,1
always (all t:Train |t.pos in Entry  implies  (t.pos'in  ((t.pos.^prox)<:Exit)   or  t.pos in Exit implies no t.pos')
-- div,1
all t:Train {
some tk | t.pos {
(tk in Exit) => t.pos' = t.pos - tk
(tk not in Exit) => some tk2: tk.prox | t.pos' = tk2
}
}
-- div,2
always(
all t:Train {
some (t.pos & Exit) => t.pos' = t.pos - tk
some (t.pos && (Track-Exit)) => some tk2: tk.prox | t.pos' = tk2
}
)
-- div,1
always (all t:Train|(one t.pos:> Exit and  some t.pos.prox  => no t.pos'))
always (all t:Train| (one t.pos and some t.pos.prox  => (t.pos' in t.pos.prox or t.pos'=t.pos) )
-- div,1
always (all t:Train|(one t.pos:> Exit and  some t.pos.prox  => no t.pos'))
always (all t:Train| (one t.pos and some t.pos.prox  => (t.pos' in t.pos.prox or t.pos=t.pos') )
-- div,1
always (all t:Train|(one t.pos:> Exit => no t.pos'))
always (all t:Train| (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox )
always (all t:Train| no t.pos.prox  => (no t.pos' or t.pos'=t.pos)   )
-- div,1
