none
-- div,1
^Tutors in Teacher
-- div,1
Teacher in *(Person.Tutors)
-- div,1
Tutors.Tutors.Tutors in Teacher
-- div,1
all p:Person | p.Tutors.Tutors.Tutors
-- div,1
all p:Person | p.Tutors.Tutors.Tutors implies p in Teacher
-- div,1
all p:Person | p.Teaches.Teaches.Teaches implies p in Teacher
-- div,1
all p : Person | some t : Teacher | t in Tutors.Tutors.Tutors
-- div,1
all p1,p2,p3:Person | (p1 in Teacher implies (p2 and p3 in  Student) )
-- div,1
all x, y, z : Person | x->y in Tutors and y->z Tutors implies z in Teacher
-- div,3
all p1, p2, p2 : Person | (p1 -> p2 in Tutors implies p2 in Tutors) or (p1 -> p2 and p2 -> p3 implies p3 in Tutors)
-- div,1
all p1, p2, p3 : Person
  		| (p2->p1 in Tutors and p2 in Teacher) or
  		  (p3->p2 in Tutors and p2->p1 in Teacher)
-- div,1
all p1,p2:Person | (p1->p2 in Tutors and p2 in Teacher) or (some p3: Person | p1 != p3 and p2 != p3 and p2->p3 and p3 -> Teacher)
-- div,1
all p1, p2, p2 : Person | (p1 -> p2 in Tutors implies p2 in Tutors) or (p1 -> p2 in Tutors and p2 -> p3 in Tutors implies p3 in Tutors)
-- div,1
all p1,p2:Person | (p1->p2 in Tutors and p2 in Teacher) or (some p3: Person | p1 != p3 and p2 != p3 and p2->p3 in Tutors and p3 -> Teacher)
-- div,1
all p1,p2,p3:Person | (p1 in Teacher implies (p2 and p3 in  Student) )or (p2 in Teacher implies (p1 and p3 in  Student) ) or (p3 in Teacher implies (p2 and p1 in  Student) )
-- div,2
