always (all t:Train | one (t.pos:>Exit) => (some t.pos since one (t.pos:>Entry )))
-- div,1
