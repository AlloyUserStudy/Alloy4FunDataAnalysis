all p:Person | some t :Teacher | t in ^Tutors.p
-- div,3
all p:Person |some t:Teacher | t in p.^~Tutors
-- div,24
all p : Person {
  	(some (p.(~Tutors) & Teacher)) or
  	(some (p.(~Tutors).(~Tutors) & Teacher)) or
	(some (p.(~Tutors).(~Tutors).(~Tutors) & Teacher))
  }
-- div,2
all p1: Person | some p2, p3: Person |
(p2->p1 in Tutors) and ((p2 in Teacher) or
  (p3->p2 in Tutors) and ((p3 in Teacher) or
  (p1->p3 in Tutors) and  (p1 in Teacher)))
-- div,7
all p : Person | some q,r : Person, t : Teacher | t->p in Tutors or (q->p in Tutors and t->q in Tutors) or (t->r in Tutors and r->q in Tutors and q->p in Tutors)
-- div,4
all p1 : Person | some p2, p3 : Person |
  (p2->p1 in Tutors and p2 in Teacher) or
  (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher) or
  (p1->p3 in Tutors and p3->p2 in Tutors and p2->p1 in Tutors and p1 in Teacher)
-- div,2
all p1 : Person | (some p2 : Teacher | p2 -> p1 in Tutors) or (some p2, p3 : Person | p2 -> p1 in Tutors and p3 -> p2 in Tutors and p3 in Teacher) or (some p2, p3, p4 : Person | p2 -> p1 in Tutors and p3 -> p2 in Tutors and p4 -> p3 in Tutors and p4 in Teacher)
-- div,1
