-- equiv pair start,1
some Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some Groups
-- div,1
-- equiv pair end
-- equiv pair start,11
all c:Class | some c.Groups
-- div,7
all c:Class | some c.Groups.Group
-- div,1
all c:Class | some Person.(c.Groups)
-- div,2
all c:Class | some p:Person, g:Group | c->p->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class, g:Group | some c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | one Teacher.(c.Groups)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class,g:Group | some c.Groups.g
-- div,1
all g:Group, c:Class | some p:Person | c->p->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,17
all c:Class | some Teacher.(c.Groups)
-- div,1
all c:Class |some t:Teacher | t in c.Groups.Group
-- div,1
all c:Class | some t:Teacher,g:Group | c->t->g in Groups
-- div,2
all c:Class| some g:Group,t:Teacher | c->t->g in Groups
-- div,8
all x : Class | some y : Teacher | some g : Group | x->y->g in Groups
-- div,1
all c:Class | some t:Teacher | some g:Group | c->(t->g) in Groups
-- div,1
all c : Class | some g : Group | some t : Teacher | c->t->g in Groups
-- div,1
all c : Class | some g : Group, p : Person | c -> p -> g in Groups and p in Teacher
-- div,1
all c:Class | some p:Person | some g:Group | c->(p->g) in Groups and p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class | some t:Teacher | some c.Groups
-- div,1
all c:Class | some t:Teacher,g:Group | some c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,14
all c:Class,g:Group|some t:Teacher | t in c.Groups.g
-- div,2
all c:Class,g:Group | some t:Teacher | c->t->g in Groups
-- div,7
all g:Group,c:Class | some t:Teacher | c->t->g in Groups
-- div,1
all c : Class | all g : Group | some t : Teacher | c->t->g in Groups
-- div,3
all c:Class,g:Group | some t:Teacher | c in Class implies c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,g:Group | some t:Teacher | some c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Class,g:Group| some t:Teacher | some c.Groups.g
-- div,2
all c:Class,g:Group | some p:Person,t:Teacher | c->p->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class | c not in Person.Teaches implies no Group
-- div,1
all c:Class | c not in Person.Teaches implies no c->Group
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,s:Student | some g:Group | c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some s:Student,g:Group | (c->s->g) in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, p : Person, g : Group
  		| c->p->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,16
all c:Class,t:Teacher | some c.Groups implies t->c in Teaches
-- div,1
all c: Class, g: Group, p: Person, t: Teacher | c->p->g in Groups implies t->c in Teaches
-- div,3
all c:Class,g:Group,t:Teacher,p:Person | c->p->g in Groups implies t->c in Teaches
-- div,1
all c:Class, t:Teacher, g:Group, p:Person | t->c not in Teaches implies c->p->g not in Groups
-- div,1
all c : Class, t : Teacher, p : Person, g : Group | (t -> c not in Teaches) implies c -> p -> g not in Groups
-- div,2
all c : Class, t : Teacher | (t -> c not in Teaches) implies (all p : Person, g : Group | c -> p -> g not in Groups)
-- div,2
all c : Class, t : Teacher | (t -> c not in Teaches) implies not (some p : Person, g : Group | c -> p -> g in Groups)
-- div,1
all c : Class | all t : Teacher | (t -> c not in Teaches) implies (all p : Person, g : Group | c -> p -> g not in Groups)
-- div,4
all c : Class | all t : Teacher | (t -> c not in Teaches) implies not (some p : Person, g : Group | c -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,g:Group,p:Person | some t:Teacher | c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | c->Person->Group in Groups implies Person in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Teacher | some g : Group | c -> t -> g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some t : Teacher | all g : Group | c->t->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,3
all c:Class| some t:Teacher | some c.Groups.t implies c in t.Teaches
-- div,2
all c:Class| some t:Teacher | some c.Groups.Teacher implies c in t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class | some t : Teacher | all g : Group | c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
some x : Class | some y : Teacher | some g : Group | x->y->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,4
all c:Class, p:Person, g:Group | c->p->g in Groups implies p in Teacher
-- div,3
all c : Class, g : Group, p : Person | c -> p -> g in Groups implies p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some p:Person | c->p->Group in Groups implies p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,4
all c:Class, t:Teacher, g:Group | t->c in Teaches implies c->t->g in Groups
-- div,3
all c : Class, p : Person, g : Group | p -> c in Teaches and p in Teacher implies c -> p -> g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,12
all c:Class, t:Teacher, g:Group | c->t->g in Groups implies t->c in Teaches
-- div,4
all c:Class,g:Group,t:Teacher | c->t->g in Groups implies t->c in Teaches
-- div,3
all c:Class,t:Teacher ,g:Group | t->c not in Teaches implies c->t->g not in Groups
-- div,4
all c : Class, g : Group, p : Person, t : Teacher | c -> t -> g in Groups implies t -> c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,5
all c:Class | some p:Person,g:Group | c->p->g in Groups implies p in Teacher
-- div,2
all c:Class | some g:Group, p:Person | c->p->g in Groups implies p in Teacher
-- div,2
all x : Class | some y : Person | some g : Group | x->y->g in Groups implies y in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,7
all c:Class,g:Group|some t:Teacher | t in c.Groups.g implies t->c in Teaches
-- div,1
all c:Class,g:Group | some t:Teacher | c->t->g in Groups implies c in t.Teaches
-- div,1
all c:Class,g:Group | some t:Teacher | c->t->g in Groups implies t->c in Teaches
-- div,4
all c : Class | all g : Group | some t : Teacher | c->t->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,7
all g:Group,c:Class | some p:Person | c->p->g in Groups implies p in Teacher
-- div,3
all c:Class,g:Group | some p:Person | c->p->g in Groups implies p in Teacher
-- div,4
-- equiv pair end
-- equiv pair start,2
all c:Class, p:Person | some g:Group | c->p->g in Groups implies p in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,3
all c:Class,g:Group |some t:Teacher | some c.Groups implies c->t->g in Groups
-- div,3
-- equiv pair end
-- equiv pair start,1
all c:Class | some p:Person | c->p->Group in Groups implies Person in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, g : Group, p : Person | c -> p -> g in Groups and p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class |some g:Group,t:Teacher | some c.Groups implies c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,4
all c:Class,g:Group| some t:Teacher | some c.Groups.g implies c->t->g in Groups
-- div,4
-- equiv pair end
-- equiv pair start,6
all c:Class|some t:Teacher, g:Group | t->c in Teaches implies c->t->g in Groups
-- div,5
all c:Class | some g:Group, t:Teacher | t->c in Teaches implies c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class, g:Group |some t:Teacher | t->c in Teaches implies c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
some c:Class, t:Teacher,g:Group,p:Person | c->p->g in Groups and t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,11
all c:Class | some g:Group,t:Teacher | c->t->g in Groups implies t->c in Teaches
-- div,3
all c : Class | some t : Teacher, g : Group | c -> t -> g in Groups implies t -> c in Teaches
-- div,2
all c:Class | some t:Teacher | some g:Group | c->(t->g) in Groups implies t->c in Teaches
-- div,2
all c:Class | some g:Group | some t:Teacher | c->(t->g) in Groups implies t->c in Teaches
-- div,4
-- equiv pair end
-- equiv pair start,1
all c:Class | some p:Person, g:Group | c->p->g in Groups implies p->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class, p:Person, g:Group | p->c not in Teaches implies c->p->g not in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Teacher, g : Group | c -> t -> g in Groups and t -> c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Class,g:Group |some t:Teacher | some c.Groups.Person implies c->t->g in Groups
-- div,1
all c:Class,g:Group |some p:Person,t:Teacher | p->g in c.Groups implies c->t->g in Groups
-- div,1
all c:Class,g:Group | some p:Person,t:Teacher | c->p->g in Groups implies c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some t:Teacher | t->c in Teaches implies some g:Group | some c.Groups.g
-- div,1
-- equiv pair end
-- equiv pair start,22
all c:Class | some g:Group, t:Teacher | c->Person->g in Groups implies c in t.Teaches
-- div,1
all c:Class | some t:Teacher,g:Group,p:Person | p->g in c.Groups implies t->c in Teaches
-- div,3
all c:Class | some g:Group, t:Teacher,p:Person | c->p->g in Groups implies c in t.Teaches
-- div,1
all c:Class | some t:Teacher, p:Person, g:Group | p->g in c.Groups implies t->c in Teaches
-- div,1
all c:Class | some s:Person,g:Group,t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,2
all c:Class | some g:Group, t:Teacher,p:Person | c->p->g in Groups implies t->c in Teaches
-- div,1
all c : Class | some t:Teacher,g:Group,p:Person | c->p->g in Groups => t->c in Teaches
-- div,3
all c:Class | some p:Person,g:Group,t:Teacher | (c->p->g) in Groups implies t->c in Teaches
-- div,5
all c: Class | some t: Teacher , p: Person , g: Group| c->p->g in Groups implies (t->c in Teaches)
-- div,2
all x : Class | some y : Person, z : Group, v : Teacher | x->y->z in Groups implies v->x in Teaches
-- div,1
all c : Class | some g : Group | some t : Teacher | some p : Person | c->p->g in Groups implies t->c in Teaches
-- div,1
all c:Class | some s:Person | some g:Group | some t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Class, g : Group | some p : Person | c->p->g in Groups implies p->c in Teaches
-- div,1
all c : Class, g : Group| some p1, p2 : Person | c->p1->g in Groups implies p2->c in Teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Class, t:Teacher , s:Student, g:Group| t->c in Teaches implies c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class, s:Student | some t:Teacher, g:Group | s->g in c.Groups and t->c in Teaches
-- div,1
all c:Class,s:Student | some g:Group | c->s->g in Groups and some t:Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some t : Teacher, g : Group | c->t in Teaches implies c->t->g in Groups
-- div,1
all c:Class | some t:Teacher,g:Group,p:Person | (g->p in c.Groups) implies (t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,g:Group |some p:Person,t:Teacher | p->g in c.Groups implies p in c.~Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some t : Teacher | t->c not in Teaches => c->Person->Group not in Groups
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Class,g:Group | some p:Person,t:Teacher | c->p->g in Groups implies c in t.Teaches
-- div,1
all c: Class, g: Group | some t: Teacher , p: Person | c->p->g in Groups implies (t->c in Teaches)
-- div,1
all c:Class,g:Group |some p:Person,t:Teacher | p->g in c.Groups implies t in c.~Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class, t:Teacher, g:Group, p:Person | t->c not in Teaches implies c->p->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,g:Group,p:Person | some t:Teacher | c->t->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class,g:Group,p:Person |some t:Teacher| c->p->g in Groups implies c->t->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,2
some x : Class | some y : Person | some g : Group | x->y->g in Groups implies y in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,2
all c:Class, s:Student, g:Group|some t:Teacher | t->c in Teaches implies c->s->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,3
all c:Class, s:Student|some t:Teacher, g:Group | t->c in Teaches implies c->s->g in Groups
-- div,3
-- equiv pair end
-- equiv pair start,2
no c:Class | some s:Person,g:Group,t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,1
no c:Class | some s:Person | some g:Group | some t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,7
all c: Class, g: Group, s: Student, t: Teacher | c->s->g in Groups implies t->c in Teaches
-- div,1
all c : Class, s : Student, g : Group, t : Teacher | c->s->g in Groups implies t->c in Teaches
-- div,1
(all c : Class, s:Student, g:Group | c->s->g in Groups implies all t:Teacher | t->c in Teaches)
-- div,2
all t : Teacher | all c : Class, s : Student, g : Group | c->s->g in Groups implies t->c in Teaches
-- div,1
all c : Class, t: Teacher | t->c not in Teaches implies not some s:Student,g:Group | c->s->g in Groups
-- div,1
no c:Class | some s:Student,g:Group | some t:Teacher | c->s->g in Groups and t->c not in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,t:Teacher,s:Student | some g:Group | s->c->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,6
all c:Class, s:Student | some t:Teacher, g:Group | s->g in c.Groups implies t->c in Teaches
-- div,1
all c : Class, s : Student | some g : Group, t : Teacher | c->s->g in Groups implies t->c in Teaches
-- div,1
all c:Class | all s:Student | some g:Group,t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,2
all c:Class, s:Student| some g:Group | some t:Teacher | (c->s->g in Groups) implies ( t->c in Teaches)
-- div,1
all c:Class |all s :Student |some t:Teacher |some g:Group|  c-> (s->g)in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class, t:Teacher | some s:Student, g:Group | s->g in c.Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,20
all c:Class | some s:Student, g:Group, t:Teacher | s->g in c.Groups implies t->c in Teaches
-- div,1
all c: Class | some s: Student, t: Teacher, g: Group | c->s->g in Groups implies t->c in Teaches
-- div,1
all c:Class | some s:Student,g:Group,t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,7
all c: Class | some t: Teacher, s:Student, g:Group | c->s->g in Groups =>  t->c in Teaches
-- div,1
all c:Class | some s:Student,g:Group | some t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,2
all c:Class | some t:Teacher | some s:Student | some g:Group | (c->s->g) in Groups implies t->c in Teaches
-- div,5
all c : Class | some s : Student | some g : Group | some t : Teacher | c->s->g in Groups => t->c in Teaches
-- div,2
all c : Class | some s : Student, g : Group, t : Teacher | c->s->g in Groups implies some t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class, t:Teacher , s:Student|some g:Group | t->c in Teaches implies c->s->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,8
all c:Class, t:Teacher, s:Student | some g:Group | s->g in c.Groups implies t->c in Teaches
-- div,1
all c:Class, s:Student,  t:Teacher | some g:Group | (c->s->g in Groups) implies ( t->c in Teaches)
-- div,2
all c:Class,t:Teacher,s:Student | some g:Group | c->s->g in Groups implies t->c in Teaches
-- div,5
-- equiv pair end
-- equiv pair start,5
all c:Class,s:Student,g:Group | c->s->g in Groups implies some t:Teacher | c->t->g in Groups
-- div,5
-- equiv pair end
-- equiv pair start,1
all c:Class, p:Person, g:Group | c->p->g in Groups implies p in Teacher and p not in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some t:Teacher,g:Group,p:Person | (p->g in c.Groups) implies (c->t in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some g:Group,p:Person | c->p->g in Groups => all t:Teacher | t->c in Teaches
-- div,1
all x : Class | some p: Person, g : Group | x->p->g in Groups implies all t : Teacher | t->x in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
(all c : Class, s:Student, g:Group | c->s->g in Groups and some t:Teacher | t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,18
all c:Class,g:Group,s:Student | some t:Teacher | ( c->s->g in Groups) implies t->c in Teaches
-- div,2
all c:Class,s:Student,g:Group | some t:Teacher | c->s->g in Groups implies t->c in Teaches
-- div,14
all c:Class,s:Student | all g:Group |some t:Teacher| c->s->g in Groups implies t->c in Teaches
  
  
  
 
  
  all c:Class,g:Group,s:Student | some t:Teacher | ( c->s->g in Groups) implies t->c in Teaches
-- div,2
-- equiv pair end
-- equiv pair start,19
all c : Class | some g:Group,p:Person | c->p->g in Groups => some t:Teacher | t->c in Teaches
-- div,2
all c:Class | some s:Person, g:Group | c->s->g in Groups => 
  		some t:Teacher | t->c in Teaches
-- div,6
all c:Class | some p:Person,g:Group | c->p->g in Groups implies some t:Teacher | t->c in Teaches
-- div,4
all x : Class | some p: Person, g : Group | x->p->g in Groups implies some t : Teacher | t->x in Teaches
-- div,2
all c : Class | some g : Group | some t, p : Person | (c->p->g in Groups) implies (t->c in Teaches and t in Teacher)
-- div,3
all c : Class | some p : Person | some g : Group | c->p->g in Groups implies some t : Teacher | t->c in Teaches
-- div,1
all c : Class | some g : Group | some t, p : Person | (c->p->g in Groups and c->t->g in Groups) implies (t->c in Teaches and t in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Class,g:Group | some t:Teacher,s:Student | ( c->s->g in Groups) implies t->c in Teaches
-- div,1
all c: Class, g: Group | some s: Student, t: Teacher | c->s->g in Groups implies t->c in Teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Class, t:Teacher | some g:Group,p:Person | (p->g in c.Groups) implies (t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person, c:Class | (some t:Teacher, g:Group | c->p->g in Groups implies t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t: Teacher, c: Class | t->c in Teaches implies some s:Student, g:Group | c->s->g in Groups
-- div,1
all c : Class, t: Teacher | t->c in Teaches implies some s:Student,g:Group | c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,7
all c: Class, s:Student| some g:Group | c->s->g in Groups => some t: Teacher | t->c in Teaches
-- div,6
(all c : Class | all s:Student | some g:Group | c->s->g in Groups implies some t:Teacher | t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class, s: Student | some g:Group, t:Teacher | c -> s -> g in Groups iff t -> c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some s: Student, g:Group, t:Teacher | c -> s -> g in Groups iff t -> c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some t:Teacher | t->c in Teaches =>
  		some s:Student, g:Group | c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
(some c : Class, s:Student, g:Group | c->s->g in Groups implies some t:Teacher | t->c in Teaches)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Class | some p : Person, g : Group, t :Teacher | c->t->g in Groups implies c->t in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
no c:Class | some s:Student,g:Group | some t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,29
all c:Class | some s:Student, g:Group | c->s->g in Groups => 
  		some t:Teacher | t->c in Teaches
-- div,23
all c:Class | some g:Group,s:Student | c->s->g in Groups => some t:Teacher | t->c in Teaches
-- div,1
all c:Class | some s:Student| some g:Group | (c->s->g in Groups) implies (some t:Teacher | t->c in Teaches)
-- div,5
-- equiv pair end
-- equiv pair start,6
all c : Class, t, s : Person, g : Group | (t -> c not in Teaches) implies c -> s -> g not in Groups
-- div,1
all t : Person, c : Class | (some g : Group, s : Person | c -> s -> g in Groups) implies t -> c in Teaches
-- div,2
all c : Class, t : Person | (t -> c not in Teaches) implies (all p : Person, g : Group | c -> p -> g not in Groups)
-- div,1
all t : Person, c : Class | (some g : Group | some s : Person | c -> s -> g in Groups) implies t -> c in Teaches
-- div,1
all c : Class | all t : Person | (t -> c not in Teaches) implies (all p : Person, g : Group | c -> p -> g not in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,s:Student | some g:Group | c->s->g in Groups implies some t:Teacher | c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Class, g : Group, p : Person, t : Teacher | t -> c in Teaches implies c -> p -> g in Groups
-- div,2
all c : Class, p : Person, t : Teacher | t -> c in Teaches implies all g : Group | c -> p -> g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some t:Teacher,g:Group | some c.Groups.g implies c->t->g in Groups and t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some t : Teacher | all c : Class, s : Student, g : Group | c->s->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
(all t:Teacher | some c:Class | t->c in Teaches implies (some s:Student,g:Group | c->s->g in Groups))
-- div,1
-- equiv pair end
-- equiv pair start,1
(some t:Teacher | all c:Class | (t->c in Teaches) implies (some s:Student,g:Group | c->s->g in Groups))
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Class, g: Group, s: Student, t: Teacher | c->s->g in Groups implies (t->c in Teaches
and t != s)
-- div,1
-- equiv pair end
-- equiv pair start,1
no c:Class | some t:Teacher | some s:Student | some g:Group | (c->s->g in Groups) and (t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,3
all c: Class, s:Student, g: Group | some t: Teacher | (c->t not in Teaches) implies c->s->g not in Groups
-- div,3
-- equiv pair end
-- equiv pair start,2
some c : Class, t : Teacher | t -> c in Teaches implies all g : Group, p : Person | c -> p -> g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Class, s: Student | some g:Group | c -> s -> g in Groups implies some p:Person | p -> c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, p : Person | some g : Group | c->p->g in Groups implies some t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class, g : Group | some p : Person | c->p->g in Groups implies (p->c in Teaches and p in Teacher)
-- div,1
all c : Class, g : Group| some p1, p2 : Person | c->p1->g in Groups implies (p2->c in Teaches and p2 in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class, p : Person, t : Teacher | t -> c in Teaches implies some g : Group | c -> p -> g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Person, c : Class | t -> c in Teaches implies (some g : Group, s : Person | c -> s -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class | all s : Student, g : Group | c->s->g in Groups implies some t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some t:Teacher | all s:Student | some g:Group | (c->s->g in Groups) implies (t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
(all c : Class | some s:Student | all g:Group | c->s->g in Groups implies some t:Teacher | t->c in Teaches)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Teacher, p : Person, g : Group | (t -> c not in Teaches) and (c -> p -> g not in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Person | (t -> c in Teaches) implies (all p : Person, g : Group | c -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Class, g: Group, s: Student | some t: Teacher | c->s->g in Groups implies t->c in Teaches and t != s
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Class | some s : Student | some g : Group | lone t : Teacher | c->s->g in Groups => t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
some c : Class | (some p : Person, g : Group | c->p->g in Groups) implies some t : Teacher | t->c in Teaches
-- div,1
some c : Class | (some p : Person | some g : Group | c->p->g in Groups) implies some t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some t : Teacher | some c : Class | some s : Student | some g : Group | c->s->g in Groups and t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, s : Student, g : Group, t : Person | c->s->g in Groups implies t->c in Teaches and t in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some g : Group | all t : Person | c->t->g in Groups implies (t->c in Teaches and t in Teacher)
-- div,1
all c : Class | some g : Group | all t, p : Person | (c->p->g in Groups and c->t->g in Groups) implies (t->c in Teaches and t in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class | some p : Person | some g : Group | c->p->g in Groups implies some t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some t : Teacher | some s : Student | some g : Group | t->c in Teaches implies c->s->g in Groups
-- div,1
(all c : Class | some s : Student | some g : Group | some t : Teacher | t->c in Teaches implies c->s->g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some g : Group | all t, p : Person | c->p->g in Groups implies (t->c in Teaches and t in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
(some c : Class, t : Teacher | t -> c not in Teaches implies all g : Group, p : Person | c -> p -> g not in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all c : Class, p : Teacher | p -> c in Teaches) and 
		(all g : Group, c : Class, p : Person | c -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
not all c : Class, t : Teacher | (t -> c not in Teaches) implies (all p : Person, g : Group | c -> p -> g not in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Teacher, p : Person, g : Group | (t -> c in Teaches and t not in Student) and (c -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, p, p1 : Person | some g : Group | (p -> c not in Teaches or p not in Teacher) implies c -> p1 -> g not in Groups
-- div,1
-- equiv pair end
-- equiv pair start,3
(all c : Class | some p : Teacher | p -> c in Teaches) implies 
		(all g : Group, c : Class, p : Person | c -> p -> g in Groups)
-- div,1
(all c : Class | some p : Person | p -> c in Teaches and p in Teacher) implies 
		(all g : Group, c : Class, p : Person | c -> p -> g in Groups)
-- div,1
(all c : Class | some p : Teacher | p -> c in Teaches and p in Teacher) implies 
		(all g : Group, c : Class, p : Person | c -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Teacher, p : Person, g : Group | (t -> c not in Teaches and t not in Student) and (c -> p -> g not in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class
  		| (some p : Person, g : Group | c->p->g in Groups) implies
		  (some t : Teacher, g : Group | c->t->g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
(some c : Class, p : Person | p -> c in Teaches and p in Teacher) and 
		(all c : Class, p : Person | some g : Group | c -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
(some c : Class, p : Person | p -> c in Teaches and p in Teacher) and 
		(some c : Class, p : Person | some g : Group | c -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all c : Class | some p : Person | p -> c in Teaches and p in Teacher) implies 
		(some g : Group, c : Class, p : Person | c -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
(some c : Class, p : Person | p -> c in Teaches and p in Teacher) implies
		(some c : Class, p : Person | some g : Group | c -> p -> g in Groups)
-- div,1
-- equiv pair end
