always ( all t:Train | ( one (t.pos.signal :>Green) )implies (t.pos.signal in  Signal-Green) )
-- div,1
always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) )implies (t.pos.signal in  Signal-Green) )
-- div,1
always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) and t.pos != t.pos' )implies (t.pos.signal in  Signal-Green) )
-- div,2
always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green)  )implies (t.pos != t.pos' and t.pos.signal in  Signal-Green) )
-- div,1
always ( all t:Train | eventually (some t.pos  and  one (t.pos.signal :>Green) and t.pos' !=t. pos ) implies (t.pos.signal in  Signal-Green) )
-- div,1
always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) ) implies (eventually t.pos'!=t.pos and (t.pos.signal in  Signal-Green) ))
-- div,1
