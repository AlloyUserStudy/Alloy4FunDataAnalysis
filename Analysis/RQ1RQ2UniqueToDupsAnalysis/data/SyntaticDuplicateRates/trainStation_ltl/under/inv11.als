always (all t:pos.Track | once t.pos in Entry)
-- div,3
all t:Train | always one t.pos implies once t.pos in Entry
-- div,1
always (all t:Train | one t.pos implies once t.pos in Entry)
-- div,1
always ( all t:Train| some t.pos implies once t.pos in Entry)
-- div,3
