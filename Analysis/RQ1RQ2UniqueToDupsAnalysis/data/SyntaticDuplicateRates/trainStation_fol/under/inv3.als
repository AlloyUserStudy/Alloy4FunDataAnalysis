no Exit.succs
-- div,81
no Exit.^(succs)
-- div,2
no Exit <: succs
-- div,1
none = Exit.succs
-- div,1
Exit.succs = none
-- div,1
Exit.succs in Track
-- div,1
no ~succs :> Exit
-- div,1
no Exit&succs.Track
-- div,1
no (Exit & Track).succs
-- div,1
no (succs.Track & Exit)
-- div,1
no (Exit:>Track).succs
-- div,2
no (Exit<:Track).succs
-- div,1
no Track.~succs & Exit
-- div,1
no (Exit<:Track).^succs
-- div,1
no Track.succs & Exit.succs
-- div,1
all t : Exit | t in Track
-- div,1
all e:Exit| no e.succs
-- div,78
all x:Exit| no x.succs
-- div,15
all t:Exit | no t.succs
-- div,13
all a:Exit | no a.succs
-- div,1
no e : Exit | some e.succs
-- div,1
all et : Exit | no et.succs
-- div,4
all ex:Exit | no ex.succs
-- div,8
all e:Exit | lone e.succs
-- div,3
all t1: Exit | no t1.succs
-- div,1
all tr : Exit | no tr.succs
-- div,2
all e:Exit | no e.^succs
-- div,5
all t:Exit | no t.^(succs)
-- div,4
all x:Exit| no x.^(succs)
-- div,1
all x:Exit | x not in x.succs
-- div,1
all e : Exit | e not in e.succs
-- div,1
all t: Exit | #t.succs = 0
-- div,12
all x: Exit | #x.succs = 0
-- div,2
all e : Exit | #e.succs < 1
-- div,2
all t:Track | no Exit.succs
-- div,1
all e : Exit | #e.succs = 0
-- div,5
all e: Exit | e.succs=none
-- div,3
no t:Track | t in Exit.succs
-- div,1
all t: Exit | none in t.succs
-- div,1
all ex:Exit | no ex.^succs
-- div,2
all e : Exit | none in e.succs
-- div,1
all e : Exit | #e.succs <= 0
-- div,1
Track in Exit <=> no Track.^(succs)
-- div,1
all x: Exit | x.succs in none
-- div,1
all ex:Exit | #ex.succs=0
-- div,1
all exit : Exit | no exit.succs
-- div,3
all t : Exit | t not in succs.Track
-- div,1
all t:Track | t not in Exit.succs
-- div,2
all x:Exit | x->Track not in succs
-- div,1
all ex:Exit | ex not in ex.^(succs)
-- div,1
all ex:Exit | Track not in ex.succs
-- div,1
all ex:Exit | #ex.^(succs)=0
-- div,1
all e1,e2:Exit | e1->e2 not in succs
-- div,3
all t: Track&Exit | no t.succs
-- div,6
all t : Exit | no t&succs.Track
-- div,1
all e : Exit | no e.succs & Track
-- div,1
all t : Track - Exit | some t.succs
-- div,2
all ex:Exit | no ex.next
-- div,1
all t : Track | no succs implies t in Exit
-- div,1
all t : Track - Exit | #t.succs > 0
-- div,1
all t : (Track & Exit) | #t.succs = 0
-- div,1
all t : Track-Exit | t not in Exit.succs
-- div,1
all t : Track - succs.Track | t in Exit
-- div,2
all t : Track | t=Exit implies no t.succs
-- div,2
all x: Track | x = Exit implies no x.succs
-- div,3
all t,t1 : Track | no succs implies t in Exit
-- div,1
all e : Exit | no e.succs or e in Entry
-- div,1
all x:Track| x in Exit => no x.succs
-- div,15
all x:Exit, y:Track | y not in x.succs
-- div,1
all e:Exit, t:Track | t not in e.succs
-- div,5
all x:Track | no x.succs => x in Exit
-- div,7
all t:Track| no t.succs => t in Exit
-- div,73
all t : Exit | no t.succs && t in Track
-- div,1
all e : Track | no e.succs implies e in Exit
-- div,3
all x: Track, e: Exit | e not in succs.x
-- div,1
all e:Exit | e in Track => no e.succs
-- div,1
all t:Track| t in Exit => no t.succs
-- div,68
all x:Exit, y: Track | x->y not in succs
-- div,1
all t: Track | t in Exit => lone t.succs
-- div,1
all ex : Exit, t : Track | ex not in succs.t
-- div,1
all t,a:Track| t in Exit implies no t.succs
-- div,1
all x,y:Track| x in Exit implies no x.succs
-- div,1
all t : Track | t=Exit implies no t.^(succs)
-- div,1
all t:Track | no t.^(succs) => t in Exit
-- div,3
all t : Track | t=Exit implies #t.succs=0
-- div,1
all tr : Track | no tr.succs implies tr in Exit
-- div,3
all x:Track | x in Exit implies no x.^succs
-- div,4
all t: Track | t in t.succs implies t not in Exit
-- div,1
all ex:Exit | ex in Track => no ex.succs
-- div,4
all e:Exit, t:Track | t not in e.^(succs)
-- div,1
all t: Track | t in Exit implies t not in succs.t
-- div,1
all t1: Track | no t1.succs implies t1 in Exit
-- div,1
all t:Track | no t.succs implies no t.succs
-- div,2
all t:Track | some t.succs implies t not in Exit
-- div,1
all t:Exit, ts:Track | t->ts not in succs
-- div,1
all ex:Exit | no ex.succs.next
-- div,1
all t: Track| t in Exit => no t.^succs
-- div,23
all t:Track | t in Exit implies t not in t.succs
-- div,4
all t : Track | t.succs = none => t in Exit
-- div,6
all t:Track| #t.succs=0 => t in Exit
-- div,12
all t : Track | t in Exit => #t.succs = 0
-- div,4
all x: Track | #(x.succs) = 0 implies x in Exit
-- div,3
all x : Track | x in Exit implies #(x.succs)=0
-- div,2
all x:Exit - (Junction + Entry)| no x.succs
-- div,1
all t : Track | t in Exit implies #t.succs <= 0
-- div,1
all e : Exit - (Entry + Junction) | no e.succs
-- div,1
all t: Track | t in Exit implies t not in t.^(succs)
-- div,1
all t,a:Track| t in Exit implies t->a not in succs
-- div,1
all x,y:Track| x in Exit implies x->y not in succs
-- div,1
all t : Track | t  in t.^(succs) implies t not in Exit
-- div,1
all t1: Track | no t1.*succs implies t1 in Exit
-- div,1
all t: Track | t in Exit implies t not in Exit.succs
-- div,1
all t : Track | t=Exit implies #(t.^(succs))=0
-- div,1
all t1: Track | no t1.^succs implies t1 in Exit
-- div,1
all t : Track | some t&Exit implies no t.succs
-- div,2
all t:Exit, x:Track-t| t->x not in succs
-- div,1
all x : Track | x in Exit implies #(x.^succs) = 0
-- div,1
all t : Track | t.succs not in Track implies t in Exit
-- div,1
all ex:Exit | ex in Track => #ex.succs=0
-- div,1
all t : Track | t.^succs = none => t in Exit
-- div,1
all exit : univ | exit in Exit implies no exit.succs
-- div,3
all e:Exit | e in Track.succs => no e.succs
-- div,1
all x: Exit | no t: Track | x->t in succs
-- div,1
all ex:Exit | no ex.succs and ex not in ex.succs
-- div,1
all t1,t2:Track | t1 not in Exit => some t1.succs
-- div,2
all e:Exit | no t:Track | e->t in succs
-- div,1
all t : Track| t in Exit implies no (t.succs & Track)
-- div,2
all e : Exit | all t : Track | t not in e.succs
-- div,2
all ta,td : Track | ta->td in succs implies ta!=Exit
-- div,1
all x:Exit | all y: Track | x->y not in succs
-- div,2
all e:Exit | all t:Track | e->t not in succs
-- div,10
all exit : univ | exit in Exit implies no exit.^succs
-- div,4
all t1,t2 : Track | t1->t2 in succs implies t1 not in Exit
-- div,2
all ta,td : Track | ta->td in succs implies ta not in Exit
-- div,2
all t:Exit | all ts:Track | ts not in t.succs
-- div,1
all x: Exit | some t: Track | x->t not in succs
-- div,1
all e : Exit | some t : Track | e->t not in succs
-- div,1
all exit : univ | exit in Exit implies #exit.succs = 0
-- div,1
all t1,t2:Track | t1 not in Exit => some t1.^(succs)
-- div,1
all track : Track | no track.succs => track in Exit
-- div,2
all t1,t2:Track | t2 in t1.succs implies no (t1 & Exit)
-- div,3
all exit : univ | exit in Exit implies none in exit.succs
-- div,2
all e:Exit | not some t:Track | e->t in succs
-- div,1
all t : Track | #t.succs = 0 => t in Track&Exit
-- div,1
all x : Exit | not (some p : Track | x->p in succs)
-- div,1
all exit : univ | exit in Exit implies #exit.^(succs)=0
-- div,1
all t:Track | t.signals=Exit implies t.signals=Exit
-- div,1
all ex:Exit | no ex.^(succs) and ex not in ex.^(succs)
-- div,2
all t: Track&Exit-Junction-Entry | no t.succs
-- div,1
all track : Track | #track.succs = 0 => track in Exit
-- div,4
all ex:Exit | Track not in ex.succs and ex not in ex.succs
-- div,1
all exit : univ | exit in Exit implies none in exit.^(succs)
-- div,1
all t : Track| t in Exit implies no (t.succs & Track - {t})
-- div,1
all exit : univ | exit in Exit implies none in exit.*(succs)
-- div,2
all e:Exit, t:Track | e in Track => t not in e.succs
-- div,1
all t:Track, e:Exit | e in t.succs => no e.succs
-- div,1
all t:Exit, ts:Track, s:Signal | t->ts not in succs
-- div,1
all t : Track| t in Exit implies no (t.^succs & Track - {t})
-- div,1
all t: Track - Exit | some s : Track | s in t.succs
-- div,1
all t:Track,e:Exit | e in t.signals implies no t.succs
-- div,1
all t : Track | t in Exit => one t.succs || no t.succs
-- div,2
all t : Track | t in Exit => t in t.succs || no t.succs
-- div,1
all t : Track | (t in Exit and t not in Junction) implies no t.succs
-- div,1
all t : Track | t in Exit => t in succs.t || no t.succs
-- div,1
all t: Track | no t.succs and no t.signals implies t in Exit
-- div,2
all t: Track | no t.succs and t not in t.succs => t in Exit
-- div,1
all t: Track | all e:Exit | e in t implies e not in t.succs
-- div,1
all e: Exit | all t: Track| e in t implies t.succs=none
-- div,1
all t:Track, e:Exit | t not in e.^(succs) => no e.^(succs)
-- div,1
all y : Track | all x : Signal | x in Exit implies no y.succs
-- div,1
all t : Track| all f : Track | t=Exit implies f not in t.succs
-- div,1
all tr : Track | (no tr.succs and tr in tr.succs) implies tr in Exit
-- div,1
all t : Track - Junction - Entry | #t.succs=0 implies t in Exit
-- div,1
all t: Track | no t.succs => t in Exit and t not in Track-Exit
-- div,2
all t: Track | t in Exit implies no t1: Track | t1 in t.succs
-- div,1
all t:Track | no t.^(succs) and t not in t.^(succs) => t in Exit
-- div,1
all t: Track | t.succs = none and t.signals = none implies t in Exit
-- div,1
all x:Track| some y:Track| x in Exit implies x->y not in succs
-- div,1
all ex:Exit | ex not in Junction and ex not in Entry => no ex.^(succs)
-- div,1
all t : Track| all f : Track | t=Exit implies no f & t.succs
-- div,1
all x: Track | some t: Track | x->t in succs implies x not in Exit
-- div,1
all x : Exit | all y : Track | x in y.signals implies no y.succs
-- div,2
all x : Exit | all y : Track | x in y.signals implies no succs.y
-- div,1
all track : univ | track in Track and no track.succs implies track in Exit
-- div,7
all t1,t2 : Track | t1->t2 in succs implies t1 not in Exit
no Exit.succs
-- div,1
all t : Track| all t1 : Track - {t} | t in Exit implies t1 not in t.succs
-- div,1
all track : univ | track in Track and no track.^succs implies track in Exit
-- div,5
all t1:Track | no (t1 & Exit) implies (some t2:Track | t2 in t1.succs)
-- div,1
all t : Track |t in Exit implies no t.succs and no t.succs implies t in Exit
-- div,1
all t : Track | no t.succs implies t in Exit and t in Exit implies no t.succs
-- div,1
all t:Track,s:Signal | s=Exit and s in t.signals implies no t.succs
-- div,1
all t:Track | t in  Exit and t not in Entry and t not in Junction implies no(t.succs)
-- div,1
all exit : univ | exit in Exit implies all track : Track | track not in exit.succs
-- div,1
all ex:Exit, j:Junction, e:Entry | j not in ex.succs and e not in ex.succs
-- div,1
all t : Track | all e : Exit | (no t.succs implies t in Exit) and no e.succs
-- div,1
all t : Track | all e : Exit | no t.succs implies t in Exit and no e.succs
-- div,1
all track : Track | no track.succs implies track in Exit and track not in track.^succs
-- div,1
all tr : Exit | (no tr.succs or (tr in Entry and tr in Junction and tr in tr.succs))
-- div,1
all x : Signal | all y : Track | (x in Exit and x in y.signals) implies no y.succs
-- div,1
all y : Track | all x : Signal | (x in Exit and y in x.signals) implies no y.succs
-- div,1
all y : Track | all x : Signal | (x in Exit and x in y.signals) implies no y.succs
-- div,3
all exit : univ | exit in Exit implies no exit.succs or (exit in Junction or exit in Entry)
-- div,1
all exit : univ | exit in Exit implies no exit.^succs or (exit in Junction or exit in Entry)
-- div,1
all track : univ | track in Track and no track.succs implies track in Exit or track in Entry
-- div,1
all e : Exit | all t : Track | e->t not in succs
all e : Exit | no e.succs
-- div,2
all t : Track - Exit | some t.succs
all t : Track | no t.succs implies t in Exit
-- div,1
all t1: Track | some t2: Track | t1 in t2.^succs and no t1.succs implies t1 in Exit
-- div,1
all ex:Exit | ex not in Junction and ex not in Entry => no ex.^(succs) and ex not in ex.^(succs)
-- div,1
all tr : Track | (no tr.succs) implies (tr in Exit or (tr in Exit and tr in Entry and tr in Junction))
-- div,1
all tr : Track | (no tr.succs implies tr in Exit) or (tr in Exit and tr in Entry and tr in Junction)
-- div,1
all tr : Track | tr in Exit implies (no tr.succs or (tr in Entry and tr in Junction and tr in tr.succs))
-- div,1
all ex:Exit, j:Junction, e:Entry | j not in ex.succs and e not in ex.succs and ex not in ex.succs
-- div,1
all track : univ | track in Track and track not in track.^succs and no track.^succs implies track in Exit
-- div,1
all track : univ | track in Track and no track.^succs implies track in Exit and track not in track.^succs
-- div,1
all tr : Track | (no tr.succs implies tr in Exit) or (tr in Exit and tr in Entry and tr in Junction and tr in tr.succs)
-- div,1
all tr : Track | (no tr.succs or (tr in Entry and tr in Junction and tr in Exit and tr in tr.succs)) implies tr in Exit
-- div,1
all t:Track | some e:Track | all ts:Track | t->e in succs and t!=ts and e->ts not in succs implies e in Exit
-- div,1
all ex:Exit, j:Junction, e:Entry | j not in ex.succs and e not in ex.succs and ex not in ex.succs and Track not in ex.succs
-- div,1
all ex:Exit, j:Junction, e:Entry, t:Track | j not in ex.succs and e not in ex.succs and ex not in ex.succs and t not in ex.succs
-- div,1
all exit, entry, junction : univ | exit in Exit and entry in Entry and junction in Junction implies entry not in exit.succs and junction not in exit.succs
-- div,1
