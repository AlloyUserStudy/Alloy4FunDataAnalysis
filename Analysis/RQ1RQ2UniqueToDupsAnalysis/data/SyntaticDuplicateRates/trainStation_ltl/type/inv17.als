( one pos =>  Train.pos:>Exit )
-- div,1
always ( one pos =>  Train.pos:>Exit )
-- div,1
( one (Train.pos) =>  Train.pos:>Exit )
-- div,1
always ( one (Train.pos) =>  Train.pos:>Exit )
-- div,1
always ( one (Train.pos) => before Train.pos:>Exit )
-- div,1
always (some t:Train | historically lone (Train.pos + t) and eventually (t.pos in Exit and historically lone (Train.Exit + t)))
-- div,1
