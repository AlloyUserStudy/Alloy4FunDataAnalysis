always ( all tk:Track | some tk.signal and (tk.signal in Green) implies ( #pos.tk' = #pos.tk ) )
-- div,2
always ( all tk:Track | some tk.signal implies (tk.signal in Green) releases ( #pos.tk' = #pos.tk ) )
-- div,2
always all t : ((Signal-Green).(~signal).(~pos)) | (t.pos' in t.pos.prox) implies (t.pos.signal in Green)
-- div,2
always ( all t:Train, s:Signal | some (t.prox).signal :> s implies (s in Green) releases (t.pos' = t.pos) )
-- div,1
