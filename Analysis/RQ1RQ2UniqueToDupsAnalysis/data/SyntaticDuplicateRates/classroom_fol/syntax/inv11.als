some Trash
-- div,1
all c : Class
-- div,2
all c : Class |
-- div,2
all c:Class | all rn: c.Groups
-- div,1
all c : Class | all p : Person,
-- div,1
all c.Class | some t:Teacher | some c.Groups
-- div,1
all c:Class | p:Class.Person | some c.Groups
-- div,1
all x : Class | some p : Person, g : Group, x->p->g
-- div,1
some p : Person, c : Class | p -> c in Teaches and or  or
-- div,1
all c:Class | some s:Student,g:group | (c->s->g) in Groups
-- div,1
all c:Class | some s:Student g:group | (c->s->g) in Groups
-- div,1
all c : Class, g : Person -> Group, t : Teacher
  		| true
-- div,1
all c : Class | all p : Person  c -> p -> g in Groups implies p
-- div,1
all c.Class | some t:Teacher | some c.Groups implies c in t.Teaches
-- div,1
all c:Class, g:Group | some c.Groups.g implies some t->c in Teaches
-- div,1
all c:Class | some t:Teacher | some c.Groups implies t->g in Groups
-- div,1
all c:Class, g:Class.Groups | g in c.Groups implies t->c in Teaches
-- div,1
all c.Class | some t:Teacher | some c.Teaches implies c in t.Teaches
-- div,1
all c : Class, all t : Teacher | c in Groups implies t->c in Teaches
-- div,2
all c : Class | (some c.groups) implies (some (Teacher & c.~teaches))
-- div,1
all c : Class | (some c.Groups) implies (some (Teacher & c.~teaches))
-- div,1
all c:Class,t:Teacher | some g:Group | c->s->g implies t->c in Teaches
-- div,1
all c:Class, g:Groups | t:Teacher | g in c.Groups implies t->c in Teaches
-- div,1
all c:Class,g:Group,p:Person | c->p->g in Groups implies c->t->g in Groups
-- div,1
all c:Class | some Person.(c.Groups) implies some t:Teacher t->c in Teaches
-- div,1
all c:Class, g:Group | some p:Person c->p->g in Groups implies p in Teacher
-- div,1
all c:Class,s:Student | c not in Person.Teaches implies no c->s->g in Groups
-- div,1
all c:Class|some t:Teacher, g:Group | t->c in Tutor implies c->t->g in Groups
-- div,1
all c:Class | some p:Person,g:Group implies (some t:Teacher | t->c in Teaches)
-- div,1
all c:Class, g:Class.Groups | t:Teacher | g in c.Groups implies t->c in Teaches
-- div,1
(all c : Class | some p : Person | p -> c in Teaches and p in Teacher) implies ()
-- div,1
all c:Class,g:Group | some t:Teacher | ( c->s->g in Groups) implies t->c in Teaches
-- div,1
all x : Class | some p: Person, g : Groups, x->p->g in Class implies p->g in Teaches
-- div,1
all x : Class | some p: Person, g : Groups, x->p->g in Class implies p->g in Teacher
-- div,2
all c : Class, t : Teach, G : Group | c -> t -> g in Groups implies t -> c in Teaches
-- div,1
all x : Class | some p: Person, g : Groups, x->p->g in Groups implies p->g in Teaches
-- div,1
all c : Class | some p : Person, g : Group | c->t->g in Groups implies c->t in Teaches
-- div,1
all c : Class, p : Person | some g : Group | c -> t -> g in Groups implies p in Teacher
-- div,1
all c : Class | some g : Group, p : Person | c -> t -> g in Groups implies p in Teacher
-- div,1
all c : Class, t : Teacher, G : Group | c -> t -> g in Groups implies t -> c in Teaches
-- div,1
all c : Class | (some t:Teacher,g:Group,p:Person | c->p->g in Groups) => t->c in Teaches
-- div,2
all c : Class | (some g : Group, t : Teacher | c->t->g in Groups) implies t->c in Teaches
-- div,1
all c:Class |some g:Group |some p:Person | c->p->g  implies some t:Teacher t->c in Teaches
-- div,1
all c:Class | some p:Person,g:Group,t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,1
all c:Class | (some g:Group | some t:Teacher | c->(t->g) in Groups) implies t->c in Teaches
-- div,1
all c:Class,g:Group,g:Group | some t:Teacher | ( c->s->g in Groups) implies t->c in Teaches
-- div,1
all c:Class |some g:Group |some p:Person | c->p->g  implies |some t:Teacher t->c in Teaches
-- div,1
all c : Class, g : Group | some p : Teacher | c -> p -> g in Groups
-- div,1
all p:Person, c:Class | (some t:Teacher, g:Group | c->p->g in Groups implies t->c in Teaches
-- div,1
some c : Class, t : Teacher | t -> c in Teaches implies all g : Group | c -> p -> g in Groups
-- div,1
all c:Class, s:Student, g:Group | c->s->g in Groups implies | some t:Teacher | t->c in Teaches
-- div,1
no c:Class | some s:Person | g:Group | t:Teacher | (c->s->g) in Groups implies t->c in Teaches
-- div,1
all c : Class, t : Person, g : Group | (t -> c not in Teaches) implies c -> p -> g not in Groups
-- div,1
all c:Class | (some s:Student,g:Group | c->s->g in Groups) implies some t:Teacher  t->c in Teaches
-- div,1
all c:Class | (some p:Person,g:Group | c->p-> in Groups) implies (some t:Teacher | t->c in Teaches)
-- div,1
(all t:Teacher | some c:Class | t->c in Teaches implies (some s:Student,g:Group | c->s->g in Groups)
-- div,1
all c : Class | some g : Group, p : Person | c->p->g in Groups -> some t : Teacher | t->c in Teaches
-- div,1
some t : Teacher | some c : Class | some s : Student | some g : Group | t->c->s->g in Groups implies
-- div,1
all c:Class | (some p:Person,g:Group | c->s->g in Groups) implies (some t:Teacher |  t->c in Teaches)
-- div,1
all c:Classes | (some p:Person,g:Group | c->p->g in Groups) implies (some t:Teacher | t->c in Teaches)
-- div,1
(all c:Class | some s:Student,g:Group | (c->s->g in Groups)) implies (some t:Teacher | t->c in Teaches)
-- div,1
all c : Class, p : Person, g : Group | p -> c in Teaches and p in Teacher implies c -> t -> g in Groups
-- div,1
all c : Class, s : Person | some g : Group | c->p->g in Groups implies some t : Teacher | t->c in Teaches
-- div,1
all c: Class, s:Student, g: Group | some t: Teachers | (c->t not in Teaches) implies c->s->g not in Groups
-- div,3
all c : Class | (some p : Person, g : Group | c->t->g in Groups) implies some t :Teacher |  c->t in Teaches
-- div,1
all c:Class | some t:Teacher | some s:Student | some g:Group | (c->s->g) in Groups implies t->c in Theaches
-- div,1
all c : Class | (some p : Person, g : Group | c->p->g in Groups) implies (some t : Teacher | t->x in Teaches)
-- div,1
(some c : Class, t : Teacher | t -> c in Teaches) implies (all g : Group, p : Person | c -> p -> g in Groups)
-- div,1
all c : Class | (some s : Student | some g : Group | some t : Teacher | c->s->g in Groups) => t->c in Teaches
-- div,1
all c: Class | (some p: Person, some g: Group | c->p->g in Groups) implies (some t: Teacher | t->c in Teaches)
-- div,2
some c : Class | (some p : Person, some g : Group | c->p->g in Groups) implies some t : Teacher | t->c in Teaches
-- div,1
all c : Class | (some p : Person, g : Group | x -> p -> g in Groups) implies 
	(some t : Teacher | t -> c in Teaches)
-- div,1
all c : Class | (some p : Person, g : Group | x -> p -> g in Groups) implies 
	(some t : Teacher | t -> x in Teaches)
-- div,1
all c : Class
  		| (some p : Person, g : Group | c->p->g in Groups) implies
		  (some t : Teacher | c->t->g in Groups)
-- div,1
all c : Class, p, p1 : Persons | some g : Group | p -> c not in Teaches or p not in Teacher) implies c -> p1 -> g not in Groups
-- div,1
all c : Class, p, p1 : Persons | some g : Group | (p -> c not in Teaches or p not in Teacher) implies c -> p1 -> g not in Groups
-- div,1
all c : Class, p, p1 : Persons | some g : Group | /p -> c not in Teaches or p not in Teacher) implies c -> p1 -> g not in Groups
-- div,1
