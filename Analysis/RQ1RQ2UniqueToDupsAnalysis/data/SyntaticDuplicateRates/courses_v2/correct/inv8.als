no teaches & enrolled
-- div,3
all c : Course | no teaches.c&enrolled.c
-- div,1
all x:Person | no (x.enrolled & x.teaches)
-- div,1
all t : Person | no t.teaches & t.enrolled
-- div,1
all p: Person | no (p.teaches & p.enrolled)
-- div,1
all c : Course, t : teaches.c | t not in enrolled.c
-- div,2
all p:Person, c:Course | (c in p.teaches) implies (c not in p.enrolled)
-- div,1
all x:Person, c:Course| x->c in teaches implies x->c not in enrolled
-- div,1
all x:Person, y : Course| x->y in teaches implies x->y not in enrolled
-- div,1
all p: Person, c: Course | p in c.~teaches => p not in c.~enrolled
-- div,1
all x : Person | all y : Course | y in x.enrolled implies y not in x.teaches
-- div,1
all p: Person | all c: Course | c in p.teaches => c not in p.enrolled
-- div,8
all s1 : Person | all c1 : Course | c1 in s1.teaches implies c1 not in s1.enrolled
-- div,2
