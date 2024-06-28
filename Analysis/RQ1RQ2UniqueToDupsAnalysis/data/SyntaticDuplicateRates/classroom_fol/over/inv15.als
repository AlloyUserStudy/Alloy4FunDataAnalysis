Person = 3
-- div,1
all p : Person | p != p
-- div,2
all p1, p2 : Person
  		| p2->p1 in Tutors and p2 in Teacher
-- div,1
all p:Person | some t:Teacher | t in p.^~Teaches
-- div,2
all p1, p2, p3 : Person | p1 -> p2 in Tutors and p2 -> p3 in Tutors and p1 in Teacher
-- div,1
all p1, p2, p3 : Person | (p1 -> p2 in Tutors and p2 -> p3 in Tutors) and p3 in Teacher
-- div,1
all p1 : Person | some p2, p3 : Person | (p2->p1 in Tutors) and (p3->p2 in Tutors) and (p3 in Teacher)
-- div,1
all p1, p2, p3 : Person 
  		|
  		  ( (p2->p1 in Tutors and p2 in Teacher) and
            (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher))
-- div,2
all p1 : Person | some p2, p3 : Person | (p2->p1 in Tutors) and (p3->p2 in Tutors) and ((p2 in Teacher) or (p3 in Teacher))
-- div,1
all p1, p2, p3 : Person
  		| (p2->p1 in Tutors and p2 in Teacher) or
  		  (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher)
-- div,1
all p : Person | some t : Teacher | t->p in Tutors or (some q : Person | q->p in Tutors and t->q in Tutors)
-- div,1
all p1, p2, p3: Person |
(p2->p1 in Tutors) and ((p2 in Teacher) or
  (p3->p2 in Tutors) and ((p3 in Teacher) or
  (p1->p3 in Tutors) and  (p1 in Teacher)))
-- div,1
all p1 : Person | some p2, p3 : Person |
   (p2->p1 in Tutors and p2 in Teacher) or
   (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher)
-- div,1
all p1 : Person |
  	(some t : Teacher | t->p1 in Tutors) or
	(some p2 : Person, t : Teacher | (p2->p1 in Tutors) and (t->p2 in Tutors))
-- div,4
all p1 : Person | (some p2 : Teacher | p2 -> p1 in Tutors) or (some p2, p3 : Person | p2 -> p1 in Tutors and p3 -> p2 in Tutors and p3 in Teacher)
-- div,1
all p1 : Person | (some p2 : Person | (p2 != p1) and (p2->p1 in Tutors) and ((p2 in Teacher) or (some p3 : Person | (p3 != p2) and (p3 != p1) and (p3 in Teacher))))
-- div,1
all p1, p2, p3 : Person
  		| ( p1 != p2 and p2 != p3 and p3 != p1 ) and
          ( (p2->p1 in Tutors and p2 in Teacher) or
  		    (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher))
-- div,1
all p1 : Person | 
  		(some p2 : Person | (p2->p1 in Tutors and p2 in Teacher) or
			some p3 : Person | (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher)
		)
-- div,1
all p : Person | some q : Person, t : Teacher | t->p in Tutors or (q->p in Tutors and t->q in Tutors) or (t->q in Tutors and q->p in Tutors and p->t in Tutors)
-- div,1
all p,q,r : Person | (p->q in Tutors or q->p in Tutors or q->r in Tutors or r->q in Tutors 
      					  or r->p in Tutors or p->r in Tutors)
  						  and (p in Teacher or q in Teacher or r in Teacher)
-- div,3
all p1 : Person | some p2, p3 : Person |
  
  (p1 != p2) and (p1 != p3) and (p2 != p3) and
  
  (all p4 : Person | (p4 = p1) or (p4 = p2) or (p4 = p3)) and (
  (p2->p1 in Tutors and p2 in Teacher) or
  (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher) or
  (p1->p3 in Tutors and p3->p2 in Tutors and p2->p1 in Tutors and p1 in Teacher))
-- div,1
