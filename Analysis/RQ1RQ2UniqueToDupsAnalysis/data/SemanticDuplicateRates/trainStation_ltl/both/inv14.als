-- equiv pair start,5
always ( all t:Train | ( one (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )
-- div,1
always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )
-- div,2
always ( all t:Train | (some t.pos and some (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )
-- div,1
always ( all t:Train | (some t.pos and one t.pos.signal and some (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )
-- div,1
-- equiv pair end
-- equiv pair start,6
always ( all t:Train | ( one (t.pos.signal :>Green) )implies after (t.pos.signal in  Signal-Green) )
-- div,2
always ( all t:Train | let tr=t.pos | ( one (tr.signal :>Green) )implies after (tr.signal in  Signal-Green) )
-- div,1
always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) )implies after (t.pos.signal in  Signal-Green) )
-- div,2
always ( all t:Train | (some t.pos' and  one (t.pos.signal :>Green) )implies after (t.pos.signal in  Signal-Green) )
-- div,1
-- equiv pair end
-- equiv pair start,1
always ( all t:Train | ( one (t.pos.signal :>Green) )implies eventually (t.pos.signal in  Signal-Green) )
-- div,1
-- equiv pair end
-- equiv pair start,1
( all t:Train | (some t.pos and  one (t.pos.signal :>Green) )implies after (t.pos.signal in  Signal-Green) )
-- div,1
-- equiv pair end
-- equiv pair start,1
always ( all t:Train | let tr=t.pos |pos!=pos' and ( one (tr.signal :>Green) )implies after (tr.signal in  Signal-Green) )
-- div,1
-- equiv pair end
-- equiv pair start,1
always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) and no t.pos' )implies (t.pos.signal in  Signal-Green) )
-- div,1
-- equiv pair end
-- equiv pair start,3
always ( all t:Train | eventually (some t.pos  and  one (t.pos.signal :>Green) and t.pos' !=t. pos and some t.pos') implies (t.pos.signal in  Signal-Green) )
-- div,3
-- equiv pair end
