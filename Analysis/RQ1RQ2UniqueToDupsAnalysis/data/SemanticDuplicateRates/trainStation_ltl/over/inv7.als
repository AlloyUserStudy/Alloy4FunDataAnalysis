-- equiv pair start,8
eventually all t : Train | (always no t.pos)
-- div,1
all t : Train | eventually always no t.pos
-- div,5
all t : Train | (eventually always no t.pos')
-- div,2
-- equiv pair end
